# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c"




# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 1 3 4
# 47 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h" 1 3 4
# 76 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h" 3 4

# 76 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h" 3 4
typedef __builtin_va_list __va_list;
# 126 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h" 3 4
struct __mbstate_s {
  int __state;
  long __wchar;
};

typedef int (__RAL_mb_encode_t)(char *s, unsigned wc, struct __mbstate_s *codec);
typedef int (__RAL_mb_decode_t)(unsigned *pwc, const char *s, unsigned len, struct __mbstate_s *codec);

typedef struct {

  const char *decimal_point;
  const char *thousands_sep;
  const char *grouping;

  const char *int_curr_symbol;
  const char *currency_symbol;
  const char *mon_decimal_point;
  const char *mon_thousands_sep;
  const char *mon_grouping;
  const char *positive_sign;
  const char *negative_sign;

  char int_frac_digits;
  char frac_digits;
  char p_cs_precedes;
  char p_sep_by_space;
  char n_cs_precedes;
  char n_sep_by_space;
  char p_sign_posn;
  char n_sign_posn;
  char int_p_cs_precedes;
  char int_n_cs_precedes;
  char int_p_sep_by_space;
  char int_n_sep_by_space;
  char int_p_sign_posn;
  char int_n_sign_posn;




  const char *day_names;
  const char *abbrev_day_names;
  const char *month_names;
  const char *abbrev_month_names;
  const char *am_pm_indicator;
  const char *date_format;
  const char *time_format;
  const char *date_time_format;
} __RAL_locale_data_t;

enum {
  __RAL_WC_ALNUM = 1,
  __RAL_WC_ALPHA,
  __RAL_WC_CNTRL,
  __RAL_WC_DIGIT,
  __RAL_WC_GRAPH,
  __RAL_WC_LOWER,
  __RAL_WC_UPPER,
  __RAL_WC_SPACE,
  __RAL_WC_PRINT,
  __RAL_WC_PUNCT,
  __RAL_WC_BLANK,
  __RAL_WC_XDIGIT
};

enum {
  __RAL_WT_TOLOWER = 1,
  __RAL_WT_TOUPPER
};

typedef struct {

  int (*__isctype)(int, int);
  int (*__toupper)(int);
  int (*__tolower)(int);


  int (*__iswctype)(long, int);
  long (*__towupper)(long);
  long (*__towlower)(long);


  int (*__wctomb)(char *s, unsigned wc, struct __mbstate_s *state);
  int (*__mbtowc)(unsigned *pwc, const char *s, unsigned len, struct __mbstate_s *state);
} __RAL_locale_codeset_t;

typedef struct {
  const char *name;
  const __RAL_locale_data_t *data;
  const __RAL_locale_codeset_t *codeset;
} __RAL_locale_t;



typedef struct __locale_s {
  const __RAL_locale_t *__category[5];
} *__locale_t;


const __RAL_locale_t *__user_find_locale(const char *locale);
# 239 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h" 3 4
const __RAL_locale_t *__RAL_find_locale(const char *locale);







const __RAL_locale_t *__RAL_global_locale_category(int __category);







const __RAL_locale_t *__RAL_locale_category(__locale_t __locale, int __category);






extern struct __locale_s __RAL_global_locale;






extern const __RAL_locale_t __RAL_c_locale;


extern const __RAL_locale_codeset_t __RAL_codeset_ascii;
extern const __RAL_locale_codeset_t __RAL_codeset_utf8;

extern const unsigned char __RAL_ascii_ctype_map[128];

extern const char __RAL_c_locale_day_names[];
extern const char __RAL_c_locale_abbrev_day_names[];
extern const char __RAL_c_locale_month_names[];
extern const char __RAL_c_locale_abbrev_month_names[];

extern const char __RAL_data_utf8_period[];
extern const char __RAL_data_utf8_comma[];
extern const char __RAL_data_utf8_space[];
extern const char __RAL_data_utf8_plus[];
extern const char __RAL_data_utf8_minus[];
extern const char __RAL_data_empty_string[];

const char *__RAL_string_list_decode(const char *str, int index);
int __RAL_string_list_encode(const char *list, const char *str);


void __RAL_init_mbstate(struct __mbstate_s *state);

int __RAL_ascii_wctomb(char *s, unsigned wc, struct __mbstate_s *state);
int __RAL_ascii_mbtowc(unsigned *pwc, const char *s, unsigned len, struct __mbstate_s *state);

int __RAL_utf8_wctomb(char *s, unsigned wc, struct __mbstate_s *state);
int __RAL_utf8_mbtowc(unsigned *pwc, const char *s, unsigned len, struct __mbstate_s *state);

int __RAL_mb_max(const struct __locale_s *loc);

struct timeval;


int __RAL_compare_locale_name(const char *str0, const char *str1);


extern int (*__user_set_time_of_day)(const struct timeval *tp);
extern int (*__user_get_time_of_day)(struct timeval *tp);


typedef struct { unsigned short min, max, map; } __RAL_unicode_map_bmp_range_t;
typedef struct { unsigned short cp, map; } __RAL_unicode_map_bmp_singleton_t;


typedef struct { unsigned short min, max; } __RAL_unicode_set_bmp_range_t;
typedef struct { long min, max; } __RAL_unicode_set_nonbmp_range_t;


int __RAL_unicode_iswctype(long ch, int ty);
long __RAL_unicode_towupper(long ch);
long __RAL_unicode_towlower(long ch);


int __RAL_unicode_map_range_search(const void *k0, const void *k1);
int __RAL_unicode_map_singleton_search(const void *k0, const void *k1);


int __RAL_unicode_set_bmp_range_search(const void *k0, const void *k1);
int __RAL_unicode_set_nonbmp_range_search(const void *k0, const void *k1);

typedef const char * (*__RAL_error_decoder_fn_t)(int error);

typedef struct __RAL_error_decoder_s
{
  __RAL_error_decoder_fn_t decode;
  struct __RAL_error_decoder_s *next;
} __RAL_error_decoder_t;

void __RAL_register_error_decoder(__RAL_error_decoder_t *decoder);

extern __RAL_error_decoder_t *__RAL_error_decoder_head;

const char *__RAL_decode_error(int num);
# 48 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 2 3 4







typedef unsigned size_t;
# 90 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memcpy(void *__s1, const void *__s2, size_t __n);
# 105 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memcpy_fast(void *__s1, const void *__s2, size_t __n);
# 124 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memccpy(void *__s1, const void *__s2, int __c, size_t __n);
# 138 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *mempcpy(void *__s1, const void *__s2, size_t __n);
# 153 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memmove(void *__s1, const void *__s2, size_t __n);
# 164 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
int memcmp(const void *__s1, const void *__s2, size_t __n);
# 178 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memchr(const void *__s, int __c, size_t __n);
# 188 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
void *memset(void *__s, int __c, size_t __n);
# 199 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strcpy(char *__s1, const char *__s2);
# 219 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strncpy(char *__s1, const char *__s2, size_t __n);
# 236 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
size_t strlcpy(char *__s1, const char *__s2, size_t __n);
# 249 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strcat(char *__s1, const char *__s2);
# 263 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strncat(char *__s1, const char *__s2, size_t __n);
# 284 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
size_t strlcat(char *__s1, const char *__s2, size_t __n);
# 294 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
int strcmp(const char *__s1, const char *__s2);
# 307 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
int strncmp(const char *__s1, const char *__s2, size_t __n);
# 319 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
int strcasecmp(const char *__s1, const char *__s2);
# 334 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
int strncasecmp(const char *__s1, const char *__s2, size_t __n);
# 346 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strchr(const char *__s, int __c);
# 358 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strnchr(const char *__str, size_t __n, int __ch);
# 369 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
size_t strcspn(const char *__s1, const char *__s2);
# 380 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strpbrk(const char *__s1, const char *__s2);
# 392 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strrchr(const char *__s, int __c);
# 403 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
size_t strspn(const char *__s1, const char *__s2);
# 416 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strstr(const char *__s1, const char *__s2);
# 431 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strnstr(const char *__s1, const char *__s2, size_t __n);
# 446 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strcasestr(const char *__s1, const char *__s2);
# 462 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strncasestr(const char *__s1, const char *__s2, size_t __n);







size_t strlen(const char *__s);
# 481 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
size_t strnlen(const char *__s, size_t __n);
# 515 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strtok(char *__s1, const char *__s2);
# 534 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strsep(char **__stringp, const char *__delim);
# 547 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strtok_r(char *__s1, const char *__s2, char **__s3);
# 561 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strdup(const char *__s1);
# 579 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strndup(const char *__s1, size_t __n);
# 592 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h" 3 4
char *strerror(int __num);



int strcoll(const char *__str1, const char *__str2);
size_t strxfrm( char *__str1, const char *__str2, size_t __num);
# 6 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 1 3 4
# 78 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int putchar(int __c);
# 87 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int getchar(void);
# 99 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int puts(const char *__s);
# 116 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
char *gets(char *__s);
# 135 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int sprintf(char *__s, const char *__format, ...);
# 163 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int snprintf(char *__s, size_t __n, const char *__format, ...);
# 199 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int vsnprintf(char *__s, size_t __n, const char *__format, __va_list __arg);
# 445 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int printf(const char *__format, ...);
# 465 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int vprintf(const char *__format, __va_list __arg);
# 494 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int vsprintf(char *__s, const char *__format, __va_list __arg);
# 695 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int scanf(const char *__format, ...);
# 715 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int sscanf(const char *__s, const char *__format, ...);
# 741 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int vscanf(const char *__format, __va_list __arg);
# 765 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
int vsscanf(const char *__s, const char *__format, __va_list __arg);





typedef struct __printf_tag *__printf_tag_ptr;

int __putchar(int, __printf_tag_ptr);
# 791 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h" 3 4
typedef struct __RAL_FILE FILE;


typedef long fpos_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
void clearerr(FILE *);
int fclose(FILE *);
int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
int fgetc(FILE *);
int fgetpos(FILE *, fpos_t *);
char *fgets(char *, int, FILE *);
int fileno(FILE *);
FILE *fopen(const char *, const char *);
int fprintf(FILE *, const char *, ...);
int fputc(int, FILE *);
int fputs(const char *, FILE *);
size_t fread(void *, size_t, size_t, FILE *);
FILE *freopen(const char *, const char *, FILE *);
int fscanf(FILE *, const char *, ...);
int fseek(FILE *, long, int);
int fsetpos(FILE *, const fpos_t *);
long ftell(FILE *);
size_t fwrite(const void *, size_t, size_t, FILE *);
int getc(FILE *);
void perror(const char *);
int putc(int, FILE *);
int remove(const char *);
int rename(const char *, const char *);
void rewind(FILE *);
void setbuf(FILE *, char *);
int setvbuf(FILE *, char *, int, size_t);
FILE *tmpfile(void);
char *tmpnam(char *);
int ungetc(int, FILE *);
int vfprintf(FILE *, const char *, __va_list);
int vfscanf(FILE *, const char *, __va_list);
# 7 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 1 3 4
# 69 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h" 3 4
typedef __va_list va_list;
# 8 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\arq.h" 1



# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h" 1 3 4
# 47 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h" 3 4
typedef signed char int8_t;
typedef unsigned char uint8_t;




typedef signed short int16_t;
typedef unsigned short uint16_t;
typedef signed int int32_t;
typedef unsigned int uint32_t;
# 68 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h" 3 4
typedef signed long long int64_t;
typedef unsigned long long uint64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;
typedef int32_t int_least32_t;
typedef int64_t int_least64_t;

typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;
typedef uint32_t uint_least32_t;
typedef uint64_t uint_least64_t;



typedef int32_t int_fast8_t;
typedef int32_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef int64_t int_fast64_t;

typedef uint32_t uint_fast8_t;
typedef uint32_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
typedef uint64_t uint_fast64_t;

typedef int32_t intptr_t;
typedef uint32_t uintptr_t;
# 118 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h" 3 4
typedef int64_t intmax_t;
typedef uint64_t uintmax_t;
# 5 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\arq.h" 2


# 6 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\arq.h"
typedef uint8_t arq_connection;

void arq_init(void);

arq_connection arq_new_connection(void);
uint8_t arq_connect(arq_connection id, uint8_t remote_addr, void (*func)(uint8_t*, uint16_t), uint16_t timeout);
arq_connection arq_listen(void (*func)(uint8_t*, uint16_t));
uint8_t arq_close_connection(arq_connection id);
uint8_t arq_send(arq_connection id, uint8_t *data, uint16_t len);
uint8_t arq_send_string(arq_connection id, char *str);
void vARQTask(void *pvParamters);
# 9 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2
# 1 "../../../drivers/defines.h" 1
# 10 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2
# 1 "../../../drivers/functions.h" 1
# 12 "../../../drivers/functions.h"
void vFunc_Inf2pi(float *angle_in_radians);


void vFunc_ParseUpdate(char *cin, float *theta, int16_t *radius);


void vFunc_reverse(char* p, char* q);


char* vFunc_inc(char* s, char* e);


char* vFunc_ftoa(double num, char* dest, int afterPoint);
# 40 "../../../drivers/functions.h"
 int16_t objectPosX(int16_t i16_sensorT, uint8_t ui8_sensorDelta, int8_t i8_servoAngle, float f_robotTheta, float f_robotX);



 int16_t objectPosY(int16_t i16_sensorT, uint8_t ui8_sensorDelta, int8_t i8_servoAngle, float f_robotTheta, float f_robotY);




void goRobotPos(int16_t i16_goX, int16_t i16_goY, float f_robotX, float f_robotY, uint8_t *ui8_targetHeading, int8_t *i8_targetDistance);
# 11 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.h" 1
# 25 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.h"
typedef struct {
  uint8_t name_length;
  uint8_t name[3];
  uint16_t width;
  uint16_t length;
  uint8_t tower_offset_x;
  uint8_t tower_offset_y;
  uint8_t axel_offset;
  uint8_t sensor_offset1;
  uint8_t sensor_offset2;
  uint8_t sensor_offset3;
  uint8_t sensor_offset4;
  uint16_t sensor_heading1;
  uint16_t sensor_heading2;
  uint16_t sensor_heading3;
  uint16_t sensor_heading4;
  uint16_t deadline;
} __attribute__((packed)) handshake_message_t;

typedef struct {
  int16_t x;
  int16_t y;
  int16_t heading;
  int16_t tower_angle;
  uint8_t sensor1;
  uint8_t sensor2;
  uint8_t sensor3;
  uint8_t sensor4;
} __attribute__((packed)) update_message_t;

typedef struct {
  int16_t x;
  int16_t y;
} __attribute__((packed)) order_message_t;

union Message {
  update_message_t update;
  handshake_message_t handshake;
  order_message_t order;
};

typedef struct {
  uint8_t type;
  union Message message;
} __attribute__((packed)) message_t;

void server_communication_init(void);
uint8_t server_connect(void);
uint8_t send_handshake(void);
void send_update(int16_t x_cm, int16_t y_cm, int16_t heading_deg, int16_t towerAngle_deg, uint8_t S1_cm, uint8_t S2_cm, uint8_t S3_cm, uint8_t S4_cm);
void send_idle(void);
void send_ping_response(void);
void server_receiver(uint8_t *data, uint16_t len);
void debug(const char *fmt, ...);
# 12 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2
# 1 "../../../../../../external/freertos/source/include/FreeRTOS.h" 1
# 35 "../../../../../../external/freertos/source/include/FreeRTOS.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h" 1 3 4
# 62 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h" 3 4

# 62 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 77 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h" 3 4
typedef unsigned wchar_t;
# 36 "../../../../../../external/freertos/source/include/FreeRTOS.h" 2
# 57 "../../../../../../external/freertos/source/include/FreeRTOS.h"
# 1 "../../../config/FreeRTOSConfig.h" 1
# 34 "../../../config/FreeRTOSConfig.h"
# 1 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
# 51 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
# 1 "../../../../../../modules/nrfx/mdk/nrf.h" 1
# 84 "../../../../../../modules/nrfx/mdk/nrf.h"
# 1 "../../../../../../modules/nrfx/mdk/nrf52.h" 1
# 74 "../../../../../../modules/nrfx/mdk/nrf52.h"

# 74 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef enum {

  Reset_IRQn = -15,
  NonMaskableInt_IRQn = -14,
  HardFault_IRQn = -13,
  MemoryManagement_IRQn = -12,

  BusFault_IRQn = -11,

  UsageFault_IRQn = -10,
  SVCall_IRQn = -5,
  DebugMonitor_IRQn = -4,
  PendSV_IRQn = -2,
  SysTick_IRQn = -1,

  POWER_CLOCK_IRQn = 0,
  RADIO_IRQn = 1,
  UARTE0_UART0_IRQn = 2,
  SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn= 3,
  SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn= 4,
  NFCT_IRQn = 5,
  GPIOTE_IRQn = 6,
  SAADC_IRQn = 7,
  TIMER0_IRQn = 8,
  TIMER1_IRQn = 9,
  TIMER2_IRQn = 10,
  RTC0_IRQn = 11,
  TEMP_IRQn = 12,
  RNG_IRQn = 13,
  ECB_IRQn = 14,
  CCM_AAR_IRQn = 15,
  WDT_IRQn = 16,
  RTC1_IRQn = 17,
  QDEC_IRQn = 18,
  COMP_LPCOMP_IRQn = 19,
  SWI0_EGU0_IRQn = 20,
  SWI1_EGU1_IRQn = 21,
  SWI2_EGU2_IRQn = 22,
  SWI3_EGU3_IRQn = 23,
  SWI4_EGU4_IRQn = 24,
  SWI5_EGU5_IRQn = 25,
  TIMER3_IRQn = 26,
  TIMER4_IRQn = 27,
  PWM0_IRQn = 28,
  PDM_IRQn = 29,
  MWU_IRQn = 32,
  PWM1_IRQn = 33,
  PWM2_IRQn = 34,
  SPIM2_SPIS2_SPI2_IRQn = 35,
  RTC2_IRQn = 36,
  I2S_IRQn = 37,
  FPU_IRQn = 38
} IRQn_Type;
# 146 "../../../../../../modules/nrfx/mdk/nrf52.h"
# 1 "../../../../../../components/toolchain/cmsis/include/core_cm4.h" 1
# 210 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
# 1 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h" 1
# 61 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
# 1 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
# 40 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wsign-conversion"
#pragma GCC diagnostic ignored "-Wconversion"
#pragma GCC diagnostic ignored "-Wunused-parameter"
# 58 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline void __enable_irq(void)
{
  __asm volatile ("cpsie i" : : : "memory");
}







