
_test_4:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

void worker(void *arg1, void *arg2);

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 0c             	sub    $0xc,%esp
   ppid = getpid();
  13:	e8 1c 06 00 00       	call   634 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 ec 0e 00 00       	mov    %eax,0xeec
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 26 09 00 00       	call   950 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 29 01 00 00    	je     15e <main+0x15e>
  35:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE == 0)
     stack = p + 4;
  37:	8d 40 04             	lea    0x4(%eax),%eax
  3a:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
  40:	0f 45 c3             	cmovne %ebx,%eax
   else
     stack = p;

   assert(clone(worker, 0, 0, stack) == -1);
  43:	50                   	push   %eax
  44:	6a 00                	push   $0x0
  46:	6a 00                	push   $0x0
  48:	68 c0 01 00 00       	push   $0x1c0
  4d:	e8 02 06 00 00       	call   654 <clone>
  52:	83 c4 10             	add    $0x10,%esp
  55:	83 f8 ff             	cmp    $0xffffffff,%eax
  58:	74 46                	je     a0 <main+0xa0>
  5a:	6a 21                	push   $0x21
  5c:	68 48 0a 00 00       	push   $0xa48
  61:	68 51 0a 00 00       	push   $0xa51
  66:	6a 01                	push   $0x1
  68:	e8 b3 06 00 00       	call   720 <printf>
  6d:	83 c4 0c             	add    $0xc,%esp
  70:	68 ac 0a 00 00       	push   $0xaac
  75:	68 63 0a 00 00       	push   $0xa63
  7a:	6a 01                	push   $0x1
  7c:	e8 9f 06 00 00       	call   720 <printf>
  81:	5a                   	pop    %edx
  82:	59                   	pop    %ecx
  83:	68 77 0a 00 00       	push   $0xa77
  88:	6a 01                	push   $0x1
  8a:	e8 91 06 00 00       	call   720 <printf>
  8f:	5b                   	pop    %ebx
  90:	ff 35 ec 0e 00 00    	push   0xeec
  96:	e8 49 05 00 00       	call   5e4 <kill>
  9b:	e8 14 05 00 00       	call   5b4 <exit>

   stack = sbrk(0);
  a0:	83 ec 0c             	sub    $0xc,%esp
  a3:	6a 00                	push   $0x0
  a5:	e8 92 05 00 00       	call   63c <sbrk>
   if((uint)stack % PGSIZE)
  aa:	83 c4 10             	add    $0x10,%esp
   stack = sbrk(0);
  ad:	89 c6                	mov    %eax,%esi
   if((uint)stack % PGSIZE)
  af:	25 ff 0f 00 00       	and    $0xfff,%eax
  b4:	75 59                	jne    10f <main+0x10f>
     stack = stack + (PGSIZE - (uint)stack % PGSIZE);
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
  b6:	83 ec 0c             	sub    $0xc,%esp
  b9:	6a 00                	push   $0x0
  bb:	e8 7c 05 00 00       	call   63c <sbrk>
  c0:	89 c2                	mov    %eax,%edx
  c2:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
  c8:	29 d0                	sub    %edx,%eax
  ca:	89 04 24             	mov    %eax,(%esp)
  cd:	e8 6a 05 00 00       	call   63c <sbrk>
  d2:	83 c4 10             	add    $0x10,%esp
   assert((uint)stack % PGSIZE == 0);
   assert((uint)sbrk(0) - (uint)stack == PGSIZE/2);
  d5:	83 ec 0c             	sub    $0xc,%esp
  d8:	6a 00                	push   $0x0
  da:	e8 5d 05 00 00       	call   63c <sbrk>
  df:	83 c4 10             	add    $0x10,%esp
  e2:	29 f0                	sub    %esi,%eax
  e4:	3d 00 08 00 00       	cmp    $0x800,%eax
  e9:	0f 84 8f 00 00 00    	je     17e <main+0x17e>
  ef:	6a 28                	push   $0x28
  f1:	68 48 0a 00 00       	push   $0xa48
  f6:	68 51 0a 00 00       	push   $0xa51
  fb:	6a 01                	push   $0x1
  fd:	e8 1e 06 00 00       	call   720 <printf>
 102:	83 c4 0c             	add    $0xc,%esp
 105:	68 d0 0a 00 00       	push   $0xad0
 10a:	e9 66 ff ff ff       	jmp    75 <main+0x75>
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
 10f:	83 ec 0c             	sub    $0xc,%esp
     stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 112:	29 c6                	sub    %eax,%esi
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
 114:	6a 00                	push   $0x0
     stack = stack + (PGSIZE - (uint)stack % PGSIZE);
 116:	81 c6 00 10 00 00    	add    $0x1000,%esi
   sbrk( ((uint)stack - (uint)sbrk(0)) + PGSIZE/2 );
 11c:	e8 1b 05 00 00       	call   63c <sbrk>
 121:	89 c2                	mov    %eax,%edx
 123:	8d 86 00 08 00 00    	lea    0x800(%esi),%eax
 129:	29 d0                	sub    %edx,%eax
 12b:	89 04 24             	mov    %eax,(%esp)
 12e:	e8 09 05 00 00       	call   63c <sbrk>
   assert((uint)stack % PGSIZE == 0);
 133:	83 c4 10             	add    $0x10,%esp
 136:	f7 c6 ff 0f 00 00    	test   $0xfff,%esi
 13c:	74 97                	je     d5 <main+0xd5>
 13e:	6a 27                	push   $0x27
 140:	68 48 0a 00 00       	push   $0xa48
 145:	68 51 0a 00 00       	push   $0xa51
 14a:	6a 01                	push   $0x1
 14c:	e8 cf 05 00 00       	call   720 <printf>
 151:	83 c4 0c             	add    $0xc,%esp
 154:	68 84 0a 00 00       	push   $0xa84
 159:	e9 17 ff ff ff       	jmp    75 <main+0x75>
   assert(p != NULL);
 15e:	6a 1b                	push   $0x1b
 160:	68 48 0a 00 00       	push   $0xa48
 165:	68 51 0a 00 00       	push   $0xa51
 16a:	6a 01                	push   $0x1
 16c:	e8 af 05 00 00       	call   720 <printf>
 171:	83 c4 0c             	add    $0xc,%esp
 174:	68 59 0a 00 00       	push   $0xa59
 179:	e9 f7 fe ff ff       	jmp    75 <main+0x75>

   assert(clone(worker, 0, 0, stack) == -1);
 17e:	56                   	push   %esi
 17f:	6a 00                	push   $0x0
 181:	6a 00                	push   $0x0
 183:	68 c0 01 00 00       	push   $0x1c0
 188:	e8 c7 04 00 00       	call   654 <clone>
 18d:	83 c4 10             	add    $0x10,%esp
 190:	83 c0 01             	add    $0x1,%eax
 193:	74 07                	je     19c <main+0x19c>
 195:	6a 2a                	push   $0x2a
 197:	e9 c0 fe ff ff       	jmp    5c <main+0x5c>
   
   printf(1, "TEST PASSED\n");
 19c:	50                   	push   %eax
 19d:	50                   	push   %eax
 19e:	68 9e 0a 00 00       	push   $0xa9e
 1a3:	6a 01                	push   $0x1
 1a5:	e8 76 05 00 00       	call   720 <printf>
   free(p);
 1aa:	89 1c 24             	mov    %ebx,(%esp)
 1ad:	e8 0e 07 00 00       	call   8c0 <free>
   exit();
 1b2:	e8 fd 03 00 00       	call   5b4 <exit>
 1b7:	66 90                	xchg   %ax,%ax
 1b9:	66 90                	xchg   %ax,%ax
 1bb:	66 90                	xchg   %ax,%ax
 1bd:	66 90                	xchg   %ax,%ax
 1bf:	90                   	nop

