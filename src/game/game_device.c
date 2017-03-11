volatile int tick =0;

void timer_event()
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
		}
	}
}

void
release_key(int index) {
	letter_pressed[index] = FALSE;
}

int last_key_code(void) {
	return key_code;
}

void
keyboard_event(int code) {
	key_code = code;
	press_key(code);
}