__attribute__( ( always_inline ) ) static inline void __disable_irq(void)
{
  __asm volatile ("cpsid i" : : : "memory");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_CONTROL(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, control" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline void __set_CONTROL(uint32_t control)
{
  __asm volatile ("MSR control, %0" : : "r" (control) : "memory");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_IPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, ipsr" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_APSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, apsr" : "=r" (result) );
  return(result);
}
# 134 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_xPSR(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, xpsr" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_PSP(void)
{
  register uint32_t result;

  __asm volatile ("MRS %0, psp\n" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline void __set_PSP(uint32_t topOfProcStack)
{
  __asm volatile ("MSR psp, %0\n" : : "r" (topOfProcStack) : "sp");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_MSP(void)
{
  register uint32_t result;

  __asm volatile ("MRS %0, msp\n" : "=r" (result) );
  return(result);
}
# 188 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline void __set_MSP(uint32_t topOfMainStack)
{
  __asm volatile ("MSR msp, %0\n" : : "r" (topOfMainStack) : "sp");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, primask" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline void __set_PRIMASK(uint32_t priMask)
{
  __asm volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
}
# 226 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline void __enable_fault_irq(void)
{
  __asm volatile ("cpsie f" : : : "memory");
}







__attribute__( ( always_inline ) ) static inline void __disable_fault_irq(void)
{
  __asm volatile ("cpsid f" : : : "memory");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_BASEPRI(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, basepri" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline void __set_BASEPRI(uint32_t value)
{
  __asm volatile ("MSR basepri, %0" : : "r" (value) : "memory");
}
# 274 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline void __set_BASEPRI_MAX(uint32_t value)
{
  __asm volatile ("MSR basepri_max, %0" : : "r" (value) : "memory");
}







__attribute__( ( always_inline ) ) static inline uint32_t __get_FAULTMASK(void)
{
  uint32_t result;

  __asm volatile ("MRS %0, faultmask" : "=r" (result) );
  return(result);
}







__attribute__( ( always_inline ) ) static inline void __set_FAULTMASK(uint32_t faultMask)
{
  __asm volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
}
# 314 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __get_FPSCR(void)
{

  uint32_t result;


  __asm volatile ("");
  __asm volatile ("VMRS %0, fpscr" : "=r" (result) );
  __asm volatile ("");
  return(result);



}







__attribute__( ( always_inline ) ) static inline void __set_FPSCR(uint32_t fpscr)
{


  __asm volatile ("");
  __asm volatile ("VMSR fpscr, %0" : : "r" (fpscr) : "vfpcc");
  __asm volatile ("");

}
# 373 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __NOP(void)
{
  __asm volatile ("nop");
}






__attribute__((always_inline)) static inline void __WFI(void)
{
  __asm volatile ("wfi");
}







__attribute__((always_inline)) static inline void __WFE(void)
{
  __asm volatile ("wfe");
}






__attribute__((always_inline)) static inline void __SEV(void)
{
  __asm volatile ("sev");
}
# 416 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __ISB(void)
{
  __asm volatile ("isb 0xF":::"memory");
}







__attribute__((always_inline)) static inline void __DSB(void)
{
  __asm volatile ("dsb 0xF":::"memory");
}







__attribute__((always_inline)) static inline void __DMB(void)
{
  __asm volatile ("dmb 0xF":::"memory");
}
# 450 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{

  return __builtin_bswap32(value);






}
# 469 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rev16 %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 484 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline int32_t __REVSH(int32_t value)
{

  return (short)__builtin_bswap16(value);






}
# 504 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __ROR(uint32_t op1, uint32_t op2)
{
  return (op1 >> op2) | (op1 << (32U - op2));
}
# 526 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __RBIT(uint32_t value)
{
  uint32_t result;


   __asm volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
# 544 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
  return(result);
}
# 565 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __LDREXB(volatile uint8_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrexb %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint8_t) result);
}
# 587 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint16_t __LDREXH(volatile uint16_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrexh %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint16_t) result);
}
# 609 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __LDREXW(volatile uint32_t *addr)
{
    uint32_t result;

   __asm volatile ("ldrex %0, %1" : "=r" (result) : "Q" (*addr) );
   return(result);
}
# 626 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXB(uint8_t value, volatile uint8_t *addr)
{
   uint32_t result;

   __asm volatile ("strexb %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" ((uint32_t)value) );
   return(result);
}
# 643 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXH(uint16_t value, volatile uint16_t *addr)
{
   uint32_t result;

   __asm volatile ("strexh %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" ((uint32_t)value) );
   return(result);
}
# 660 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __STREXW(uint32_t value, volatile uint32_t *addr)
{
   uint32_t result;

   __asm volatile ("strex %0, %2, %1" : "=&r" (result), "=Q" (*addr) : "r" (value) );
   return(result);
}






__attribute__((always_inline)) static inline void __CLREX(void)
{
  __asm volatile ("clrex" ::: "memory");
}
# 716 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __RRX(uint32_t value)
{
  uint32_t result;

  __asm volatile ("rrx %0, %1" : "=r" (result) : "r" (value) );
  return(result);
}
# 731 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint8_t __LDRBT(volatile uint8_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrbt %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint8_t) result);
}
# 753 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint16_t __LDRHT(volatile uint16_t *addr)
{
    uint32_t result;


   __asm volatile ("ldrht %0, %1" : "=r" (result) : "Q" (*addr) );






   return ((uint16_t) result);
}
# 775 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline uint32_t __LDRT(volatile uint32_t *addr)
{
    uint32_t result;

   __asm volatile ("ldrt %0, %1" : "=r" (result) : "Q" (*addr) );
   return(result);
}
# 790 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRBT(uint8_t value, volatile uint8_t *addr)
{
   __asm volatile ("strbt %1, %0" : "=Q" (*addr) : "r" ((uint32_t)value) );
}
# 802 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRHT(uint16_t value, volatile uint16_t *addr)
{
   __asm volatile ("strht %1, %0" : "=Q" (*addr) : "r" ((uint32_t)value) );
}
# 814 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__((always_inline)) static inline void __STRT(uint32_t value, volatile uint32_t *addr)
{
   __asm volatile ("strt %1, %0" : "=Q" (*addr) : "r" (value) );
}
# 832 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __SADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHADD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__( ( always_inline ) ) static inline uint32_t __SSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHSUB8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}


__attribute__( ( always_inline ) ) static inline uint32_t __SADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHADD16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhadd16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHSUB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsub16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHASX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhasx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("ssax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __QSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("qsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("shsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UQSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uqsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UHSAX(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uhsax %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USAD8(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("usad8 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __USADA8(uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("usada8 %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}
# 1152 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __UXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("uxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __UXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("uxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SXTB16(uint32_t op1)
{
  uint32_t result;

  __asm volatile ("sxtb16 %0, %1" : "=r" (result) : "r" (op1));
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SXTAB16(uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sxtab16 %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUAD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuad %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUADX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smuadx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLAD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlad %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLADX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smladx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLALD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlald %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLALDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlaldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUSD (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMUSDX (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("smusdx %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLSD (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsd %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SMLSDX (uint32_t op1, uint32_t op2, uint32_t op3)
{
  uint32_t result;

  __asm volatile ("smlsdx %0, %1, %2, %3" : "=r" (result) : "r" (op1), "r" (op2), "r" (op3) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLSLD (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsld %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint64_t __SMLSLDX (uint32_t op1, uint32_t op2, uint64_t acc)
{
  union llreg_u{
    uint32_t w32[2];
    uint64_t w64;
  } llr;
  llr.w64 = acc;


  __asm volatile ("smlsldx %0, %1, %2, %3" : "=r" (llr.w32[0]), "=r" (llr.w32[1]): "r" (op1), "r" (op2) , "0" (llr.w32[0]), "1" (llr.w32[1]) );




  return(llr.w64);
}

__attribute__( ( always_inline ) ) static inline uint32_t __SEL (uint32_t op1, uint32_t op2)
{
  uint32_t result;

  __asm volatile ("sel %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline int32_t __QADD( int32_t op1, int32_t op2)
{
  int32_t result;

  __asm volatile ("qadd %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}

__attribute__( ( always_inline ) ) static inline int32_t __QSUB( int32_t op1, int32_t op2)
{
  int32_t result;

  __asm volatile ("qsub %0, %1, %2" : "=r" (result) : "r" (op1), "r" (op2) );
  return(result);
}
# 1357 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
__attribute__( ( always_inline ) ) static inline uint32_t __SMMLA (int32_t op1, int32_t op2, int32_t op3)
{
 int32_t result;

 __asm volatile ("smmla %0, %1, %2, %3" : "=r" (result): "r" (op1), "r" (op2), "r" (op3) );
 return(result);
}






#pragma GCC diagnostic pop
# 62 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h" 2
# 211 "../../../../../../components/toolchain/cmsis/include/core_cm4.h" 2
# 1 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h" 1
# 212 "../../../../../../components/toolchain/cmsis/include/core_cm4.h" 2
# 1 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h" 1
# 213 "../../../../../../components/toolchain/cmsis/include/core_cm4.h" 2
# 308 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef union
{
  struct
  {
    uint32_t _reserved0:16;
    uint32_t GE:4;
    uint32_t _reserved1:7;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} APSR_Type;
# 347 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:23;
  } b;
  uint32_t w;
} IPSR_Type;
# 365 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef union
{
  struct
  {
    uint32_t ISR:9;
    uint32_t _reserved0:7;
    uint32_t GE:4;
    uint32_t _reserved1:4;
    uint32_t T:1;
    uint32_t IT:2;
    uint32_t Q:1;
    uint32_t V:1;
    uint32_t C:1;
    uint32_t Z:1;
    uint32_t N:1;
  } b;
  uint32_t w;
} xPSR_Type;
# 416 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef union
{
  struct
  {
    uint32_t nPRIV:1;
    uint32_t SPSEL:1;
    uint32_t FPCA:1;
    uint32_t _reserved0:29;
  } b;
  uint32_t w;
} CONTROL_Type;
# 451 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile uint32_t ISER[8U];
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];
        uint32_t RSERVED1[24U];
  volatile uint32_t ISPR[8U];
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];
        uint32_t RESERVED4[56U];
  volatile uint8_t IP[240U];
        uint32_t RESERVED5[644U];
  volatile uint32_t STIR;
} NVIC_Type;
# 485 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile const uint32_t CPUID;
  volatile uint32_t ICSR;
  volatile uint32_t VTOR;
  volatile uint32_t AIRCR;
  volatile uint32_t SCR;
  volatile uint32_t CCR;
  volatile uint8_t SHP[12U];
  volatile uint32_t SHCSR;
  volatile uint32_t CFSR;
  volatile uint32_t HFSR;
  volatile uint32_t DFSR;
  volatile uint32_t MMFAR;
  volatile uint32_t BFAR;
  volatile uint32_t AFSR;
  volatile const uint32_t PFR[2U];
  volatile const uint32_t DFR;
  volatile const uint32_t ADR;
  volatile const uint32_t MMFR[4U];
  volatile const uint32_t ISAR[5U];
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;
} SCB_Type;
# 704 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const uint32_t ICTR;
  volatile uint32_t ACTLR;
} SCnSCB_Type;
# 744 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t LOAD;
  volatile uint32_t VAL;
  volatile const uint32_t CALIB;
} SysTick_Type;
# 796 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile union
  {
    volatile uint8_t u8;
    volatile uint16_t u16;
    volatile uint32_t u32;
  } PORT [32U];
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;
        uint32_t RESERVED3[29U];
  volatile uint32_t IWR;
  volatile const uint32_t IRR;
  volatile uint32_t IMCR;
        uint32_t RESERVED4[43U];
  volatile uint32_t LAR;
  volatile const uint32_t LSR;
        uint32_t RESERVED5[6U];
  volatile const uint32_t PID4;
  volatile const uint32_t PID5;
  volatile const uint32_t PID6;
  volatile const uint32_t PID7;
  volatile const uint32_t PID0;
  volatile const uint32_t PID1;
  volatile const uint32_t PID2;
  volatile const uint32_t PID3;
  volatile const uint32_t CID0;
  volatile const uint32_t CID1;
  volatile const uint32_t CID2;
  volatile const uint32_t CID3;
} ITM_Type;
# 899 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t CYCCNT;
  volatile uint32_t CPICNT;
  volatile uint32_t EXCCNT;
  volatile uint32_t SLEEPCNT;
  volatile uint32_t LSUCNT;
  volatile uint32_t FOLDCNT;
  volatile const uint32_t PCSR;
  volatile uint32_t COMP0;
  volatile uint32_t MASK0;
  volatile uint32_t FUNCTION0;
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;
  volatile uint32_t MASK1;
  volatile uint32_t FUNCTION1;
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;
  volatile uint32_t MASK2;
  volatile uint32_t FUNCTION2;
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;
  volatile uint32_t MASK3;
  volatile uint32_t FUNCTION3;
} DWT_Type;
# 1046 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile uint32_t SSPSR;
  volatile uint32_t CSPSR;
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;
        uint32_t RESERVED2[131U];
  volatile const uint32_t FFSR;
  volatile uint32_t FFCR;
  volatile const uint32_t FSCR;
        uint32_t RESERVED3[759U];
  volatile const uint32_t TRIGGER;
  volatile const uint32_t FIFO0;
  volatile const uint32_t ITATBCTR2;
        uint32_t RESERVED4[1U];
  volatile const uint32_t ITATBCTR0;
  volatile const uint32_t FIFO1;
  volatile uint32_t ITCTRL;
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;
  volatile uint32_t CLAIMCLR;
        uint32_t RESERVED7[8U];
  volatile const uint32_t DEVID;
  volatile const uint32_t DEVTYPE;
} TPI_Type;
# 1202 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile const uint32_t TYPE;
  volatile uint32_t CTRL;
  volatile uint32_t RNR;
  volatile uint32_t RBAR;
  volatile uint32_t RASR;
  volatile uint32_t RBAR_A1;
  volatile uint32_t RASR_A1;
  volatile uint32_t RBAR_A2;
  volatile uint32_t RASR_A2;
  volatile uint32_t RBAR_A3;
  volatile uint32_t RASR_A3;
} MPU_Type;
# 1297 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;
  volatile uint32_t FPCAR;
  volatile uint32_t FPDSCR;
  volatile const uint32_t MVFR0;
  volatile const uint32_t MVFR1;
} FPU_Type;
# 1404 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
typedef struct
{
  volatile uint32_t DHCSR;
  volatile uint32_t DCRSR;
  volatile uint32_t DCRDR;
  volatile uint32_t DEMCR;
} CoreDebug_Type;
# 1596 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);

  reg_value = ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));
  reg_value = (reg_value |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U) );
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = reg_value;
}







static inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}







static inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}







static inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}
# 1650 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}







static inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}







static inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}
# 1685 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}
# 1698 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) < 0)
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 3)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)] = (uint8_t)((priority << (8U - 3)) & (uint32_t)0xFFUL);
  }
}
# 1720 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) < 0)
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8U - 3)));
  }
  else
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)] >> (8U - 3)));
  }
}
# 1745 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(3)) ? (uint32_t)(3) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(3)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(3));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority & (uint32_t)((1UL << (SubPriorityBits )) - 1UL)))
         );
}
# 1772 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(3)) ? (uint32_t)(3) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits = ((PriorityGroupTmp + (uint32_t)(3)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(3));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority = (Priority ) & (uint32_t)((1UL << (SubPriorityBits )) - 1UL);
}






static inline void NVIC_SystemReset(void)
{
  __DSB();

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR = (uint32_t)((0x5FAUL << 16U) |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U) );
  __DSB();

  for (;;)
  {
    __NOP();
  }
}
# 1830 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = (uint32_t)(ticks - 1UL);
  NVIC_SetPriority (SysTick_IRQn, (1UL << 3) - 1UL);
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL = 0UL;
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2U) |
                   (1UL << 1U) |
                   (1UL );
  return (0UL);
}
# 1860 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
extern volatile int32_t ITM_RxBuffer;
# 1872 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL ) != 0UL) )
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __NOP();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}
# 1893 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;

  if (ITM_RxBuffer != 0x5AA55AA5U)
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5U;
  }

  return (ch);
}
# 1913 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
static inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == 0x5AA55AA5U)
  {
    return (0);
  }
  else
  {
    return (1);
  }
}
# 147 "../../../../../../modules/nrfx/mdk/nrf52.h" 2
# 1 "../../../../../../modules/nrfx/mdk/system_nrf52.h" 1
# 33 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
extern uint32_t SystemCoreClock;
# 44 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
extern void SystemInit (void);
# 55 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
extern void SystemCoreClockUpdate (void);
# 148 "../../../../../../modules/nrfx/mdk/nrf52.h" 2
# 177 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t PART;
  volatile const uint32_t VARIANT;
  volatile const uint32_t PACKAGE;
  volatile const uint32_t RAM;
  volatile const uint32_t FLASH;
  volatile uint32_t UNUSED0[3];
} FICR_INFO_Type;

typedef struct {
  volatile const uint32_t A0;
  volatile const uint32_t A1;
  volatile const uint32_t A2;
  volatile const uint32_t A3;
  volatile const uint32_t A4;
  volatile const uint32_t A5;
  volatile const uint32_t B0;
  volatile const uint32_t B1;
  volatile const uint32_t B2;
  volatile const uint32_t B3;
  volatile const uint32_t B4;
  volatile const uint32_t B5;
  volatile const uint32_t T0;
  volatile const uint32_t T1;
  volatile const uint32_t T2;
  volatile const uint32_t T3;
  volatile const uint32_t T4;
} FICR_TEMP_Type;

typedef struct {
  volatile const uint32_t TAGHEADER0;

  volatile const uint32_t TAGHEADER1;

  volatile const uint32_t TAGHEADER2;

  volatile const uint32_t TAGHEADER3;

} FICR_NFC_Type;

typedef struct {
  volatile uint32_t POWER;
  volatile uint32_t POWERSET;
  volatile uint32_t POWERCLR;
  volatile const uint32_t RESERVED0;
} POWER_RAM_Type;

typedef struct {
  volatile uint32_t RTS;
  volatile uint32_t TXD;
  volatile uint32_t CTS;
  volatile uint32_t RXD;
} UARTE_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} UARTE_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} UARTE_TXD_Type;

typedef struct {
  volatile uint32_t SCK;
  volatile uint32_t MOSI;
  volatile uint32_t MISO;
} SPIM_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
  volatile uint32_t LIST;
} SPIM_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
  volatile uint32_t LIST;
} SPIM_TXD_Type;

typedef struct {
  volatile uint32_t SCK;
  volatile uint32_t MISO;
  volatile uint32_t MOSI;
  volatile uint32_t CSN;
} SPIS_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} SPIS_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} SPIS_TXD_Type;

