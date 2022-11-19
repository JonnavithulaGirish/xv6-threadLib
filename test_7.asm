
_test_7:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
   exit(); \
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 14             	sub    $0x14,%esp
   ppid = getpid();
  11:	e8 2e 05 00 00       	call   544 <getpid>
  16:	a3 94 0d 00 00       	mov    %eax,0xd94

   int fork_pid = fork();
  1b:	e8 9c 04 00 00       	call   4bc <fork>
   if(fork_pid == 0) {
  20:	85 c0                	test   %eax,%eax
  22:	74 79                	je     9d <main+0x9d>
     exit();
   }
   assert(fork_pid > 0);
  24:	7e 5a                	jle    80 <main+0x80>

   void *join_stack;
   int join_pid = join(&join_stack);
  26:	83 ec 0c             	sub    $0xc,%esp
  29:	8d 45 f4             	lea    -0xc(%ebp),%eax
  2c:	50                   	push   %eax
  2d:	e8 3a 05 00 00       	call   56c <join>
   assert(join_pid == -1);
  32:	83 c4 10             	add    $0x10,%esp
  35:	83 c0 01             	add    $0x1,%eax
  38:	74 68                	je     a2 <main+0xa2>
  3a:	6a 22                	push   $0x22
  3c:	68 58 09 00 00       	push   $0x958
  41:	68 61 09 00 00       	push   $0x961
  46:	6a 01                	push   $0x1
  48:	e8 e3 05 00 00       	call   630 <printf>
  4d:	83 c4 0c             	add    $0xc,%esp
  50:	68 97 09 00 00       	push   $0x997
  55:	68 76 09 00 00       	push   $0x976
  5a:	6a 01                	push   $0x1
  5c:	e8 cf 05 00 00       	call   630 <printf>
  61:	5a                   	pop    %edx
  62:	59                   	pop    %ecx
  63:	68 8a 09 00 00       	push   $0x98a
  68:	6a 01                	push   $0x1
  6a:	e8 c1 05 00 00       	call   630 <printf>
  6f:	58                   	pop    %eax
  70:	ff 35 94 0d 00 00    	push   0xd94
  76:	e8 79 04 00 00       	call   4f4 <kill>
  7b:	e8 44 04 00 00       	call   4c4 <exit>
   assert(fork_pid > 0);
  80:	6a 1e                	push   $0x1e
  82:	68 58 09 00 00       	push   $0x958
  87:	68 61 09 00 00       	push   $0x961
  8c:	6a 01                	push   $0x1
  8e:	e8 9d 05 00 00       	call   630 <printf>
  93:	83 c4 0c             	add    $0xc,%esp
  96:	68 69 09 00 00       	push   $0x969
  9b:	eb b8                	jmp    55 <main+0x55>
     exit();
  9d:	e8 22 04 00 00       	call   4c4 <exit>

   assert(wait() > 0);
  a2:	e8 25 04 00 00       	call   4cc <wait>
  a7:	85 c0                	test   %eax,%eax
  a9:	7e 13                	jle    be <main+0xbe>
   printf(1, "TEST PASSED\n");
  ab:	50                   	push   %eax
  ac:	50                   	push   %eax
  ad:	68 b1 09 00 00       	push   $0x9b1
  b2:	6a 01                	push   $0x1
  b4:	e8 77 05 00 00       	call   630 <printf>
   exit();
  b9:	e8 06 04 00 00       	call   4c4 <exit>
   assert(wait() > 0);
  be:	6a 24                	push   $0x24
  c0:	68 58 09 00 00       	push   $0x958
  c5:	68 61 09 00 00       	push   $0x961
  ca:	6a 01                	push   $0x1
  cc:	e8 5f 05 00 00       	call   630 <printf>
  d1:	83 c4 0c             	add    $0xc,%esp
  d4:	68 a6 09 00 00       	push   $0x9a6
  d9:	e9 77 ff ff ff       	jmp    55 <main+0x55>
  de:	66 90                	xchg   %ax,%ax

000000e0 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
  e0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  e1:	31 c0                	xor    %eax,%eax
{
  e3:	89 e5                	mov    %esp,%ebp
  e5:	53                   	push   %ebx
  e6:	8b 4d 08             	mov    0x8(%ebp),%ecx
  e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  f7:	83 c0 01             	add    $0x1,%eax
  fa:	84 d2                	test   %dl,%dl
  fc:	75 f2                	jne    f0 <strcpy+0x10>
    ;
  return os;
}
  fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 101:	89 c8                	mov    %ecx,%eax
 103:	c9                   	leave  
 104:	c3                   	ret    
 105:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 10c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000110 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	53                   	push   %ebx
 114:	8b 55 08             	mov    0x8(%ebp),%edx
 117:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 11a:	0f b6 02             	movzbl (%edx),%eax
 11d:	84 c0                	test   %al,%al
 11f:	75 17                	jne    138 <strcmp+0x28>
 121:	eb 3a                	jmp    15d <strcmp+0x4d>
 123:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 127:	90                   	nop
 128:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 12c:	83 c2 01             	add    $0x1,%edx
 12f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 132:	84 c0                	test   %al,%al
 134:	74 1a                	je     150 <strcmp+0x40>
    p++, q++;
 136:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 138:	0f b6 19             	movzbl (%ecx),%ebx
 13b:	38 c3                	cmp    %al,%bl
 13d:	74 e9                	je     128 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 13f:	29 d8                	sub    %ebx,%eax
}
 141:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 144:	c9                   	leave  
 145:	c3                   	ret    
 146:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 14d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 150:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 154:	31 c0                	xor    %eax,%eax
 156:	29 d8                	sub    %ebx,%eax
}
 158:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 15b:	c9                   	leave  
 15c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 15d:	0f b6 19             	movzbl (%ecx),%ebx
 160:	31 c0                	xor    %eax,%eax
 162:	eb db                	jmp    13f <strcmp+0x2f>
 164:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 16b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 16f:	90                   	nop