000001c0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	83 ec 08             	sub    $0x8,%esp
   exit();
 1c6:	e8 e9 03 00 00       	call   5b4 <exit>
 1cb:	66 90                	xchg   %ax,%ax
 1cd:	66 90                	xchg   %ax,%ax
 1cf:	90                   	nop

000001d0 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 1d0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1d1:	31 c0                	xor    %eax,%eax
{
 1d3:	89 e5                	mov    %esp,%ebp
 1d5:	53                   	push   %ebx
 1d6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 1e0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 1e4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 1e7:	83 c0 01             	add    $0x1,%eax
 1ea:	84 d2                	test   %dl,%dl
 1ec:	75 f2                	jne    1e0 <strcpy+0x10>
    ;
  return os;
}
 1ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1f1:	89 c8                	mov    %ecx,%eax
 1f3:	c9                   	leave  
 1f4:	c3                   	ret    
 1f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000200 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	53                   	push   %ebx
 204:	8b 55 08             	mov    0x8(%ebp),%edx
 207:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 20a:	0f b6 02             	movzbl (%edx),%eax
 20d:	84 c0                	test   %al,%al
 20f:	75 17                	jne    228 <strcmp+0x28>
 211:	eb 3a                	jmp    24d <strcmp+0x4d>
 213:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 217:	90                   	nop
 218:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 21c:	83 c2 01             	add    $0x1,%edx
 21f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 222:	84 c0                	test   %al,%al
 224:	74 1a                	je     240 <strcmp+0x40>
    p++, q++;
 226:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 228:	0f b6 19             	movzbl (%ecx),%ebx
 22b:	38 c3                	cmp    %al,%bl
 22d:	74 e9                	je     218 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 22f:	29 d8                	sub    %ebx,%eax
}
 231:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 234:	c9                   	leave  
 235:	c3                   	ret    
 236:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 240:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 244:	31 c0                	xor    %eax,%eax
 246:	29 d8                	sub    %ebx,%eax
}
 248:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 24b:	c9                   	leave  
 24c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 24d:	0f b6 19             	movzbl (%ecx),%ebx
 250:	31 c0                	xor    %eax,%eax
 252:	eb db                	jmp    22f <strcmp+0x2f>
 254:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 25f:	90                   	nop

00000260 <strlen>:

uint
strlen(const char *s)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 266:	80 3a 00             	cmpb   $0x0,(%edx)
 269:	74 15                	je     280 <strlen+0x20>
 26b:	31 c0                	xor    %eax,%eax
 26d:	8d 76 00             	lea    0x0(%esi),%esi
 270:	83 c0 01             	add    $0x1,%eax
 273:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 277:	89 c1                	mov    %eax,%ecx
 279:	75 f5                	jne    270 <strlen+0x10>
    ;
  return n;
}
 27b:	89 c8                	mov    %ecx,%eax
 27d:	5d                   	pop    %ebp
 27e:	c3                   	ret    
 27f:	90                   	nop
  for(n = 0; s[n]; n++)
 280:	31 c9                	xor    %ecx,%ecx
}
 282:	5d                   	pop    %ebp
 283:	89 c8                	mov    %ecx,%eax
 285:	c3                   	ret    
 286:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 28d:	8d 76 00             	lea    0x0(%esi),%esi

00000290 <memset>:

void*
memset(void *dst, int c, uint n)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	57                   	push   %edi
 294:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 297:	8b 4d 10             	mov    0x10(%ebp),%ecx
 29a:	8b 45 0c             	mov    0xc(%ebp),%eax
 29d:	89 d7                	mov    %edx,%edi
 29f:	fc                   	cld    
 2a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2a2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 2a5:	89 d0                	mov    %edx,%eax
 2a7:	c9                   	leave  
 2a8:	c3                   	ret    
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002b0 <strchr>:

char*
strchr(const char *s, char c)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	8b 45 08             	mov    0x8(%ebp),%eax
 2b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2ba:	0f b6 10             	movzbl (%eax),%edx
 2bd:	84 d2                	test   %dl,%dl
 2bf:	75 12                	jne    2d3 <strchr+0x23>
 2c1:	eb 1d                	jmp    2e0 <strchr+0x30>
 2c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2c7:	90                   	nop
 2c8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 2cc:	83 c0 01             	add    $0x1,%eax
 2cf:	84 d2                	test   %dl,%dl
 2d1:	74 0d                	je     2e0 <strchr+0x30>
    if(*s == c)
 2d3:	38 d1                	cmp    %dl,%cl
 2d5:	75 f1                	jne    2c8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 2d7:	5d                   	pop    %ebp
 2d8:	c3                   	ret    
 2d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2e0:	31 c0                	xor    %eax,%eax
}
 2e2:	5d                   	pop    %ebp
 2e3:	c3                   	ret    
 2e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2ef:	90                   	nop

000002f0 <gets>:

char*
gets(char *buf, int max)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	57                   	push   %edi
 2f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2f5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2f8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2f9:	31 db                	xor    %ebx,%ebx
{
 2fb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2fe:	eb 27                	jmp    327 <gets+0x37>
    cc = read(0, &c, 1);
 300:	83 ec 04             	sub    $0x4,%esp
 303:	6a 01                	push   $0x1
 305:	57                   	push   %edi
 306:	6a 00                	push   $0x0
 308:	e8 bf 02 00 00       	call   5cc <read>
    if(cc < 1)
 30d:	83 c4 10             	add    $0x10,%esp
 310:	85 c0                	test   %eax,%eax
 312:	7e 1d                	jle    331 <gets+0x41>
      break;
    buf[i++] = c;
 314:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 318:	8b 55 08             	mov    0x8(%ebp),%edx
 31b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 31f:	3c 0a                	cmp    $0xa,%al
 321:	74 1d                	je     340 <gets+0x50>
 323:	3c 0d                	cmp    $0xd,%al
 325:	74 19                	je     340 <gets+0x50>
  for(i=0; i+1 < max; ){
 327:	89 de                	mov    %ebx,%esi
 329:	83 c3 01             	add    $0x1,%ebx
 32c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 32f:	7c cf                	jl     300 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 331:	8b 45 08             	mov    0x8(%ebp),%eax
 334:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 338:	8d 65 f4             	lea    -0xc(%ebp),%esp
 33b:	5b                   	pop    %ebx
 33c:	5e                   	pop    %esi
 33d:	5f                   	pop    %edi
 33e:	5d                   	pop    %ebp
 33f:	c3                   	ret    
  buf[i] = '\0';
 340:	8b 45 08             	mov    0x8(%ebp),%eax
 343:	89 de                	mov    %ebx,%esi
 345:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 349:	8d 65 f4             	lea    -0xc(%ebp),%esp
 34c:	5b                   	pop    %ebx
 34d:	5e                   	pop    %esi
 34e:	5f                   	pop    %edi
 34f:	5d                   	pop    %ebp
 350:	c3                   	ret    
 351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 358:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <stat>:

int
stat(const char *n, struct stat *st)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	56                   	push   %esi
 364:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 365:	83 ec 08             	sub    $0x8,%esp
 368:	6a 00                	push   $0x0
 36a:	ff 75 08             	push   0x8(%ebp)
 36d:	e8 82 02 00 00       	call   5f4 <open>
  if(fd < 0)
 372:	83 c4 10             	add    $0x10,%esp
 375:	85 c0                	test   %eax,%eax
 377:	78 27                	js     3a0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 379:	83 ec 08             	sub    $0x8,%esp
 37c:	ff 75 0c             	push   0xc(%ebp)
 37f:	89 c3                	mov    %eax,%ebx
 381:	50                   	push   %eax
 382:	e8 85 02 00 00       	call   60c <fstat>
  close(fd);
 387:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 38a:	89 c6                	mov    %eax,%esi
  close(fd);
 38c:	e8 4b 02 00 00       	call   5dc <close>
  return r;
 391:	83 c4 10             	add    $0x10,%esp
}
 394:	8d 65 f8             	lea    -0x8(%ebp),%esp
 397:	89 f0                	mov    %esi,%eax
 399:	5b                   	pop    %ebx
 39a:	5e                   	pop    %esi
 39b:	5d                   	pop    %ebp
 39c:	c3                   	ret    
 39d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3a0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3a5:	eb ed                	jmp    394 <stat+0x34>
 3a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ae:	66 90                	xchg   %ax,%ax

000003b0 <atoi>:

int
atoi(const char *s)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	53                   	push   %ebx
 3b4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3b7:	0f be 02             	movsbl (%edx),%eax
 3ba:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3bd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 3c0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 3c5:	77 1e                	ja     3e5 <atoi+0x35>
 3c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ce:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3d0:	83 c2 01             	add    $0x1,%edx
 3d3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3d6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3da:	0f be 02             	movsbl (%edx),%eax
 3dd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 3e0:	80 fb 09             	cmp    $0x9,%bl
 3e3:	76 eb                	jbe    3d0 <atoi+0x20>
  return n;
}
 3e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3e8:	89 c8                	mov    %ecx,%eax
 3ea:	c9                   	leave  
 3eb:	c3                   	ret    
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003f0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	57                   	push   %edi
 3f4:	8b 45 10             	mov    0x10(%ebp),%eax
 3f7:	8b 55 08             	mov    0x8(%ebp),%edx
 3fa:	56                   	push   %esi
 3fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3fe:	85 c0                	test   %eax,%eax
 400:	7e 13                	jle    415 <memmove+0x25>
 402:	01 d0                	add    %edx,%eax
  dst = vdst;
 404:	89 d7                	mov    %edx,%edi
 406:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 410:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 411:	39 f8                	cmp    %edi,%eax
 413:	75 fb                	jne    410 <memmove+0x20>
  return vdst;
}
 415:	5e                   	pop    %esi
 416:	89 d0                	mov    %edx,%eax
 418:	5f                   	pop    %edi
 419:	5d                   	pop    %ebp
 41a:	c3                   	ret    
 41b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 420:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 421:	b8 01 00 00 00       	mov    $0x1,%eax
 426:	89 e5                	mov    %esp,%ebp
 428:	53                   	push   %ebx
 429:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 42c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 433:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 43a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 43f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 442:	39 c2                	cmp    %eax,%edx
 444:	74 24                	je     46a <thread_create+0x4a>
 446:	89 c3                	mov    %eax,%ebx
 448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 450:	83 ec 04             	sub    $0x4,%esp
 453:	52                   	push   %edx
 454:	68 f8 0a 00 00       	push   $0xaf8
 459:	6a 01                	push   $0x1
 45b:	e8 c0 02 00 00       	call   720 <printf>
  while(lock->turn != myturn){
 460:	8b 55 f4             	mov    -0xc(%ebp),%edx
 463:	83 c4 10             	add    $0x10,%esp
 466:	39 d3                	cmp    %edx,%ebx
 468:	75 e6                	jne    450 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 46a:	83 ec 0c             	sub    $0xc,%esp
 46d:	68 00 20 00 00       	push   $0x2000
 472:	e8 d9 04 00 00       	call   950 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 477:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 47b:	83 c4 10             	add    $0x10,%esp
 47e:	89 c2                	mov    %eax,%edx
 480:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 486:	74 07                	je     48f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 488:	29 d0                	sub    %edx,%eax
 48a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 48f:	50                   	push   %eax
 490:	ff 75 10             	push   0x10(%ebp)
 493:	ff 75 0c             	push   0xc(%ebp)
 496:	ff 75 08             	push   0x8(%ebp)
 499:	e8 b6 01 00 00       	call   654 <clone>
}
 49e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4a1:	c9                   	leave  
 4a2:	c3                   	ret    
 4a3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004b0 <thread_join>:
int thread_join(){
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	56                   	push   %esi
 4b4:	53                   	push   %ebx
 4b5:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 4b8:	6a 04                	push   $0x4
 4ba:	e8 91 04 00 00       	call   950 <malloc>
 4bf:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 4c2:	8d 45 ec             	lea    -0x14(%ebp),%eax
 4c5:	89 04 24             	mov    %eax,(%esp)
 4c8:	e8 8f 01 00 00       	call   65c <join>
  lock->ticket = 0;
 4cd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 4d4:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 4d6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 4dd:	b8 01 00 00 00       	mov    $0x1,%eax
 4e2:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 4e7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 4ea:	83 c4 10             	add    $0x10,%esp
 4ed:	39 c2                	cmp    %eax,%edx
 4ef:	74 21                	je     512 <thread_join+0x62>
 4f1:	89 c3                	mov    %eax,%ebx
 4f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4f7:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 4f8:	83 ec 04             	sub    $0x4,%esp
 4fb:	52                   	push   %edx
 4fc:	68 f8 0a 00 00       	push   $0xaf8
 501:	6a 01                	push   $0x1
 503:	e8 18 02 00 00       	call   720 <printf>
  while(lock->turn != myturn){
 508:	8b 55 f4             	mov    -0xc(%ebp),%edx
 50b:	83 c4 10             	add    $0x10,%esp
 50e:	39 d3                	cmp    %edx,%ebx
 510:	75 e6                	jne    4f8 <thread_join+0x48>
	free(stack);
 512:	83 ec 0c             	sub    $0xc,%esp
 515:	ff 75 ec             	push   -0x14(%ebp)
 518:	e8 a3 03 00 00       	call   8c0 <free>
}
 51d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 520:	89 f0                	mov    %esi,%eax
 522:	5b                   	pop    %ebx
 523:	5e                   	pop    %esi
 524:	5d                   	pop    %ebp
 525:	c3                   	ret    
 526:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52d:	8d 76 00             	lea    0x0(%esi),%esi

00000530 <lock_init>:
void lock_init(lock_t *lock) {
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 536:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 53c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 543:	5d                   	pop    %ebp
 544:	c3                   	ret    
 545:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000550 <lock_acquire>:
void lock_acquire(lock_t *lock){
 550:	55                   	push   %ebp
 551:	b8 01 00 00 00       	mov    $0x1,%eax
 556:	89 e5                	mov    %esp,%ebp
 558:	56                   	push   %esi
 559:	8b 75 08             	mov    0x8(%ebp),%esi
 55c:	53                   	push   %ebx
 55d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 561:	8b 56 04             	mov    0x4(%esi),%edx
 564:	39 d0                	cmp    %edx,%eax
 566:	74 22                	je     58a <lock_acquire+0x3a>
 568:	89 c3                	mov    %eax,%ebx
 56a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 570:	83 ec 04             	sub    $0x4,%esp
 573:	52                   	push   %edx
 574:	68 f8 0a 00 00       	push   $0xaf8
 579:	6a 01                	push   $0x1
 57b:	e8 a0 01 00 00       	call   720 <printf>
  while(lock->turn != myturn){
 580:	8b 56 04             	mov    0x4(%esi),%edx
 583:	83 c4 10             	add    $0x10,%esp
 586:	39 da                	cmp    %ebx,%edx
 588:	75 e6                	jne    570 <lock_acquire+0x20>
}
 58a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 58d:	5b                   	pop    %ebx
 58e:	5e                   	pop    %esi
 58f:	5d                   	pop    %ebp
 590:	c3                   	ret    
 591:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 598:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59f:	90                   	nop

000005a0 <lock_release>:
void lock_release(lock_t *lock){
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 5a6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 5aa:	5d                   	pop    %ebp
 5ab:	c3                   	ret    

000005ac <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5ac:	b8 01 00 00 00       	mov    $0x1,%eax
 5b1:	cd 40                	int    $0x40
 5b3:	c3                   	ret    

000005b4 <exit>:
SYSCALL(exit)
 5b4:	b8 02 00 00 00       	mov    $0x2,%eax
 5b9:	cd 40                	int    $0x40
 5bb:	c3                   	ret    

000005bc <wait>:
SYSCALL(wait)
 5bc:	b8 03 00 00 00       	mov    $0x3,%eax
 5c1:	cd 40                	int    $0x40
 5c3:	c3                   	ret    

000005c4 <pipe>:
SYSCALL(pipe)
 5c4:	b8 04 00 00 00       	mov    $0x4,%eax
 5c9:	cd 40                	int    $0x40
 5cb:	c3                   	ret    

000005cc <read>:
SYSCALL(read)
 5cc:	b8 05 00 00 00       	mov    $0x5,%eax
 5d1:	cd 40                	int    $0x40
 5d3:	c3                   	ret    

000005d4 <write>:
SYSCALL(write)
 5d4:	b8 10 00 00 00       	mov    $0x10,%eax
 5d9:	cd 40                	int    $0x40
 5db:	c3                   	ret    

000005dc <close>:
SYSCALL(close)
 5dc:	b8 15 00 00 00       	mov    $0x15,%eax
 5e1:	cd 40                	int    $0x40
 5e3:	c3                   	ret    

000005e4 <kill>:
SYSCALL(kill)
 5e4:	b8 06 00 00 00       	mov    $0x6,%eax
 5e9:	cd 40                	int    $0x40
 5eb:	c3                   	ret    

000005ec <exec>:
SYSCALL(exec)
 5ec:	b8 07 00 00 00       	mov    $0x7,%eax
 5f1:	cd 40                	int    $0x40
 5f3:	c3                   	ret    

000005f4 <open>:
SYSCALL(open)
 5f4:	b8 0f 00 00 00       	mov    $0xf,%eax
 5f9:	cd 40                	int    $0x40
 5fb:	c3                   	ret    

000005fc <mknod>:
SYSCALL(mknod)
 5fc:	b8 11 00 00 00       	mov    $0x11,%eax
 601:	cd 40                	int    $0x40
 603:	c3                   	ret    

00000604 <unlink>:
SYSCALL(unlink)
 604:	b8 12 00 00 00       	mov    $0x12,%eax
 609:	cd 40                	int    $0x40
 60b:	c3                   	ret    

0000060c <fstat>:
SYSCALL(fstat)
 60c:	b8 08 00 00 00       	mov    $0x8,%eax
 611:	cd 40                	int    $0x40
 613:	c3                   	ret    

00000614 <link>:
SYSCALL(link)
 614:	b8 13 00 00 00       	mov    $0x13,%eax
 619:	cd 40                	int    $0x40
 61b:	c3                   	ret    

0000061c <mkdir>:
SYSCALL(mkdir)
 61c:	b8 14 00 00 00       	mov    $0x14,%eax
 621:	cd 40                	int    $0x40
 623:	c3                   	ret    

00000624 <chdir>:
SYSCALL(chdir)
 624:	b8 09 00 00 00       	mov    $0x9,%eax
 629:	cd 40                	int    $0x40
 62b:	c3                   	ret    

0000062c <dup>:
SYSCALL(dup)
 62c:	b8 0a 00 00 00       	mov    $0xa,%eax
 631:	cd 40                	int    $0x40
 633:	c3                   	ret    

00000634 <getpid>:
SYSCALL(getpid)
 634:	b8 0b 00 00 00       	mov    $0xb,%eax
 639:	cd 40                	int    $0x40
 63b:	c3                   	ret    

0000063c <sbrk>:
SYSCALL(sbrk)
 63c:	b8 0c 00 00 00       	mov    $0xc,%eax
 641:	cd 40                	int    $0x40
 643:	c3                   	ret    

00000644 <sleep>:
SYSCALL(sleep)
 644:	b8 0d 00 00 00       	mov    $0xd,%eax
 649:	cd 40                	int    $0x40
 64b:	c3                   	ret    

0000064c <uptime>:
SYSCALL(uptime)
 64c:	b8 0e 00 00 00       	mov    $0xe,%eax
 651:	cd 40                	int    $0x40
 653:	c3                   	ret    

00000654 <clone>:
SYSCALL(clone)
 654:	b8 16 00 00 00       	mov    $0x16,%eax
 659:	cd 40                	int    $0x40
 65b:	c3                   	ret    

0000065c <join>:
SYSCALL(join)
 65c:	b8 17 00 00 00       	mov    $0x17,%eax
 661:	cd 40                	int    $0x40
 663:	c3                   	ret    
 664:	66 90                	xchg   %ax,%ax
 666:	66 90                	xchg   %ax,%ax
 668:	66 90                	xchg   %ax,%ax
 66a:	66 90                	xchg   %ax,%ax
 66c:	66 90                	xchg   %ax,%ax
 66e:	66 90                	xchg   %ax,%ax

00000670 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 670:	55                   	push   %ebp
 671:	89 e5                	mov    %esp,%ebp
 673:	57                   	push   %edi
 674:	56                   	push   %esi
 675:	53                   	push   %ebx
 676:	83 ec 3c             	sub    $0x3c,%esp
 679:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 67c:	89 d1                	mov    %edx,%ecx
{
 67e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 681:	85 d2                	test   %edx,%edx
 683:	0f 89 7f 00 00 00    	jns    708 <printint+0x98>
 689:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 68d:	74 79                	je     708 <printint+0x98>
    neg = 1;
 68f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 696:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 698:	31 db                	xor    %ebx,%ebx
 69a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 69d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6a0:	89 c8                	mov    %ecx,%eax
 6a2:	31 d2                	xor    %edx,%edx
 6a4:	89 cf                	mov    %ecx,%edi
 6a6:	f7 75 c4             	divl   -0x3c(%ebp)
 6a9:	0f b6 92 6c 0b 00 00 	movzbl 0xb6c(%edx),%edx
 6b0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6b3:	89 d8                	mov    %ebx,%eax
 6b5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6b8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6bb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6be:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6c1:	76 dd                	jbe    6a0 <printint+0x30>
  if(neg)
 6c3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6c6:	85 c9                	test   %ecx,%ecx
 6c8:	74 0c                	je     6d6 <printint+0x66>
    buf[i++] = '-';
 6ca:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6cf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6d1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6d6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6d9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6dd:	eb 07                	jmp    6e6 <printint+0x76>
 6df:	90                   	nop
    putc(fd, buf[i]);
 6e0:	0f b6 13             	movzbl (%ebx),%edx
 6e3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 6e6:	83 ec 04             	sub    $0x4,%esp
 6e9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 6ec:	6a 01                	push   $0x1
 6ee:	56                   	push   %esi
 6ef:	57                   	push   %edi
 6f0:	e8 df fe ff ff       	call   5d4 <write>
  while(--i >= 0)
 6f5:	83 c4 10             	add    $0x10,%esp
 6f8:	39 de                	cmp    %ebx,%esi
 6fa:	75 e4                	jne    6e0 <printint+0x70>
}
 6fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6ff:	5b                   	pop    %ebx
 700:	5e                   	pop    %esi
 701:	5f                   	pop    %edi
 702:	5d                   	pop    %ebp
 703:	c3                   	ret    
 704:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 708:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 70f:	eb 87                	jmp    698 <printint+0x28>
 711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 718:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 71f:	90                   	nop

00000720 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	56                   	push   %esi
 725:	53                   	push   %ebx
 726:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 729:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 72c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 72f:	0f b6 13             	movzbl (%ebx),%edx
 732:	84 d2                	test   %dl,%dl
 734:	74 6a                	je     7a0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 736:	8d 45 10             	lea    0x10(%ebp),%eax
 739:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 73c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 73f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 741:	89 45 d0             	mov    %eax,-0x30(%ebp)
 744:	eb 36                	jmp    77c <printf+0x5c>
 746:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74d:	8d 76 00             	lea    0x0(%esi),%esi
 750:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 753:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 758:	83 f8 25             	cmp    $0x25,%eax
 75b:	74 15                	je     772 <printf+0x52>
  write(fd, &c, 1);
 75d:	83 ec 04             	sub    $0x4,%esp
 760:	88 55 e7             	mov    %dl,-0x19(%ebp)
 763:	6a 01                	push   $0x1
 765:	57                   	push   %edi
 766:	56                   	push   %esi
 767:	e8 68 fe ff ff       	call   5d4 <write>
 76c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 76f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 772:	0f b6 13             	movzbl (%ebx),%edx
 775:	83 c3 01             	add    $0x1,%ebx
 778:	84 d2                	test   %dl,%dl
 77a:	74 24                	je     7a0 <printf+0x80>
    c = fmt[i] & 0xff;
 77c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 77f:	85 c9                	test   %ecx,%ecx
 781:	74 cd                	je     750 <printf+0x30>
      }
    } else if(state == '%'){
 783:	83 f9 25             	cmp    $0x25,%ecx
 786:	75 ea                	jne    772 <printf+0x52>
      if(c == 'd'){
 788:	83 f8 25             	cmp    $0x25,%eax
 78b:	0f 84 07 01 00 00    	je     898 <printf+0x178>
 791:	83 e8 63             	sub    $0x63,%eax
 794:	83 f8 15             	cmp    $0x15,%eax
 797:	77 17                	ja     7b0 <printf+0x90>
 799:	ff 24 85 14 0b 00 00 	jmp    *0xb14(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7a3:	5b                   	pop    %ebx
 7a4:	5e                   	pop    %esi
 7a5:	5f                   	pop    %edi
 7a6:	5d                   	pop    %ebp
 7a7:	c3                   	ret    
 7a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7af:	90                   	nop
  write(fd, &c, 1);
 7b0:	83 ec 04             	sub    $0x4,%esp
 7b3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7b6:	6a 01                	push   $0x1
 7b8:	57                   	push   %edi
 7b9:	56                   	push   %esi
 7ba:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7be:	e8 11 fe ff ff       	call   5d4 <write>
        putc(fd, c);
 7c3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7c7:	83 c4 0c             	add    $0xc,%esp
 7ca:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7cd:	6a 01                	push   $0x1
 7cf:	57                   	push   %edi
 7d0:	56                   	push   %esi
 7d1:	e8 fe fd ff ff       	call   5d4 <write>
        putc(fd, c);
 7d6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7d9:	31 c9                	xor    %ecx,%ecx
 7db:	eb 95                	jmp    772 <printf+0x52>
 7dd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7e0:	83 ec 0c             	sub    $0xc,%esp
 7e3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7e8:	6a 00                	push   $0x0
 7ea:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7ed:	8b 10                	mov    (%eax),%edx
 7ef:	89 f0                	mov    %esi,%eax
 7f1:	e8 7a fe ff ff       	call   670 <printint>
        ap++;
 7f6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7fa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7fd:	31 c9                	xor    %ecx,%ecx
 7ff:	e9 6e ff ff ff       	jmp    772 <printf+0x52>
 804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 808:	8b 45 d0             	mov    -0x30(%ebp),%eax
 80b:	8b 10                	mov    (%eax),%edx
        ap++;
 80d:	83 c0 04             	add    $0x4,%eax
 810:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 813:	85 d2                	test   %edx,%edx
 815:	0f 84 8d 00 00 00    	je     8a8 <printf+0x188>
        while(*s != 0){
 81b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 81e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 820:	84 c0                	test   %al,%al
 822:	0f 84 4a ff ff ff    	je     772 <printf+0x52>
 828:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 82b:	89 d3                	mov    %edx,%ebx
 82d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 830:	83 ec 04             	sub    $0x4,%esp
          s++;
 833:	83 c3 01             	add    $0x1,%ebx
 836:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 839:	6a 01                	push   $0x1
 83b:	57                   	push   %edi
 83c:	56                   	push   %esi
 83d:	e8 92 fd ff ff       	call   5d4 <write>
        while(*s != 0){
 842:	0f b6 03             	movzbl (%ebx),%eax
 845:	83 c4 10             	add    $0x10,%esp
 848:	84 c0                	test   %al,%al
 84a:	75 e4                	jne    830 <printf+0x110>
      state = 0;
 84c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 84f:	31 c9                	xor    %ecx,%ecx
 851:	e9 1c ff ff ff       	jmp    772 <printf+0x52>
 856:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 860:	83 ec 0c             	sub    $0xc,%esp
 863:	b9 0a 00 00 00       	mov    $0xa,%ecx
 868:	6a 01                	push   $0x1
 86a:	e9 7b ff ff ff       	jmp    7ea <printf+0xca>
 86f:	90                   	nop
        putc(fd, *ap);
 870:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 873:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 876:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 878:	6a 01                	push   $0x1
 87a:	57                   	push   %edi
 87b:	56                   	push   %esi
        putc(fd, *ap);
 87c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 87f:	e8 50 fd ff ff       	call   5d4 <write>
        ap++;
 884:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 888:	83 c4 10             	add    $0x10,%esp
      state = 0;
 88b:	31 c9                	xor    %ecx,%ecx
 88d:	e9 e0 fe ff ff       	jmp    772 <printf+0x52>
 892:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 898:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 89b:	83 ec 04             	sub    $0x4,%esp
 89e:	e9 2a ff ff ff       	jmp    7cd <printf+0xad>
 8a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8a7:	90                   	nop
          s = "(null)";
 8a8:	ba 0c 0b 00 00       	mov    $0xb0c,%edx
        while(*s != 0){
 8ad:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8b0:	b8 28 00 00 00       	mov    $0x28,%eax
 8b5:	89 d3                	mov    %edx,%ebx
 8b7:	e9 74 ff ff ff       	jmp    830 <printf+0x110>
 8bc:	66 90                	xchg   %ax,%ax
 8be:	66 90                	xchg   %ax,%ax

000008c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8c1:	a1 f0 0e 00 00       	mov    0xef0,%eax
{
 8c6:	89 e5                	mov    %esp,%ebp
 8c8:	57                   	push   %edi
 8c9:	56                   	push   %esi
 8ca:	53                   	push   %ebx
 8cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8d8:	89 c2                	mov    %eax,%edx
 8da:	8b 00                	mov    (%eax),%eax
 8dc:	39 ca                	cmp    %ecx,%edx
 8de:	73 30                	jae    910 <free+0x50>
 8e0:	39 c1                	cmp    %eax,%ecx
 8e2:	72 04                	jb     8e8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8e4:	39 c2                	cmp    %eax,%edx
 8e6:	72 f0                	jb     8d8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ee:	39 f8                	cmp    %edi,%eax
 8f0:	74 30                	je     922 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8f2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8f5:	8b 42 04             	mov    0x4(%edx),%eax
 8f8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8fb:	39 f1                	cmp    %esi,%ecx
 8fd:	74 3a                	je     939 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8ff:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 901:	5b                   	pop    %ebx
  freep = p;
 902:	89 15 f0 0e 00 00    	mov    %edx,0xef0
}
 908:	5e                   	pop    %esi
 909:	5f                   	pop    %edi
 90a:	5d                   	pop    %ebp
 90b:	c3                   	ret    
 90c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 910:	39 c2                	cmp    %eax,%edx
 912:	72 c4                	jb     8d8 <free+0x18>
 914:	39 c1                	cmp    %eax,%ecx
 916:	73 c0                	jae    8d8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 918:	8b 73 fc             	mov    -0x4(%ebx),%esi
 91b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 91e:	39 f8                	cmp    %edi,%eax
 920:	75 d0                	jne    8f2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 922:	03 70 04             	add    0x4(%eax),%esi
 925:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 928:	8b 02                	mov    (%edx),%eax
 92a:	8b 00                	mov    (%eax),%eax
 92c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 92f:	8b 42 04             	mov    0x4(%edx),%eax
 932:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 935:	39 f1                	cmp    %esi,%ecx
 937:	75 c6                	jne    8ff <free+0x3f>
    p->s.size += bp->s.size;
 939:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 93c:	89 15 f0 0e 00 00    	mov    %edx,0xef0
    p->s.size += bp->s.size;
 942:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 945:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 948:	89 0a                	mov    %ecx,(%edx)
}
 94a:	5b                   	pop    %ebx
 94b:	5e                   	pop    %esi
 94c:	5f                   	pop    %edi
 94d:	5d                   	pop    %ebp
 94e:	c3                   	ret    
 94f:	90                   	nop

00000950 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 950:	55                   	push   %ebp
 951:	89 e5                	mov    %esp,%ebp
 953:	57                   	push   %edi
 954:	56                   	push   %esi
 955:	53                   	push   %ebx
 956:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 959:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 95c:	8b 3d f0 0e 00 00    	mov    0xef0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 962:	8d 70 07             	lea    0x7(%eax),%esi
 965:	c1 ee 03             	shr    $0x3,%esi
 968:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 96b:	85 ff                	test   %edi,%edi
 96d:	0f 84 9d 00 00 00    	je     a10 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 973:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 975:	8b 4a 04             	mov    0x4(%edx),%ecx
 978:	39 f1                	cmp    %esi,%ecx
 97a:	73 6a                	jae    9e6 <malloc+0x96>
 97c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 981:	39 de                	cmp    %ebx,%esi
 983:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 986:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 98d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 990:	eb 17                	jmp    9a9 <malloc+0x59>
 992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 998:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 99a:	8b 48 04             	mov    0x4(%eax),%ecx
 99d:	39 f1                	cmp    %esi,%ecx
 99f:	73 4f                	jae    9f0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9a1:	8b 3d f0 0e 00 00    	mov    0xef0,%edi
 9a7:	89 c2                	mov    %eax,%edx
 9a9:	39 d7                	cmp    %edx,%edi
 9ab:	75 eb                	jne    998 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9ad:	83 ec 0c             	sub    $0xc,%esp
 9b0:	ff 75 e4             	push   -0x1c(%ebp)
 9b3:	e8 84 fc ff ff       	call   63c <sbrk>
  if(p == (char*)-1)
 9b8:	83 c4 10             	add    $0x10,%esp
 9bb:	83 f8 ff             	cmp    $0xffffffff,%eax
 9be:	74 1c                	je     9dc <malloc+0x8c>
  hp->s.size = nu;
 9c0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9c3:	83 ec 0c             	sub    $0xc,%esp
 9c6:	83 c0 08             	add    $0x8,%eax
 9c9:	50                   	push   %eax
 9ca:	e8 f1 fe ff ff       	call   8c0 <free>
  return freep;
 9cf:	8b 15 f0 0e 00 00    	mov    0xef0,%edx
      if((p = morecore(nunits)) == 0)
 9d5:	83 c4 10             	add    $0x10,%esp
 9d8:	85 d2                	test   %edx,%edx
 9da:	75 bc                	jne    998 <malloc+0x48>
        return 0;
  }
}
 9dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9df:	31 c0                	xor    %eax,%eax
}
 9e1:	5b                   	pop    %ebx
 9e2:	5e                   	pop    %esi
 9e3:	5f                   	pop    %edi
 9e4:	5d                   	pop    %ebp
 9e5:	c3                   	ret    
    if(p->s.size >= nunits){
 9e6:	89 d0                	mov    %edx,%eax
 9e8:	89 fa                	mov    %edi,%edx
 9ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9f0:	39 ce                	cmp    %ecx,%esi
 9f2:	74 4c                	je     a40 <malloc+0xf0>
        p->s.size -= nunits;
 9f4:	29 f1                	sub    %esi,%ecx
 9f6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9f9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9fc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 9ff:	89 15 f0 0e 00 00    	mov    %edx,0xef0
}
 a05:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a08:	83 c0 08             	add    $0x8,%eax
}
 a0b:	5b                   	pop    %ebx
 a0c:	5e                   	pop    %esi
 a0d:	5f                   	pop    %edi
 a0e:	5d                   	pop    %ebp
 a0f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a10:	c7 05 f0 0e 00 00 f4 	movl   $0xef4,0xef0
 a17:	0e 00 00 
    base.s.size = 0;
 a1a:	bf f4 0e 00 00       	mov    $0xef4,%edi
    base.s.ptr = freep = prevp = &base;
 a1f:	c7 05 f4 0e 00 00 f4 	movl   $0xef4,0xef4
 a26:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a29:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a2b:	c7 05 f8 0e 00 00 00 	movl   $0x0,0xef8
 a32:	00 00 00 
    if(p->s.size >= nunits){
 a35:	e9 42 ff ff ff       	jmp    97c <malloc+0x2c>
 a3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a40:	8b 08                	mov    (%eax),%ecx
 a42:	89 0a                	mov    %ecx,(%edx)
 a44:	eb b9                	jmp    9ff <malloc+0xaf>