typedef struct {
  volatile uint32_t SCL;
  volatile uint32_t SDA;
} TWIM_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
  volatile uint32_t LIST;
} TWIM_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
  volatile uint32_t LIST;
} TWIM_TXD_Type;

typedef struct {
  volatile uint32_t SCL;
  volatile uint32_t SDA;
} TWIS_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} TWIS_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} TWIS_TXD_Type;

typedef struct {
  volatile uint32_t SCK;
  volatile uint32_t MOSI;
  volatile uint32_t MISO;
} SPI_PSEL_Type;

typedef struct {
  volatile uint32_t RX;
} NFCT_FRAMESTATUS_Type;

typedef struct {
  volatile uint32_t FRAMECONFIG;
  volatile uint32_t AMOUNT;
} NFCT_TXD_Type;

typedef struct {
  volatile uint32_t FRAMECONFIG;
  volatile const uint32_t AMOUNT;
} NFCT_RXD_Type;

typedef struct {
  volatile uint32_t LIMITH;
  volatile uint32_t LIMITL;
} SAADC_EVENTS_CH_Type;

typedef struct {
  volatile uint32_t PSELP;
  volatile uint32_t PSELN;
  volatile uint32_t CONFIG;
  volatile uint32_t LIMIT;

} SAADC_CH_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
  volatile const uint32_t AMOUNT;
} SAADC_RESULT_Type;

typedef struct {
  volatile uint32_t LED;
  volatile uint32_t A;
  volatile uint32_t B;
} QDEC_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;

  volatile uint32_t CNT;

  volatile uint32_t REFRESH;

  volatile uint32_t ENDDELAY;
  volatile const uint32_t RESERVED1[4];
} PWM_SEQ_Type;

typedef struct {
  volatile uint32_t OUT[4];

} PWM_PSEL_Type;

typedef struct {
  volatile uint32_t CLK;
  volatile uint32_t DIN;
} PDM_PSEL_Type;

typedef struct {
  volatile uint32_t PTR;
  volatile uint32_t MAXCNT;
} PDM_SAMPLE_Type;

typedef struct {
  volatile uint32_t EN;
  volatile uint32_t DIS;
} PPI_TASKS_CHG_Type;

typedef struct {
  volatile uint32_t EEP;
  volatile uint32_t TEP;
} PPI_CH_Type;

typedef struct {
  volatile uint32_t TEP;
} PPI_FORK_Type;

typedef struct {
  volatile uint32_t WA;
  volatile uint32_t RA;
} MWU_EVENTS_REGION_Type;

typedef struct {
  volatile uint32_t WA;

  volatile uint32_t RA;
} MWU_EVENTS_PREGION_Type;

typedef struct {
  volatile uint32_t SUBSTATWA;


  volatile uint32_t SUBSTATRA;


} MWU_PERREGION_Type;

typedef struct {
  volatile uint32_t START;
  volatile uint32_t END;
  volatile const uint32_t RESERVED2[2];
} MWU_REGION_Type;

typedef struct {
  volatile const uint32_t START;
  volatile const uint32_t END;
  volatile uint32_t SUBS;
  volatile const uint32_t RESERVED3;
} MWU_PREGION_Type;

typedef struct {
  volatile uint32_t MODE;
  volatile uint32_t RXEN;
  volatile uint32_t TXEN;
  volatile uint32_t MCKEN;
  volatile uint32_t MCKFREQ;
  volatile uint32_t RATIO;
  volatile uint32_t SWIDTH;
  volatile uint32_t ALIGN;
  volatile uint32_t FORMAT;
  volatile uint32_t CHANNELS;
} I2S_CONFIG_Type;

typedef struct {
  volatile uint32_t PTR;
} I2S_RXD_Type;

typedef struct {
  volatile uint32_t PTR;
} I2S_TXD_Type;

typedef struct {
  volatile uint32_t MAXCNT;
} I2S_RXTXD_Type;

