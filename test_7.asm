
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
  11:	e8 4e 04 00 00       	call   464 <getpid>
  16:	a3 90 0c 00 00       	mov    %eax,0xc90

   int fork_pid = fork();
  1b:	e8 bc 03 00 00       	call   3dc <fork>
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
  2d:	e8 5a 04 00 00       	call   48c <join>
   assert(join_pid == -1);
  32:	83 c4 10             	add    $0x10,%esp
  35:	83 c0 01             	add    $0x1,%eax
  38:	74 68                	je     a2 <main+0xa2>
  3a:	6a 22                	push   $0x22
  3c:	68 78 08 00 00       	push   $0x878
  41:	68 81 08 00 00       	push   $0x881
  46:	6a 01                	push   $0x1
  48:	e8 03 05 00 00       	call   550 <printf>
  4d:	83 c4 0c             	add    $0xc,%esp
  50:	68 b7 08 00 00       	push   $0x8b7
  55:	68 96 08 00 00       	push   $0x896
  5a:	6a 01                	push   $0x1
  5c:	e8 ef 04 00 00       	call   550 <printf>
  61:	5a                   	pop    %edx
  62:	59                   	pop    %ecx
  63:	68 aa 08 00 00       	push   $0x8aa
  68:	6a 01                	push   $0x1
  6a:	e8 e1 04 00 00       	call   550 <printf>
  6f:	58                   	pop    %eax
  70:	ff 35 90 0c 00 00    	push   0xc90
  76:	e8 99 03 00 00       	call   414 <kill>
  7b:	e8 64 03 00 00       	call   3e4 <exit>
   assert(fork_pid > 0);
  80:	6a 1e                	push   $0x1e
  82:	68 78 08 00 00       	push   $0x878
  87:	68 81 08 00 00       	push   $0x881
  8c:	6a 01                	push   $0x1
  8e:	e8 bd 04 00 00       	call   550 <printf>
  93:	83 c4 0c             	add    $0xc,%esp
  96:	68 89 08 00 00       	push   $0x889
  9b:	eb b8                	jmp    55 <main+0x55>
     exit();
  9d:	e8 42 03 00 00       	call   3e4 <exit>

   assert(wait() > 0);
  a2:	e8 45 03 00 00       	call   3ec <wait>
  a7:	85 c0                	test   %eax,%eax
  a9:	7e 13                	jle    be <main+0xbe>
   printf(1, "TEST PASSED\n");
  ab:	50                   	push   %eax
  ac:	50                   	push   %eax
  ad:	68 d1 08 00 00       	push   $0x8d1
  b2:	6a 01                	push   $0x1
  b4:	e8 97 04 00 00       	call   550 <printf>
   exit();
  b9:	e8 26 03 00 00       	call   3e4 <exit>
   assert(wait() > 0);
  be:	6a 24                	push   $0x24
  c0:	68 78 08 00 00       	push   $0x878
  c5:	68 81 08 00 00       	push   $0x881
  ca:	6a 01                	push   $0x1
  cc:	e8 7f 04 00 00       	call   550 <printf>
  d1:	83 c4 0c             	add    $0xc,%esp
  d4:	68 c6 08 00 00       	push   $0x8c6
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
 218:	e8 df 01 00 00       	call   3fc <read>
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
 27d:	e8 a2 01 00 00       	call   424 <open>
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
 292:	e8 a5 01 00 00       	call   43c <fstat>
  close(fd);
 297:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 29a:	89 c6                	mov    %eax,%esi
  close(fd);
 29c:	e8 6b 01 00 00       	call   40c <close>
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


int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	83 ec 14             	sub    $0x14,%esp
   void *stack = malloc(PGSIZE);
 336:	68 00 10 00 00       	push   $0x1000
 33b:	e8 40 04 00 00       	call   780 <malloc>
   return clone(start_routine, arg1, arg2, stack);
 340:	50                   	push   %eax
 341:	ff 75 10             	push   0x10(%ebp)
 344:	ff 75 0c             	push   0xc(%ebp)
 347:	ff 75 08             	push   0x8(%ebp)
 34a:	e8 35 01 00 00       	call   484 <clone>
}
 34f:	c9                   	leave  
 350:	c3                   	ret    
 351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 358:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <thread_join>:

int thread_join(){
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
  void *stack;
  int pid= join(&stack);
 364:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 367:	83 ec 20             	sub    $0x20,%esp
  int pid= join(&stack);
 36a:	50                   	push   %eax
 36b:	e8 1c 01 00 00       	call   48c <join>
  if(pid >0 ){
 370:	83 c4 10             	add    $0x10,%esp
  int pid= join(&stack);
 373:	89 c2                	mov    %eax,%edx
  if(pid >0 ){
 375:	85 c0                	test   %eax,%eax
 377:	7e 0d                	jle    386 <thread_join+0x26>
 379:	8b 7d f4             	mov    -0xc(%ebp),%edi
 37c:	b9 00 10 00 00       	mov    $0x1000,%ecx
 381:	31 c0                	xor    %eax,%eax
 383:	fc                   	cld    
 384:	f3 aa                	rep stos %al,%es:(%edi)
    memset(stack,0,PGSIZE);
  }
  return pid;
}
 386:	8b 7d fc             	mov    -0x4(%ebp),%edi
 389:	89 d0                	mov    %edx,%eax
 38b:	c9                   	leave  
 38c:	c3                   	ret    
 38d:	8d 76 00             	lea    0x0(%esi),%esi

00000390 <lock_init>:

void lock_init(lock_t *lock) {
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 396:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 39c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 3a3:	5d                   	pop    %ebp
 3a4:	c3                   	ret    
 3a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003b0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 3b0:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 3b1:	b8 01 00 00 00       	mov    $0x1,%eax
 3b6:	89 e5                	mov    %esp,%ebp
 3b8:	8b 55 08             	mov    0x8(%ebp),%edx
 3bb:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn);
 3bf:	8b 52 04             	mov    0x4(%edx),%edx
 3c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 3c8:	39 c2                	cmp    %eax,%edx
 3ca:	75 fc                	jne    3c8 <lock_acquire+0x18>
}
 3cc:	5d                   	pop    %ebp
 3cd:	c3                   	ret    
 3ce:	66 90                	xchg   %ax,%ax

000003d0 <lock_release>:

void lock_release(lock_t *lock){
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 3d6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 3da:	5d                   	pop    %ebp
 3db:	c3                   	ret    

000003dc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3dc:	b8 01 00 00 00       	mov    $0x1,%eax
 3e1:	cd 40                	int    $0x40
 3e3:	c3                   	ret    

000003e4 <exit>:
SYSCALL(exit)
 3e4:	b8 02 00 00 00       	mov    $0x2,%eax
 3e9:	cd 40                	int    $0x40
 3eb:	c3                   	ret    

000003ec <wait>:
SYSCALL(wait)
 3ec:	b8 03 00 00 00       	mov    $0x3,%eax
 3f1:	cd 40                	int    $0x40
 3f3:	c3                   	ret    

000003f4 <pipe>:
SYSCALL(pipe)
 3f4:	b8 04 00 00 00       	mov    $0x4,%eax
 3f9:	cd 40                	int    $0x40
 3fb:	c3                   	ret    

000003fc <read>:
SYSCALL(read)
 3fc:	b8 05 00 00 00       	mov    $0x5,%eax
 401:	cd 40                	int    $0x40
 403:	c3                   	ret    

00000404 <write>:
SYSCALL(write)
 404:	b8 10 00 00 00       	mov    $0x10,%eax
 409:	cd 40                	int    $0x40
 40b:	c3                   	ret    

0000040c <close>:
SYSCALL(close)
 40c:	b8 15 00 00 00       	mov    $0x15,%eax
 411:	cd 40                	int    $0x40
 413:	c3                   	ret    

00000414 <kill>:
SYSCALL(kill)
 414:	b8 06 00 00 00       	mov    $0x6,%eax
 419:	cd 40                	int    $0x40
 41b:	c3                   	ret    

0000041c <exec>:
SYSCALL(exec)
 41c:	b8 07 00 00 00       	mov    $0x7,%eax
 421:	cd 40                	int    $0x40
 423:	c3                   	ret    

00000424 <open>:
SYSCALL(open)
 424:	b8 0f 00 00 00       	mov    $0xf,%eax
 429:	cd 40                	int    $0x40
 42b:	c3                   	ret    

0000042c <mknod>:
SYSCALL(mknod)
 42c:	b8 11 00 00 00       	mov    $0x11,%eax
 431:	cd 40                	int    $0x40
 433:	c3                   	ret    

00000434 <unlink>:
SYSCALL(unlink)
 434:	b8 12 00 00 00       	mov    $0x12,%eax
 439:	cd 40                	int    $0x40
 43b:	c3                   	ret    

0000043c <fstat>:
SYSCALL(fstat)
 43c:	b8 08 00 00 00       	mov    $0x8,%eax
 441:	cd 40                	int    $0x40
 443:	c3                   	ret    

00000444 <link>:
SYSCALL(link)
 444:	b8 13 00 00 00       	mov    $0x13,%eax
 449:	cd 40                	int    $0x40
 44b:	c3                   	ret    

0000044c <mkdir>:
SYSCALL(mkdir)
 44c:	b8 14 00 00 00       	mov    $0x14,%eax
 451:	cd 40                	int    $0x40
 453:	c3                   	ret    

00000454 <chdir>:
SYSCALL(chdir)
 454:	b8 09 00 00 00       	mov    $0x9,%eax
 459:	cd 40                	int    $0x40
 45b:	c3                   	ret    

0000045c <dup>:
SYSCALL(dup)
 45c:	b8 0a 00 00 00       	mov    $0xa,%eax
 461:	cd 40                	int    $0x40
 463:	c3                   	ret    

00000464 <getpid>:
SYSCALL(getpid)
 464:	b8 0b 00 00 00       	mov    $0xb,%eax
 469:	cd 40                	int    $0x40
 46b:	c3                   	ret    

0000046c <sbrk>:
SYSCALL(sbrk)
 46c:	b8 0c 00 00 00       	mov    $0xc,%eax
 471:	cd 40                	int    $0x40
 473:	c3                   	ret    

00000474 <sleep>:
SYSCALL(sleep)
 474:	b8 0d 00 00 00       	mov    $0xd,%eax
 479:	cd 40                	int    $0x40
 47b:	c3                   	ret    

0000047c <uptime>:
SYSCALL(uptime)
 47c:	b8 0e 00 00 00       	mov    $0xe,%eax
 481:	cd 40                	int    $0x40
 483:	c3                   	ret    

00000484 <clone>:
SYSCALL(clone)
 484:	b8 16 00 00 00       	mov    $0x16,%eax
 489:	cd 40                	int    $0x40
 48b:	c3                   	ret    

0000048c <join>:
SYSCALL(join)
 48c:	b8 17 00 00 00       	mov    $0x17,%eax
 491:	cd 40                	int    $0x40
 493:	c3                   	ret    
 494:	66 90                	xchg   %ax,%ax
 496:	66 90                	xchg   %ax,%ax
 498:	66 90                	xchg   %ax,%ax
 49a:	66 90                	xchg   %ax,%ax
 49c:	66 90                	xchg   %ax,%ax
 49e:	66 90                	xchg   %ax,%ax

000004a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	56                   	push   %esi
 4a5:	53                   	push   %ebx
 4a6:	83 ec 3c             	sub    $0x3c,%esp
 4a9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 4ac:	89 d1                	mov    %edx,%ecx
{
 4ae:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 4b1:	85 d2                	test   %edx,%edx
 4b3:	0f 89 7f 00 00 00    	jns    538 <printint+0x98>
 4b9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 4bd:	74 79                	je     538 <printint+0x98>
    neg = 1;
 4bf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 4c6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 4c8:	31 db                	xor    %ebx,%ebx
 4ca:	8d 75 d7             	lea    -0x29(%ebp),%esi
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 4d0:	89 c8                	mov    %ecx,%eax
 4d2:	31 d2                	xor    %edx,%edx
 4d4:	89 cf                	mov    %ecx,%edi
 4d6:	f7 75 c4             	divl   -0x3c(%ebp)
 4d9:	0f b6 92 40 09 00 00 	movzbl 0x940(%edx),%edx
 4e0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 4e3:	89 d8                	mov    %ebx,%eax
 4e5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 4e8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 4eb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 4ee:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 4f1:	76 dd                	jbe    4d0 <printint+0x30>
  if(neg)
 4f3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 4f6:	85 c9                	test   %ecx,%ecx
 4f8:	74 0c                	je     506 <printint+0x66>
    buf[i++] = '-';
 4fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 4ff:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 501:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 506:	8b 7d b8             	mov    -0x48(%ebp),%edi
 509:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 50d:	eb 07                	jmp    516 <printint+0x76>
 50f:	90                   	nop
    putc(fd, buf[i]);
 510:	0f b6 13             	movzbl (%ebx),%edx
 513:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 516:	83 ec 04             	sub    $0x4,%esp
 519:	88 55 d7             	mov    %dl,-0x29(%ebp)
 51c:	6a 01                	push   $0x1
 51e:	56                   	push   %esi
 51f:	57                   	push   %edi
 520:	e8 df fe ff ff       	call   404 <write>
  while(--i >= 0)
 525:	83 c4 10             	add    $0x10,%esp
 528:	39 de                	cmp    %ebx,%esi
 52a:	75 e4                	jne    510 <printint+0x70>
}
 52c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 52f:	5b                   	pop    %ebx
 530:	5e                   	pop    %esi
 531:	5f                   	pop    %edi
 532:	5d                   	pop    %ebp
 533:	c3                   	ret    
 534:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 538:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 53f:	eb 87                	jmp    4c8 <printint+0x28>
 541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 548:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop

00000550 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	57                   	push   %edi
 554:	56                   	push   %esi
 555:	53                   	push   %ebx
 556:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 559:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 55c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 55f:	0f b6 13             	movzbl (%ebx),%edx
 562:	84 d2                	test   %dl,%dl
 564:	74 6a                	je     5d0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 566:	8d 45 10             	lea    0x10(%ebp),%eax
 569:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 56c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 56f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 571:	89 45 d0             	mov    %eax,-0x30(%ebp)
 574:	eb 36                	jmp    5ac <printf+0x5c>
 576:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57d:	8d 76 00             	lea    0x0(%esi),%esi
 580:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 583:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 588:	83 f8 25             	cmp    $0x25,%eax
 58b:	74 15                	je     5a2 <printf+0x52>
  write(fd, &c, 1);
 58d:	83 ec 04             	sub    $0x4,%esp
 590:	88 55 e7             	mov    %dl,-0x19(%ebp)
 593:	6a 01                	push   $0x1
 595:	57                   	push   %edi
 596:	56                   	push   %esi
 597:	e8 68 fe ff ff       	call   404 <write>
 59c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 59f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 5a2:	0f b6 13             	movzbl (%ebx),%edx
 5a5:	83 c3 01             	add    $0x1,%ebx
 5a8:	84 d2                	test   %dl,%dl
 5aa:	74 24                	je     5d0 <printf+0x80>
    c = fmt[i] & 0xff;
 5ac:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 5af:	85 c9                	test   %ecx,%ecx
 5b1:	74 cd                	je     580 <printf+0x30>
      }
    } else if(state == '%'){
 5b3:	83 f9 25             	cmp    $0x25,%ecx
 5b6:	75 ea                	jne    5a2 <printf+0x52>
      if(c == 'd'){
 5b8:	83 f8 25             	cmp    $0x25,%eax
 5bb:	0f 84 07 01 00 00    	je     6c8 <printf+0x178>
 5c1:	83 e8 63             	sub    $0x63,%eax
 5c4:	83 f8 15             	cmp    $0x15,%eax
 5c7:	77 17                	ja     5e0 <printf+0x90>
 5c9:	ff 24 85 e8 08 00 00 	jmp    *0x8e8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5d3:	5b                   	pop    %ebx
 5d4:	5e                   	pop    %esi
 5d5:	5f                   	pop    %edi
 5d6:	5d                   	pop    %ebp
 5d7:	c3                   	ret    
 5d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop
  write(fd, &c, 1);
 5e0:	83 ec 04             	sub    $0x4,%esp
 5e3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 5e6:	6a 01                	push   $0x1
 5e8:	57                   	push   %edi
 5e9:	56                   	push   %esi
 5ea:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 5ee:	e8 11 fe ff ff       	call   404 <write>
        putc(fd, c);
 5f3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 5f7:	83 c4 0c             	add    $0xc,%esp
 5fa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5fd:	6a 01                	push   $0x1
 5ff:	57                   	push   %edi
 600:	56                   	push   %esi
 601:	e8 fe fd ff ff       	call   404 <write>
        putc(fd, c);
 606:	83 c4 10             	add    $0x10,%esp
      state = 0;
 609:	31 c9                	xor    %ecx,%ecx
 60b:	eb 95                	jmp    5a2 <printf+0x52>
 60d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 610:	83 ec 0c             	sub    $0xc,%esp
 613:	b9 10 00 00 00       	mov    $0x10,%ecx
 618:	6a 00                	push   $0x0
 61a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 61d:	8b 10                	mov    (%eax),%edx
 61f:	89 f0                	mov    %esi,%eax
 621:	e8 7a fe ff ff       	call   4a0 <printint>
        ap++;
 626:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 62a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 62d:	31 c9                	xor    %ecx,%ecx
 62f:	e9 6e ff ff ff       	jmp    5a2 <printf+0x52>
 634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 638:	8b 45 d0             	mov    -0x30(%ebp),%eax
 63b:	8b 10                	mov    (%eax),%edx
        ap++;
 63d:	83 c0 04             	add    $0x4,%eax
 640:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 643:	85 d2                	test   %edx,%edx
 645:	0f 84 8d 00 00 00    	je     6d8 <printf+0x188>
        while(*s != 0){
 64b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 64e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 650:	84 c0                	test   %al,%al
 652:	0f 84 4a ff ff ff    	je     5a2 <printf+0x52>
 658:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 65b:	89 d3                	mov    %edx,%ebx
 65d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 660:	83 ec 04             	sub    $0x4,%esp
          s++;
 663:	83 c3 01             	add    $0x1,%ebx
 666:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 669:	6a 01                	push   $0x1
 66b:	57                   	push   %edi
 66c:	56                   	push   %esi
 66d:	e8 92 fd ff ff       	call   404 <write>
        while(*s != 0){
 672:	0f b6 03             	movzbl (%ebx),%eax
 675:	83 c4 10             	add    $0x10,%esp
 678:	84 c0                	test   %al,%al
 67a:	75 e4                	jne    660 <printf+0x110>
      state = 0;
 67c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 67f:	31 c9                	xor    %ecx,%ecx
 681:	e9 1c ff ff ff       	jmp    5a2 <printf+0x52>
 686:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 690:	83 ec 0c             	sub    $0xc,%esp
 693:	b9 0a 00 00 00       	mov    $0xa,%ecx
 698:	6a 01                	push   $0x1
 69a:	e9 7b ff ff ff       	jmp    61a <printf+0xca>
 69f:	90                   	nop
        putc(fd, *ap);
 6a0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 6a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 6a6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 6a8:	6a 01                	push   $0x1
 6aa:	57                   	push   %edi
 6ab:	56                   	push   %esi
        putc(fd, *ap);
 6ac:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6af:	e8 50 fd ff ff       	call   404 <write>
        ap++;
 6b4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6b8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6bb:	31 c9                	xor    %ecx,%ecx
 6bd:	e9 e0 fe ff ff       	jmp    5a2 <printf+0x52>
 6c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 6c8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 6cb:	83 ec 04             	sub    $0x4,%esp
 6ce:	e9 2a ff ff ff       	jmp    5fd <printf+0xad>
 6d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6d7:	90                   	nop
          s = "(null)";
 6d8:	ba de 08 00 00       	mov    $0x8de,%edx
        while(*s != 0){
 6dd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6e0:	b8 28 00 00 00       	mov    $0x28,%eax
 6e5:	89 d3                	mov    %edx,%ebx
 6e7:	e9 74 ff ff ff       	jmp    660 <printf+0x110>
 6ec:	66 90                	xchg   %ax,%ax
 6ee:	66 90                	xchg   %ax,%ax

000006f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6f1:	a1 94 0c 00 00       	mov    0xc94,%eax
{
 6f6:	89 e5                	mov    %esp,%ebp
 6f8:	57                   	push   %edi
 6f9:	56                   	push   %esi
 6fa:	53                   	push   %ebx
 6fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 708:	89 c2                	mov    %eax,%edx
 70a:	8b 00                	mov    (%eax),%eax
 70c:	39 ca                	cmp    %ecx,%edx
 70e:	73 30                	jae    740 <free+0x50>
 710:	39 c1                	cmp    %eax,%ecx
 712:	72 04                	jb     718 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 714:	39 c2                	cmp    %eax,%edx
 716:	72 f0                	jb     708 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 718:	8b 73 fc             	mov    -0x4(%ebx),%esi
 71b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 71e:	39 f8                	cmp    %edi,%eax
 720:	74 30                	je     752 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 722:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 725:	8b 42 04             	mov    0x4(%edx),%eax
 728:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 72b:	39 f1                	cmp    %esi,%ecx
 72d:	74 3a                	je     769 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 72f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 731:	5b                   	pop    %ebx
  freep = p;
 732:	89 15 94 0c 00 00    	mov    %edx,0xc94
}
 738:	5e                   	pop    %esi
 739:	5f                   	pop    %edi
 73a:	5d                   	pop    %ebp
 73b:	c3                   	ret    
 73c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 740:	39 c2                	cmp    %eax,%edx
 742:	72 c4                	jb     708 <free+0x18>
 744:	39 c1                	cmp    %eax,%ecx
 746:	73 c0                	jae    708 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 748:	8b 73 fc             	mov    -0x4(%ebx),%esi
 74b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 74e:	39 f8                	cmp    %edi,%eax
 750:	75 d0                	jne    722 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 752:	03 70 04             	add    0x4(%eax),%esi
 755:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 758:	8b 02                	mov    (%edx),%eax
 75a:	8b 00                	mov    (%eax),%eax
 75c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 75f:	8b 42 04             	mov    0x4(%edx),%eax
 762:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 765:	39 f1                	cmp    %esi,%ecx
 767:	75 c6                	jne    72f <free+0x3f>
    p->s.size += bp->s.size;
 769:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 76c:	89 15 94 0c 00 00    	mov    %edx,0xc94
    p->s.size += bp->s.size;
 772:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 775:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 778:	89 0a                	mov    %ecx,(%edx)
}
 77a:	5b                   	pop    %ebx
 77b:	5e                   	pop    %esi
 77c:	5f                   	pop    %edi
 77d:	5d                   	pop    %ebp
 77e:	c3                   	ret    
 77f:	90                   	nop

00000780 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 789:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 78c:	8b 3d 94 0c 00 00    	mov    0xc94,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 792:	8d 70 07             	lea    0x7(%eax),%esi
 795:	c1 ee 03             	shr    $0x3,%esi
 798:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 79b:	85 ff                	test   %edi,%edi
 79d:	0f 84 9d 00 00 00    	je     840 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7a3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 7a5:	8b 4a 04             	mov    0x4(%edx),%ecx
 7a8:	39 f1                	cmp    %esi,%ecx
 7aa:	73 6a                	jae    816 <malloc+0x96>
 7ac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7b1:	39 de                	cmp    %ebx,%esi
 7b3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 7b6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7bd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 7c0:	eb 17                	jmp    7d9 <malloc+0x59>
 7c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7c8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7ca:	8b 48 04             	mov    0x4(%eax),%ecx
 7cd:	39 f1                	cmp    %esi,%ecx
 7cf:	73 4f                	jae    820 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7d1:	8b 3d 94 0c 00 00    	mov    0xc94,%edi
 7d7:	89 c2                	mov    %eax,%edx
 7d9:	39 d7                	cmp    %edx,%edi
 7db:	75 eb                	jne    7c8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 7dd:	83 ec 0c             	sub    $0xc,%esp
 7e0:	ff 75 e4             	push   -0x1c(%ebp)
 7e3:	e8 84 fc ff ff       	call   46c <sbrk>
  if(p == (char*)-1)
 7e8:	83 c4 10             	add    $0x10,%esp
 7eb:	83 f8 ff             	cmp    $0xffffffff,%eax
 7ee:	74 1c                	je     80c <malloc+0x8c>
  hp->s.size = nu;
 7f0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7f3:	83 ec 0c             	sub    $0xc,%esp
 7f6:	83 c0 08             	add    $0x8,%eax
 7f9:	50                   	push   %eax
 7fa:	e8 f1 fe ff ff       	call   6f0 <free>
  return freep;
 7ff:	8b 15 94 0c 00 00    	mov    0xc94,%edx
      if((p = morecore(nunits)) == 0)
 805:	83 c4 10             	add    $0x10,%esp
 808:	85 d2                	test   %edx,%edx
 80a:	75 bc                	jne    7c8 <malloc+0x48>
        return 0;
  }
}
 80c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 80f:	31 c0                	xor    %eax,%eax
}
 811:	5b                   	pop    %ebx
 812:	5e                   	pop    %esi
 813:	5f                   	pop    %edi
 814:	5d                   	pop    %ebp
 815:	c3                   	ret    
    if(p->s.size >= nunits){
 816:	89 d0                	mov    %edx,%eax
 818:	89 fa                	mov    %edi,%edx
 81a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 820:	39 ce                	cmp    %ecx,%esi
 822:	74 4c                	je     870 <malloc+0xf0>
        p->s.size -= nunits;
 824:	29 f1                	sub    %esi,%ecx
 826:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 829:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 82c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 82f:	89 15 94 0c 00 00    	mov    %edx,0xc94
}
 835:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 838:	83 c0 08             	add    $0x8,%eax
}
 83b:	5b                   	pop    %ebx
 83c:	5e                   	pop    %esi
 83d:	5f                   	pop    %edi
 83e:	5d                   	pop    %ebp
 83f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 840:	c7 05 94 0c 00 00 98 	movl   $0xc98,0xc94
 847:	0c 00 00 
    base.s.size = 0;
 84a:	bf 98 0c 00 00       	mov    $0xc98,%edi
    base.s.ptr = freep = prevp = &base;
 84f:	c7 05 98 0c 00 00 98 	movl   $0xc98,0xc98
 856:	0c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 859:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 85b:	c7 05 9c 0c 00 00 00 	movl   $0x0,0xc9c
 862:	00 00 00 
    if(p->s.size >= nunits){
 865:	e9 42 ff ff ff       	jmp    7ac <malloc+0x2c>
 86a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 870:	8b 08                	mov    (%eax),%ecx
 872:	89 0a                	mov    %ecx,(%edx)
 874:	eb b9                	jmp    82f <malloc+0xaf>
