
/*==========================================

===========================================*/



#include <linux/interrupt.h>
#include <asm/system.h>
#include "monitor.h"
#include <asm/mipsregs.h>	//wei add
#include "test_hw_96c.h"
#include <rtl8196x/asicregs.h>

#define REG32(reg) (*(volatile unsigned int *)(reg))
#define REG16(reg) (*(volatile unsigned short *)(reg))
#define REG8(reg) (*(volatile unsigned char *)(reg))


#define PCIE0_RC_CFG_BASE (0xb8b00000)
#define PCIE0_RC_EXT_BASE (PCIE0_RC_CFG_BASE + 0x1000)
#define PCIE0_EP_CFG_BASE (0xb8b10000)


#define PCIE1_RC_CFG_BASE (0xb8b20000)
#define PCIE1_RC_EXT_BASE (PCIE1_RC_CFG_BASE + 0x1000)
#define PCIE1_EP_CFG_BASE (0xb8b30000)


#define PCIE0_MAP_IO_BASE  (0xb8c00000)
#define PCIE0_MAP_MEM_BASE (0xb9000000)

#define PCIE1_MAP_IO_BASE  (0xb8e00000)
#define PCIE1_MAP_MEM_BASE (0xba000000)

//RC Extended register
#define PCIE0_MDIO      (PCIE0_RC_EXT_BASE+0x00)
#define PCIE1_MDIO      (PCIE1_RC_EXT_BASE+0x00)
//MDIO
#define PCIE_MDIO_DATA_OFFSET (16)
#define PCIE_MDIO_DATA_MASK (0xffff <<PCIE_MDIO_DATA_OFFSET)
#define PCIE_MDIO_REG_OFFSET (8)
#define PCIE_MDIO_RDWR_OFFSET (0)


#define DBG_PRINT dprintf



int at2_mode=1;


void HostPCIe_SetPhyMdioWrite(unsigned int portnum, unsigned int regaddr, unsigned short val)
{
	unsigned int mdioaddr=PCIE0_MDIO;

	if(portnum==0)		mdioaddr=PCIE0_MDIO;	
	else if(portnum==1)	mdioaddr=PCIE1_MDIO;
	else return 0;
	
	REG32(mdioaddr)= ( (regaddr&0x1f)<<PCIE_MDIO_REG_OFFSET) | ((val&0xffff)<<PCIE_MDIO_DATA_OFFSET)  | (1<<PCIE_MDIO_RDWR_OFFSET) ; 
	//delay 
	volatile int i;
	for(i=0;i<5555;i++)  ;
}


//------------------------------------------------------------------------
void PCIE_MDIO_Reset(unsigned int portnum)
{
        #define SYS_PCIE_PHY0   (0xb8000000 +0x50)
        #define SYS_PCIE_PHY1   (0xb8000000 +0x54)	
	 
	unsigned int sys_pcie_phy;

	if(portnum==0)	sys_pcie_phy=SYS_PCIE_PHY0;
	else if(portnum==1)	sys_pcie_phy=SYS_PCIE_PHY1;
	else return;
		
       // 3.MDIO Reset
 	   REG32(sys_pcie_phy) = (1<<3) |(0<<1) | (0<<0);     //mdio reset=0,     	    
 	   REG32(sys_pcie_phy) = (1<<3) |(0<<1) | (1<<0);     //mdio reset=1,   
 	   REG32(sys_pcie_phy) = (1<<3) |(1<<1) | (1<<0);     //bit1 load_done=1

}
//------------------------------------------------------------------------
void PCIE_PHY_Reset(unsigned int portnum)
{
	 #define PCIE_PHY0 	0xb8b01008
	 #define PCIE_PHY1 	0xb8b21008
	 
	unsigned int pcie_phy;

	if(portnum==0)	pcie_phy=PCIE_PHY0;
	else if(portnum==1)	pcie_phy=PCIE_PHY1;
	else return;

        //4. PCIE PHY Reset       
	REG32(pcie_phy) = 0x01;	//bit7 PHY reset=0   bit0 Enable LTSSM=1
	REG32(pcie_phy) = 0x81;   //bit7 PHY reset=1   bit0 Enable LTSSM=1
	
}
//------------------------------------------------------------------------
int PCIE_Check_Link(unsigned int portnum)
{
	unsigned int dbgaddr;

	if(portnum==0)	dbgaddr=0xb8b00728;
	else if(portnum==1)	dbgaddr=0xb8b20728;
	else return;	

  //wait for LinkUP
	int i=10000;
	while(--i)
	{
	      if( (REG32(dbgaddr)&0x1f)==0x11)
		  	break;
      		__delay(100*100);		  

	}
	if(i==0)
	{	if(at2_mode==0)  //not auto test, show message
		dprintf("i=%x  Cannot LinkUP \n",i);
		return 0;
	}
	else
	{
		dprintf("\nLink-UP OK\n");
		//dprintf("\nHost VID=%x\n",0xb8b00000);
		//dprintf("\nDevice VID=%x\n",0xb8b10000);
	}
	

	return 1;
}
//------------------------------------------------------------------------