typedef struct {
  volatile uint32_t MCK;
  volatile uint32_t SCK;
  volatile uint32_t LRCK;
  volatile uint32_t SDIN;
  volatile uint32_t SDOUT;
} I2S_PSEL_Type;
# 479 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[4];
  volatile const uint32_t CODEPAGESIZE;
  volatile const uint32_t CODESIZE;
  volatile const uint32_t RESERVED1[18];
  volatile const uint32_t DEVICEID[2];
  volatile const uint32_t RESERVED2[6];
  volatile const uint32_t ER[4];
  volatile const uint32_t IR[4];
  volatile const uint32_t DEVICEADDRTYPE;
  volatile const uint32_t DEVICEADDR[2];
  volatile const uint32_t RESERVED3[21];
  FICR_INFO_Type INFO;
  volatile const uint32_t RESERVED4[185];
  FICR_TEMP_Type TEMP;
  volatile const uint32_t RESERVED5[2];
  FICR_NFC_Type NFC;
} NRF_FICR_Type;
# 508 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t UNUSED0;
  volatile uint32_t UNUSED1;
  volatile uint32_t UNUSED2;
  volatile const uint32_t RESERVED0;
  volatile uint32_t UNUSED3;
  volatile uint32_t NRFFW[15];
  volatile uint32_t NRFHW[12];
  volatile uint32_t CUSTOMER[32];
  volatile const uint32_t RESERVED1[64];
  volatile uint32_t PSELRESET[2];

  volatile uint32_t APPROTECT;
  volatile uint32_t NFCPINS;

} NRF_UICR_Type;
# 535 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[384];
  volatile uint32_t CONFIG0;
  volatile uint32_t CONFIG1;
  volatile uint32_t DISABLEINDEBUG;
  volatile uint32_t UNUSED0;
  volatile uint32_t CONFIG2;
  volatile uint32_t CONFIG3;
} NRF_BPROT_Type;
# 555 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[30];
  volatile uint32_t TASKS_CONSTLAT;
  volatile uint32_t TASKS_LOWPWR;
  volatile const uint32_t RESERVED1[34];
  volatile uint32_t EVENTS_POFWARN;
  volatile const uint32_t RESERVED2[2];
  volatile uint32_t EVENTS_SLEEPENTER;
  volatile uint32_t EVENTS_SLEEPEXIT;
  volatile const uint32_t RESERVED3[122];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED4[61];
  volatile uint32_t RESETREAS;
  volatile const uint32_t RESERVED5[9];
  volatile const uint32_t RAMSTATUS;
  volatile const uint32_t RESERVED6[53];
  volatile uint32_t SYSTEMOFF;
  volatile const uint32_t RESERVED7[3];
  volatile uint32_t POFCON;
  volatile const uint32_t RESERVED8[2];
  volatile uint32_t GPREGRET;
  volatile uint32_t GPREGRET2;
  volatile uint32_t RAMON;

  volatile const uint32_t RESERVED9[11];
  volatile uint32_t RAMONB;

  volatile const uint32_t RESERVED10[8];
  volatile uint32_t DCDCEN;
  volatile const uint32_t RESERVED11[225];
  POWER_RAM_Type RAM[8];
} NRF_POWER_Type;
# 599 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_HFCLKSTART;
  volatile uint32_t TASKS_HFCLKSTOP;
  volatile uint32_t TASKS_LFCLKSTART;
  volatile uint32_t TASKS_LFCLKSTOP;
  volatile uint32_t TASKS_CAL;
  volatile uint32_t TASKS_CTSTART;
  volatile uint32_t TASKS_CTSTOP;
  volatile const uint32_t RESERVED0[57];
  volatile uint32_t EVENTS_HFCLKSTARTED;
  volatile uint32_t EVENTS_LFCLKSTARTED;
  volatile const uint32_t RESERVED1;
  volatile uint32_t EVENTS_DONE;
  volatile uint32_t EVENTS_CTTO;
  volatile const uint32_t RESERVED2[124];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[63];
  volatile const uint32_t HFCLKRUN;
  volatile const uint32_t HFCLKSTAT;
  volatile const uint32_t RESERVED4;
  volatile const uint32_t LFCLKRUN;
  volatile const uint32_t LFCLKSTAT;
  volatile const uint32_t LFCLKSRCCOPY;
  volatile const uint32_t RESERVED5[62];
  volatile uint32_t LFCLKSRC;
  volatile const uint32_t RESERVED6[7];
  volatile uint32_t CTIV;
  volatile const uint32_t RESERVED7[8];
  volatile uint32_t TRACECONFIG;
} NRF_CLOCK_Type;
# 641 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_TXEN;
  volatile uint32_t TASKS_RXEN;
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_DISABLE;
  volatile uint32_t TASKS_RSSISTART;

  volatile uint32_t TASKS_RSSISTOP;
  volatile uint32_t TASKS_BCSTART;
  volatile uint32_t TASKS_BCSTOP;
  volatile const uint32_t RESERVED0[55];
  volatile uint32_t EVENTS_READY;
  volatile uint32_t EVENTS_ADDRESS;
  volatile uint32_t EVENTS_PAYLOAD;
  volatile uint32_t EVENTS_END;
  volatile uint32_t EVENTS_DISABLED;
  volatile uint32_t EVENTS_DEVMATCH;
  volatile uint32_t EVENTS_DEVMISS;
  volatile uint32_t EVENTS_RSSIEND;
  volatile const uint32_t RESERVED1[2];
  volatile uint32_t EVENTS_BCMATCH;
  volatile const uint32_t RESERVED2;
  volatile uint32_t EVENTS_CRCOK;
  volatile uint32_t EVENTS_CRCERROR;
  volatile const uint32_t RESERVED3[50];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED4[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED5[61];
  volatile const uint32_t CRCSTATUS;
  volatile const uint32_t RESERVED6;
  volatile const uint32_t RXMATCH;
  volatile const uint32_t RXCRC;
  volatile const uint32_t DAI;
  volatile const uint32_t RESERVED7[60];
  volatile uint32_t PACKETPTR;
  volatile uint32_t FREQUENCY;
  volatile uint32_t TXPOWER;
  volatile uint32_t MODE;
  volatile uint32_t PCNF0;
  volatile uint32_t PCNF1;
  volatile uint32_t BASE0;
  volatile uint32_t BASE1;
  volatile uint32_t PREFIX0;
  volatile uint32_t PREFIX1;
  volatile uint32_t TXADDRESS;
  volatile uint32_t RXADDRESSES;
  volatile uint32_t CRCCNF;
  volatile uint32_t CRCPOLY;
  volatile uint32_t CRCINIT;
  volatile uint32_t UNUSED0;
  volatile uint32_t TIFS;
  volatile const uint32_t RSSISAMPLE;
  volatile const uint32_t RESERVED8;
  volatile const uint32_t STATE;
  volatile uint32_t DATAWHITEIV;
  volatile const uint32_t RESERVED9[2];
  volatile uint32_t BCC;
  volatile const uint32_t RESERVED10[39];
  volatile uint32_t DAB[8];
  volatile uint32_t DAP[8];
  volatile uint32_t DACNF;
  volatile const uint32_t RESERVED11[3];
  volatile uint32_t MODECNF0;
  volatile const uint32_t RESERVED12[618];
  volatile uint32_t POWER;
} NRF_RADIO_Type;
# 721 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_STARTRX;
  volatile uint32_t TASKS_STOPRX;
  volatile uint32_t TASKS_STARTTX;
  volatile uint32_t TASKS_STOPTX;
  volatile const uint32_t RESERVED0[7];
  volatile uint32_t TASKS_FLUSHRX;
  volatile const uint32_t RESERVED1[52];
  volatile uint32_t EVENTS_CTS;
  volatile uint32_t EVENTS_NCTS;
  volatile uint32_t EVENTS_RXDRDY;

  volatile const uint32_t RESERVED2;
  volatile uint32_t EVENTS_ENDRX;
  volatile const uint32_t RESERVED3[2];
  volatile uint32_t EVENTS_TXDRDY;
  volatile uint32_t EVENTS_ENDTX;
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED4[7];
  volatile uint32_t EVENTS_RXTO;
  volatile const uint32_t RESERVED5;
  volatile uint32_t EVENTS_RXSTARTED;
  volatile uint32_t EVENTS_TXSTARTED;
  volatile const uint32_t RESERVED6;
  volatile uint32_t EVENTS_TXSTOPPED;
  volatile const uint32_t RESERVED7[41];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED8[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED9[93];
  volatile uint32_t ERRORSRC;
  volatile const uint32_t RESERVED10[31];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED11;
  UARTE_PSEL_Type PSEL;
  volatile const uint32_t RESERVED12[3];
  volatile uint32_t BAUDRATE;
  volatile const uint32_t RESERVED13[3];
  UARTE_RXD_Type RXD;
  volatile const uint32_t RESERVED14;
  UARTE_TXD_Type TXD;
  volatile const uint32_t RESERVED15[7];
  volatile uint32_t CONFIG;
} NRF_UARTE_Type;
# 778 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_STARTRX;
  volatile uint32_t TASKS_STOPRX;
  volatile uint32_t TASKS_STARTTX;
  volatile uint32_t TASKS_STOPTX;
  volatile const uint32_t RESERVED0[3];
  volatile uint32_t TASKS_SUSPEND;
  volatile const uint32_t RESERVED1[56];
  volatile uint32_t EVENTS_CTS;
  volatile uint32_t EVENTS_NCTS;
  volatile uint32_t EVENTS_RXDRDY;
  volatile const uint32_t RESERVED2[4];
  volatile uint32_t EVENTS_TXDRDY;
  volatile const uint32_t RESERVED3;
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED4[7];
  volatile uint32_t EVENTS_RXTO;
  volatile const uint32_t RESERVED5[46];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED6[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED7[93];
  volatile uint32_t ERRORSRC;
  volatile const uint32_t RESERVED8[31];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED9;
  volatile uint32_t PSELRTS;
  volatile uint32_t PSELTXD;
  volatile uint32_t PSELCTS;
  volatile uint32_t PSELRXD;
  volatile const uint32_t RXD;
  volatile uint32_t TXD;
  volatile const uint32_t RESERVED10;
  volatile uint32_t BAUDRATE;
  volatile const uint32_t RESERVED11[17];
  volatile uint32_t CONFIG;
} NRF_UART_Type;
# 827 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[4];
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED1;
  volatile uint32_t TASKS_SUSPEND;
  volatile uint32_t TASKS_RESUME;
  volatile const uint32_t RESERVED2[56];
  volatile uint32_t EVENTS_STOPPED;
  volatile const uint32_t RESERVED3[2];
  volatile uint32_t EVENTS_ENDRX;
  volatile const uint32_t RESERVED4;
  volatile uint32_t EVENTS_END;
  volatile const uint32_t RESERVED5;
  volatile uint32_t EVENTS_ENDTX;
  volatile const uint32_t RESERVED6[10];
  volatile uint32_t EVENTS_STARTED;
  volatile const uint32_t RESERVED7[44];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED8[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED9[125];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED10;
  SPIM_PSEL_Type PSEL;
  volatile const uint32_t RESERVED11[4];
  volatile uint32_t FREQUENCY;
  volatile const uint32_t RESERVED12[3];
  SPIM_RXD_Type RXD;
  SPIM_TXD_Type TXD;
  volatile uint32_t CONFIG;
  volatile const uint32_t RESERVED13[26];
  volatile uint32_t ORC;

} NRF_SPIM_Type;
# 874 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[9];
  volatile uint32_t TASKS_ACQUIRE;
  volatile uint32_t TASKS_RELEASE;
  volatile const uint32_t RESERVED1[54];
  volatile uint32_t EVENTS_END;
  volatile const uint32_t RESERVED2[2];
  volatile uint32_t EVENTS_ENDRX;
  volatile const uint32_t RESERVED3[5];
  volatile uint32_t EVENTS_ACQUIRED;
  volatile const uint32_t RESERVED4[53];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED5[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED6[61];
  volatile const uint32_t SEMSTAT;
  volatile const uint32_t RESERVED7[15];
  volatile uint32_t STATUS;
  volatile const uint32_t RESERVED8[47];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED9;
  SPIS_PSEL_Type PSEL;
  volatile const uint32_t RESERVED10[7];
  SPIS_RXD_Type RXD;
  volatile const uint32_t RESERVED11;
  SPIS_TXD_Type TXD;
  volatile const uint32_t RESERVED12;
  volatile uint32_t CONFIG;
  volatile const uint32_t RESERVED13;
  volatile uint32_t DEF;

  volatile const uint32_t RESERVED14[24];
  volatile uint32_t ORC;
} NRF_SPIS_Type;
# 920 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_STARTRX;
  volatile const uint32_t RESERVED0;
  volatile uint32_t TASKS_STARTTX;
  volatile const uint32_t RESERVED1[2];
  volatile uint32_t TASKS_STOP;

  volatile const uint32_t RESERVED2;
  volatile uint32_t TASKS_SUSPEND;
  volatile uint32_t TASKS_RESUME;
  volatile const uint32_t RESERVED3[56];
  volatile uint32_t EVENTS_STOPPED;
  volatile const uint32_t RESERVED4[7];
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED5[8];
  volatile uint32_t EVENTS_SUSPENDED;

  volatile uint32_t EVENTS_RXSTARTED;
  volatile uint32_t EVENTS_TXSTARTED;
  volatile const uint32_t RESERVED6[2];
  volatile uint32_t EVENTS_LASTRX;
  volatile uint32_t EVENTS_LASTTX;
  volatile const uint32_t RESERVED7[39];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED8[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED9[110];
  volatile uint32_t ERRORSRC;
  volatile const uint32_t RESERVED10[14];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED11;
  TWIM_PSEL_Type PSEL;
  volatile const uint32_t RESERVED12[5];
  volatile uint32_t FREQUENCY;
  volatile const uint32_t RESERVED13[3];
  TWIM_RXD_Type RXD;
  TWIM_TXD_Type TXD;
  volatile const uint32_t RESERVED14[13];
  volatile uint32_t ADDRESS;
} NRF_TWIM_Type;
# 973 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[5];
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED1;
  volatile uint32_t TASKS_SUSPEND;
  volatile uint32_t TASKS_RESUME;
  volatile const uint32_t RESERVED2[3];
  volatile uint32_t TASKS_PREPARERX;
  volatile uint32_t TASKS_PREPARETX;
  volatile const uint32_t RESERVED3[51];
  volatile uint32_t EVENTS_STOPPED;
  volatile const uint32_t RESERVED4[7];
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED5[9];
  volatile uint32_t EVENTS_RXSTARTED;
  volatile uint32_t EVENTS_TXSTARTED;
  volatile const uint32_t RESERVED6[4];
  volatile uint32_t EVENTS_WRITE;
  volatile uint32_t EVENTS_READ;
  volatile const uint32_t RESERVED7[37];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED8[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED9[113];
  volatile uint32_t ERRORSRC;
  volatile const uint32_t MATCH;
  volatile const uint32_t RESERVED10[10];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED11;
  TWIS_PSEL_Type PSEL;
  volatile const uint32_t RESERVED12[9];
  TWIS_RXD_Type RXD;
  volatile const uint32_t RESERVED13;
  TWIS_TXD_Type TXD;
  volatile const uint32_t RESERVED14[14];
  volatile uint32_t ADDRESS[2];
  volatile const uint32_t RESERVED15;
  volatile uint32_t CONFIG;
  volatile const uint32_t RESERVED16[10];
  volatile uint32_t ORC;

} NRF_TWIS_Type;
# 1028 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[66];
  volatile uint32_t EVENTS_READY;
  volatile const uint32_t RESERVED1[126];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[125];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED3;
  SPI_PSEL_Type PSEL;
  volatile const uint32_t RESERVED4;
  volatile const uint32_t RXD;
  volatile uint32_t TXD;
  volatile const uint32_t RESERVED5;
  volatile uint32_t FREQUENCY;
  volatile const uint32_t RESERVED6[11];
  volatile uint32_t CONFIG;
} NRF_SPI_Type;
# 1057 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_STARTRX;
  volatile const uint32_t RESERVED0;
  volatile uint32_t TASKS_STARTTX;
  volatile const uint32_t RESERVED1[2];
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED2;
  volatile uint32_t TASKS_SUSPEND;
  volatile uint32_t TASKS_RESUME;
  volatile const uint32_t RESERVED3[56];
  volatile uint32_t EVENTS_STOPPED;
  volatile uint32_t EVENTS_RXDREADY;
  volatile const uint32_t RESERVED4[4];
  volatile uint32_t EVENTS_TXDSENT;
  volatile const uint32_t RESERVED5;
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED6[4];
  volatile uint32_t EVENTS_BB;

  volatile const uint32_t RESERVED7[3];
  volatile uint32_t EVENTS_SUSPENDED;
  volatile const uint32_t RESERVED8[45];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED9[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED10[110];
  volatile uint32_t ERRORSRC;
  volatile const uint32_t RESERVED11[14];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED12;
  volatile uint32_t PSELSCL;
  volatile uint32_t PSELSDA;
  volatile const uint32_t RESERVED13[2];
  volatile const uint32_t RXD;
  volatile uint32_t TXD;
  volatile const uint32_t RESERVED14;
  volatile uint32_t FREQUENCY;
  volatile const uint32_t RESERVED15[24];
  volatile uint32_t ADDRESS;
} NRF_TWI_Type;
# 1109 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_ACTIVATE;

  volatile uint32_t TASKS_DISABLE;
  volatile uint32_t TASKS_SENSE;
  volatile uint32_t TASKS_STARTTX;
  volatile const uint32_t RESERVED0[3];
  volatile uint32_t TASKS_ENABLERXDATA;
  volatile const uint32_t RESERVED1;
  volatile uint32_t TASKS_GOIDLE;
  volatile uint32_t TASKS_GOSLEEP;
  volatile const uint32_t RESERVED2[53];
  volatile uint32_t EVENTS_READY;
  volatile uint32_t EVENTS_FIELDDETECTED;
  volatile uint32_t EVENTS_FIELDLOST;
  volatile uint32_t EVENTS_TXFRAMESTART;
  volatile uint32_t EVENTS_TXFRAMEEND;
  volatile uint32_t EVENTS_RXFRAMESTART;
  volatile uint32_t EVENTS_RXFRAMEEND;

  volatile uint32_t EVENTS_ERROR;

  volatile const uint32_t RESERVED3[2];
  volatile uint32_t EVENTS_RXERROR;

  volatile uint32_t EVENTS_ENDRX;
  volatile uint32_t EVENTS_ENDTX;

  volatile const uint32_t RESERVED4;
  volatile uint32_t EVENTS_AUTOCOLRESSTARTED;
  volatile const uint32_t RESERVED5[3];
  volatile uint32_t EVENTS_COLLISION;
  volatile uint32_t EVENTS_SELECTED;
  volatile uint32_t EVENTS_STARTED;
  volatile const uint32_t RESERVED6[43];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED7[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED8[62];
  volatile uint32_t ERRORSTATUS;
  volatile const uint32_t RESERVED9;
  NFCT_FRAMESTATUS_Type FRAMESTATUS;
  volatile const uint32_t RESERVED10[8];
  volatile const uint32_t CURRENTLOADCTRL;
  volatile const uint32_t RESERVED11[2];
  volatile const uint32_t FIELDPRESENT;
  volatile const uint32_t RESERVED12[49];
  volatile uint32_t FRAMEDELAYMIN;
  volatile uint32_t FRAMEDELAYMAX;
  volatile uint32_t FRAMEDELAYMODE;
  volatile uint32_t PACKETPTR;
  volatile uint32_t MAXLEN;

  NFCT_TXD_Type TXD;
  NFCT_RXD_Type RXD;
  volatile const uint32_t RESERVED13[26];
  volatile uint32_t NFCID1_LAST;
  volatile uint32_t NFCID1_2ND_LAST;
  volatile uint32_t NFCID1_3RD_LAST;
  volatile const uint32_t RESERVED14;
  volatile uint32_t SENSRES;
  volatile uint32_t SELRES;
} NRF_NFCT_Type;
# 1185 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_OUT[8];

  volatile const uint32_t RESERVED0[4];
  volatile uint32_t TASKS_SET[8];

  volatile const uint32_t RESERVED1[4];
  volatile uint32_t TASKS_CLR[8];

  volatile const uint32_t RESERVED2[32];
  volatile uint32_t EVENTS_IN[8];

  volatile const uint32_t RESERVED3[23];
  volatile uint32_t EVENTS_PORT;

  volatile const uint32_t RESERVED4[97];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED5[129];
  volatile uint32_t CONFIG[8];

} NRF_GPIOTE_Type;
# 1218 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_SAMPLE;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_CALIBRATEOFFSET;
  volatile const uint32_t RESERVED0[60];
  volatile uint32_t EVENTS_STARTED;
  volatile uint32_t EVENTS_END;
  volatile uint32_t EVENTS_DONE;


  volatile uint32_t EVENTS_RESULTDONE;
  volatile uint32_t EVENTS_CALIBRATEDONE;
  volatile uint32_t EVENTS_STOPPED;
  SAADC_EVENTS_CH_Type EVENTS_CH[8];
  volatile const uint32_t RESERVED1[106];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[61];
  volatile const uint32_t STATUS;
  volatile const uint32_t RESERVED3[63];
  volatile uint32_t ENABLE;
  volatile const uint32_t RESERVED4[3];
  SAADC_CH_Type CH[8];
  volatile const uint32_t RESERVED5[24];
  volatile uint32_t RESOLUTION;
  volatile uint32_t OVERSAMPLE;


  volatile uint32_t SAMPLERATE;
  volatile const uint32_t RESERVED6[12];
  SAADC_RESULT_Type RESULT;
} NRF_SAADC_Type;
# 1263 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_COUNT;
  volatile uint32_t TASKS_CLEAR;
  volatile uint32_t TASKS_SHUTDOWN;
  volatile const uint32_t RESERVED0[11];
  volatile uint32_t TASKS_CAPTURE[6];
  volatile const uint32_t RESERVED1[58];
  volatile uint32_t EVENTS_COMPARE[6];
  volatile const uint32_t RESERVED2[42];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED3[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED4[126];
  volatile uint32_t MODE;
  volatile uint32_t BITMODE;
  volatile const uint32_t RESERVED5;
  volatile uint32_t PRESCALER;
  volatile const uint32_t RESERVED6[11];
  volatile uint32_t CC[6];
} NRF_TIMER_Type;
# 1297 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_CLEAR;
  volatile uint32_t TASKS_TRIGOVRFLW;
  volatile const uint32_t RESERVED0[60];
  volatile uint32_t EVENTS_TICK;
  volatile uint32_t EVENTS_OVRFLW;
  volatile const uint32_t RESERVED1[14];
  volatile uint32_t EVENTS_COMPARE[4];
  volatile const uint32_t RESERVED2[109];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[13];
  volatile uint32_t EVTEN;
  volatile uint32_t EVTENSET;
  volatile uint32_t EVTENCLR;
  volatile const uint32_t RESERVED4[110];
  volatile const uint32_t COUNTER;
  volatile uint32_t PRESCALER;

  volatile const uint32_t RESERVED5[13];
  volatile uint32_t CC[4];
} NRF_RTC_Type;
# 1332 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED0[62];
  volatile uint32_t EVENTS_DATARDY;
  volatile const uint32_t RESERVED1[128];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[127];
  volatile const int32_t TEMP;
  volatile const uint32_t RESERVED3[5];
  volatile uint32_t A0;
  volatile uint32_t A1;
  volatile uint32_t A2;
  volatile uint32_t A3;
  volatile uint32_t A4;
  volatile uint32_t A5;
  volatile const uint32_t RESERVED4[2];
  volatile uint32_t B0;
  volatile uint32_t B1;
  volatile uint32_t B2;
  volatile uint32_t B3;
  volatile uint32_t B4;
  volatile uint32_t B5;
  volatile const uint32_t RESERVED5[2];
  volatile uint32_t T0;
  volatile uint32_t T1;
  volatile uint32_t T2;
  volatile uint32_t T3;
  volatile uint32_t T4;
} NRF_TEMP_Type;
# 1374 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED0[62];
  volatile uint32_t EVENTS_VALRDY;

  volatile const uint32_t RESERVED1[63];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED2[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[126];
  volatile uint32_t CONFIG;
  volatile const uint32_t VALUE;
} NRF_RNG_Type;
# 1400 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_STARTECB;
  volatile uint32_t TASKS_STOPECB;
  volatile const uint32_t RESERVED0[62];
  volatile uint32_t EVENTS_ENDECB;
  volatile uint32_t EVENTS_ERRORECB;

  volatile const uint32_t RESERVED1[127];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[126];
  volatile uint32_t ECBDATAPTR;
} NRF_ECB_Type;
# 1424 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_KSGEN;

  volatile uint32_t TASKS_CRYPT;

  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED0[61];
  volatile uint32_t EVENTS_ENDKSGEN;
  volatile uint32_t EVENTS_ENDCRYPT;
  volatile uint32_t EVENTS_ERROR;
  volatile const uint32_t RESERVED1[61];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED2[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[61];
  volatile const uint32_t MICSTATUS;
  volatile const uint32_t RESERVED4[63];
  volatile uint32_t ENABLE;
  volatile uint32_t MODE;
  volatile uint32_t CNFPTR;
  volatile uint32_t INPTR;
  volatile uint32_t OUTPTR;
  volatile uint32_t SCRATCHPTR;
} NRF_CCM_Type;
# 1460 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;

  volatile const uint32_t RESERVED0;
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED1[61];
  volatile uint32_t EVENTS_END;
  volatile uint32_t EVENTS_RESOLVED;
  volatile uint32_t EVENTS_NOTRESOLVED;
  volatile const uint32_t RESERVED2[126];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[61];
  volatile const uint32_t STATUS;
  volatile const uint32_t RESERVED4[63];
  volatile uint32_t ENABLE;
  volatile uint32_t NIRK;
  volatile uint32_t IRKPTR;
  volatile const uint32_t RESERVED5;
  volatile uint32_t ADDRPTR;
  volatile uint32_t SCRATCHPTR;
} NRF_AAR_Type;
# 1493 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile const uint32_t RESERVED0[63];
  volatile uint32_t EVENTS_TIMEOUT;
  volatile const uint32_t RESERVED1[128];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[61];
  volatile const uint32_t RUNSTATUS;
  volatile const uint32_t REQSTATUS;
  volatile const uint32_t RESERVED3[63];
  volatile uint32_t CRV;
  volatile uint32_t RREN;
  volatile uint32_t CONFIG;
  volatile const uint32_t RESERVED4[60];
  volatile uint32_t RR[8];
} NRF_WDT_Type;
# 1521 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_READCLRACC;
  volatile uint32_t TASKS_RDCLRACC;
  volatile uint32_t TASKS_RDCLRDBL;
  volatile const uint32_t RESERVED0[59];
  volatile uint32_t EVENTS_SAMPLERDY;

  volatile uint32_t EVENTS_REPORTRDY;
  volatile uint32_t EVENTS_ACCOF;
  volatile uint32_t EVENTS_DBLRDY;
  volatile uint32_t EVENTS_STOPPED;
  volatile const uint32_t RESERVED1[59];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED2[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[125];
  volatile uint32_t ENABLE;
  volatile uint32_t LEDPOL;
  volatile uint32_t SAMPLEPER;
  volatile const int32_t SAMPLE;
  volatile uint32_t REPORTPER;

  volatile const int32_t ACC;
  volatile const int32_t ACCREAD;

  QDEC_PSEL_Type PSEL;
  volatile uint32_t DBFEN;
  volatile const uint32_t RESERVED4[5];
  volatile uint32_t LEDPRE;
  volatile const uint32_t ACCDBL;
  volatile const uint32_t ACCDBLREAD;

} NRF_QDEC_Type;
# 1568 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_SAMPLE;
  volatile const uint32_t RESERVED0[61];
  volatile uint32_t EVENTS_READY;
  volatile uint32_t EVENTS_DOWN;
  volatile uint32_t EVENTS_UP;
  volatile uint32_t EVENTS_CROSS;
  volatile const uint32_t RESERVED1[60];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED2[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[61];
  volatile const uint32_t RESULT;
  volatile const uint32_t RESERVED4[63];
  volatile uint32_t ENABLE;
  volatile uint32_t PSEL;
  volatile uint32_t REFSEL;
  volatile uint32_t EXTREFSEL;
  volatile const uint32_t RESERVED5[8];
  volatile uint32_t TH;
  volatile uint32_t MODE;
  volatile uint32_t HYST;
  volatile uint32_t ISOURCE;
} NRF_COMP_Type;
# 1607 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile uint32_t TASKS_SAMPLE;
  volatile const uint32_t RESERVED0[61];
  volatile uint32_t EVENTS_READY;
  volatile uint32_t EVENTS_DOWN;
  volatile uint32_t EVENTS_UP;
  volatile uint32_t EVENTS_CROSS;
  volatile const uint32_t RESERVED1[60];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED2[64];
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[61];
  volatile const uint32_t RESULT;
  volatile const uint32_t RESERVED4[63];
  volatile uint32_t ENABLE;
  volatile uint32_t PSEL;
  volatile uint32_t REFSEL;
  volatile uint32_t EXTREFSEL;
  volatile const uint32_t RESERVED5[4];
  volatile uint32_t ANADETECT;
  volatile const uint32_t RESERVED6[5];
  volatile uint32_t HYST;
} NRF_LPCOMP_Type;
# 1644 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t UNUSED;
} NRF_SWI_Type;
# 1658 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_TRIGGER[16];

  volatile const uint32_t RESERVED0[48];
  volatile uint32_t EVENTS_TRIGGERED[16];

  volatile const uint32_t RESERVED1[112];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
} NRF_EGU_Type;
# 1680 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0;
  volatile uint32_t TASKS_STOP;

  volatile uint32_t TASKS_SEQSTART[2];



  volatile uint32_t TASKS_NEXTSTEP;


  volatile const uint32_t RESERVED1[60];
  volatile uint32_t EVENTS_STOPPED;

  volatile uint32_t EVENTS_SEQSTARTED[2];

  volatile uint32_t EVENTS_SEQEND[2];

  volatile uint32_t EVENTS_PWMPERIODEND;
  volatile uint32_t EVENTS_LOOPSDONE;

  volatile const uint32_t RESERVED2[56];
  volatile uint32_t SHORTS;
  volatile const uint32_t RESERVED3[63];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED4[125];
  volatile uint32_t ENABLE;
  volatile uint32_t MODE;
  volatile uint32_t COUNTERTOP;
  volatile uint32_t PRESCALER;
  volatile uint32_t DECODER;
  volatile uint32_t LOOP;
  volatile const uint32_t RESERVED5[2];
  PWM_SEQ_Type SEQ[2];
  PWM_PSEL_Type PSEL;
} NRF_PWM_Type;
# 1729 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;
  volatile uint32_t TASKS_STOP;
  volatile const uint32_t RESERVED0[62];
  volatile uint32_t EVENTS_STARTED;
  volatile uint32_t EVENTS_STOPPED;
  volatile uint32_t EVENTS_END;


  volatile const uint32_t RESERVED1[125];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED2[125];
  volatile uint32_t ENABLE;
  volatile uint32_t PDMCLKCTRL;
  volatile uint32_t MODE;
  volatile const uint32_t RESERVED3[3];
  volatile uint32_t GAINL;
  volatile uint32_t GAINR;
  volatile const uint32_t RESERVED4[8];
  PDM_PSEL_Type PSEL;
  volatile const uint32_t RESERVED5[6];
  PDM_SAMPLE_Type SAMPLE;
} NRF_PDM_Type;
# 1765 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[256];
  volatile const uint32_t READY;
  volatile const uint32_t RESERVED1[64];
  volatile uint32_t CONFIG;

  union {
    volatile uint32_t ERASEPCR1;

    volatile uint32_t ERASEPAGE;
  };
  volatile uint32_t ERASEALL;
  volatile uint32_t ERASEPCR0;

  volatile uint32_t ERASEUICR;
  volatile const uint32_t RESERVED2[10];
  volatile uint32_t ICACHECNF;
  volatile const uint32_t RESERVED3;
  volatile uint32_t IHIT;
  volatile uint32_t IMISS;
} NRF_NVMC_Type;
# 1797 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  PPI_TASKS_CHG_Type TASKS_CHG[6];
  volatile const uint32_t RESERVED0[308];
  volatile uint32_t CHEN;
  volatile uint32_t CHENSET;
  volatile uint32_t CHENCLR;
  volatile const uint32_t RESERVED1;
  PPI_CH_Type CH[20];
  volatile const uint32_t RESERVED2[148];
  volatile uint32_t CHG[6];
  volatile const uint32_t RESERVED3[62];
  PPI_FORK_Type FORK[32];
} NRF_PPI_Type;
# 1821 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[64];
  MWU_EVENTS_REGION_Type EVENTS_REGION[4];
  volatile const uint32_t RESERVED1[16];
  MWU_EVENTS_PREGION_Type EVENTS_PREGION[2];
  volatile const uint32_t RESERVED2[100];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[5];
  volatile uint32_t NMIEN;
  volatile uint32_t NMIENSET;
  volatile uint32_t NMIENCLR;
  volatile const uint32_t RESERVED4[53];
  MWU_PERREGION_Type PERREGION[2];
  volatile const uint32_t RESERVED5[64];
  volatile uint32_t REGIONEN;
  volatile uint32_t REGIONENSET;
  volatile uint32_t REGIONENCLR;
  volatile const uint32_t RESERVED6[57];
  MWU_REGION_Type REGION[4];
  volatile const uint32_t RESERVED7[32];
  MWU_PREGION_Type PREGION[2];
} NRF_MWU_Type;
# 1856 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile uint32_t TASKS_START;

  volatile uint32_t TASKS_STOP;

  volatile const uint32_t RESERVED0[63];
  volatile uint32_t EVENTS_RXPTRUPD;



  volatile uint32_t EVENTS_STOPPED;
  volatile const uint32_t RESERVED1[2];
  volatile uint32_t EVENTS_TXPTRUPD;



  volatile const uint32_t RESERVED2[122];
  volatile uint32_t INTEN;
  volatile uint32_t INTENSET;
  volatile uint32_t INTENCLR;
  volatile const uint32_t RESERVED3[125];
  volatile uint32_t ENABLE;
  I2S_CONFIG_Type CONFIG;
  volatile const uint32_t RESERVED4[3];
  I2S_RXD_Type RXD;
  volatile const uint32_t RESERVED5;
  I2S_TXD_Type TXD;
  volatile const uint32_t RESERVED6[3];
  I2S_RXTXD_Type RXTXD;
  volatile const uint32_t RESERVED7[3];
  I2S_PSEL_Type PSEL;
} NRF_I2S_Type;
# 1899 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t UNUSED;
} NRF_FPU_Type;
# 1913 "../../../../../../modules/nrfx/mdk/nrf52.h"
typedef struct {
  volatile const uint32_t RESERVED0[321];
  volatile uint32_t OUT;
  volatile uint32_t OUTSET;
  volatile uint32_t OUTCLR;
  volatile const uint32_t IN;
  volatile uint32_t DIR;
  volatile uint32_t DIRSET;
  volatile uint32_t DIRCLR;
  volatile uint32_t LATCH;

  volatile uint32_t DETECTMODE;
  volatile const uint32_t RESERVED1[118];
  volatile uint32_t PIN_CNF[32];
} NRF_GPIO_Type;
# 85 "../../../../../../modules/nrfx/mdk/nrf.h" 2
# 1 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h" 1
# 86 "../../../../../../modules/nrfx/mdk/nrf.h" 2
# 1 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h" 1
# 87 "../../../../../../modules/nrfx/mdk/nrf.h" 2
# 1 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h" 1
# 88 "../../../../../../modules/nrfx/mdk/nrf.h" 2
# 97 "../../../../../../modules/nrfx/mdk/nrf.h"
# 1 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h" 1
# 120 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
    static inline unsigned int gcc_current_sp(void)
    {
        register unsigned sp __asm("sp");
        return sp;
    }