00000170 <strlen>:

uint
strlen(const char *s)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 176:	80 3a 00             	cmpb   $0x0,(%edx)
 179:	74 15                	je     190 <strlen+0x20>
 17b:	31 c0                	xor    %eax,%eax
 17d:	8d 76 00             	lea    0x0(%esi),%esi
 180:	83 c0 01             	add    $0x1,%eax
 183:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 187:	89 c1                	mov    %eax,%ecx
 189:	75 f5                	jne    180 <strlen+0x10>
    ;
  return n;
}
 18b:	89 c8                	mov    %ecx,%eax
 18d:	5d                   	pop    %ebp
 18e:	c3                   	ret    
 18f:	90                   	nop
  for(n = 0; s[n]; n++)
 190:	31 c9                	xor    %ecx,%ecx
}
 192:	5d                   	pop    %ebp
 193:	89 c8                	mov    %ecx,%eax
 195:	c3                   	ret    
 196:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 19d:	8d 76 00             	lea    0x0(%esi),%esi

000001a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	57                   	push   %edi
 1a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ad:	89 d7                	mov    %edx,%edi
 1af:	fc                   	cld    
 1b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1b2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 1b5:	89 d0                	mov    %edx,%eax
 1b7:	c9                   	leave  
 1b8:	c3                   	ret    
 1b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001c0 <strchr>:

char*
strchr(const char *s, char c)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	8b 45 08             	mov    0x8(%ebp),%eax
 1c6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 1ca:	0f b6 10             	movzbl (%eax),%edx
 1cd:	84 d2                	test   %dl,%dl
 1cf:	75 12                	jne    1e3 <strchr+0x23>
 1d1:	eb 1d                	jmp    1f0 <strchr+0x30>
 1d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1d7:	90                   	nop
 1d8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 1dc:	83 c0 01             	add    $0x1,%eax
 1df:	84 d2                	test   %dl,%dl
 1e1:	74 0d                	je     1f0 <strchr+0x30>
    if(*s == c)
 1e3:	38 d1                	cmp    %dl,%cl
 1e5:	75 f1                	jne    1d8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 1e7:	5d                   	pop    %ebp
 1e8:	c3                   	ret    
 1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 1f0:	31 c0                	xor    %eax,%eax
}
 1f2:	5d                   	pop    %ebp
 1f3:	c3                   	ret    
 1f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1ff:	90                   	nop

00000200 <gets>:

char*
gets(char *buf, int max)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	57                   	push   %edi
 204:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 205:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 208:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 209:	31 db                	xor    %ebx,%ebx
{
 20b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 20e:	eb 27                	jmp    237 <gets+0x37>
    cc = read(0, &c, 1);
 210:	83 ec 04             	sub    $0x4,%esp
 213:	6a 01                	push   $0x1
 215:	57                   	push   %edi
 216:	6a 00                	push   $0x0
 218:	e8 bf 02 00 00       	call   4dc <read>
    if(cc < 1)
 21d:	83 c4 10             	add    $0x10,%esp
 220:	85 c0                	test   %eax,%eax
 222:	7e 1d                	jle    241 <gets+0x41>
      break;
    buf[i++] = c;
 224:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 228:	8b 55 08             	mov    0x8(%ebp),%edx
 22b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 22f:	3c 0a                	cmp    $0xa,%al
 231:	74 1d                	je     250 <gets+0x50>
 233:	3c 0d                	cmp    $0xd,%al
 235:	74 19                	je     250 <gets+0x50>
  for(i=0; i+1 < max; ){
 237:	89 de                	mov    %ebx,%esi
 239:	83 c3 01             	add    $0x1,%ebx
 23c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 23f:	7c cf                	jl     210 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 241:	8b 45 08             	mov    0x8(%ebp),%eax
 244:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 248:	8d 65 f4             	lea    -0xc(%ebp),%esp
 24b:	5b                   	pop    %ebx
 24c:	5e                   	pop    %esi
 24d:	5f                   	pop    %edi
 24e:	5d                   	pop    %ebp
 24f:	c3                   	ret    
  buf[i] = '\0';
 250:	8b 45 08             	mov    0x8(%ebp),%eax
 253:	89 de                	mov    %ebx,%esi
 255:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 259:	8d 65 f4             	lea    -0xc(%ebp),%esp
 25c:	5b                   	pop    %ebx
 25d:	5e                   	pop    %esi
 25e:	5f                   	pop    %edi
 25f:	5d                   	pop    %ebp
 260:	c3                   	ret    
 261:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 268:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 26f:	90                   	nop

00000270 <stat>:

int
stat(const char *n, struct stat *st)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	56                   	push   %esi
 274:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 275:	83 ec 08             	sub    $0x8,%esp
 278:	6a 00                	push   $0x0
 27a:	ff 75 08             	push   0x8(%ebp)
 27d:	e8 82 02 00 00       	call   504 <open>
  if(fd < 0)
 282:	83 c4 10             	add    $0x10,%esp
 285:	85 c0                	test   %eax,%eax
 287:	78 27                	js     2b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 289:	83 ec 08             	sub    $0x8,%esp
 28c:	ff 75 0c             	push   0xc(%ebp)
 28f:	89 c3                	mov    %eax,%ebx
 291:	50                   	push   %eax
 292:	e8 85 02 00 00       	call   51c <fstat>
  close(fd);
 297:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 29a:	89 c6                	mov    %eax,%esi
  close(fd);
 29c:	e8 4b 02 00 00       	call   4ec <close>
  return r;
 2a1:	83 c4 10             	add    $0x10,%esp
}
 2a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2a7:	89 f0                	mov    %esi,%eax
 2a9:	5b                   	pop    %ebx
 2aa:	5e                   	pop    %esi
 2ab:	5d                   	pop    %ebp
 2ac:	c3                   	ret    
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 2b0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2b5:	eb ed                	jmp    2a4 <stat+0x34>
 2b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2be:	66 90                	xchg   %ax,%ax

000002c0 <atoi>:

int
atoi(const char *s)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	53                   	push   %ebx
 2c4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 2c7:	0f be 02             	movsbl (%edx),%eax
 2ca:	8d 48 d0             	lea    -0x30(%eax),%ecx
 2cd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 2d0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 2d5:	77 1e                	ja     2f5 <atoi+0x35>
 2d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2de:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 2e0:	83 c2 01             	add    $0x1,%edx
 2e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 2e6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 2ea:	0f be 02             	movsbl (%edx),%eax
 2ed:	8d 58 d0             	lea    -0x30(%eax),%ebx
 2f0:	80 fb 09             	cmp    $0x9,%bl
 2f3:	76 eb                	jbe    2e0 <atoi+0x20>
  return n;
}
 2f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2f8:	89 c8                	mov    %ecx,%eax
 2fa:	c9                   	leave  
 2fb:	c3                   	ret    
 2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000300 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	57                   	push   %edi
 304:	8b 45 10             	mov    0x10(%ebp),%eax
 307:	8b 55 08             	mov    0x8(%ebp),%edx
 30a:	56                   	push   %esi
 30b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 30e:	85 c0                	test   %eax,%eax
 310:	7e 13                	jle    325 <memmove+0x25>
 312:	01 d0                	add    %edx,%eax
  dst = vdst;
 314:	89 d7                	mov    %edx,%edi
 316:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 320:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 321:	39 f8                	cmp    %edi,%eax
 323:	75 fb                	jne    320 <memmove+0x20>
  return vdst;
}
 325:	5e                   	pop    %esi
 326:	89 d0                	mov    %edx,%eax
 328:	5f                   	pop    %edi
 329:	5d                   	pop    %ebp
 32a:	c3                   	ret    
 32b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 32f:	90                   	nop

00000330 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 330:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 331:	b8 01 00 00 00       	mov    $0x1,%eax
 336:	89 e5                	mov    %esp,%ebp
 338:	53                   	push   %ebx
 339:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 33c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 343:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 34a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 34f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 352:	39 c2                	cmp    %eax,%edx
 354:	74 24                	je     37a <thread_create+0x4a>
 356:	89 c3                	mov    %eax,%ebx
 358:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 360:	83 ec 04             	sub    $0x4,%esp
 363:	52                   	push   %edx
 364:	68 be 09 00 00       	push   $0x9be
 369:	6a 01                	push   $0x1
 36b:	e8 c0 02 00 00       	call   630 <printf>
  while(lock->turn != myturn){
 370:	8b 55 f4             	mov    -0xc(%ebp),%edx
 373:	83 c4 10             	add    $0x10,%esp
 376:	39 d3                	cmp    %edx,%ebx
 378:	75 e6                	jne    360 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 37a:	83 ec 0c             	sub    $0xc,%esp
 37d:	68 00 20 00 00       	push   $0x2000
 382:	e8 d9 04 00 00       	call   860 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 387:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 38b:	83 c4 10             	add    $0x10,%esp
 38e:	89 c2                	mov    %eax,%edx
 390:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 396:	74 07                	je     39f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 398:	29 d0                	sub    %edx,%eax
 39a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 39f:	50                   	push   %eax
 3a0:	ff 75 10             	push   0x10(%ebp)
 3a3:	ff 75 0c             	push   0xc(%ebp)
 3a6:	ff 75 08             	push   0x8(%ebp)
 3a9:	e8 b6 01 00 00       	call   564 <clone>
}
 3ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3b1:	c9                   	leave  
 3b2:	c3                   	ret    
 3b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003c0 <thread_join>:
int thread_join(){
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	56                   	push   %esi
 3c4:	53                   	push   %ebx
 3c5:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 3c8:	6a 04                	push   $0x4
 3ca:	e8 91 04 00 00       	call   860 <malloc>
 3cf:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 3d2:	8d 45 ec             	lea    -0x14(%ebp),%eax
 3d5:	89 04 24             	mov    %eax,(%esp)
 3d8:	e8 8f 01 00 00       	call   56c <join>
  lock->ticket = 0;
 3dd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 3e4:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 3e6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 3ed:	b8 01 00 00 00       	mov    $0x1,%eax
 3f2:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 3f7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3fa:	83 c4 10             	add    $0x10,%esp
 3fd:	39 c2                	cmp    %eax,%edx
 3ff:	74 21                	je     422 <thread_join+0x62>
 401:	89 c3                	mov    %eax,%ebx
 403:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 407:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 408:	83 ec 04             	sub    $0x4,%esp
 40b:	52                   	push   %edx
 40c:	68 be 09 00 00       	push   $0x9be
 411:	6a 01                	push   $0x1
 413:	e8 18 02 00 00       	call   630 <printf>
  while(lock->turn != myturn){
 418:	8b 55 f4             	mov    -0xc(%ebp),%edx
 41b:	83 c4 10             	add    $0x10,%esp
 41e:	39 d3                	cmp    %edx,%ebx
 420:	75 e6                	jne    408 <thread_join+0x48>
	free(stack);
 422:	83 ec 0c             	sub    $0xc,%esp
 425:	ff 75 ec             	push   -0x14(%ebp)
 428:	e8 a3 03 00 00       	call   7d0 <free>
}
 42d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 430:	89 f0                	mov    %esi,%eax
 432:	5b                   	pop    %ebx
 433:	5e                   	pop    %esi
 434:	5d                   	pop    %ebp
 435:	c3                   	ret    
 436:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 43d:	8d 76 00             	lea    0x0(%esi),%esi

00000440 <lock_init>:
void lock_init(lock_t *lock) {
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 446:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 44c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 453:	5d                   	pop    %ebp
 454:	c3                   	ret    
 455:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000460 <lock_acquire>:
void lock_acquire(lock_t *lock){
 460:	55                   	push   %ebp
 461:	b8 01 00 00 00       	mov    $0x1,%eax
 466:	89 e5                	mov    %esp,%ebp
 468:	56                   	push   %esi
 469:	8b 75 08             	mov    0x8(%ebp),%esi
 46c:	53                   	push   %ebx
 46d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 471:	8b 56 04             	mov    0x4(%esi),%edx
 474:	39 d0                	cmp    %edx,%eax
 476:	74 22                	je     49a <lock_acquire+0x3a>
 478:	89 c3                	mov    %eax,%ebx
 47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 480:	83 ec 04             	sub    $0x4,%esp
 483:	52                   	push   %edx
 484:	68 be 09 00 00       	push   $0x9be
 489:	6a 01                	push   $0x1
 48b:	e8 a0 01 00 00       	call   630 <printf>
  while(lock->turn != myturn){
 490:	8b 56 04             	mov    0x4(%esi),%edx
 493:	83 c4 10             	add    $0x10,%esp
 496:	39 da                	cmp    %ebx,%edx
 498:	75 e6                	jne    480 <lock_acquire+0x20>
}
 49a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 49d:	5b                   	pop    %ebx
 49e:	5e                   	pop    %esi
 49f:	5d                   	pop    %ebp
 4a0:	c3                   	ret    
 4a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4af:	90                   	nop

000004b0 <lock_release>:
void lock_release(lock_t *lock){
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 4b6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 4ba:	5d                   	pop    %ebp
 4bb:	c3                   	ret    

000004bc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4bc:	b8 01 00 00 00       	mov    $0x1,%eax
 4c1:	cd 40                	int    $0x40
 4c3:	c3                   	ret    

000004c4 <exit>:
SYSCALL(exit)
 4c4:	b8 02 00 00 00       	mov    $0x2,%eax
 4c9:	cd 40                	int    $0x40
 4cb:	c3                   	ret    

000004cc <wait>:
SYSCALL(wait)
 4cc:	b8 03 00 00 00       	mov    $0x3,%eax
 4d1:	cd 40                	int    $0x40
 4d3:	c3                   	ret    

000004d4 <pipe>:
SYSCALL(pipe)
 4d4:	b8 04 00 00 00       	mov    $0x4,%eax
 4d9:	cd 40                	int    $0x40
 4db:	c3                   	ret    

000004dc <read>:
SYSCALL(read)
 4dc:	b8 05 00 00 00       	mov    $0x5,%eax
 4e1:	cd 40                	int    $0x40
 4e3:	c3                   	ret    

000004e4 <write>:
SYSCALL(write)
 4e4:	b8 10 00 00 00       	mov    $0x10,%eax
 4e9:	cd 40                	int    $0x40
 4eb:	c3                   	ret    

000004ec <close>:
SYSCALL(close)
 4ec:	b8 15 00 00 00       	mov    $0x15,%eax
 4f1:	cd 40                	int    $0x40
 4f3:	c3                   	ret    

000004f4 <kill>:
SYSCALL(kill)
 4f4:	b8 06 00 00 00       	mov    $0x6,%eax
 4f9:	cd 40                	int    $0x40
 4fb:	c3                   	ret    

000004fc <exec>:
SYSCALL(exec)
 4fc:	b8 07 00 00 00       	mov    $0x7,%eax
 501:	cd 40                	int    $0x40
 503:	c3                   	ret    

00000504 <open>:
SYSCALL(open)
 504:	b8 0f 00 00 00       	mov    $0xf,%eax
 509:	cd 40                	int    $0x40
 50b:	c3                   	ret    

0000050c <mknod>:
SYSCALL(mknod)
 50c:	b8 11 00 00 00       	mov    $0x11,%eax
 511:	cd 40                	int    $0x40
 513:	c3                   	ret    

00000514 <unlink>:
SYSCALL(unlink)
 514:	b8 12 00 00 00       	mov    $0x12,%eax
 519:	cd 40                	int    $0x40
 51b:	c3                   	ret    

0000051c <fstat>:
SYSCALL(fstat)
 51c:	b8 08 00 00 00       	mov    $0x8,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    

00000524 <link>:
SYSCALL(link)
 524:	b8 13 00 00 00       	mov    $0x13,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    

0000052c <mkdir>:
SYSCALL(mkdir)
 52c:	b8 14 00 00 00       	mov    $0x14,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    

00000534 <chdir>:
SYSCALL(chdir)
 534:	b8 09 00 00 00       	mov    $0x9,%eax
 539:	cd 40                	int    $0x40
 53b:	c3                   	ret    

0000053c <dup>:
SYSCALL(dup)
 53c:	b8 0a 00 00 00       	mov    $0xa,%eax
 541:	cd 40                	int    $0x40
 543:	c3                   	ret    

00000544 <getpid>:
SYSCALL(getpid)
 544:	b8 0b 00 00 00       	mov    $0xb,%eax
 549:	cd 40                	int    $0x40
 54b:	c3                   	ret    

0000054c <sbrk>:
SYSCALL(sbrk)
 54c:	b8 0c 00 00 00       	mov    $0xc,%eax
 551:	cd 40                	int    $0x40
 553:	c3                   	ret    

00000554 <sleep>:
SYSCALL(sleep)
 554:	b8 0d 00 00 00       	mov    $0xd,%eax
 559:	cd 40                	int    $0x40
 55b:	c3                   	ret    

0000055c <uptime>:
SYSCALL(uptime)
 55c:	b8 0e 00 00 00       	mov    $0xe,%eax
 561:	cd 40                	int    $0x40
 563:	c3                   	ret    

00000564 <clone>:
SYSCALL(clone)
 564:	b8 16 00 00 00       	mov    $0x16,%eax
 569:	cd 40                	int    $0x40
 56b:	c3                   	ret    

0000056c <join>:
SYSCALL(join)
 56c:	b8 17 00 00 00       	mov    $0x17,%eax
 571:	cd 40                	int    $0x40
 573:	c3                   	ret    
 574:	66 90                	xchg   %ax,%ax
 576:	66 90                	xchg   %ax,%ax
 578:	66 90                	xchg   %ax,%ax
 57a:	66 90                	xchg   %ax,%ax
 57c:	66 90                	xchg   %ax,%ax
 57e:	66 90                	xchg   %ax,%ax

00000580 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	57                   	push   %edi
 584:	56                   	push   %esi
 585:	53                   	push   %ebx
 586:	83 ec 3c             	sub    $0x3c,%esp
 589:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 58c:	89 d1                	mov    %edx,%ecx
{
 58e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 591:	85 d2                	test   %edx,%edx
 593:	0f 89 7f 00 00 00    	jns    618 <printint+0x98>
 599:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 59d:	74 79                	je     618 <printint+0x98>
    neg = 1;
 59f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5a8:	31 db                	xor    %ebx,%ebx
 5aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 5b0:	89 c8                	mov    %ecx,%eax
 5b2:	31 d2                	xor    %edx,%edx
 5b4:	89 cf                	mov    %ecx,%edi
 5b6:	f7 75 c4             	divl   -0x3c(%ebp)
 5b9:	0f b6 92 34 0a 00 00 	movzbl 0xa34(%edx),%edx
 5c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5c3:	89 d8                	mov    %ebx,%eax
 5c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 5c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 5cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 5ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 5d1:	76 dd                	jbe    5b0 <printint+0x30>
  if(neg)
 5d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 5d6:	85 c9                	test   %ecx,%ecx
 5d8:	74 0c                	je     5e6 <printint+0x66>
    buf[i++] = '-';
 5da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 5df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 5e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 5e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 5e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 5ed:	eb 07                	jmp    5f6 <printint+0x76>
 5ef:	90                   	nop
    putc(fd, buf[i]);
 5f0:	0f b6 13             	movzbl (%ebx),%edx
 5f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 5f6:	83 ec 04             	sub    $0x4,%esp
 5f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 5fc:	6a 01                	push   $0x1
 5fe:	56                   	push   %esi
 5ff:	57                   	push   %edi
 600:	e8 df fe ff ff       	call   4e4 <write>
  while(--i >= 0)
 605:	83 c4 10             	add    $0x10,%esp
 608:	39 de                	cmp    %ebx,%esi
 60a:	75 e4                	jne    5f0 <printint+0x70>
}
 60c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 60f:	5b                   	pop    %ebx
 610:	5e                   	pop    %esi
 611:	5f                   	pop    %edi
 612:	5d                   	pop    %ebp
 613:	c3                   	ret    
 614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 618:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 61f:	eb 87                	jmp    5a8 <printint+0x28>
 621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 628:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62f:	90                   	nop

00000630 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	57                   	push   %edi
 634:	56                   	push   %esi
 635:	53                   	push   %ebx
 636:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 639:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 63c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 63f:	0f b6 13             	movzbl (%ebx),%edx
 642:	84 d2                	test   %dl,%dl
 644:	74 6a                	je     6b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 646:	8d 45 10             	lea    0x10(%ebp),%eax
 649:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 64c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 64f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 651:	89 45 d0             	mov    %eax,-0x30(%ebp)
 654:	eb 36                	jmp    68c <printf+0x5c>
 656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65d:	8d 76 00             	lea    0x0(%esi),%esi
 660:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 663:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 668:	83 f8 25             	cmp    $0x25,%eax
 66b:	74 15                	je     682 <printf+0x52>
  write(fd, &c, 1);
 66d:	83 ec 04             	sub    $0x4,%esp
 670:	88 55 e7             	mov    %dl,-0x19(%ebp)
 673:	6a 01                	push   $0x1
 675:	57                   	push   %edi
 676:	56                   	push   %esi
 677:	e8 68 fe ff ff       	call   4e4 <write>
 67c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 67f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 682:	0f b6 13             	movzbl (%ebx),%edx
 685:	83 c3 01             	add    $0x1,%ebx
 688:	84 d2                	test   %dl,%dl
 68a:	74 24                	je     6b0 <printf+0x80>
    c = fmt[i] & 0xff;
 68c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 68f:	85 c9                	test   %ecx,%ecx
 691:	74 cd                	je     660 <printf+0x30>
      }
    } else if(state == '%'){
 693:	83 f9 25             	cmp    $0x25,%ecx
 696:	75 ea                	jne    682 <printf+0x52>
      if(c == 'd'){
 698:	83 f8 25             	cmp    $0x25,%eax
 69b:	0f 84 07 01 00 00    	je     7a8 <printf+0x178>
 6a1:	83 e8 63             	sub    $0x63,%eax
 6a4:	83 f8 15             	cmp    $0x15,%eax
 6a7:	77 17                	ja     6c0 <printf+0x90>
 6a9:	ff 24 85 dc 09 00 00 	jmp    *0x9dc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6b3:	5b                   	pop    %ebx
 6b4:	5e                   	pop    %esi
 6b5:	5f                   	pop    %edi
 6b6:	5d                   	pop    %ebp
 6b7:	c3                   	ret    
 6b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bf:	90                   	nop
  write(fd, &c, 1);
 6c0:	83 ec 04             	sub    $0x4,%esp
 6c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 6c6:	6a 01                	push   $0x1
 6c8:	57                   	push   %edi
 6c9:	56                   	push   %esi
 6ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6ce:	e8 11 fe ff ff       	call   4e4 <write>
        putc(fd, c);
 6d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 6d7:	83 c4 0c             	add    $0xc,%esp
 6da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6dd:	6a 01                	push   $0x1
 6df:	57                   	push   %edi
 6e0:	56                   	push   %esi
 6e1:	e8 fe fd ff ff       	call   4e4 <write>
        putc(fd, c);
 6e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6e9:	31 c9                	xor    %ecx,%ecx
 6eb:	eb 95                	jmp    682 <printf+0x52>
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6f0:	83 ec 0c             	sub    $0xc,%esp
 6f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 6f8:	6a 00                	push   $0x0
 6fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6fd:	8b 10                	mov    (%eax),%edx
 6ff:	89 f0                	mov    %esi,%eax
 701:	e8 7a fe ff ff       	call   580 <printint>
        ap++;
 706:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 70a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 70d:	31 c9                	xor    %ecx,%ecx
 70f:	e9 6e ff ff ff       	jmp    682 <printf+0x52>
 714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 718:	8b 45 d0             	mov    -0x30(%ebp),%eax
 71b:	8b 10                	mov    (%eax),%edx
        ap++;
 71d:	83 c0 04             	add    $0x4,%eax
 720:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 723:	85 d2                	test   %edx,%edx
 725:	0f 84 8d 00 00 00    	je     7b8 <printf+0x188>
        while(*s != 0){
 72b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 72e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 730:	84 c0                	test   %al,%al
 732:	0f 84 4a ff ff ff    	je     682 <printf+0x52>
 738:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 73b:	89 d3                	mov    %edx,%ebx
 73d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 740:	83 ec 04             	sub    $0x4,%esp
          s++;
 743:	83 c3 01             	add    $0x1,%ebx
 746:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 749:	6a 01                	push   $0x1
 74b:	57                   	push   %edi
 74c:	56                   	push   %esi
 74d:	e8 92 fd ff ff       	call   4e4 <write>
        while(*s != 0){
 752:	0f b6 03             	movzbl (%ebx),%eax
 755:	83 c4 10             	add    $0x10,%esp
 758:	84 c0                	test   %al,%al
 75a:	75 e4                	jne    740 <printf+0x110>
      state = 0;
 75c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 75f:	31 c9                	xor    %ecx,%ecx
 761:	e9 1c ff ff ff       	jmp    682 <printf+0x52>
 766:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 76d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 770:	83 ec 0c             	sub    $0xc,%esp
 773:	b9 0a 00 00 00       	mov    $0xa,%ecx
 778:	6a 01                	push   $0x1
 77a:	e9 7b ff ff ff       	jmp    6fa <printf+0xca>
 77f:	90                   	nop
        putc(fd, *ap);
 780:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 783:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 786:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 788:	6a 01                	push   $0x1
 78a:	57                   	push   %edi
 78b:	56                   	push   %esi
        putc(fd, *ap);
 78c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 78f:	e8 50 fd ff ff       	call   4e4 <write>
        ap++;
 794:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 798:	83 c4 10             	add    $0x10,%esp
      state = 0;
 79b:	31 c9                	xor    %ecx,%ecx
 79d:	e9 e0 fe ff ff       	jmp    682 <printf+0x52>
 7a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7ab:	83 ec 04             	sub    $0x4,%esp
 7ae:	e9 2a ff ff ff       	jmp    6dd <printf+0xad>
 7b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7b7:	90                   	nop
          s = "(null)";
 7b8:	ba d2 09 00 00       	mov    $0x9d2,%edx
        while(*s != 0){
 7bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7c0:	b8 28 00 00 00       	mov    $0x28,%eax
 7c5:	89 d3                	mov    %edx,%ebx
 7c7:	e9 74 ff ff ff       	jmp    740 <printf+0x110>
 7cc:	66 90                	xchg   %ax,%ax
 7ce:	66 90                	xchg   %ax,%ax

000007d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 7d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7d1:	a1 98 0d 00 00       	mov    0xd98,%eax
{
 7d6:	89 e5                	mov    %esp,%ebp
 7d8:	57                   	push   %edi
 7d9:	56                   	push   %esi
 7da:	53                   	push   %ebx
 7db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 7de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7e8:	89 c2                	mov    %eax,%edx
 7ea:	8b 00                	mov    (%eax),%eax
 7ec:	39 ca                	cmp    %ecx,%edx
 7ee:	73 30                	jae    820 <free+0x50>
 7f0:	39 c1                	cmp    %eax,%ecx
 7f2:	72 04                	jb     7f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7f4:	39 c2                	cmp    %eax,%edx
 7f6:	72 f0                	jb     7e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7fe:	39 f8                	cmp    %edi,%eax
 800:	74 30                	je     832 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 802:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 805:	8b 42 04             	mov    0x4(%edx),%eax
 808:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 80b:	39 f1                	cmp    %esi,%ecx
 80d:	74 3a                	je     849 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 80f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 811:	5b                   	pop    %ebx
  freep = p;
 812:	89 15 98 0d 00 00    	mov    %edx,0xd98
}
 818:	5e                   	pop    %esi
 819:	5f                   	pop    %edi
 81a:	5d                   	pop    %ebp
 81b:	c3                   	ret    
 81c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 820:	39 c2                	cmp    %eax,%edx
 822:	72 c4                	jb     7e8 <free+0x18>
 824:	39 c1                	cmp    %eax,%ecx
 826:	73 c0                	jae    7e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 828:	8b 73 fc             	mov    -0x4(%ebx),%esi
 82b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 82e:	39 f8                	cmp    %edi,%eax
 830:	75 d0                	jne    802 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 832:	03 70 04             	add    0x4(%eax),%esi
 835:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 838:	8b 02                	mov    (%edx),%eax
 83a:	8b 00                	mov    (%eax),%eax
 83c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 83f:	8b 42 04             	mov    0x4(%edx),%eax
 842:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 845:	39 f1                	cmp    %esi,%ecx
 847:	75 c6                	jne    80f <free+0x3f>
    p->s.size += bp->s.size;
 849:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 84c:	89 15 98 0d 00 00    	mov    %edx,0xd98
    p->s.size += bp->s.size;
 852:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 855:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 858:	89 0a                	mov    %ecx,(%edx)
}
 85a:	5b                   	pop    %ebx
 85b:	5e                   	pop    %esi
 85c:	5f                   	pop    %edi
 85d:	5d                   	pop    %ebp
 85e:	c3                   	ret    
 85f:	90                   	nop

00000860 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 860:	55                   	push   %ebp
 861:	89 e5                	mov    %esp,%ebp
 863:	57                   	push   %edi
 864:	56                   	push   %esi
 865:	53                   	push   %ebx
 866:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 869:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 86c:	8b 3d 98 0d 00 00    	mov    0xd98,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 872:	8d 70 07             	lea    0x7(%eax),%esi
 875:	c1 ee 03             	shr    $0x3,%esi
 878:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 87b:	85 ff                	test   %edi,%edi
 87d:	0f 84 9d 00 00 00    	je     920 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 883:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 885:	8b 4a 04             	mov    0x4(%edx),%ecx
 888:	39 f1                	cmp    %esi,%ecx
 88a:	73 6a                	jae    8f6 <malloc+0x96>
 88c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 891:	39 de                	cmp    %ebx,%esi
 893:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 896:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 89d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8a0:	eb 17                	jmp    8b9 <malloc+0x59>
 8a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8aa:	8b 48 04             	mov    0x4(%eax),%ecx
 8ad:	39 f1                	cmp    %esi,%ecx
 8af:	73 4f                	jae    900 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8b1:	8b 3d 98 0d 00 00    	mov    0xd98,%edi
 8b7:	89 c2                	mov    %eax,%edx
 8b9:	39 d7                	cmp    %edx,%edi
 8bb:	75 eb                	jne    8a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8bd:	83 ec 0c             	sub    $0xc,%esp
 8c0:	ff 75 e4             	push   -0x1c(%ebp)
 8c3:	e8 84 fc ff ff       	call   54c <sbrk>
  if(p == (char*)-1)
 8c8:	83 c4 10             	add    $0x10,%esp
 8cb:	83 f8 ff             	cmp    $0xffffffff,%eax
 8ce:	74 1c                	je     8ec <malloc+0x8c>
  hp->s.size = nu;
 8d0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 8d3:	83 ec 0c             	sub    $0xc,%esp
 8d6:	83 c0 08             	add    $0x8,%eax
 8d9:	50                   	push   %eax
 8da:	e8 f1 fe ff ff       	call   7d0 <free>
  return freep;
 8df:	8b 15 98 0d 00 00    	mov    0xd98,%edx
      if((p = morecore(nunits)) == 0)
 8e5:	83 c4 10             	add    $0x10,%esp
 8e8:	85 d2                	test   %edx,%edx
 8ea:	75 bc                	jne    8a8 <malloc+0x48>
        return 0;
  }
}
 8ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8ef:	31 c0                	xor    %eax,%eax
}
 8f1:	5b                   	pop    %ebx
 8f2:	5e                   	pop    %esi
 8f3:	5f                   	pop    %edi
 8f4:	5d                   	pop    %ebp
 8f5:	c3                   	ret    
    if(p->s.size >= nunits){
 8f6:	89 d0                	mov    %edx,%eax
 8f8:	89 fa                	mov    %edi,%edx
 8fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 900:	39 ce                	cmp    %ecx,%esi
 902:	74 4c                	je     950 <malloc+0xf0>
        p->s.size -= nunits;
 904:	29 f1                	sub    %esi,%ecx
 906:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 909:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 90c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 90f:	89 15 98 0d 00 00    	mov    %edx,0xd98
}
 915:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 918:	83 c0 08             	add    $0x8,%eax
}
 91b:	5b                   	pop    %ebx
 91c:	5e                   	pop    %esi
 91d:	5f                   	pop    %edi
 91e:	5d                   	pop    %ebp
 91f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 920:	c7 05 98 0d 00 00 9c 	movl   $0xd9c,0xd98
 927:	0d 00 00 
    base.s.size = 0;
 92a:	bf 9c 0d 00 00       	mov    $0xd9c,%edi
    base.s.ptr = freep = prevp = &base;
 92f:	c7 05 9c 0d 00 00 9c 	movl   $0xd9c,0xd9c
 936:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 939:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 93b:	c7 05 a0 0d 00 00 00 	movl   $0x0,0xda0
 942:	00 00 00 
    if(p->s.size >= nunits){
 945:	e9 42 ff ff ff       	jmp    88c <malloc+0x2c>
 94a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 950:	8b 08                	mov    (%eax),%ecx
 952:	89 0a                	mov    %ecx,(%edx)
 954:	eb b9                	jmp    90f <malloc+0xaf>
