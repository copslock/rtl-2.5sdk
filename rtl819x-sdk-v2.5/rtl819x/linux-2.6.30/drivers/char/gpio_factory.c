#include <linux/module.h>
#include <linux/init.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/proc_fs.h>
#include <linux/sched.h>
#include <linux/timer.h>
#include <linux/delay.h>


MODULE_LICENSE("GPL");
MODULE_AUTHOR("zhouqingwei");
int led_timer_on = 0;
int time_flag = 0;
struct timer_list ledtimer;
int wl_gpio_on(void)
{
	*(volatile unsigned long *)(0xb900004c) = 0x00208282;
}
int wl_gpio_off(void)
{
	*(volatile unsigned long *)(0xb900004c) = 0x00608282;
}
int sys_gpio_on(void)
{
	int val32;
	val32 = *(volatile unsigned int *)0xb8000040;
	*(volatile unsigned int *)0xb8000040 = val32 | (3 << 20);
	val32 = *(volatile unsigned int *)0xb8003500;
	*(volatile unsigned int *)0xb8003500 = val32 & ~((1 << 6) );
	val32 = *(volatile unsigned int *)0xb8003508;
	*(volatile unsigned int *)0xb8003508 = val32 | ((1 << 6) );
	val32 = *(volatile unsigned int *)0xb800350C;
	*(volatile unsigned int *)0xb800350C = val32 & ~((1 << 6) );
	return 0;
}
int sys_gpio_off(void)
{
	*(volatile unsigned int *)0xb8000040 |= (3 << 20);
	*(volatile unsigned int *)0xb8003500 &= ~((1 << 6));
	*(volatile unsigned int *)0xb8003508 |= ((1 << 6));
	*(volatile unsigned int *)0xb800350C |= ((1 << 6));

}
void led_timer_handler(unsigned long data)
{
	if((!time_flag) && (led_timer_on == 1)){
		printk("led on...\n");
		wl_gpio_on();
		sys_gpio_on();
		time_flag = 1;
		ledtimer.expires = jiffies + HZ*3 / 10;
		add_timer(&ledtimer);
	}
	else if((time_flag == 1) && (led_timer_on == 1)){
		printk("led off...\n");
		wl_gpio_off();
		sys_gpio_off();
		time_flag = 0;
		ledtimer.expires = jiffies + HZ / 5;
		add_timer(&ledtimer);
	}
	else if(led_timer_on == 0){
		printk("del timer...\n");
		del_timer(&ledtimer);

	}

}
int gpio_led_write(struct file *file, const char * buffer,unsigned long count, void *data)
{
	char cmd[100];
	copy_from_user(cmd,buffer,count);
	if(!memcmp(cmd,"ledtimeron",10)){
		led_timer_on = 1;
		printk("led off...\n");
		init_timer(&ledtimer);
		ledtimer.function = led_timer_handler;
		ledtimer.expires = jiffies + HZ / 5;
		ledtimer.data = 123;
		add_timer(&ledtimer);

	}
	else if(!memcmp(cmd,"ledtimeroff",11)){
		led_timer_on = 0;
	}
	return count;	
}
int gpio_led_read(char *page,char **start,off_t off,int count,int * eof,void *data)
{
	int len;
	sys_gpio_on();
	len = sprintf(page,"aaaaaaaa\n");
	return len;
}
int gpio_module_init(void)
{
	struct proc_dir_entry* gpio_led_proc;
	gpio_led_proc = create_proc_entry("led_gpio",0644,NULL);
	gpio_led_proc->read_proc = gpio_led_read;
	gpio_led_proc->write_proc = gpio_led_write;
	printk("gpio_led modeule success!!!!\n");
	return 0;

}

module_init(gpio_module_init);