# 98 "../../../../../../modules/nrfx/mdk/nrf.h" 2
# 52 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 2
# 1 "../../../../../../components/softdevice/s132/headers/nrf_svc.h" 1
# 53 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 2
# 1 "../../../../../../components/softdevice/s132/headers/nrf_error.h" 1
# 54 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 2
# 1 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h" 1
# 55 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 2
# 104 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
enum NRF_SOC_SVCS
{
  SD_PPI_CHANNEL_ENABLE_GET = (0x20),
  SD_PPI_CHANNEL_ENABLE_SET = (0x20) + 1,
  SD_PPI_CHANNEL_ENABLE_CLR = (0x20) + 2,
  SD_PPI_CHANNEL_ASSIGN = (0x20) + 3,
  SD_PPI_GROUP_TASK_ENABLE = (0x20) + 4,
  SD_PPI_GROUP_TASK_DISABLE = (0x20) + 5,
  SD_PPI_GROUP_ASSIGN = (0x20) + 6,
  SD_PPI_GROUP_GET = (0x20) + 7,
  SD_FLASH_PAGE_ERASE = (0x20) + 8,
  SD_FLASH_WRITE = (0x20) + 9,
  SD_FLASH_PROTECT = (0x20) + 10,
  SD_PROTECTED_REGISTER_WRITE = (0x20) + 11,
  SD_MUTEX_NEW = (0x2C),
  SD_MUTEX_ACQUIRE = (0x2C) + 1,
  SD_MUTEX_RELEASE = (0x2C) + 2,
  SD_RAND_APPLICATION_POOL_CAPACITY_GET = (0x2C) + 3,
  SD_RAND_APPLICATION_BYTES_AVAILABLE_GET = (0x2C) + 4,
  SD_RAND_APPLICATION_VECTOR_GET = (0x2C) + 5,
  SD_POWER_MODE_SET = (0x2C) + 6,
  SD_POWER_SYSTEM_OFF = (0x2C) + 7,
  SD_POWER_RESET_REASON_GET = (0x2C) + 8,
  SD_POWER_RESET_REASON_CLR = (0x2C) + 9,
  SD_POWER_POF_ENABLE = (0x2C) + 10,
  SD_POWER_POF_THRESHOLD_SET = (0x2C) + 11,
  SD_POWER_RAM_POWER_SET = (0x2C) + 13,
  SD_POWER_RAM_POWER_CLR = (0x2C) + 14,
  SD_POWER_RAM_POWER_GET = (0x2C) + 15,
  SD_POWER_GPREGRET_SET = (0x2C) + 16,
  SD_POWER_GPREGRET_CLR = (0x2C) + 17,
  SD_POWER_GPREGRET_GET = (0x2C) + 18,
  SD_POWER_DCDC_MODE_SET = (0x2C) + 19,
  SD_APP_EVT_WAIT = (0x2C) + 21,
  SD_CLOCK_HFCLK_REQUEST = (0x2C) + 22,
  SD_CLOCK_HFCLK_RELEASE = (0x2C) + 23,
  SD_CLOCK_HFCLK_IS_RUNNING = (0x2C) + 24,
  SD_RADIO_NOTIFICATION_CFG_SET = (0x2C) + 25,
  SD_ECB_BLOCK_ENCRYPT = (0x2C) + 26,
  SD_ECB_BLOCKS_ENCRYPT = (0x2C) + 27,
  SD_RADIO_SESSION_OPEN = (0x2C) + 28,
  SD_RADIO_SESSION_CLOSE = (0x2C) + 29,
  SD_RADIO_REQUEST = (0x2C) + 30,
  SD_EVT_GET = (0x2C) + 31,
  SD_TEMP_GET = (0x2C) + 32,
  SVC_SOC_LAST = (0x2C) + 37
};


enum NRF_MUTEX_VALUES
{
  NRF_MUTEX_FREE,
  NRF_MUTEX_TAKEN
};


enum NRF_POWER_MODES
{
  NRF_POWER_MODE_CONSTLAT,
  NRF_POWER_MODE_LOWPWR
};



enum NRF_POWER_THRESHOLDS
{
  NRF_POWER_THRESHOLD_V17 = 4UL,
  NRF_POWER_THRESHOLD_V18,
  NRF_POWER_THRESHOLD_V19,
  NRF_POWER_THRESHOLD_V20,
  NRF_POWER_THRESHOLD_V21,
  NRF_POWER_THRESHOLD_V22,
  NRF_POWER_THRESHOLD_V23,
  NRF_POWER_THRESHOLD_V24,
  NRF_POWER_THRESHOLD_V25,
  NRF_POWER_THRESHOLD_V26,
  NRF_POWER_THRESHOLD_V27,
  NRF_POWER_THRESHOLD_V28
};




enum NRF_POWER_DCDC_MODES
{
  NRF_POWER_DCDC_DISABLE,
  NRF_POWER_DCDC_ENABLE
};


enum NRF_RADIO_NOTIFICATION_DISTANCES
{
  NRF_RADIO_NOTIFICATION_DISTANCE_NONE = 0,
  NRF_RADIO_NOTIFICATION_DISTANCE_800US,
  NRF_RADIO_NOTIFICATION_DISTANCE_1740US,
  NRF_RADIO_NOTIFICATION_DISTANCE_2680US,
  NRF_RADIO_NOTIFICATION_DISTANCE_3620US,
  NRF_RADIO_NOTIFICATION_DISTANCE_4560US,
  NRF_RADIO_NOTIFICATION_DISTANCE_5500US
};



enum NRF_RADIO_NOTIFICATION_TYPES
{
  NRF_RADIO_NOTIFICATION_TYPE_NONE = 0,
  NRF_RADIO_NOTIFICATION_TYPE_INT_ON_ACTIVE,
  NRF_RADIO_NOTIFICATION_TYPE_INT_ON_INACTIVE,
  NRF_RADIO_NOTIFICATION_TYPE_INT_ON_BOTH,
};


enum NRF_RADIO_CALLBACK_SIGNAL_TYPE
{
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_START,
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_TIMER0,
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_RADIO,
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_EXTEND_FAILED,
  NRF_RADIO_CALLBACK_SIGNAL_TYPE_EXTEND_SUCCEEDED
};






enum NRF_RADIO_SIGNAL_CALLBACK_ACTION
{
  NRF_RADIO_SIGNAL_CALLBACK_ACTION_NONE,
  NRF_RADIO_SIGNAL_CALLBACK_ACTION_EXTEND,





  NRF_RADIO_SIGNAL_CALLBACK_ACTION_END,
  NRF_RADIO_SIGNAL_CALLBACK_ACTION_REQUEST_AND_END
};


enum NRF_RADIO_HFCLK_CFG
{
  NRF_RADIO_HFCLK_CFG_XTAL_GUARANTEED,






  NRF_RADIO_HFCLK_CFG_NO_GUARANTEE




};


enum NRF_RADIO_PRIORITY
{
  NRF_RADIO_PRIORITY_HIGH,
  NRF_RADIO_PRIORITY_NORMAL,
};


enum NRF_RADIO_REQUEST_TYPE
{
  NRF_RADIO_REQ_TYPE_EARLIEST,
  NRF_RADIO_REQ_TYPE_NORMAL
};


enum NRF_SOC_EVTS
{
  NRF_EVT_HFCLKSTARTED,
  NRF_EVT_POWER_FAILURE_WARNING,
  NRF_EVT_FLASH_OPERATION_SUCCESS,
  NRF_EVT_FLASH_OPERATION_ERROR,
  NRF_EVT_RADIO_BLOCKED,
  NRF_EVT_RADIO_CANCELED,
  NRF_EVT_RADIO_SIGNAL_CALLBACK_INVALID_RETURN,
  NRF_EVT_RADIO_SESSION_IDLE,
  NRF_EVT_RADIO_SESSION_CLOSED,
  NRF_EVT_NUMBER_OF_EVTS
};
# 298 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
typedef volatile uint8_t nrf_mutex_t;


typedef struct
{
  uint8_t hfclk;
  uint8_t priority;
  uint32_t length_us;
  uint32_t timeout_us;
} nrf_radio_request_earliest_t;


typedef struct
{
  uint8_t hfclk;
  uint8_t priority;
  uint32_t distance_us;
  uint32_t length_us;
} nrf_radio_request_normal_t;


typedef struct
{
  uint8_t request_type;
  union
  {
    nrf_radio_request_earliest_t earliest;
    nrf_radio_request_normal_t normal;
  } params;
} nrf_radio_request_t;


typedef struct
{
  uint8_t callback_action;
  union
  {
    struct
    {
      nrf_radio_request_t * p_next;
    } request;
    struct
    {
      uint32_t length_us;
    } extend;
  } params;
} nrf_radio_signal_callback_return_param_t;
# 358 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
typedef nrf_radio_signal_callback_return_param_t * (*nrf_radio_signal_callback_t) (uint8_t signal_type);


typedef uint8_t soc_ecb_key_t[(16)];
typedef uint8_t soc_ecb_cleartext_t[(16)];
typedef uint8_t soc_ecb_ciphertext_t[((16))];


typedef struct
{
  soc_ecb_key_t key;
  soc_ecb_cleartext_t cleartext;
  soc_ecb_ciphertext_t ciphertext;
} nrf_ecb_hal_data_t;



typedef struct
{
  soc_ecb_key_t const * p_key;
  soc_ecb_cleartext_t const * p_cleartext;
  soc_ecb_ciphertext_t * p_ciphertext;
} nrf_ecb_hal_data_block_t;
# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_mutex_new(nrf_mutex_t * p_mutex) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_MUTEX_NEW) : "r0" ); }
# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_mutex_acquire(nrf_mutex_t * p_mutex) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_MUTEX_ACQUIRE) : "r0" ); }
# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_mutex_release(nrf_mutex_t * p_mutex) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_MUTEX_RELEASE) : "r0" ); }
# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_rand_application_pool_capacity_get(uint8_t * p_pool_capacity) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RAND_APPLICATION_POOL_CAPACITY_GET) : "r0" ); }
# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_rand_application_bytes_available_get(uint8_t * p_bytes_available) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RAND_APPLICATION_BYTES_AVAILABLE_GET) : "r0" ); }
# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_rand_application_vector_get(uint8_t * p_buff, uint8_t length) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RAND_APPLICATION_VECTOR_GET) : "r0" ); }
# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_reset_reason_get(uint32_t * p_reset_reason) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_RESET_REASON_GET) : "r0" ); }
# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_reset_reason_clr(uint32_t reset_reason_clr_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_RESET_REASON_CLR) : "r0" ); }
# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_mode_set(uint8_t power_mode) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_MODE_SET) : "r0" ); }
# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;






# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_system_off(void) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_SYSTEM_OFF) : "r0" ); }
# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_pof_enable(uint8_t pof_enable) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_POF_ENABLE) : "r0" ); }
# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_pof_threshold_set(uint8_t threshold) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_POF_THRESHOLD_SET) : "r0" ); }
# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_ram_power_set(uint8_t index, uint32_t ram_powerset) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_RAM_POWER_SET) : "r0" ); }
# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_ram_power_clr(uint8_t index, uint32_t ram_powerclr) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_RAM_POWER_CLR) : "r0" ); }
# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_ram_power_get(uint8_t index, uint32_t * p_ram_power) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_RAM_POWER_GET) : "r0" ); }
# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_gpregret_set(uint32_t gpregret_id, uint32_t gpregret_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_GPREGRET_SET) : "r0" ); }
# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_gpregret_clr(uint32_t gpregret_id, uint32_t gpregret_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_GPREGRET_CLR) : "r0" ); }
# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_gpregret_get(uint32_t gpregret_id, uint32_t *p_gpregret) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_GPREGRET_GET) : "r0" ); }
# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_power_dcdc_mode_set(uint8_t dcdc_mode) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_POWER_DCDC_MODE_SET) : "r0" ); }
# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_clock_hfclk_request(void) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_CLOCK_HFCLK_REQUEST) : "r0" ); }
# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_clock_hfclk_release(void) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_CLOCK_HFCLK_RELEASE) : "r0" ); }
# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_clock_hfclk_is_running(uint32_t * p_is_running) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_CLOCK_HFCLK_IS_RUNNING) : "r0" ); }
# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_app_evt_wait(void) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_APP_EVT_WAIT) : "r0" ); }
# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_channel_enable_get(uint32_t * p_channel_enable) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_CHANNEL_ENABLE_GET) : "r0" ); }
# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_channel_enable_set(uint32_t channel_enable_set_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_CHANNEL_ENABLE_SET) : "r0" ); }
# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;








# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_channel_enable_clr(uint32_t channel_enable_clr_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_CHANNEL_ENABLE_CLR) : "r0" ); }
# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_channel_assign(uint8_t channel_num, const volatile void * evt_endpoint, const volatile void * task_endpoint) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_CHANNEL_ASSIGN) : "r0" ); }
# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_group_task_enable(uint8_t group_num) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_GROUP_TASK_ENABLE) : "r0" ); }
# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_group_task_disable(uint8_t group_num) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_GROUP_TASK_DISABLE) : "r0" ); }
# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_group_assign(uint8_t group_num, uint32_t channel_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_GROUP_ASSIGN) : "r0" ); }
# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ppi_group_get(uint8_t group_num, uint32_t * p_channel_msk) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PPI_GROUP_GET) : "r0" ); }
# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_radio_notification_cfg_set(uint8_t type, uint8_t distance) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RADIO_NOTIFICATION_CFG_SET) : "r0" ); }
# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ecb_block_encrypt(nrf_ecb_hal_data_t * p_ecb_data) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_ECB_BLOCK_ENCRYPT) : "r0" ); }
# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_ecb_blocks_encrypt(uint8_t block_count, nrf_ecb_hal_data_block_t * p_data_blocks) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_ECB_BLOCKS_ENCRYPT) : "r0" ); }
# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_evt_get(uint32_t * p_evt_id) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_EVT_GET) : "r0" ); }
# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_temp_get(int32_t * p_temp) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_TEMP_GET) : "r0" ); }
# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_flash_write(uint32_t * p_dst, uint32_t const * p_src, uint32_t size) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_FLASH_WRITE) : "r0" ); }
# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_flash_page_erase(uint32_t page_number) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_FLASH_PAGE_ERASE) : "r0" ); }
# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_flash_protect(uint32_t block_cfg0, uint32_t block_cfg1, uint32_t block_cfg2, uint32_t block_cfg3) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_FLASH_PROTECT) : "r0" ); }
# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_radio_session_open(nrf_radio_signal_callback_t p_radio_signal_callback) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RADIO_SESSION_OPEN) : "r0" ); }
# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_radio_session_close(void) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RADIO_SESSION_CLOSE) : "r0" ); }
# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_radio_request(nrf_radio_request_t const * p_request) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_RADIO_REQUEST) : "r0" ); }
# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic push
# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"

# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic ignored "-Wreturn-type"
# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 __attribute__((naked)) __attribute__((unused)) static uint32_t sd_protected_register_write(volatile uint32_t * p_register, uint32_t value) { __asm( "svc %0\n" "bx r14" : : "I" ( SD_PROTECTED_REGISTER_WRITE) : "r0" ); }
# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
#pragma GCC diagnostic pop
# 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
 ;
# 35 "../../../config/FreeRTOSConfig.h" 2

# 1 "../../../../../../components/libraries/util/app_util_platform.h" 1
# 53 "../../../../../../components/libraries/util/app_util_platform.h"
# 1 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h" 1
# 54 "../../../../../../components/libraries/util/app_util_platform.h" 2



# 1 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h" 1
# 109 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
typedef struct
{
  uint32_t volatile __irq_masks[(2)];
  uint32_t volatile __cr_flag;
} nrf_nvic_state_t;



extern nrf_nvic_state_t nrf_nvic_state;
# 128 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline int __sd_nvic_irq_disable(void);



static inline void __sd_nvic_irq_enable(void);






static inline uint32_t __sd_nvic_app_accessible_irq(IRQn_Type IRQn);






