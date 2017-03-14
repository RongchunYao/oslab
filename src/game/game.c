#define game_name "crazy snake"
#define game_over "GAME OVER"
#include "../../include/common.h"
#include "../../include/intr.h"
void draw_string(const char *, int , int , int) ;
void draw_big_string(const char*, int ,int , int);
void display_all();
void reset_last_key();
void init();

struct snake
{
	int color;
	int x;
	int y;
	snake* next;
}


extern int last_key_code();
extern int get_time();

static int direction; //snake moving direction
static int x;         //snake position  
static int y;         //snake position

void game_loop()
{
	while(1)
	{
		int win_or_lose=0;
		x=20; y=20; 
		reset_last_key();
		while(1)
		{
			direction=last_key_code();
			if(get_time()%1000==0)
			{
			init();
			asm volatile("cli");
			//printk("%d\n",direction);
			if(direction==0) {y--; if(y<0) break; }
			else if(direction==('s'-'a')){x++; if(x>=200)break; }
			else if(direction==('d'-'a')){y++; if(y>=320)break;}
			else {x--; if(x<0) break;}
			asm volatile("sti");				
			draw_string(game_name,0,0,4);
			draw_snake(x,y);
			display_all();
			}	
		}
		if(win_or_lose==0) 
		{
			init();
			draw_string("please press r to restart",100,80,5);
			draw_big_string(game_over,80,100,4);
			display_all();
		}
		reset_last_key();
		while(1)
		{
			int temp=last_key_code(); 
			asm volatile("cli");
			if(temp==('r'-'a')){asm volatile("sti");break;}
			asm volatile("sti");
		}
	}
}










