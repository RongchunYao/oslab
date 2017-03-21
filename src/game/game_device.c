#include "../../include/common.h"
#define TRUE 1
#define FALSE 0
volatile static int tick =0;

void timer_event()
{
tick ++;
}

int get_time()
{
return tick;
}

void time_pop()
{
tick ++;
}
static volatile int key_code = 0;

static int letter_code[] = {
	30, 48, 46, 32, 18, 33, 34, 35, 23, 36,
	37, 38, 50, 49, 24, 25, 16, 19, 31, 20,
	22, 47, 17, 45, 21, 44
};

static bool letter_pressed[26];

void
press_key(int scan_code) {
	int i;
	for (i = 0; i < 26; i ++) {
		if (letter_code[i] == scan_code) {
			letter_pressed[i] = TRUE;
			if(i==0||i==('s'-'a')||i==('d'-'a')||i==('w'-'a')||i==('r'-'a'))
			{
				if(i==0&&key_code==('d'-'a')) return;
				if(i==('d'-'a')&&key_code==0) return;
				if(i==('s'-'a')&&key_code==('w'-'a')) return;
				if(i==('w'-'a')&&key_code==('s'-'a')) return;
				key_code=i;
			}
 		}
	}
	for (i = 0; i < 26; i ++) {
		if (letter_code[i] == (scan_code-0x80)) {
			letter_pressed[i] = FALSE;
		}
	}
}


int last_key_code(void) {
	return key_code;
}

void reset_last_key()
{
	key_code=0;
}
void
keyboard_event(int code) {
	press_key(code);
}