static inline uint32_t __sd_nvic_is_app_accessible_priority(uint32_t priority);
# 164 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_EnableIRQ(IRQn_Type IRQn);
# 176 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_DisableIRQ(IRQn_Type IRQn);
# 189 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_GetPendingIRQ(IRQn_Type IRQn, uint32_t * p_pending_irq);
# 201 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_SetPendingIRQ(IRQn_Type IRQn);
# 213 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_ClearPendingIRQ(IRQn_Type IRQn);
# 228 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_SetPriority(IRQn_Type IRQn, uint32_t priority);
# 241 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_GetPriority(IRQn_Type IRQn, uint32_t * p_priority);






static inline uint32_t sd_nvic_SystemReset(void);
# 261 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_critical_region_enter(uint8_t * p_is_nested_critical_region);
# 272 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
static inline uint32_t sd_nvic_critical_region_exit(uint8_t is_nested_critical_region);





static inline int __sd_nvic_irq_disable(void)
{
  int pm = __get_PRIMASK();
  __disable_irq();
  return pm;
}

static inline void __sd_nvic_irq_enable(void)
{
  __enable_irq();
}

static inline uint32_t __sd_nvic_app_accessible_irq(IRQn_Type IRQn)
{
  if (IRQn < 32)
  {
    return ((1UL<<IRQn) & (~((uint32_t)( (1U << POWER_CLOCK_IRQn) | (1U << RADIO_IRQn) | (1U << RTC0_IRQn) | (1U << TIMER0_IRQn) | (1U << RNG_IRQn) | (1U << ECB_IRQn) | (1U << CCM_AAR_IRQn) | (1U << TEMP_IRQn) | (1U << (30)) | (1U << (uint32_t)SWI5_EGU5_IRQn) )))) != 0;
  }
  else if (IRQn < 64)
  {
    return ((1UL<<(IRQn-32)) & (~((uint32_t)0))) != 0;
  }
  else
  {
    return 1;
  }
}

static inline uint32_t __sd_nvic_is_app_accessible_priority(uint32_t priority)
{
  if(priority >= (1 << 3))
  {
    return 0;
  }
  if( priority == 0
     || priority == 1
     || priority == 4
     )
  {
    return 0;
  }
  return 1;
}


static inline uint32_t sd_nvic_EnableIRQ(IRQn_Type IRQn)
{
  if (!__sd_nvic_app_accessible_irq(IRQn))
  {
    return ((0x2000) + 1);
  }
  if (!__sd_nvic_is_app_accessible_priority(NVIC_GetPriority(IRQn)))
  {
    return ((0x2000) + 2);
  }

  if (nrf_nvic_state.__cr_flag)
  {
    nrf_nvic_state.__irq_masks[(uint32_t)((int32_t)IRQn) >> 5] |= (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32_t)0x1F));
  }
  else
  {
    NVIC_EnableIRQ(IRQn);
  }
  return ((0x0) + 0);
}

static inline uint32_t sd_nvic_DisableIRQ(IRQn_Type IRQn)
{
  if (!__sd_nvic_app_accessible_irq(IRQn))
  {
    return ((0x2000) + 1);
  }

  if (nrf_nvic_state.__cr_flag)
  {
    nrf_nvic_state.__irq_masks[(uint32_t)((int32_t)IRQn) >> 5] &= ~(1UL << ((uint32_t)(IRQn) & 0x1F));
  }
  else
  {
    NVIC_DisableIRQ(IRQn);
  }

  return ((0x0) + 0);
}

static inline uint32_t sd_nvic_GetPendingIRQ(IRQn_Type IRQn, uint32_t * p_pending_irq)
{
  if (__sd_nvic_app_accessible_irq(IRQn))
  {
    *p_pending_irq = NVIC_GetPendingIRQ(IRQn);
    return ((0x0) + 0);
  }
  else
  {
    return ((0x2000) + 1);
  }
}

static inline uint32_t sd_nvic_SetPendingIRQ(IRQn_Type IRQn)
{
  if (__sd_nvic_app_accessible_irq(IRQn))
  {
    NVIC_SetPendingIRQ(IRQn);
    return ((0x0) + 0);
  }
  else
  {
    return ((0x2000) + 1);
  }
}

static inline uint32_t sd_nvic_ClearPendingIRQ(IRQn_Type IRQn)
{
  if (__sd_nvic_app_accessible_irq(IRQn))
  {
    NVIC_ClearPendingIRQ(IRQn);
    return ((0x0) + 0);
  }
  else
  {
    return ((0x2000) + 1);
  }
}

static inline uint32_t sd_nvic_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if (!__sd_nvic_app_accessible_irq(IRQn))
  {
    return ((0x2000) + 1);
  }

  if (!__sd_nvic_is_app_accessible_priority(priority))
  {
    return ((0x2000) + 2);
  }

  NVIC_SetPriority(IRQn, (uint32_t)priority);
  return ((0x0) + 0);
}

static inline uint32_t sd_nvic_GetPriority(IRQn_Type IRQn, uint32_t * p_priority)
{
  if (__sd_nvic_app_accessible_irq(IRQn))
  {
    *p_priority = (NVIC_GetPriority(IRQn) & 0xFF);
    return ((0x0) + 0);
  }
  else
  {
    return ((0x2000) + 1);
  }
}

static inline uint32_t sd_nvic_SystemReset(void)
{
  NVIC_SystemReset();
  return ((0x2000) + 3);
}

static inline uint32_t sd_nvic_critical_region_enter(uint8_t * p_is_nested_critical_region)
{
  int was_masked = __sd_nvic_irq_disable();
  if (!nrf_nvic_state.__cr_flag)
  {
    nrf_nvic_state.__cr_flag = 1;
    nrf_nvic_state.__irq_masks[0] = ( ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] & (~((uint32_t)( (1U << POWER_CLOCK_IRQn) | (1U << RADIO_IRQn) | (1U << RTC0_IRQn) | (1U << TIMER0_IRQn) | (1U << RNG_IRQn) | (1U << ECB_IRQn) | (1U << CCM_AAR_IRQn) | (1U << TEMP_IRQn) | (1U << (30)) | (1U << (uint32_t)SWI5_EGU5_IRQn) ))) );
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (~((uint32_t)( (1U << POWER_CLOCK_IRQn) | (1U << RADIO_IRQn) | (1U << RTC0_IRQn) | (1U << TIMER0_IRQn) | (1U << RNG_IRQn) | (1U << ECB_IRQn) | (1U << CCM_AAR_IRQn) | (1U << TEMP_IRQn) | (1U << (30)) | (1U << (uint32_t)SWI5_EGU5_IRQn) )));
    nrf_nvic_state.__irq_masks[1] = ( ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[1] & (~((uint32_t)0)) );
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[1] = (~((uint32_t)0));
    *p_is_nested_critical_region = 0;
  }
  else
  {
    *p_is_nested_critical_region = 1;
  }
  if (!was_masked)
  {
    __sd_nvic_irq_enable();
  }
  return ((0x0) + 0);
}

static inline uint32_t sd_nvic_critical_region_exit(uint8_t is_nested_critical_region)
{
  if (nrf_nvic_state.__cr_flag && (is_nested_critical_region == 0))
  {
    int was_masked = __sd_nvic_irq_disable();
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = nrf_nvic_state.__irq_masks[0];
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[1] = nrf_nvic_state.__irq_masks[1];
    nrf_nvic_state.__cr_flag = 0;
    if (!was_masked)
    {
      __sd_nvic_irq_enable();
    }
  }

  return ((0x0) + 0);
}
# 58 "../../../../../../components/libraries/util/app_util_platform.h" 2

# 1 "../../../../../../components/libraries/util/nrf_assert.h" 1
# 75 "../../../../../../components/libraries/util/nrf_assert.h"
void assert_nrf_callback(uint16_t line_num, const uint8_t *file_name);
# 60 "../../../../../../components/libraries/util/app_util_platform.h" 2
# 1 "../../../../../../components/libraries/util/app_error.h" 1
# 55 "../../../../../../components/libraries/util/app_error.h"
# 1 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h" 1 3 4
# 56 "../../../../../../components/libraries/util/app_error.h" 2

# 1 "../../../../../../components/libraries/util/sdk_errors.h" 1
# 73 "../../../../../../components/libraries/util/sdk_errors.h"
# 1 "../../../../../../components/softdevice/s132/headers/nrf_error.h" 1
# 74 "../../../../../../components/libraries/util/sdk_errors.h" 2
# 158 "../../../../../../components/libraries/util/sdk_errors.h"
typedef uint32_t ret_code_t;
# 58 "../../../../../../components/libraries/util/app_error.h" 2
# 1 "../../../../../../components/libraries/util/nordic_common.h" 1
# 59 "../../../../../../components/libraries/util/app_error.h" 2
# 1 "../../../../../../components/libraries/util/app_error_weak.h" 1
# 77 "../../../../../../components/libraries/util/app_error_weak.h"
void app_error_fault_handler(uint32_t id, uint32_t pc, uint32_t info);
# 60 "../../../../../../components/libraries/util/app_error.h" 2
# 80 "../../../../../../components/libraries/util/app_error.h"
typedef struct
{
    uint32_t line_num;
    uint8_t const * p_file_name;
    uint32_t err_code;
} error_info_t;



typedef struct
{
    uint16_t line_num;
    uint8_t const * p_file_name;
} assert_info_t;
# 111 "../../../../../../components/libraries/util/app_error.h"
void app_error_handler(uint32_t error_code, uint32_t line_num, const uint8_t * p_file_name);





void app_error_handler_bare(ret_code_t error_code);
# 127 "../../../../../../components/libraries/util/app_error.h"
void app_error_save_and_stop(uint32_t id, uint32_t pc, uint32_t info);
# 137 "../../../../../../components/libraries/util/app_error.h"
void app_error_log_handle(uint32_t id, uint32_t pc, uint32_t info);
# 61 "../../../../../../components/libraries/util/app_util_platform.h" 2
# 91 "../../../../../../components/libraries/util/app_util_platform.h"
typedef enum
{



    APP_IRQ_PRIORITY_HIGHEST = 2,

    APP_IRQ_PRIORITY_HIGH = 2,



    APP_IRQ_PRIORITY_MID = 3,

    APP_IRQ_PRIORITY_LOW = 6,
    APP_IRQ_PRIORITY_LOWEST = 7,
    APP_IRQ_PRIORITY_THREAD = 15
} app_irq_priority_t;




typedef enum
{
    APP_LEVEL_UNPRIVILEGED,
    APP_LEVEL_PRIVILEGED
} app_level_t;
# 172 "../../../../../../components/libraries/util/app_util_platform.h"
void app_util_critical_region_enter (uint8_t *p_nested);
void app_util_critical_region_exit (uint8_t nested);
# 261 "../../../../../../components/libraries/util/app_util_platform.h"
uint8_t current_int_priority_get(void);
# 270 "../../../../../../components/libraries/util/app_util_platform.h"
uint8_t privilege_level_get(void);
# 37 "../../../config/FreeRTOSConfig.h" 2
# 177 "../../../config/FreeRTOSConfig.h"
# 1 "../../../../../../components/libraries/util/nrf_assert.h" 1
# 178 "../../../config/FreeRTOSConfig.h" 2
# 212 "../../../config/FreeRTOSConfig.h"
# 1 "../../../TraceRecorder/include/trcRecorder.h" 1
# 54 "../../../TraceRecorder/include/trcRecorder.h"
# 1 "../../../config/trcConfig.h" 1
# 55 "../../../config/trcConfig.h"
# 1 "../../../TraceRecorder/include/trcPortDefines.h" 1
# 56 "../../../config/trcConfig.h" 2
# 65 "../../../config/trcConfig.h"
# 1 "../../../../../../modules/nrfx/mdk/nrf52.h" 1
# 66 "../../../config/trcConfig.h" 2
# 295 "../../../config/trcConfig.h"
# 1 "../../../config/trcStreamingConfig.h" 1
# 296 "../../../config/trcConfig.h" 2
# 55 "../../../TraceRecorder/include/trcRecorder.h" 2
# 1 "../../../TraceRecorder/include/trcPortDefines.h" 1
# 56 "../../../TraceRecorder/include/trcRecorder.h" 2
# 76 "../../../TraceRecorder/include/trcRecorder.h"
typedef const char* traceString;
typedef const void* traceHandle;

# 1 "../../../TraceRecorder/include/trcHardwarePort.h" 1
# 169 "../../../TraceRecorder/include/trcHardwarePort.h"
  void prvTraceInitCortexM(void);
# 80 "../../../TraceRecorder/include/trcRecorder.h" 2
# 1 "../../../TraceRecorder/streamports/Jlink_RTT/include/trcStreamingPort.h" 1
# 133 "../../../TraceRecorder/streamports/Jlink_RTT/include/trcStreamingPort.h"
# 1 "../../../TraceRecorder/streamports/Jlink_RTT/include/SEGGER_RTT_Conf.h" 1
# 134 "../../../TraceRecorder/streamports/Jlink_RTT/include/trcStreamingPort.h" 2
# 1 "../../../TraceRecorder/streamports/Jlink_RTT/include/SEGGER_RTT.h" 1
# 80 "../../../TraceRecorder/streamports/Jlink_RTT/include/SEGGER_RTT.h"
typedef struct {
  const char* sName;
            char* pBuffer;
            unsigned SizeOfBuffer;
            unsigned WrOff;
  volatile unsigned RdOff;
            unsigned Flags;
} SEGGER_RTT_BUFFER_UP;





typedef struct {
  const char* sName;
            char* pBuffer;
            unsigned SizeOfBuffer;
  volatile unsigned WrOff;
            unsigned RdOff;
            unsigned Flags;
} SEGGER_RTT_BUFFER_DOWN;






typedef struct {
  char acID[16];
  int MaxNumUpBuffers;
  int MaxNumDownBuffers;
  SEGGER_RTT_BUFFER_UP aUp[(3)];
  SEGGER_RTT_BUFFER_DOWN aDown[(3)];
} SEGGER_RTT_CB;