void PCIE_reset_procedure(int portnum, int Use_External_PCIE_CLK, int mdio_reset)
{
        #define SYS_PCIE_PHY0   (0xb8000000 +0x50)
	//PCIE Register
	 #define CLK_MANAGE 	0xb8000010

	 #define PCIE_PHY0 	0xb8b01008
	 #define PCIE_PHY1 	0xb8b21008


	 
//JSW:PCIE reset procedure
#if 0
        //1. "Enable internal PCIE PLL
//#if Use_External_PCIE_CLK
if(Use_External_PCIE_CLK)
    REG32(PIE_PLL) = 0x358;                        //Use External PCIE CLK (clock chip)
//#else  
else
    REG32(PCIE_PLL) = 0x9;                          //Use Internal PCIE CLK and PCIE fine-tune
//#endif


//dprintf("\nPCIE_PLL(0x%x)=0x%x\n",PCIE_PLL,READ_MEM32(PCIE_PLL));
    __delay(1000);
#endif

        //2.Active LX & PCIE Clock
    REG32(CLK_MANAGE) |=  (1<<11);        //enable active_pcie0
    delay_ms(10);
    REG32(0xb8b0100c)=(1<<3);  //set target Device Num=1;

	delay_ms(10);
   
#if 1
	if(mdio_reset)
	{
		//prom_printf("Do 8196C MDIO_RESET\n");
		
   	    // 3.MDIO Reset  
		PCIE_MDIO_Reset(portnum);
		delay_ms(10);
	} 
        //4. PCIE PHY Reset       
 	PCIE_PHY_Reset(portnum);
    delay_ms(10);
#endif

      delay_ms(10);
 
#if 0
	//#if Use_External_PCIE_CLK
	if(Use_External_PCIE_CLK)
	{
		//5. PCIE P0 PHY external clock
		 __delay(1000); 
		 REG32(PCIE_PHY0_REG) = 0xC3930301; //bit[3] must be "0" for external clock
		 //REG32(PCIE_PHY0_REG) = 0xC39B0301; //20090304:RDC for for PCIE port 0 Refine-tune
		  __delay(1000);       
		 
		     
		        REG32(PCIE_PHY0_REG) = 0x3c011901; //close PHY 0 ,"0"=R,"1"=W
		        __delay(1000);
	} 
	//#endif
 #endif
 

	  //----------------------------------------
	  if(mdio_reset)
	  	{
	//fix 8196C test chip pcie tx problem.	
/*	
	HostPCIe_SetPhyMdioWrite( 8, HostPCIe_SetPhyMdioRead(8) | (1<<3) );
	HostPCIe_SetPhyMdioWrite(0x0d, HostPCIe_SetPhyMdioRead(0x0d) | (5<<5) );
	HostPCIe_SetPhyMdioWrite(0x0d,  HostPCIe_SetPhyMdioRead(0x0d) | (1<<4) );
	HostPCIe_SetPhyMdioWrite(0x0f, HostPCIe_SetPhyMdioRead(0x0f) & ~(1<<4));
	HostPCIe_SetPhyMdioWrite(0x06, HostPCIe_SetPhyMdioRead(0x06) | (1<<11) );	
*/	

#define PHY_USE_TEST_CHIP 1   // 1: test chip, 0: fib chip

#define CONFIG_RTL8196C_FORMALCHIP_A 1////leroy add////


#ifdef CONFIG_RTL8196C_TESTCHIP     //PeiSi parameter
		HostPCIe_SetPhyMdioWrite(portnum, 0, 0x5027);
		HostPCIe_SetPhyMdioWrite(portnum, 2, 0x6d18);
		HostPCIe_SetPhyMdioWrite(portnum, 6, 0x8828);
		HostPCIe_SetPhyMdioWrite(portnum, 7, 0x30ff);
#if 	PHY_USE_TEST_CHIP	
		HostPCIe_SetPhyMdioWrite(portnum, 8, 0x18dd);     	        //FIB dont use
#endif
		HostPCIe_SetPhyMdioWrite(portnum, 0xa, 0xe9);
		HostPCIe_SetPhyMdioWrite(portnum, 0xb, 0x0511);
#if 	PHY_USE_TEST_CHIP			
		HostPCIe_SetPhyMdioWrite(portnum, 0xd, 0x15b6);		//FIB dont use
#endif

		HostPCIe_SetPhyMdioWrite(portnum, 0xf, 0x0f0f);				
		
#if 0 //saving more power
		HostPCIe_SetPhyMdioWrite(0xa, 0xeb);
		HostPCIe_SetPhyMdioWrite(0x9, 0x538c);
		
//		HostPCIe_SetPhyMdioWrite(0xc, 0xC828);  //original 
//		HostPCIe_SetPhyMdioWrite(0x0, 0x502F);  //fix
		
		HostPCIe_SetPhyMdioWrite(0xc, 0x8828);  //new
		HostPCIe_SetPhyMdioWrite(0x0, 0x502F);  //fix		
#endif
#if  defined(CONFIG_EPHY_40MHZ) || defined(CONFIG_RTL8196CS_88pin_40MHZ)

		HostPCIe_SetPhyMdioWrite(portnum, 5, 0xbcb);    //[9:3]=1111001 (binary)   121 (10)
		HostPCIe_SetPhyMdioWrite(portnum, 6, 0x8128);  //[11]=0   [9:8]=01
#endif
#endif
//------------------------------------------------------
#ifdef CONFIG_RTL8196C_FORMALCHIP_A   //Bokai parameter, for FIB chip or FORMAL Chip
		HostPCIe_SetPhyMdioWrite(portnum, 0, 0xD087);  //bokai tell, and fix

		HostPCIe_SetPhyMdioWrite(portnum, 1, 0x0003);
		HostPCIe_SetPhyMdioWrite(portnum, 2, 0x4d18);
#if  defined(CONFIG_EPHY_40MHZ) || defined(CONFIG_RTL8196CS_88pin_40MHZ)
		HostPCIe_SetPhyMdioWrite(portnum, 5, 0x0BCB);   //40M
#endif

#if  defined(CONFIG_EPHY_40MHZ) || defined(CONFIG_RTL8196CS_88pin_40MHZ)
		HostPCIe_SetPhyMdioWrite(portnum, 6, 0xF148);  //40M
#else
		HostPCIe_SetPhyMdioWrite(portnum, 6, 0xf848);  //25M
#endif

		HostPCIe_SetPhyMdioWrite(portnum, 7, 0x31ff);
		////ori////		HostPCIe_SetPhyMdioWrite(portnum, 8, 0x18d5);  //peisi tune
    //from kernel(+)
    HostPCIe_SetPhyMdioWrite(portnum, 8, 0x18d7);  //peisi tune
    //from kernel(-)
    
    //HostPCIe_SetPhyMdioWrite(portnum, 8, 0x18d6); //20100810 for fix PCIE Link fail at high temp.
		//HostPCIe_SetPhyMdioWrite(portnum, 8, 0x18d7); //20100810 for fix PCIE Link fail at high temp.

#if 0       //old,		
		HostPCIe_SetPhyMdioWrite(portnum, 9, 0x531c); 		
		HostPCIe_SetPhyMdioWrite(portnum, 0xd, 0x1766); //peisi tune
#else     //saving more power, 8196c pe-si tune
		HostPCIe_SetPhyMdioWrite(portnum, 0x09, 0x539c); 	
		HostPCIe_SetPhyMdioWrite(portnum, 0x0a, 0x20eb); 	
		HostPCIe_SetPhyMdioWrite(portnum, 0x0d, 0x1764); 			
#endif
		HostPCIe_SetPhyMdioWrite(portnum, 0x0b, 0x0511);   //for sloving low performance

		
		HostPCIe_SetPhyMdioWrite(portnum, 0xf, 0x0a00);				

		//20110406 JSW : For 8196C RX sensitivity FT2 test
		HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFCE0); //bit[10:6]=10011 ,default parameter
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFd20); //bit[10:6]=10100
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFd60); //bit[10:6]=10101
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFda0); //bit[10:6]=10110
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFde0); //bit[10:6]=10111

		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFe20); //bit[10:6]=10111
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFe60); //bit[10:6]=11001
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFea0); //bit[10:6]=11010
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFee0); //bit[10:6]=11011
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFf20); //bit[10:6]=11100
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFf60); //bit[10:6]=11101
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFfa0); //bit[10:6]=11110
		//HostPCIe_SetPhyMdioWrite(portnum, 0x19, 0xFfe0); //bit[10:6]=11111
		




		
		HostPCIe_SetPhyMdioWrite(portnum, 0x1e, 0xC280);	
