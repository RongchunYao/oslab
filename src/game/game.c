#define game_name "crazy snake"
#define game_over "GAME OVER"
#define game_win  "YOU WIN"
#include "type.h"
int mark;
void time_pop();
void change(int ,char *);
void draw_string(const char *, int , int , int) ;
void draw_big_string(const char*, int ,int , int);
void draw_snake(int ,int ,int);
void draw_food(int ,int ,int);
void display_all();
void reset_last_key();
void srand(int);
int rand();
void init();
int nr_snake;
int win_or_lose;
char mark_str[10];
extern int getpid();

typedef struct
{
	int color;
	int x;
	int y;
}snake;


snake ta[1001]; // ta[0] use as a temp

snake tail;

void draw_mark()
{
	change(mark-1,mark_str);
	if(mark<=10)
	draw_string(mark_str,0,312,47);
	else if(mark<=100) 
	draw_string(mark_str,0,304,47);
	else draw_string(mark_str,0,296,47);
}


extern int last_key_code();
extern int get_time();

static int direction; //snake moving direction
static int x;         //food position  
static int y;         //food position
static int food_color; //food color

void draw_whole_snake()
{
	int i;
#ifdef DEBUG
	print("%d\n",nr_snake);
#endif
	for(i=1;i<=nr_snake;i++)
	{
#ifdef DEBUG
		print("%d,%d,%d\n",ta[i].x,ta[i].y,ta[i].color);
#endif
		draw_snake(ta[i].x,ta[i].y,ta[i].color);	
	}	

	draw_food(x,y,food_color);
}

void make_food()
{
	x=96;
	y=88;
	food_color=4;
}

int do_move()
{	
	int i; int j;	
	ta[0].x=ta[1].x;
	ta[0].y=ta[1].y;
	ta[0].color=ta[1].color;
	tail.x=ta[nr_snake].x;	
	tail.y=ta[nr_snake].y;
	if(direction==0) {ta[1].y-=8; if(ta[1].y<0) {return 0;}}
	else if(direction==('s'-'a')){ta[1].x+=8; if(ta[1].x>=200) { return 0;} }
	else if(direction==('d'-'a')){ta[1].y+=8; if(ta[1].y>=320){ return 0;}}
	else {ta[1].x-=8; if(ta[1].x<0) {return 0;}}
	for(i=nr_snake;i>=2;i--)
	{
		if(i==2) {ta[i].x=ta[0].x; ta[i].y=ta[0].y;}
		else {ta[i].x=ta[i-1].x; ta[i].y=ta[i-1].y;}
	}
	if(ta[1].x==x&&ta[1].y==y)
	{
		mark++;
		nr_snake++;
		ta[nr_snake].x=tail.x;
		ta[nr_snake].y=tail.y;
		int tt;
		for(tt=nr_snake;tt>=2;tt--)
		{
			ta[tt].color=ta[tt-1].color;
		}
		ta[1].color=food_color;
		food_color=rand()%63+32;
		while(1)
		{
			j=0;
			x=rand()%192; x=x-(x%8);
			y=rand()%312; y=y-(y%8);
			for(i=1;i<=nr_snake;i++)
			{
				if(x==ta[i].x&&y==ta[i].y) {j=1; continue;}
			}
			if(j==0) break;
		}
		 draw_whole_snake(); display_all(); 
	}
	for(i=2;i<=nr_snake;i++)
	{
		if(ta[1].x==ta[i].x&&ta[1].y==ta[i].y) { return 0;}
	}
	if(nr_snake==50) return 2;
	else return 1;
}

void game_init()
{
	mark=0;
	srand(get_time()%1000);
	nr_snake=2;
	win_or_lose=1;  
	ta[1].x=96; ta[1].y=96; 
	ta[1].color=1;
	ta[2].x=96; ta[2].y=104; ta[2].color=6;
	make_food();
	reset_last_key();
}


void game_loop()
{
	while(1)
	{	
		print("user pid is %d\n",getpid());
		print("%dhello! game start! This is the test for print %x\n",123456,123456);
		game_init(); 
		while(1)
		{		
			direction=last_key_code();
			if(get_time()%200==0)
			{
			init();
			win_or_lose=do_move();
			if(win_or_lose!=1) break;		
			draw_string(game_name,0,0,4);
			draw_mark();
			draw_whole_snake();
			display_all(); 
			time_pop();
			}
				
		}
		if(win_or_lose==0) 
		{
			init();
			draw_string("please press r to restart",100,80,5);
			draw_big_string(game_over,80,100,4);
			display_all();
		}
		else
		{
			init();
			draw_string("please press r to restart",100,80,5);
			draw_big_string(game_win,80,120,4);
			display_all();
		}
		reset_last_key();
		while(1)
		{
			int temp=last_key_code(); 
			if(temp==('r'-'a')){break;}
		}
	}
}