extern SEGGER_RTT_CB _SEGGER_RTT;
# 132 "../../../TraceRecorder/streamports/Jlink_RTT/include/SEGGER_RTT.h"
int SEGGER_RTT_AllocDownBuffer (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_AllocUpBuffer (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_ConfigUpBuffer (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_ConfigDownBuffer (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int SEGGER_RTT_GetKey (void);
unsigned SEGGER_RTT_HasData (unsigned BufferIndex);
int SEGGER_RTT_HasKey (void);
void SEGGER_RTT_Init (void);
unsigned SEGGER_RTT_Read (unsigned BufferIndex, void* pBuffer, unsigned BufferSize);
unsigned SEGGER_RTT_ReadNoLock (unsigned BufferIndex, void* pData, unsigned BufferSize);
int SEGGER_RTT_SetNameDownBuffer (unsigned BufferIndex, const char* sName);
int SEGGER_RTT_SetNameUpBuffer (unsigned BufferIndex, const char* sName);
int SEGGER_RTT_SetFlagsDownBuffer (unsigned BufferIndex, unsigned Flags);
int SEGGER_RTT_SetFlagsUpBuffer (unsigned BufferIndex, unsigned Flags);
int SEGGER_RTT_WaitKey (void);
unsigned SEGGER_RTT_Write (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteNoLock (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteSkipNoLock (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned SEGGER_RTT_WriteString (unsigned BufferIndex, const char* s);
void SEGGER_RTT_WriteWithOverwriteNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
# 163 "../../../TraceRecorder/streamports/Jlink_RTT/include/SEGGER_RTT.h"
int SEGGER_RTT_SetTerminal (char TerminalId);
int SEGGER_RTT_TerminalOut (char TerminalId, const char* s);







int SEGGER_RTT_printf(unsigned BufferIndex, const char * sFormat, ...);
# 135 "../../../TraceRecorder/streamports/Jlink_RTT/include/trcStreamingPort.h" 2
# 174 "../../../TraceRecorder/streamports/Jlink_RTT/include/trcStreamingPort.h"
int32_t readFromRTT(void* ptrData, uint32_t size, int32_t* ptrBytesRead);

int32_t writeToRTT(void* ptrData, uint32_t size, int32_t* ptrBytesWritten);
# 81 "../../../TraceRecorder/include/trcRecorder.h" 2
# 1 "../../../TraceRecorder/include/trcKernelPort.h" 1
# 48 "../../../TraceRecorder/include/trcKernelPort.h"
# 1 "../../../../../../external/freertos/source/include/FreeRTOS.h" 1
# 49 "../../../TraceRecorder/include/trcKernelPort.h" 2
# 110 "../../../TraceRecorder/include/trcKernelPort.h"
void vTraceSetQueueName(void* object, const char* name);
# 120 "../../../TraceRecorder/include/trcKernelPort.h"
void vTraceSetSemaphoreName(void* object, const char* name);
# 130 "../../../TraceRecorder/include/trcKernelPort.h"
void vTraceSetMutexName(void* object, const char* name);
# 192 "../../../TraceRecorder/include/trcKernelPort.h"
void* prvTraceGetCurrentTaskHandle(void);



unsigned char prvTraceIsSchedulerSuspended(void);
# 296 "../../../TraceRecorder/include/trcKernelPort.h"
extern uint16_t CurrentFilterMask;

extern uint16_t CurrentFilterGroup;

uint8_t prvTraceGetQueueType(void* handle);

uint16_t prvTraceGetTaskNumberLow16(void* handle);
uint16_t prvTraceGetTaskNumberHigh16(void* handle);
void prvTraceSetTaskNumberLow16(void* handle, uint16_t value);
void prvTraceSetTaskNumberHigh16(void* handle, uint16_t value);

uint16_t prvTraceGetQueueNumberLow16(void* handle);
uint16_t prvTraceGetQueueNumberHigh16(void* handle);
void prvTraceSetQueueNumberLow16(void* handle, uint16_t value);
void prvTraceSetQueueNumberHigh16(void* handle, uint16_t value);
# 1395 "../../../TraceRecorder/include/trcKernelPort.h"
void vTraceStoreKernelObjectName(void* object, const char* name);







uint32_t prvIsNewTCB(void* pNewTCB);
# 82 "../../../TraceRecorder/include/trcRecorder.h" 2
# 144 "../../../TraceRecorder/include/trcRecorder.h"
void vTraceEnable(int startOption);
# 217 "../../../TraceRecorder/include/trcRecorder.h"
void vTracePrintF(traceString chn, const char* fmt, ...);
# 234 "../../../TraceRecorder/include/trcRecorder.h"
void vTracePrint(traceString chn, const char* str);
# 250 "../../../TraceRecorder/include/trcRecorder.h"
traceString xTraceRegisterString(const char* name);
# 284 "../../../TraceRecorder/include/trcRecorder.h"
traceHandle xTraceSetISRProperties(const char* name, uint8_t priority);
# 304 "../../../TraceRecorder/include/trcRecorder.h"
void vTraceStoreISRBegin(traceHandle handle);
# 328 "../../../TraceRecorder/include/trcRecorder.h"
void vTraceStoreISREnd(int isTaskSwitchRequired);
# 337 "../../../TraceRecorder/include/trcRecorder.h"
void vTraceInstanceFinishedNow(void);
# 350 "../../../TraceRecorder/include/trcRecorder.h"
void vTraceInstanceFinishedNext(void);






const char* xTraceGetLastError(void);






void vTraceClearError(void);







void vTraceStop(void);
# 387 "../../../TraceRecorder/include/trcRecorder.h"
void vTraceSetFrequency(uint32_t frequency);
# 460 "../../../TraceRecorder/include/trcRecorder.h"
int xTraceIsRecordingEnabled(void);
# 509 "../../../TraceRecorder/include/trcRecorder.h"
void vTraceSetFilterGroup(uint16_t filterGroup);
# 529 "../../../TraceRecorder/include/trcRecorder.h"
void vTraceSetFilterMask(uint16_t filterMask);
# 1608 "../../../TraceRecorder/include/trcRecorder.h"
void prvTraceError(int errCode);


void prvTraceWarning(int errCode);
# 1636 "../../../TraceRecorder/include/trcRecorder.h"
void prvTraceSaveSymbol(const void *address, const char *name);


void prvTraceDeleteSymbol(void *address);


void prvTraceSaveObjectData(const void *address, uint32_t data);


void prvTraceDeleteObjectData(void *address);


void prvTraceStoreEvent0(uint16_t eventID);


void prvTraceStoreEvent1(uint16_t eventID,
 uint32_t param1);


void prvTraceStoreEvent2(uint16_t eventID,
 uint32_t param1,
 uint32_t param2);


void prvTraceStoreEvent3(uint16_t eventID,
 uint32_t param1,
 uint32_t param2,
 uint32_t param3);


void prvTraceStoreEvent(int nParam, uint16_t EventID, ...);


void prvTraceStoreStringEvent(int nArgs, uint16_t eventID, const char* str, ...);


void prvPagedEventBufferInit(char* buffer);


void* prvPagedEventBufferGetWritePointer(int sizeOfEvent);


uint32_t prvPagedEventBufferTransfer(void);


typedef struct
{
 unsigned char cmdCode;
 unsigned char param1;
 unsigned char param2;
 unsigned char param3;
 unsigned char param4;
 unsigned char param5;
 unsigned char checksumLSB;
 unsigned char checksumMSB;
} TracealyzerCommandType;


int prvIsValidCommand(TracealyzerCommandType* cmd);


void prvProcessCommand(TracealyzerCommandType* cmd);
# 213 "../../../config/FreeRTOSConfig.h" 2

# 1 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h" 1
# 71 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
# 1 "../../../systemView/SEGGER_SYSVIEW.h" 1
# 74 "../../../systemView/SEGGER_SYSVIEW.h"
# 1 "../../../systemView/SEGGER.h" 1
# 68 "../../../systemView/SEGGER.h"
# 1 "../../../systemView/Global.h" 1
# 69 "../../../systemView/SEGGER.h" 2
# 149 "../../../systemView/SEGGER.h"
typedef struct {
  char* pBuffer;
  int BufferSize;
  int Cnt;
} SEGGER_BUFFER_DESC;

typedef struct {
  unsigned int CacheLineSize;
  void (*pfDMB) (void);
  void (*pfClean) (void *p, unsigned NumBytes);
  void (*pfInvalidate)(void *p, unsigned NumBytes);
} SEGGER_CACHE_CONFIG;

typedef struct SEGGER_SNPRINTF_CONTEXT_struct SEGGER_SNPRINTF_CONTEXT;

struct SEGGER_SNPRINTF_CONTEXT_struct {
  void* pContext;
  SEGGER_BUFFER_DESC* pBufferDesc;
  void (*pfFlush)(SEGGER_SNPRINTF_CONTEXT* pContext);
};

typedef struct {
  void (*pfStoreChar) (SEGGER_BUFFER_DESC* pBufferDesc, SEGGER_SNPRINTF_CONTEXT* pContext, char c);
  int (*pfPrintUnsigned) (SEGGER_BUFFER_DESC* pBufferDesc, SEGGER_SNPRINTF_CONTEXT* pContext, unsigned long v, unsigned Base, char Flags, int Width, int Precision);
  int (*pfPrintInt) (SEGGER_BUFFER_DESC* pBufferDesc, SEGGER_SNPRINTF_CONTEXT* pContext, signed long v, unsigned Base, char Flags, int Width, int Precision);
} SEGGER_PRINTF_API;

typedef void (*SEGGER_pFormatter)(SEGGER_BUFFER_DESC* pBufferDesc, SEGGER_SNPRINTF_CONTEXT* pContext, const SEGGER_PRINTF_API* pApi, va_list* pParamList, char Lead, int Width, int Precision);

typedef struct SEGGER_PRINTF_FORMATTER {
  struct SEGGER_PRINTF_FORMATTER* pNext;
  SEGGER_pFormatter pfFormatter;
  char Specifier;
} SEGGER_PRINTF_FORMATTER;
# 194 "../../../systemView/SEGGER.h"
void SEGGER_ARM_memcpy(void* pDest, const void* pSrc, int NumBytes);
void SEGGER_memcpy (void* pDest, const void* pSrc, unsigned NumBytes);
void SEGGER_memxor (void* pDest, const void* pSrc, unsigned NumBytes);




int SEGGER_atoi (const char* s);
int SEGGER_isalnum (int c);
int SEGGER_isalpha (int c);
unsigned SEGGER_strlen (const char* s);
int SEGGER_tolower (int c);
int SEGGER_strcasecmp(const char* sText1, const char* sText2);




void SEGGER_StoreChar (SEGGER_BUFFER_DESC* pBufferDesc, char c);
void SEGGER_PrintUnsigned(SEGGER_BUFFER_DESC* pBufferDesc, unsigned long v, unsigned Base, int Precision);
void SEGGER_PrintInt (SEGGER_BUFFER_DESC* pBufferDesc, signed long v, unsigned Base, int Precision);
int SEGGER_snprintf (char* pBuffer, int BufferSize, const char* sFormat, ...);
int SEGGER_vsnprintf (char* pBuffer, int BufferSize, const char* sFormat, va_list ParamList);
int SEGGER_vsnprintfEx (SEGGER_SNPRINTF_CONTEXT* pContext, const char* sFormat, va_list ParamList);

int SEGGER_PRINTF_AddFormatter (SEGGER_PRINTF_FORMATTER* pFormatter, SEGGER_pFormatter pfFormatter, char c);
void SEGGER_PRINTF_AddDoubleFormatter(void);
void SEGGER_PRINTF_AddIPFormatter (void);
void SEGGER_PRINTF_AddHTMLFormatter (void);
# 75 "../../../systemView/SEGGER_SYSVIEW.h" 2
# 189 "../../../systemView/SEGGER_SYSVIEW.h"
typedef struct {
  unsigned long TaskID;
  const char* sName;
  unsigned long Prio;
  unsigned long StackBase;
  unsigned long StackSize;
} SEGGER_SYSVIEW_TASKINFO;

typedef struct SEGGER_SYSVIEW_MODULE_STRUCT SEGGER_SYSVIEW_MODULE;

struct SEGGER_SYSVIEW_MODULE_STRUCT {
  const char* sModule;
        unsigned long NumEvents;
        unsigned long EventOffset;
        void (*pfSendModuleDesc)(void);
        SEGGER_SYSVIEW_MODULE* pNext;
};

typedef void (SEGGER_SYSVIEW_SEND_SYS_DESC_FUNC)(void);
# 216 "../../../systemView/SEGGER_SYSVIEW.h"
typedef struct {
  unsigned long long (*pfGetTime) (void);
  void (*pfSendTaskList) (void);
} SEGGER_SYSVIEW_OS_API;





void SEGGER_SYSVIEW_Init (unsigned long SysFreq, unsigned long CPUFreq, const SEGGER_SYSVIEW_OS_API *pOSAPI, SEGGER_SYSVIEW_SEND_SYS_DESC_FUNC pfSendSysDesc);
void SEGGER_SYSVIEW_SetRAMBase (unsigned long RAMBaseAddress);
void SEGGER_SYSVIEW_Start (void);
void SEGGER_SYSVIEW_Stop (void);
void SEGGER_SYSVIEW_GetSysDesc (void);
void SEGGER_SYSVIEW_SendTaskList (void);
void SEGGER_SYSVIEW_SendTaskInfo (const SEGGER_SYSVIEW_TASKINFO* pInfo);
void SEGGER_SYSVIEW_SendSysDesc (const char* sSysDesc);
int SEGGER_SYSVIEW_IsStarted (void);





void SEGGER_SYSVIEW_RecordVoid (unsigned int EventId);
void SEGGER_SYSVIEW_RecordU32 (unsigned int EventId, unsigned long Para0);
void SEGGER_SYSVIEW_RecordU32x2 (unsigned int EventId, unsigned long Para0, unsigned long Para1);
void SEGGER_SYSVIEW_RecordU32x3 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2);
void SEGGER_SYSVIEW_RecordU32x4 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3);
void SEGGER_SYSVIEW_RecordU32x5 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4);
void SEGGER_SYSVIEW_RecordU32x6 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5);
void SEGGER_SYSVIEW_RecordU32x7 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6);
void SEGGER_SYSVIEW_RecordU32x8 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6, unsigned long Para7);
void SEGGER_SYSVIEW_RecordU32x9 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6, unsigned long Para7, unsigned long Para8);
void SEGGER_SYSVIEW_RecordU32x10 (unsigned int EventId, unsigned long Para0, unsigned long Para1, unsigned long Para2, unsigned long Para3, unsigned long Para4, unsigned long Para5, unsigned long Para6, unsigned long Para7, unsigned long Para8, unsigned long Para9);
void SEGGER_SYSVIEW_RecordString (unsigned int EventId, const char* pString);
void SEGGER_SYSVIEW_RecordSystime (void);
void SEGGER_SYSVIEW_RecordEnterISR (void);
void SEGGER_SYSVIEW_RecordExitISR (void);
void SEGGER_SYSVIEW_RecordExitISRToScheduler (void);
void SEGGER_SYSVIEW_RecordEnterTimer (unsigned long TimerId);
void SEGGER_SYSVIEW_RecordExitTimer (void);
void SEGGER_SYSVIEW_RecordEndCall (unsigned int EventID);
void SEGGER_SYSVIEW_RecordEndCallU32 (unsigned int EventID, unsigned long Para0);

void SEGGER_SYSVIEW_OnIdle (void);
void SEGGER_SYSVIEW_OnTaskCreate (unsigned long TaskId);
void SEGGER_SYSVIEW_OnTaskTerminate (unsigned long TaskId);
void SEGGER_SYSVIEW_OnTaskStartExec (unsigned long TaskId);
void SEGGER_SYSVIEW_OnTaskStopExec (void);
void SEGGER_SYSVIEW_OnTaskStartReady (unsigned long TaskId);
void SEGGER_SYSVIEW_OnTaskStopReady (unsigned long TaskId, unsigned int Cause);
void SEGGER_SYSVIEW_OnUserStart (unsigned int UserId);
void SEGGER_SYSVIEW_OnUserStop (unsigned int UserId);

void SEGGER_SYSVIEW_NameResource (unsigned long ResourceId, const char* sName);

int SEGGER_SYSVIEW_SendPacket (unsigned char* pPacket, unsigned char* pPayloadEnd, unsigned int EventId);





unsigned char* SEGGER_SYSVIEW_EncodeU32 (unsigned char* pPayload, unsigned long Value);
unsigned char* SEGGER_SYSVIEW_EncodeData (unsigned char* pPayload, const char* pSrc, unsigned int Len);
unsigned char* SEGGER_SYSVIEW_EncodeString (unsigned char* pPayload, const char* s, unsigned int MaxLen);
unsigned char* SEGGER_SYSVIEW_EncodeId (unsigned char* pPayload, unsigned long Id);
unsigned long SEGGER_SYSVIEW_ShrinkId (unsigned long Id);






void SEGGER_SYSVIEW_RegisterModule (SEGGER_SYSVIEW_MODULE* pModule);
void SEGGER_SYSVIEW_RecordModuleDescription (const SEGGER_SYSVIEW_MODULE* pModule, const char* sDescription);
void SEGGER_SYSVIEW_SendModule (unsigned char ModuleId);
void SEGGER_SYSVIEW_SendModuleDescription (void);
void SEGGER_SYSVIEW_SendNumModules (void);






void SEGGER_SYSVIEW_PrintfHostEx (const char* s, unsigned long Options, ...);
void SEGGER_SYSVIEW_PrintfTargetEx (const char* s, unsigned long Options, ...);
void SEGGER_SYSVIEW_PrintfHost (const char* s, ...);
void SEGGER_SYSVIEW_PrintfTarget (const char* s, ...);
void SEGGER_SYSVIEW_WarnfHost (const char* s, ...);
void SEGGER_SYSVIEW_WarnfTarget (const char* s, ...);
void SEGGER_SYSVIEW_ErrorfHost (const char* s, ...);
void SEGGER_SYSVIEW_ErrorfTarget (const char* s, ...);


void SEGGER_SYSVIEW_Print (const char* s);
void SEGGER_SYSVIEW_Warn (const char* s);
void SEGGER_SYSVIEW_Error (const char* s);





void SEGGER_SYSVIEW_EnableEvents (unsigned long EnableMask);
void SEGGER_SYSVIEW_DisableEvents (unsigned long DisableMask);





void SEGGER_SYSVIEW_Conf (void);
unsigned long SEGGER_SYSVIEW_X_GetTimestamp (void);
unsigned long SEGGER_SYSVIEW_X_GetInterruptId (void);
# 72 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h" 2
# 329 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
void SYSVIEW_AddTask (unsigned long xHandle, const char* pcTaskName, unsigned uxCurrentPriority, unsigned long pxStack, unsigned uStackHighWaterMark);
void SYSVIEW_UpdateTask (unsigned long xHandle, const char* pcTaskName, unsigned uxCurrentPriority, unsigned long pxStack, unsigned uStackHighWaterMark);
void SYSVIEW_DeleteTask (unsigned long xHandle);
void SYSVIEW_SendTaskInfo (unsigned long TaskID, const char* sName, unsigned Prio, unsigned long StackBase, unsigned StackSize);
# 215 "../../../config/FreeRTOSConfig.h" 2
# 58 "../../../../../../external/freertos/source/include/FreeRTOS.h" 2


# 1 "../../../../../../external/freertos/source/include/projdefs.h" 1
# 36 "../../../../../../external/freertos/source/include/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 61 "../../../../../../external/freertos/source/include/FreeRTOS.h" 2


# 1 "../../../../../../external/freertos/source/include/portable.h" 1
# 46 "../../../../../../external/freertos/source/include/portable.h"
# 1 "../../../../../../external/freertos/source/include/deprecated_definitions.h" 1
# 47 "../../../../../../external/freertos/source/include/portable.h" 2






# 1 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h" 1
# 33 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
# 1 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h" 1
# 31 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
# 1 "../../../../../../components/libraries/util/app_util.h" 1
# 83 "../../../../../../components/libraries/util/app_util.h"
extern uint32_t __StackTop;
extern uint32_t __StackLimit;
# 114 "../../../../../../components/libraries/util/app_util.h"
extern uint32_t * _vectors;
extern uint32_t __FLASH_segment_used_end__;
# 132 "../../../../../../components/libraries/util/app_util.h"
enum
{
    UNIT_0_625_MS = 625,
    UNIT_1_25_MS = 1250,
    UNIT_10_MS = 10000
};
# 302 "../../../../../../components/libraries/util/app_util.h"
typedef uint8_t uint16_le_t[2];


typedef uint8_t uint32_le_t[4];


typedef struct
{
    uint16_t size;
    uint8_t * p_data;
} uint8_array_t;
# 902 "../../../../../../components/libraries/util/app_util.h"
static inline uint64_t value_rescale(uint32_t value, uint32_t old_unit_reversal, uint16_t new_unit_reversal)
{
    return (uint64_t)((((uint64_t)value * new_unit_reversal) + ((old_unit_reversal) / 2)) / (old_unit_reversal));
}
# 914 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint16_encode(uint16_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x00FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0xFF00) >> 8);
    return sizeof(uint16_t);
}
# 928 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint24_encode(uint32_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x000000FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0x0000FF00) >> 8);
    p_encoded_data[2] = (uint8_t) ((value & 0x00FF0000) >> 16);
    return 3;
}
# 943 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint32_encode(uint32_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x000000FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0x0000FF00) >> 8);
    p_encoded_data[2] = (uint8_t) ((value & 0x00FF0000) >> 16);
    p_encoded_data[3] = (uint8_t) ((value & 0xFF000000) >> 24);
    return sizeof(uint32_t);
}
# 959 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint40_encode(uint64_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x00000000FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0x000000FF00) >> 8);
    p_encoded_data[2] = (uint8_t) ((value & 0x0000FF0000) >> 16);
    p_encoded_data[3] = (uint8_t) ((value & 0x00FF000000) >> 24);
    p_encoded_data[4] = (uint8_t) ((value & 0xFF00000000) >> 32);
    return 5;
}
# 976 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint48_encode(uint64_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) ((value & 0x0000000000FF) >> 0);
    p_encoded_data[1] = (uint8_t) ((value & 0x00000000FF00) >> 8);
    p_encoded_data[2] = (uint8_t) ((value & 0x000000FF0000) >> 16);
    p_encoded_data[3] = (uint8_t) ((value & 0x0000FF000000) >> 24);
    p_encoded_data[4] = (uint8_t) ((value & 0x00FF00000000) >> 32);
    p_encoded_data[5] = (uint8_t) ((value & 0xFF0000000000) >> 40);
    return 6;
}







static inline uint16_t uint16_decode(const uint8_t * p_encoded_data)
{
        return ( (((uint16_t)((uint8_t *)p_encoded_data)[0])) |
                 (((uint16_t)((uint8_t *)p_encoded_data)[1]) << 8 ));
}







static inline uint16_t uint16_big_decode(const uint8_t * p_encoded_data)
{
        return ( (((uint16_t)((uint8_t *)p_encoded_data)[0]) << 8 ) |
                 (((uint16_t)((uint8_t *)p_encoded_data)[1])) );
}







static inline uint32_t uint24_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint32_t)((uint8_t *)p_encoded_data)[0]) << 0) |
             (((uint32_t)((uint8_t *)p_encoded_data)[1]) << 8) |
             (((uint32_t)((uint8_t *)p_encoded_data)[2]) << 16));
}