#endif

	  	}

	//---------------------------------------
         // 6. PCIE Device Reset
     REG32(CLK_MANAGE) &= ~(1<<12);    //perst=0 off.
    	PCIE_PHY_Reset(portnum); 
	delay_ms(10);
    REG32(CLK_MANAGE) |=  (1<<12);   //PERST=1
	delay_ms(10);
	//---------------------------------------	  
	PCIE_Check_Link(portnum);	  
	
}


int PCIE_Host_Init(int argc, char* argv[])
{
	int portnum=0;
	if(argc >= 1) 
	{	portnum= strtoul((const char*)(argv[0]), (char **)NULL, 16);	
	}



#define MAX_READ_REQSIZE_128B    0x00
#define MAX_READ_REQSIZE_256B    0x10
#define MAX_READ_REQSIZE_512B    0x20
#define MAX_READ_REQSIZE_1KB     0x30
#define MAX_READ_REQSIZE_2KB     0x40
#define MAX_READ_REQSIZE_4KB     0x50


#define MAX_PAYLOAD_SIZE_128B    0x00
#define MAX_PAYLOAD_SIZE_256B    0x20
#define MAX_PAYLOAD_SIZE_512B    0x40
#define MAX_PAYLOAD_SIZE_1KB     0x60
#define MAX_PAYLOAD_SIZE_2KB     0x80
#define MAX_PAYLOAD_SIZE_4KB     0xA0


	int rc_cfg, cfgaddr;
	int iomapaddr;
	int memmapaddr;
	
	if(portnum==0)
	{	rc_cfg=PCIE0_RC_CFG_BASE;
		cfgaddr=PCIE0_EP_CFG_BASE;
		iomapaddr=PCIE0_MAP_IO_BASE;
		memmapaddr=PCIE0_MAP_MEM_BASE;
	}
	else if(portnum==1)
	{	rc_cfg=PCIE1_RC_CFG_BASE;
		cfgaddr=PCIE1_EP_CFG_BASE;
		iomapaddr=PCIE1_MAP_IO_BASE;
		memmapaddr=PCIE1_MAP_MEM_BASE;	
	}
	else 
	{	return 0;
	}
	
	int t=REG32(rc_cfg);
	unsigned int vid=t&0x0000ffff;   //0x819810EC
	unsigned int pid=(t&0xffff0000) >>16;
	
	if( (vid!= 0x10ec) || (pid!=0x8196))
	{	DBG_PRINT("VID=%x, PID=%x \n", vid, pid );
		DBG_PRINT(" !!!  Read VID PID fail !!! \n");
		//at_errcnt++;
		return;
	}

	
      REG32(rc_cfg + 0x04)= 0x00100007; 
      REG32(cfgaddr + 0x04)= 0x00100007;    

	  
      REG32(cfgaddr + 0x10)= (iomapaddr | 0x00000001) & 0x1FFFFFFF;  // Set BAR0
      if(REG32(cfgaddr + 0x10) != ((iomapaddr | 0x00000001) & 0x1FFFFFFF))
      {	//at_errcnt++;
      		DBG_PRINT("Fail, Read Bar0=%x \n", REG32(cfgaddr + 0x10)); //for test
      	}
	  
      REG32(cfgaddr + 0x18)= (memmapaddr | 0x00000004) & 0x1FFFFFFF;  // Set BAR1
	if(REG32(cfgaddr + 0x18)!=((memmapaddr| 0x00000004) & 0x1FFFFFFF))
	{	//at_errcnt++;
      		DBG_PRINT("Fail, Read Bar1=%x \n", REG32(cfgaddr + 0x18));      //for test
	}
	DBG_PRINT("Set BAR finish \n");
	



}


void power_on_led(void)
{
	char *arg_v[] = {"hinit", "0"};
	unsigned int reg;

	// wlan led
	PCIE_reset_procedure(0, 0, 1);
	PCIE_Host_Init(2, arg_v);
	reg = (REG32(PCIE0_EP_CFG_BASE + 0x18) & 0xffff0000) | 0xb0000000;
	DBG_PRINT("PCIe config base reg 0x%08x\n", reg);
	(*(volatile u32 *)(reg + 0x4c)) = ((*(volatile u32 *)(reg + 0x4c)) & 0xFF00FFFF) | 0x00600000;
}
