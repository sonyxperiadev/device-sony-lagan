char const*const LCD_FILE		= "/sys/devices/i2c-0/0-0036/leds/lcd-backlight-1/brightness";
char const*const LCD2_FILE		= "/sys/devices/i2c-0/0-0036/leds/lcd-backlight-2/brightness";
char const*const RED_LED_FILE		= "/sys/devices/i2c-0/0-0036/leds/red/brightness";
char const*const GREEN_LED_FILE		= "/sys/devices/i2c-0/0-0036/leds/green/brightness";
char const*const BLUE_LED_FILE		= "/sys/devices/i2c-0/0-0036/leds/blue/brightness";
char const*const SYNC_LVBANKS		= "/sys/devices/i2c-0/0-0036/sync_lvbanks";

char const*const LED_FILE_PATTERN[]	= {
					  "/sys/devices/i2c-0/0-0036/leds/red/pattern",
					  "/sys/devices/i2c-0/0-0036/leds/green/pattern",
					  "/sys/devices/i2c-0/0-0036/leds/blue/pattern",
					  };

char const*const PATTERNOFF		= "0,0,0,0";