static inline uint32_t uint32_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint32_t)((uint8_t *)p_encoded_data)[0]) << 0) |
             (((uint32_t)((uint8_t *)p_encoded_data)[1]) << 8) |
             (((uint32_t)((uint8_t *)p_encoded_data)[2]) << 16) |
             (((uint32_t)((uint8_t *)p_encoded_data)[3]) << 24 ));
}







static inline uint32_t uint32_big_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint32_t)((uint8_t *)p_encoded_data)[0]) << 24) |
             (((uint32_t)((uint8_t *)p_encoded_data)[1]) << 16) |
             (((uint32_t)((uint8_t *)p_encoded_data)[2]) << 8) |
             (((uint32_t)((uint8_t *)p_encoded_data)[3]) << 0) );
}
# 1060 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint16_big_encode(uint16_t value, uint8_t * p_encoded_data)
{
    p_encoded_data[0] = (uint8_t) (value >> 8);
    p_encoded_data[1] = (uint8_t) (value & 0xFF);

    return sizeof(uint16_t);
}
# 1077 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t uint32_big_encode(uint32_t value, uint8_t * p_encoded_data)
{
    *(uint32_t *)p_encoded_data = __REV(value);
    return sizeof(uint32_t);
}







static inline uint64_t uint40_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint64_t)((uint8_t *)p_encoded_data)[0]) << 0) |
             (((uint64_t)((uint8_t *)p_encoded_data)[1]) << 8) |
             (((uint64_t)((uint8_t *)p_encoded_data)[2]) << 16) |
             (((uint64_t)((uint8_t *)p_encoded_data)[3]) << 24) |
             (((uint64_t)((uint8_t *)p_encoded_data)[4]) << 32 ));
}







static inline uint64_t uint48_decode(const uint8_t * p_encoded_data)
{
    return ( (((uint64_t)((uint8_t *)p_encoded_data)[0]) << 0) |
             (((uint64_t)((uint8_t *)p_encoded_data)[1]) << 8) |
             (((uint64_t)((uint8_t *)p_encoded_data)[2]) << 16) |
             (((uint64_t)((uint8_t *)p_encoded_data)[3]) << 24) |
             (((uint64_t)((uint8_t *)p_encoded_data)[4]) << 32) |
             (((uint64_t)((uint8_t *)p_encoded_data)[5]) << 40 ));
}
# 1134 "../../../../../../components/libraries/util/app_util.h"
static inline uint8_t battery_level_in_percent(const uint16_t mvolts)
{
    uint8_t battery_level;

    if (mvolts >= 3000)
    {
        battery_level = 100;
    }
    else if (mvolts > 2900)
    {
        battery_level = 100 - ((3000 - mvolts) * 58) / 100;
    }
    else if (mvolts > 2740)
    {
        battery_level = 42 - ((2900 - mvolts) * 24) / 160;
    }
    else if (mvolts > 2440)
    {
        battery_level = 18 - ((2740 - mvolts) * 12) / 300;
    }
    else if (mvolts > 2100)
    {
        battery_level = 6 - ((2440 - mvolts) * 6) / 340;
    }
    else
    {
        battery_level = 0;
    }

    return battery_level;
}







static inline 
# 1172 "../../../../../../components/libraries/util/app_util.h" 3 4
               _Bool 
# 1172 "../../../../../../components/libraries/util/app_util.h"
                    is_word_aligned(void const* p)
{
    return (((uintptr_t)p & 0x03) == 0);
}
# 1185 "../../../../../../components/libraries/util/app_util.h"
static inline 
# 1185 "../../../../../../components/libraries/util/app_util.h" 3 4
               _Bool 
# 1185 "../../../../../../components/libraries/util/app_util.h"
                    is_address_from_stack(void * ptr)
{
    if (((uint32_t)ptr >= (uint32_t)&__StackLimit) &&
        ((uint32_t)ptr < (uint32_t)&__StackTop) )
    {
        return 
# 1190 "../../../../../../components/libraries/util/app_util.h" 3 4
              1
# 1190 "../../../../../../components/libraries/util/app_util.h"
                  ;
    }
    else
    {
        return 
# 1194 "../../../../../../components/libraries/util/app_util.h" 3 4
              0
# 1194 "../../../../../../components/libraries/util/app_util.h"
                   ;
    }
}
# 32 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h" 2
# 56 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;





    typedef uint32_t TickType_t;
# 105 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );
# 125 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
    extern void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime );
# 172 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
static inline uint32_t ulPortRaiseBASEPRI( void )
{
    uint32_t ulOriginalBASEPRI = __get_BASEPRI();
    __set_BASEPRI(2 << (8 - 3));
    return ulOriginalBASEPRI;
}
# 34 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h" 2
# 54 "../../../../../../external/freertos/source/include/portable.h" 2
# 92 "../../../../../../external/freertos/source/include/portable.h"
# 1 "../../../../../../external/freertos/source/include/mpu_wrappers.h" 1
# 93 "../../../../../../external/freertos/source/include/portable.h" 2
# 103 "../../../../../../external/freertos/source/include/portable.h"
 StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;



typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 124 "../../../../../../external/freertos/source/include/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 64 "../../../../../../external/freertos/source/include/FreeRTOS.h" 2
# 949 "../../../../../../external/freertos/source/include/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 4 ];
};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{
 TickType_t xDummy1;
 void *pvDummy2[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{
 UBaseType_t uxDummy1;
 void *pvDummy2;
 StaticMiniListItem_t xDummy3;
} StaticList_t;
# 985 "../../../../../../external/freertos/source/include/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 4 ) ];







  UBaseType_t uxDummy10[ 2 ];


  UBaseType_t uxDummy12[ 2 ];
# 1020 "../../../../../../external/freertos/source/include/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;
# 1031 "../../../../../../external/freertos/source/include/FreeRTOS.h"
} StaticTask_t;
# 1047 "../../../../../../external/freertos/source/include/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];
# 1070 "../../../../../../external/freertos/source/include/FreeRTOS.h"
  UBaseType_t uxDummy8;
  uint8_t ucDummy9;


} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1091 "../../../../../../external/freertos/source/include/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;






} StaticEventGroup_t;
# 1120 "../../../../../../external/freertos/source/include/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 UBaseType_t uxDummy4;
 void *pvDummy5[ 2 ];

  UBaseType_t uxDummy6;






} StaticTimer_t;
# 1151 "../../../../../../external/freertos/source/include/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 13 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2
# 1 "../../../../../../external/freertos/source/include/semphr.h" 1
# 36 "../../../../../../external/freertos/source/include/semphr.h"
# 1 "../../../../../../external/freertos/source/include/queue.h" 1
# 47 "../../../../../../external/freertos/source/include/queue.h"
typedef void * QueueHandle_t;






typedef void * QueueSetHandle_t;






typedef void * QueueSetMemberHandle_t;
# 649 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 743 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 776 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 867 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 882 "../../../../../../external/freertos/source/include/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 899 "../../../../../../external/freertos/source/include/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 913 "../../../../../../external/freertos/source/include/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1294 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR(QueueHandle_t xQueue,BaseType_t * const pxHigherPriorityTaskWoken) ;
# 1384 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1403 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
void* xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
void* xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t pxMutex ) ;
# 1457 "../../../../../../external/freertos/source/include/queue.h"
 void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcName ) ;
# 1471 "../../../../../../external/freertos/source/include/queue.h"
 void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;
# 1486 "../../../../../../external/freertos/source/include/queue.h"
 const char *pcQueueGetName( QueueHandle_t xQueue ) ;
# 1495 "../../../../../../external/freertos/source/include/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1555 "../../../../../../external/freertos/source/include/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1579 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1598 "../../../../../../external/freertos/source/include/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1634 "../../../../../../external/freertos/source/include/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 37 "../../../../../../external/freertos/source/include/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 14 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\simple_protocol.h" 1





void simple_p_init(void (*cb)(uint8_t*, uint16_t));
uint8_t simple_p_send(uint8_t address, uint8_t *data, uint16_t length);
# 15 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2
# 1 "../../../../../../components/libraries/experimental_log/NRF_LOG.h" 1
# 52 "../../../../../../components/libraries/experimental_log/NRF_LOG.h"
# 1 "../../../../../../components/libraries/util/sdk_common.h" 1
# 56 "../../../../../../components/libraries/util/sdk_common.h"
# 1 "../config/sdk_config.h" 1
# 57 "../../../../../../components/libraries/util/sdk_common.h" 2


# 1 "../../../../../../components/libraries/util/sdk_os.h" 1
# 60 "../../../../../../components/libraries/util/sdk_common.h" 2

# 1 "../../../../../../components/libraries/util/app_util.h" 1
# 62 "../../../../../../components/libraries/util/sdk_common.h" 2
# 1 "../../../../../../components/libraries/util/sdk_macros.h" 1
# 63 "../../../../../../components/libraries/util/sdk_common.h" 2
# 53 "../../../../../../components/libraries/experimental_log/NRF_LOG.h" 2
# 1 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h" 1
# 43 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
# 1 "../../../../../../components/libraries/util/nordic_common.h" 1
# 44 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h" 2
# 54 "../../../../../../components/libraries/experimental_log/NRF_LOG.h" 2

# 1 "../../../../../../components/libraries/strerror/nrf_strerror.h" 1
# 51 "../../../../../../components/libraries/strerror/nrf_strerror.h"
# 1 "../../../../../../components/libraries/util/sdk_errors.h" 1
# 52 "../../../../../../components/libraries/strerror/nrf_strerror.h" 2
# 69 "../../../../../../components/libraries/strerror/nrf_strerror.h"
char const * nrf_strerror_get(ret_code_t code);
# 81 "../../../../../../components/libraries/strerror/nrf_strerror.h"
char const * nrf_strerror_find(ret_code_t code);
# 56 "../../../../../../components/libraries/experimental_log/NRF_LOG.h" 2
# 81 "../../../../../../components/libraries/experimental_log/NRF_LOG.h"
# 1 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h" 1
# 48 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
# 1 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h" 1
# 45 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
# 1 "../../../../../../components/libraries/experimental_log/nrf_log_types.h" 1
# 48 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
typedef enum
{
    NRF_LOG_SEVERITY_NONE,
    NRF_LOG_SEVERITY_ERROR,
    NRF_LOG_SEVERITY_WARNING,
    NRF_LOG_SEVERITY_INFO,
    NRF_LOG_SEVERITY_DEBUG,
    NRF_LOG_SEVERITY_INFO_RAW,
} nrf_log_severity_t;






typedef struct
{
    uint16_t module_id;
    uint16_t order_idx;
    uint32_t filter;
    uint32_t filter_lvls;
} nrf_log_module_dynamic_data_t;






typedef struct
{
    uint16_t module_id;
    uint16_t padding;
} nrf_log_module_reduced_dynamic_data_t;







typedef struct
{
    const char * p_module_name;
    uint8_t info_color_id;
    uint8_t debug_color_id;
    nrf_log_severity_t compiled_lvl;
    nrf_log_severity_t initial_lvl;
} nrf_log_module_const_data_t;
# 46 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h" 2
# 49 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h" 2
# 1 "../../../../../../components/libraries/experimental_log/nrf_log_types.h" 1
# 50 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h" 2
# 292 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
extern nrf_log_module_reduced_dynamic_data_t m_nrf_log_app_logs_data_dynamic;
# 362 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
typedef struct
{
    uint32_t type : 2;
    uint32_t in_progress: 1;
    uint32_t data : 29;
} nrf_log_generic_header_t;

typedef struct
{
    uint32_t type : 2;
    uint32_t in_progress: 1;
    uint32_t severity : 3;
    uint32_t nargs : 4;
    uint32_t addr : 22;
} nrf_log_std_header_t;

typedef struct
{
    uint32_t type : 2;
    uint32_t in_progress: 1;
    uint32_t severity : 3;
    uint32_t offset : 10;
    uint32_t reserved : 6;
    uint32_t len : 10;
} nrf_log_hexdump_header_t;

typedef struct
{
    uint32_t type : 2;
    uint32_t reserved0 : 4;
    uint32_t offset : 10;
    uint32_t reserved1 : 6;
    uint32_t len : 10;
} nrf_log_pushed_header_t;

typedef union
{
    nrf_log_generic_header_t generic;
    nrf_log_std_header_t std;
    nrf_log_hexdump_header_t hexdump;
    nrf_log_pushed_header_t pushed;
    uint32_t raw;
} nrf_log_main_header_t;

typedef struct
{
    nrf_log_main_header_t base;
    uint16_t module_id;
    uint16_t dropped;
    uint32_t timestamp;
} nrf_log_header_t;







_Static_assert((sizeof(nrf_log_pushed_header_t)/sizeof(uint32_t)) == 1, "unspecified message");






void nrf_log_frontend_std_0(uint32_t severity_mid, char const * const p_str);
# 436 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_1(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0);
# 447 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_2(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0,
                            uint32_t val1);
# 459 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_3(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0,
                            uint32_t val1,
                            uint32_t val2);
# 472 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_4(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0,
                            uint32_t val1,
                            uint32_t val2,
                            uint32_t val3);
# 486 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_5(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0,
                            uint32_t val1,
                            uint32_t val2,
                            uint32_t val3,
                            uint32_t val4);
# 501 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_std_6(uint32_t severity_mid,
                            char const * const p_str,
                            uint32_t val0,
                            uint32_t val1,
                            uint32_t val2,
                            uint32_t val3,
                            uint32_t val4,
                            uint32_t val5);
# 519 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
void nrf_log_frontend_hexdump(uint32_t severity_mid,
                              const void * const p_data,
                              uint16_t length);






uint8_t nrf_log_getchar(void);
# 82 "../../../../../../components/libraries/experimental_log/NRF_LOG.h" 2
# 257 "../../../../../../components/libraries/experimental_log/NRF_LOG.h"
uint32_t nrf_log_push(char * const p_str);
# 16 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 2



arq_connection server_connection;

uint8_t connected = 0;
extern message_t message_in;
extern SemaphoreHandle_t xCommandReadyBSem;
extern uint8_t gHandshook;

uint8_t use_arq[11] = {
  [0] = 1,
  [1] = 0,
  [3] = 1,
  [9] = 1,
  [10] = 0
};
# 45 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c"
extern uint8_t USEBLUETOOTH;

void server_communication_init(void) {
  if(connected) return;
  server_connection = arq_new_connection();
}

uint8_t server_connect(void) {
  connected = arq_connect(server_connection, 0, server_receiver, 2000);
  return connected;
}

uint8_t send_handshake(void) {
  if(!connected) return 0;
  message_t msg;
  msg.type = 0;
  msg.message.handshake.name_length = 3;
  strcpy((char*)msg.message.handshake.name, "NRF");
  msg.message.handshake.width = 175;
  msg.message.handshake.length = 230;
  msg.message.handshake.axel_offset = 46;
  msg.message.handshake.tower_offset_x = 46;
  msg.message.handshake.tower_offset_y = 0;
  msg.message.handshake.sensor_offset1 = 21;
  msg.message.handshake.sensor_offset2 = 21;
  msg.message.handshake.sensor_offset3 = 21;
  msg.message.handshake.sensor_offset4 = 21;
  msg.message.handshake.sensor_heading1 = 0;
  msg.message.handshake.sensor_heading2 = 90;
  msg.message.handshake.sensor_heading3 = 180;
  msg.message.handshake.sensor_heading4 = 270;
  msg.message.handshake.deadline = 200;

  uint8_t data[sizeof(handshake_message_t)+1];
  memcpy(data, (uint8_t*) &msg, sizeof(data));
  if(use_arq[0]) arq_send(server_connection, data, sizeof(data));
  else simple_p_send(server_connection, data, sizeof(data));
  return 1;
}

void send_update(int16_t x_cm, int16_t y_cm, int16_t heading_deg, int16_t towerAngle_deg, uint8_t S1_cm, uint8_t S2_cm, uint8_t S3_cm, uint8_t S4_cm){
  if(!connected) return;
  message_t msg;
  msg.type = 1;
  msg.message.update.x = x_cm;
  msg.message.update.y = y_cm;
  msg.message.update.heading = heading_deg;
  msg.message.update.tower_angle = towerAngle_deg;
  msg.message.update.sensor1 = S1_cm;
  msg.message.update.sensor2 = S2_cm;
  msg.message.update.sensor3 = S3_cm;
  msg.message.update.sensor4 = S4_cm;
  uint8_t data[sizeof(update_message_t)+1];
  memcpy(data, (uint8_t*) &msg, sizeof(data));
  if(use_arq[1]) arq_send(server_connection, data, sizeof(data));
  else simple_p_send(0, data, sizeof(data));
}

void send_idle(void) {
  if(!connected) return;
  uint8_t status = 3;
  if(use_arq[3]) arq_send(server_connection, &status, 1);
  else simple_p_send(0, &status, 1);
}
void debug(const char *fmt, ...) {
        if(!USEBLUETOOTH){return;}
 uint8_t buf[100];
 va_list ap;
 buf[0] = 10;
 
# 114 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 3 4
__builtin_va_start((
# 114 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c"
ap
# 114 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 3 4
),
# 114 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c"
fmt
# 114 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 3 4
)
# 114 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c"
                 ;
 uint8_t ret = vsprintf((char*)buf+1, fmt, ap);
 
# 116 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 3 4
__builtin_va_end(
# 116 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c"
ap
# 116 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 3 4
)
# 116 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c"
          ;
 if (ret > 0) {
  if(use_arq[10]) arq_send(server_connection, buf, ret+1);
  else simple_p_send(0, buf, ret+1);
 }
}

void send_ping_response(void) {
  if(!connected) return;
  uint8_t status = 9;
  if(use_arq[9]) arq_send(server_connection, &status, 1);
  else simple_p_send(0, &status, 1);
}

void server_receiver(uint8_t *data, uint16_t len) {
  if(data == 
# 131 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 3 4
            0
# 131 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c"
                ) {
      gHandshook = 0;
  }
  if (1 && (3 >= NRF_LOG_SEVERITY_INFO) && (NRF_LOG_SEVERITY_INFO <= 3)) { if (NRF_LOG_SEVERITY_DEBUG >= NRF_LOG_SEVERITY_INFO) { nrf_log_frontend_std_1(((NRF_LOG_SEVERITY_INFO) | m_nrf_log_app_logs_data_dynamic.module_id << 16), "GIVING command semaphore with len:%d", (uint32_t)(len)); } };
  memcpy(&message_in, data, len);
  xQueueGenericSend( ( QueueHandle_t ) ( xCommandReadyBSem ), 
# 136 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c" 3 4
 0
# 136 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\server_communication.c"
 , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
}
