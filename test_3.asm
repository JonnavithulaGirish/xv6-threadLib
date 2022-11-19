
_test_3:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}

void worker(void *arg1, void *arg2);

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 1c             	sub    $0x1c,%esp
   ppid = getpid();
  13:	e8 7c 06 00 00       	call   694 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 70 0f 00 00       	mov    %eax,0xf70
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 86 09 00 00       	call   9b0 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 1f 01 00 00    	je     154 <main+0x154>
  35:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
  37:	89 c6                	mov    %eax,%esi
  39:	25 ff 0f 00 00       	and    $0xfff,%eax
  3e:	75 60                	jne    a0 <main+0xa0>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int fd = open("tmp", O_WRONLY|O_CREATE);
  40:	83 ec 08             	sub    $0x8,%esp
  43:	68 01 02 00 00       	push   $0x201
  48:	68 0c 0b 00 00       	push   $0xb0c
  4d:	e8 02 06 00 00       	call   654 <open>
   assert(fd == 3);
  52:	83 c4 10             	add    $0x10,%esp
  55:	83 f8 03             	cmp    $0x3,%eax
  58:	74 52                	je     ac <main+0xac>
  5a:	6a 24                	push   $0x24
  5c:	68 af 0a 00 00       	push   $0xaaf
  61:	68 b8 0a 00 00       	push   $0xab8
  66:	6a 01                	push   $0x1
  68:	e8 13 07 00 00       	call   780 <printf>
  6d:	83 c4 0c             	add    $0xc,%esp
  70:	68 10 0b 00 00       	push   $0xb10
  75:	68 dc 0a 00 00       	push   $0xadc
  7a:	6a 01                	push   $0x1
  7c:	e8 ff 06 00 00       	call   780 <printf>
  81:	59                   	pop    %ecx
  82:	5b                   	pop    %ebx
  83:	68 f0 0a 00 00       	push   $0xaf0
  88:	6a 01                	push   $0x1
  8a:	e8 f1 06 00 00       	call   780 <printf>
  8f:	5e                   	pop    %esi
  90:	ff 35 70 0f 00 00    	push   0xf70
  96:	e8 a9 05 00 00       	call   644 <kill>
  9b:	e8 74 05 00 00       	call   614 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  a0:	89 da                	mov    %ebx,%edx
  a2:	29 c2                	sub    %eax,%edx
  a4:	8d b2 00 10 00 00    	lea    0x1000(%edx),%esi
  aa:	eb 94                	jmp    40 <main+0x40>
   int clone_pid = clone(worker, 0, 0, stack);
  ac:	56                   	push   %esi
  ad:	6a 00                	push   $0x0
  af:	6a 00                	push   $0x0
  b1:	68 b0 01 00 00       	push   $0x1b0
  b6:	e8 f9 05 00 00       	call   6b4 <clone>
   assert(clone_pid > 0);
  bb:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, 0, 0, stack);
  be:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  c0:	85 c0                	test   %eax,%eax
  c2:	0f 8e ac 00 00 00    	jle    174 <main+0x174>
  c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  cf:	90                   	nop
   while(!newfd);
  d0:	a1 6c 0f 00 00       	mov    0xf6c,%eax
  d5:	85 c0                	test   %eax,%eax
  d7:	74 f7                	je     d0 <main+0xd0>
   assert(write(newfd, "goodbye\n", 8) == -1);
  d9:	a1 6c 0f 00 00       	mov    0xf6c,%eax
  de:	52                   	push   %edx
  df:	6a 08                	push   $0x8
  e1:	68 26 0b 00 00       	push   $0xb26
  e6:	50                   	push   %eax
  e7:	e8 48 05 00 00       	call   634 <write>
  ec:	83 c4 10             	add    $0x10,%esp
  ef:	83 c0 01             	add    $0x1,%eax
  f2:	74 20                	je     114 <main+0x114>
  f4:	6a 28                	push   $0x28
  f6:	68 af 0a 00 00       	push   $0xaaf
  fb:	68 b8 0a 00 00       	push   $0xab8
 100:	6a 01                	push   $0x1
 102:	e8 79 06 00 00       	call   780 <printf>
 107:	83 c4 0c             	add    $0xc,%esp
 10a:	68 54 0b 00 00       	push   $0xb54
 10f:	e9 61 ff ff ff       	jmp    75 <main+0x75>
   printf(1, "TEST PASSED\n");
 114:	50                   	push   %eax
 115:	50                   	push   %eax
 116:	68 2f 0b 00 00       	push   $0xb2f
 11b:	6a 01                	push   $0x1
 11d:	e8 5e 06 00 00       	call   780 <printf>

   void *join_stack;
   int join_pid = join(&join_stack);
 122:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 125:	89 04 24             	mov    %eax,(%esp)
 128:	e8 8f 05 00 00       	call   6bc <join>
   assert(join_pid == clone_pid);
 12d:	83 c4 10             	add    $0x10,%esp
 130:	39 c6                	cmp    %eax,%esi
 132:	74 60                	je     194 <main+0x194>
 134:	6a 2d                	push   $0x2d
 136:	68 af 0a 00 00       	push   $0xaaf
 13b:	68 b8 0a 00 00       	push   $0xab8
 140:	6a 01                	push   $0x1
 142:	e8 39 06 00 00       	call   780 <printf>
 147:	83 c4 0c             	add    $0xc,%esp
 14a:	68 3c 0b 00 00       	push   $0xb3c
 14f:	e9 21 ff ff ff       	jmp    75 <main+0x75>
   assert(p != NULL);
 154:	6a 1d                	push   $0x1d
 156:	68 af 0a 00 00       	push   $0xaaf
 15b:	68 b8 0a 00 00       	push   $0xab8
 160:	6a 01                	push   $0x1
 162:	e8 19 06 00 00       	call   780 <printf>
 167:	83 c4 0c             	add    $0xc,%esp
 16a:	68 02 0b 00 00       	push   $0xb02
 16f:	e9 01 ff ff ff       	jmp    75 <main+0x75>
   assert(clone_pid > 0);
 174:	6a 26                	push   $0x26
 176:	68 af 0a 00 00       	push   $0xaaf
 17b:	68 b8 0a 00 00       	push   $0xab8
 180:	6a 01                	push   $0x1
 182:	e8 f9 05 00 00       	call   780 <printf>
 187:	83 c4 0c             	add    $0xc,%esp
 18a:	68 18 0b 00 00       	push   $0xb18
 18f:	e9 e1 fe ff ff       	jmp    75 <main+0x75>
   free(p);
 194:	83 ec 0c             	sub    $0xc,%esp
 197:	53                   	push   %ebx
 198:	e8 83 07 00 00       	call   920 <free>
   exit();
 19d:	e8 72 04 00 00       	call   614 <exit>
 1a2:	66 90                	xchg   %ax,%ax
 1a4:	66 90                	xchg   %ax,%ax
 1a6:	66 90                	xchg   %ax,%ax
 1a8:	66 90                	xchg   %ax,%ax
 1aa:	66 90                	xchg   %ax,%ax
 1ac:	66 90                	xchg   %ax,%ax
 1ae:	66 90                	xchg   %ax,%ax

000001b0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 0c             	sub    $0xc,%esp
   assert(write(3, "hello\n", 6) == 6);
 1b6:	6a 06                	push   $0x6
 1b8:	68 a8 0a 00 00       	push   $0xaa8
 1bd:	6a 03                	push   $0x3
 1bf:	e8 70 04 00 00       	call   634 <write>
 1c4:	83 c4 10             	add    $0x10,%esp
 1c7:	83 f8 06             	cmp    $0x6,%eax
 1ca:	74 46                	je     212 <worker+0x62>
 1cc:	6a 34                	push   $0x34
 1ce:	68 af 0a 00 00       	push   $0xaaf
 1d3:	68 b8 0a 00 00       	push   $0xab8
 1d8:	6a 01                	push   $0x1
 1da:	e8 a1 05 00 00       	call   780 <printf>
 1df:	83 c4 0c             	add    $0xc,%esp
 1e2:	68 c0 0a 00 00       	push   $0xac0
 1e7:	68 dc 0a 00 00       	push   $0xadc
 1ec:	6a 01                	push   $0x1
 1ee:	e8 8d 05 00 00       	call   780 <printf>
 1f3:	5a                   	pop    %edx
 1f4:	59                   	pop    %ecx
 1f5:	68 f0 0a 00 00       	push   $0xaf0
 1fa:	6a 01                	push   $0x1
 1fc:	e8 7f 05 00 00       	call   780 <printf>
 201:	58                   	pop    %eax
 202:	ff 35 70 0f 00 00    	push   0xf70
 208:	e8 37 04 00 00       	call   644 <kill>
 20d:	e8 02 04 00 00       	call   614 <exit>
   xchg(&newfd, open("tmp2", O_WRONLY|O_CREATE));
 212:	50                   	push   %eax
 213:	50                   	push   %eax
 214:	68 01 02 00 00       	push   $0x201
 219:	68 fd 0a 00 00       	push   $0xafd
 21e:	e8 31 04 00 00       	call   654 <open>
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 223:	f0 87 05 6c 0f 00 00 	lock xchg %eax,0xf6c
   exit();
 22a:	e8 e5 03 00 00       	call   614 <exit>
 22f:	90                   	nop

00000230 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 230:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 231:	31 c0                	xor    %eax,%eax
{
 233:	89 e5                	mov    %esp,%ebp
 235:	53                   	push   %ebx
 236:	8b 4d 08             	mov    0x8(%ebp),%ecx
 239:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 240:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 244:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 247:	83 c0 01             	add    $0x1,%eax
 24a:	84 d2                	test   %dl,%dl
 24c:	75 f2                	jne    240 <strcpy+0x10>
    ;
  return os;
}
 24e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 251:	89 c8                	mov    %ecx,%eax
 253:	c9                   	leave  
 254:	c3                   	ret    
 255:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000260 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	53                   	push   %ebx
 264:	8b 55 08             	mov    0x8(%ebp),%edx
 267:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 26a:	0f b6 02             	movzbl (%edx),%eax
 26d:	84 c0                	test   %al,%al
 26f:	75 17                	jne    288 <strcmp+0x28>
 271:	eb 3a                	jmp    2ad <strcmp+0x4d>
 273:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 277:	90                   	nop
 278:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 27c:	83 c2 01             	add    $0x1,%edx
 27f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 282:	84 c0                	test   %al,%al
 284:	74 1a                	je     2a0 <strcmp+0x40>
    p++, q++;
 286:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 288:	0f b6 19             	movzbl (%ecx),%ebx
 28b:	38 c3                	cmp    %al,%bl
 28d:	74 e9                	je     278 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 28f:	29 d8                	sub    %ebx,%eax
}
 291:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 294:	c9                   	leave  
 295:	c3                   	ret    
 296:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 2a0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2a4:	31 c0                	xor    %eax,%eax
 2a6:	29 d8                	sub    %ebx,%eax
}
 2a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2ab:	c9                   	leave  
 2ac:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 2ad:	0f b6 19             	movzbl (%ecx),%ebx
 2b0:	31 c0                	xor    %eax,%eax
 2b2:	eb db                	jmp    28f <strcmp+0x2f>
 2b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2bf:	90                   	nop

000002c0 <strlen>:

uint
strlen(const char *s)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2c6:	80 3a 00             	cmpb   $0x0,(%edx)
 2c9:	74 15                	je     2e0 <strlen+0x20>
 2cb:	31 c0                	xor    %eax,%eax
 2cd:	8d 76 00             	lea    0x0(%esi),%esi
 2d0:	83 c0 01             	add    $0x1,%eax
 2d3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2d7:	89 c1                	mov    %eax,%ecx
 2d9:	75 f5                	jne    2d0 <strlen+0x10>
    ;
  return n;
}
 2db:	89 c8                	mov    %ecx,%eax
 2dd:	5d                   	pop    %ebp
 2de:	c3                   	ret    
 2df:	90                   	nop
  for(n = 0; s[n]; n++)
 2e0:	31 c9                	xor    %ecx,%ecx
}
 2e2:	5d                   	pop    %ebp
 2e3:	89 c8                	mov    %ecx,%eax
 2e5:	c3                   	ret    
 2e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ed:	8d 76 00             	lea    0x0(%esi),%esi

000002f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	57                   	push   %edi
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 2f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 2fd:	89 d7                	mov    %edx,%edi
 2ff:	fc                   	cld    
 300:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 302:	8b 7d fc             	mov    -0x4(%ebp),%edi
 305:	89 d0                	mov    %edx,%eax
 307:	c9                   	leave  
 308:	c3                   	ret    
 309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000310 <strchr>:

char*
strchr(const char *s, char c)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	8b 45 08             	mov    0x8(%ebp),%eax
 316:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 31a:	0f b6 10             	movzbl (%eax),%edx
 31d:	84 d2                	test   %dl,%dl
 31f:	75 12                	jne    333 <strchr+0x23>
 321:	eb 1d                	jmp    340 <strchr+0x30>
 323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 327:	90                   	nop
 328:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 32c:	83 c0 01             	add    $0x1,%eax
 32f:	84 d2                	test   %dl,%dl
 331:	74 0d                	je     340 <strchr+0x30>
    if(*s == c)
 333:	38 d1                	cmp    %dl,%cl
 335:	75 f1                	jne    328 <strchr+0x18>
      return (char*)s;
  return 0;
}
 337:	5d                   	pop    %ebp
 338:	c3                   	ret    
 339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 340:	31 c0                	xor    %eax,%eax
}
 342:	5d                   	pop    %ebp
 343:	c3                   	ret    
 344:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop

00000350 <gets>:

char*
gets(char *buf, int max)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 355:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 358:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 359:	31 db                	xor    %ebx,%ebx
{
 35b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 35e:	eb 27                	jmp    387 <gets+0x37>
    cc = read(0, &c, 1);
 360:	83 ec 04             	sub    $0x4,%esp
 363:	6a 01                	push   $0x1
 365:	57                   	push   %edi
 366:	6a 00                	push   $0x0
 368:	e8 bf 02 00 00       	call   62c <read>
    if(cc < 1)
 36d:	83 c4 10             	add    $0x10,%esp
 370:	85 c0                	test   %eax,%eax
 372:	7e 1d                	jle    391 <gets+0x41>
      break;
    buf[i++] = c;
 374:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 378:	8b 55 08             	mov    0x8(%ebp),%edx
 37b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 37f:	3c 0a                	cmp    $0xa,%al
 381:	74 1d                	je     3a0 <gets+0x50>
 383:	3c 0d                	cmp    $0xd,%al
 385:	74 19                	je     3a0 <gets+0x50>
  for(i=0; i+1 < max; ){
 387:	89 de                	mov    %ebx,%esi
 389:	83 c3 01             	add    $0x1,%ebx
 38c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 38f:	7c cf                	jl     360 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 391:	8b 45 08             	mov    0x8(%ebp),%eax
 394:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 398:	8d 65 f4             	lea    -0xc(%ebp),%esp
 39b:	5b                   	pop    %ebx
 39c:	5e                   	pop    %esi
 39d:	5f                   	pop    %edi
 39e:	5d                   	pop    %ebp
 39f:	c3                   	ret    
  buf[i] = '\0';
 3a0:	8b 45 08             	mov    0x8(%ebp),%eax
 3a3:	89 de                	mov    %ebx,%esi
 3a5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 3a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3ac:	5b                   	pop    %ebx
 3ad:	5e                   	pop    %esi
 3ae:	5f                   	pop    %edi
 3af:	5d                   	pop    %ebp
 3b0:	c3                   	ret    
 3b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bf:	90                   	nop

000003c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	56                   	push   %esi
 3c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3c5:	83 ec 08             	sub    $0x8,%esp
 3c8:	6a 00                	push   $0x0
 3ca:	ff 75 08             	push   0x8(%ebp)
 3cd:	e8 82 02 00 00       	call   654 <open>
  if(fd < 0)
 3d2:	83 c4 10             	add    $0x10,%esp
 3d5:	85 c0                	test   %eax,%eax
 3d7:	78 27                	js     400 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3d9:	83 ec 08             	sub    $0x8,%esp
 3dc:	ff 75 0c             	push   0xc(%ebp)
 3df:	89 c3                	mov    %eax,%ebx
 3e1:	50                   	push   %eax
 3e2:	e8 85 02 00 00       	call   66c <fstat>
  close(fd);
 3e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3ea:	89 c6                	mov    %eax,%esi
  close(fd);
 3ec:	e8 4b 02 00 00       	call   63c <close>
  return r;
 3f1:	83 c4 10             	add    $0x10,%esp
}
 3f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3f7:	89 f0                	mov    %esi,%eax
 3f9:	5b                   	pop    %ebx
 3fa:	5e                   	pop    %esi
 3fb:	5d                   	pop    %ebp
 3fc:	c3                   	ret    
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 400:	be ff ff ff ff       	mov    $0xffffffff,%esi
 405:	eb ed                	jmp    3f4 <stat+0x34>
 407:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40e:	66 90                	xchg   %ax,%ax

00000410 <atoi>:

int
atoi(const char *s)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	53                   	push   %ebx
 414:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 417:	0f be 02             	movsbl (%edx),%eax
 41a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 41d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 420:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 425:	77 1e                	ja     445 <atoi+0x35>
 427:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 430:	83 c2 01             	add    $0x1,%edx
 433:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 436:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 43a:	0f be 02             	movsbl (%edx),%eax
 43d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 440:	80 fb 09             	cmp    $0x9,%bl
 443:	76 eb                	jbe    430 <atoi+0x20>
  return n;
}
 445:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 448:	89 c8                	mov    %ecx,%eax
 44a:	c9                   	leave  
 44b:	c3                   	ret    
 44c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000450 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	57                   	push   %edi
 454:	8b 45 10             	mov    0x10(%ebp),%eax
 457:	8b 55 08             	mov    0x8(%ebp),%edx
 45a:	56                   	push   %esi
 45b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 45e:	85 c0                	test   %eax,%eax
 460:	7e 13                	jle    475 <memmove+0x25>
 462:	01 d0                	add    %edx,%eax
  dst = vdst;
 464:	89 d7                	mov    %edx,%edi
 466:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 470:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 471:	39 f8                	cmp    %edi,%eax
 473:	75 fb                	jne    470 <memmove+0x20>
  return vdst;
}
 475:	5e                   	pop    %esi
 476:	89 d0                	mov    %edx,%eax
 478:	5f                   	pop    %edi
 479:	5d                   	pop    %ebp
 47a:	c3                   	ret    
 47b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 480:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 481:	b8 01 00 00 00       	mov    $0x1,%eax
 486:	89 e5                	mov    %esp,%ebp
 488:	53                   	push   %ebx
 489:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 48c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 493:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 49a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 49f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 4a2:	39 c2                	cmp    %eax,%edx
 4a4:	74 24                	je     4ca <thread_create+0x4a>
 4a6:	89 c3                	mov    %eax,%ebx
 4a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4af:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 4b0:	83 ec 04             	sub    $0x4,%esp
 4b3:	52                   	push   %edx
 4b4:	68 77 0b 00 00       	push   $0xb77
 4b9:	6a 01                	push   $0x1
 4bb:	e8 c0 02 00 00       	call   780 <printf>
  while(lock->turn != myturn){
 4c0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 4c3:	83 c4 10             	add    $0x10,%esp
 4c6:	39 d3                	cmp    %edx,%ebx
 4c8:	75 e6                	jne    4b0 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 4ca:	83 ec 0c             	sub    $0xc,%esp
 4cd:	68 00 20 00 00       	push   $0x2000
 4d2:	e8 d9 04 00 00       	call   9b0 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 4d7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 4db:	83 c4 10             	add    $0x10,%esp
 4de:	89 c2                	mov    %eax,%edx
 4e0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 4e6:	74 07                	je     4ef <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 4e8:	29 d0                	sub    %edx,%eax
 4ea:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 4ef:	50                   	push   %eax
 4f0:	ff 75 10             	push   0x10(%ebp)
 4f3:	ff 75 0c             	push   0xc(%ebp)
 4f6:	ff 75 08             	push   0x8(%ebp)
 4f9:	e8 b6 01 00 00       	call   6b4 <clone>
}
 4fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 501:	c9                   	leave  
 502:	c3                   	ret    
 503:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 50a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000510 <thread_join>:
int thread_join(){
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	56                   	push   %esi
 514:	53                   	push   %ebx
 515:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 518:	6a 04                	push   $0x4
 51a:	e8 91 04 00 00       	call   9b0 <malloc>
 51f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 522:	8d 45 ec             	lea    -0x14(%ebp),%eax
 525:	89 04 24             	mov    %eax,(%esp)
 528:	e8 8f 01 00 00       	call   6bc <join>
  lock->ticket = 0;
 52d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 534:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 536:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 53d:	b8 01 00 00 00       	mov    $0x1,%eax
 542:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 547:	8b 55 f4             	mov    -0xc(%ebp),%edx
 54a:	83 c4 10             	add    $0x10,%esp
 54d:	39 c2                	cmp    %eax,%edx
 54f:	74 21                	je     572 <thread_join+0x62>
 551:	89 c3                	mov    %eax,%ebx
 553:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 557:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 558:	83 ec 04             	sub    $0x4,%esp
 55b:	52                   	push   %edx
 55c:	68 77 0b 00 00       	push   $0xb77
 561:	6a 01                	push   $0x1
 563:	e8 18 02 00 00       	call   780 <printf>
  while(lock->turn != myturn){
 568:	8b 55 f4             	mov    -0xc(%ebp),%edx
 56b:	83 c4 10             	add    $0x10,%esp
 56e:	39 d3                	cmp    %edx,%ebx
 570:	75 e6                	jne    558 <thread_join+0x48>
	free(stack);
 572:	83 ec 0c             	sub    $0xc,%esp
 575:	ff 75 ec             	push   -0x14(%ebp)
 578:	e8 a3 03 00 00       	call   920 <free>
}
 57d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 580:	89 f0                	mov    %esi,%eax
 582:	5b                   	pop    %ebx
 583:	5e                   	pop    %esi
 584:	5d                   	pop    %ebp
 585:	c3                   	ret    
 586:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58d:	8d 76 00             	lea    0x0(%esi),%esi

00000590 <lock_init>:
void lock_init(lock_t *lock) {
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 596:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 59c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 5a3:	5d                   	pop    %ebp
 5a4:	c3                   	ret    
 5a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005b0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 5b0:	55                   	push   %ebp
 5b1:	b8 01 00 00 00       	mov    $0x1,%eax
 5b6:	89 e5                	mov    %esp,%ebp
 5b8:	56                   	push   %esi
 5b9:	8b 75 08             	mov    0x8(%ebp),%esi
 5bc:	53                   	push   %ebx
 5bd:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 5c1:	8b 56 04             	mov    0x4(%esi),%edx
 5c4:	39 d0                	cmp    %edx,%eax
 5c6:	74 22                	je     5ea <lock_acquire+0x3a>
 5c8:	89 c3                	mov    %eax,%ebx
 5ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 5d0:	83 ec 04             	sub    $0x4,%esp
 5d3:	52                   	push   %edx
 5d4:	68 77 0b 00 00       	push   $0xb77
 5d9:	6a 01                	push   $0x1
 5db:	e8 a0 01 00 00       	call   780 <printf>
  while(lock->turn != myturn){
 5e0:	8b 56 04             	mov    0x4(%esi),%edx
 5e3:	83 c4 10             	add    $0x10,%esp
 5e6:	39 da                	cmp    %ebx,%edx
 5e8:	75 e6                	jne    5d0 <lock_acquire+0x20>
}
 5ea:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5ed:	5b                   	pop    %ebx
 5ee:	5e                   	pop    %esi
 5ef:	5d                   	pop    %ebp
 5f0:	c3                   	ret    
 5f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ff:	90                   	nop

00000600 <lock_release>:
void lock_release(lock_t *lock){
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 606:	83 40 04 01          	addl   $0x1,0x4(%eax)
 60a:	5d                   	pop    %ebp
 60b:	c3                   	ret    

0000060c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 60c:	b8 01 00 00 00       	mov    $0x1,%eax
 611:	cd 40                	int    $0x40
 613:	c3                   	ret    

00000614 <exit>:
SYSCALL(exit)
 614:	b8 02 00 00 00       	mov    $0x2,%eax
 619:	cd 40                	int    $0x40
 61b:	c3                   	ret    

0000061c <wait>:
SYSCALL(wait)
 61c:	b8 03 00 00 00       	mov    $0x3,%eax
 621:	cd 40                	int    $0x40
 623:	c3                   	ret    

00000624 <pipe>:
SYSCALL(pipe)
 624:	b8 04 00 00 00       	mov    $0x4,%eax
 629:	cd 40                	int    $0x40
 62b:	c3                   	ret    

0000062c <read>:
SYSCALL(read)
 62c:	b8 05 00 00 00       	mov    $0x5,%eax
 631:	cd 40                	int    $0x40
 633:	c3                   	ret    

00000634 <write>:
SYSCALL(write)
 634:	b8 10 00 00 00       	mov    $0x10,%eax
 639:	cd 40                	int    $0x40
 63b:	c3                   	ret    

0000063c <close>:
SYSCALL(close)
 63c:	b8 15 00 00 00       	mov    $0x15,%eax
 641:	cd 40                	int    $0x40
 643:	c3                   	ret    

00000644 <kill>:
SYSCALL(kill)
 644:	b8 06 00 00 00       	mov    $0x6,%eax
 649:	cd 40                	int    $0x40
 64b:	c3                   	ret    

0000064c <exec>:
SYSCALL(exec)
 64c:	b8 07 00 00 00       	mov    $0x7,%eax
 651:	cd 40                	int    $0x40
 653:	c3                   	ret    

00000654 <open>:
SYSCALL(open)
 654:	b8 0f 00 00 00       	mov    $0xf,%eax
 659:	cd 40                	int    $0x40
 65b:	c3                   	ret    

0000065c <mknod>:
SYSCALL(mknod)
 65c:	b8 11 00 00 00       	mov    $0x11,%eax
 661:	cd 40                	int    $0x40
 663:	c3                   	ret    

00000664 <unlink>:
SYSCALL(unlink)
 664:	b8 12 00 00 00       	mov    $0x12,%eax
 669:	cd 40                	int    $0x40
 66b:	c3                   	ret    

0000066c <fstat>:
SYSCALL(fstat)
 66c:	b8 08 00 00 00       	mov    $0x8,%eax
 671:	cd 40                	int    $0x40
 673:	c3                   	ret    

00000674 <link>:
SYSCALL(link)
 674:	b8 13 00 00 00       	mov    $0x13,%eax
 679:	cd 40                	int    $0x40
 67b:	c3                   	ret    

0000067c <mkdir>:
SYSCALL(mkdir)
 67c:	b8 14 00 00 00       	mov    $0x14,%eax
 681:	cd 40                	int    $0x40
 683:	c3                   	ret    

00000684 <chdir>:
SYSCALL(chdir)
 684:	b8 09 00 00 00       	mov    $0x9,%eax
 689:	cd 40                	int    $0x40
 68b:	c3                   	ret    

0000068c <dup>:
SYSCALL(dup)
 68c:	b8 0a 00 00 00       	mov    $0xa,%eax
 691:	cd 40                	int    $0x40
 693:	c3                   	ret    

00000694 <getpid>:
SYSCALL(getpid)
 694:	b8 0b 00 00 00       	mov    $0xb,%eax
 699:	cd 40                	int    $0x40
 69b:	c3                   	ret    

0000069c <sbrk>:
SYSCALL(sbrk)
 69c:	b8 0c 00 00 00       	mov    $0xc,%eax
 6a1:	cd 40                	int    $0x40
 6a3:	c3                   	ret    

000006a4 <sleep>:
SYSCALL(sleep)
 6a4:	b8 0d 00 00 00       	mov    $0xd,%eax
 6a9:	cd 40                	int    $0x40
 6ab:	c3                   	ret    

000006ac <uptime>:
SYSCALL(uptime)
 6ac:	b8 0e 00 00 00       	mov    $0xe,%eax
 6b1:	cd 40                	int    $0x40
 6b3:	c3                   	ret    

000006b4 <clone>:
SYSCALL(clone)
 6b4:	b8 16 00 00 00       	mov    $0x16,%eax
 6b9:	cd 40                	int    $0x40
 6bb:	c3                   	ret    

000006bc <join>:
SYSCALL(join)
 6bc:	b8 17 00 00 00       	mov    $0x17,%eax
 6c1:	cd 40                	int    $0x40
 6c3:	c3                   	ret    
 6c4:	66 90                	xchg   %ax,%ax
 6c6:	66 90                	xchg   %ax,%ax
 6c8:	66 90                	xchg   %ax,%ax
 6ca:	66 90                	xchg   %ax,%ax
 6cc:	66 90                	xchg   %ax,%ax
 6ce:	66 90                	xchg   %ax,%ax

000006d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	57                   	push   %edi
 6d4:	56                   	push   %esi
 6d5:	53                   	push   %ebx
 6d6:	83 ec 3c             	sub    $0x3c,%esp
 6d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6dc:	89 d1                	mov    %edx,%ecx
{
 6de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6e1:	85 d2                	test   %edx,%edx
 6e3:	0f 89 7f 00 00 00    	jns    768 <printint+0x98>
 6e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6ed:	74 79                	je     768 <printint+0x98>
    neg = 1;
 6ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6f8:	31 db                	xor    %ebx,%ebx
 6fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 700:	89 c8                	mov    %ecx,%eax
 702:	31 d2                	xor    %edx,%edx
 704:	89 cf                	mov    %ecx,%edi
 706:	f7 75 c4             	divl   -0x3c(%ebp)
 709:	0f b6 92 ec 0b 00 00 	movzbl 0xbec(%edx),%edx
 710:	89 45 c0             	mov    %eax,-0x40(%ebp)
 713:	89 d8                	mov    %ebx,%eax
 715:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 718:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 71b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 71e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 721:	76 dd                	jbe    700 <printint+0x30>
  if(neg)
 723:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 726:	85 c9                	test   %ecx,%ecx
 728:	74 0c                	je     736 <printint+0x66>
    buf[i++] = '-';
 72a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 72f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 731:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 736:	8b 7d b8             	mov    -0x48(%ebp),%edi
 739:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 73d:	eb 07                	jmp    746 <printint+0x76>
 73f:	90                   	nop
    putc(fd, buf[i]);
 740:	0f b6 13             	movzbl (%ebx),%edx
 743:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 746:	83 ec 04             	sub    $0x4,%esp
 749:	88 55 d7             	mov    %dl,-0x29(%ebp)
 74c:	6a 01                	push   $0x1
 74e:	56                   	push   %esi
 74f:	57                   	push   %edi
 750:	e8 df fe ff ff       	call   634 <write>
  while(--i >= 0)
 755:	83 c4 10             	add    $0x10,%esp
 758:	39 de                	cmp    %ebx,%esi
 75a:	75 e4                	jne    740 <printint+0x70>
}
 75c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 75f:	5b                   	pop    %ebx
 760:	5e                   	pop    %esi
 761:	5f                   	pop    %edi
 762:	5d                   	pop    %ebp
 763:	c3                   	ret    
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 768:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 76f:	eb 87                	jmp    6f8 <printint+0x28>
 771:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 778:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 77f:	90                   	nop

00000780 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 789:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 78c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 78f:	0f b6 13             	movzbl (%ebx),%edx
 792:	84 d2                	test   %dl,%dl
 794:	74 6a                	je     800 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 796:	8d 45 10             	lea    0x10(%ebp),%eax
 799:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 79c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 79f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7a1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7a4:	eb 36                	jmp    7dc <printf+0x5c>
 7a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
 7b0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7b3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7b8:	83 f8 25             	cmp    $0x25,%eax
 7bb:	74 15                	je     7d2 <printf+0x52>
  write(fd, &c, 1);
 7bd:	83 ec 04             	sub    $0x4,%esp
 7c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7c3:	6a 01                	push   $0x1
 7c5:	57                   	push   %edi
 7c6:	56                   	push   %esi
 7c7:	e8 68 fe ff ff       	call   634 <write>
 7cc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7cf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7d2:	0f b6 13             	movzbl (%ebx),%edx
 7d5:	83 c3 01             	add    $0x1,%ebx
 7d8:	84 d2                	test   %dl,%dl
 7da:	74 24                	je     800 <printf+0x80>
    c = fmt[i] & 0xff;
 7dc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7df:	85 c9                	test   %ecx,%ecx
 7e1:	74 cd                	je     7b0 <printf+0x30>
      }
    } else if(state == '%'){
 7e3:	83 f9 25             	cmp    $0x25,%ecx
 7e6:	75 ea                	jne    7d2 <printf+0x52>
      if(c == 'd'){
 7e8:	83 f8 25             	cmp    $0x25,%eax
 7eb:	0f 84 07 01 00 00    	je     8f8 <printf+0x178>
 7f1:	83 e8 63             	sub    $0x63,%eax
 7f4:	83 f8 15             	cmp    $0x15,%eax
 7f7:	77 17                	ja     810 <printf+0x90>
 7f9:	ff 24 85 94 0b 00 00 	jmp    *0xb94(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 800:	8d 65 f4             	lea    -0xc(%ebp),%esp
 803:	5b                   	pop    %ebx
 804:	5e                   	pop    %esi
 805:	5f                   	pop    %edi
 806:	5d                   	pop    %ebp
 807:	c3                   	ret    
 808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80f:	90                   	nop
  write(fd, &c, 1);
 810:	83 ec 04             	sub    $0x4,%esp
 813:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 816:	6a 01                	push   $0x1
 818:	57                   	push   %edi
 819:	56                   	push   %esi
 81a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 81e:	e8 11 fe ff ff       	call   634 <write>
        putc(fd, c);
 823:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 827:	83 c4 0c             	add    $0xc,%esp
 82a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 82d:	6a 01                	push   $0x1
 82f:	57                   	push   %edi
 830:	56                   	push   %esi
 831:	e8 fe fd ff ff       	call   634 <write>
        putc(fd, c);
 836:	83 c4 10             	add    $0x10,%esp
      state = 0;
 839:	31 c9                	xor    %ecx,%ecx
 83b:	eb 95                	jmp    7d2 <printf+0x52>
 83d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 840:	83 ec 0c             	sub    $0xc,%esp
 843:	b9 10 00 00 00       	mov    $0x10,%ecx
 848:	6a 00                	push   $0x0
 84a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 84d:	8b 10                	mov    (%eax),%edx
 84f:	89 f0                	mov    %esi,%eax
 851:	e8 7a fe ff ff       	call   6d0 <printint>
        ap++;
 856:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 85a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 85d:	31 c9                	xor    %ecx,%ecx
 85f:	e9 6e ff ff ff       	jmp    7d2 <printf+0x52>
 864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 868:	8b 45 d0             	mov    -0x30(%ebp),%eax
 86b:	8b 10                	mov    (%eax),%edx
        ap++;
 86d:	83 c0 04             	add    $0x4,%eax
 870:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 873:	85 d2                	test   %edx,%edx
 875:	0f 84 8d 00 00 00    	je     908 <printf+0x188>
        while(*s != 0){
 87b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 87e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 880:	84 c0                	test   %al,%al
 882:	0f 84 4a ff ff ff    	je     7d2 <printf+0x52>
 888:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 88b:	89 d3                	mov    %edx,%ebx
 88d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 890:	83 ec 04             	sub    $0x4,%esp
          s++;
 893:	83 c3 01             	add    $0x1,%ebx
 896:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 899:	6a 01                	push   $0x1
 89b:	57                   	push   %edi
 89c:	56                   	push   %esi
 89d:	e8 92 fd ff ff       	call   634 <write>
        while(*s != 0){
 8a2:	0f b6 03             	movzbl (%ebx),%eax
 8a5:	83 c4 10             	add    $0x10,%esp
 8a8:	84 c0                	test   %al,%al
 8aa:	75 e4                	jne    890 <printf+0x110>
      state = 0;
 8ac:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8af:	31 c9                	xor    %ecx,%ecx
 8b1:	e9 1c ff ff ff       	jmp    7d2 <printf+0x52>
 8b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8c0:	83 ec 0c             	sub    $0xc,%esp
 8c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8c8:	6a 01                	push   $0x1
 8ca:	e9 7b ff ff ff       	jmp    84a <printf+0xca>
 8cf:	90                   	nop
        putc(fd, *ap);
 8d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8d6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8d8:	6a 01                	push   $0x1
 8da:	57                   	push   %edi
 8db:	56                   	push   %esi
        putc(fd, *ap);
 8dc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8df:	e8 50 fd ff ff       	call   634 <write>
        ap++;
 8e4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8eb:	31 c9                	xor    %ecx,%ecx
 8ed:	e9 e0 fe ff ff       	jmp    7d2 <printf+0x52>
 8f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8f8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8fb:	83 ec 04             	sub    $0x4,%esp
 8fe:	e9 2a ff ff ff       	jmp    82d <printf+0xad>
 903:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 907:	90                   	nop
          s = "(null)";
 908:	ba 8b 0b 00 00       	mov    $0xb8b,%edx
        while(*s != 0){
 90d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 910:	b8 28 00 00 00       	mov    $0x28,%eax
 915:	89 d3                	mov    %edx,%ebx
 917:	e9 74 ff ff ff       	jmp    890 <printf+0x110>
 91c:	66 90                	xchg   %ax,%ax
 91e:	66 90                	xchg   %ax,%ax

00000920 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 920:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 921:	a1 74 0f 00 00       	mov    0xf74,%eax
{
 926:	89 e5                	mov    %esp,%ebp
 928:	57                   	push   %edi
 929:	56                   	push   %esi
 92a:	53                   	push   %ebx
 92b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 92e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 931:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 938:	89 c2                	mov    %eax,%edx
 93a:	8b 00                	mov    (%eax),%eax
 93c:	39 ca                	cmp    %ecx,%edx
 93e:	73 30                	jae    970 <free+0x50>
 940:	39 c1                	cmp    %eax,%ecx
 942:	72 04                	jb     948 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 944:	39 c2                	cmp    %eax,%edx
 946:	72 f0                	jb     938 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 948:	8b 73 fc             	mov    -0x4(%ebx),%esi
 94b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 94e:	39 f8                	cmp    %edi,%eax
 950:	74 30                	je     982 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 952:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 955:	8b 42 04             	mov    0x4(%edx),%eax
 958:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 95b:	39 f1                	cmp    %esi,%ecx
 95d:	74 3a                	je     999 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 95f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 961:	5b                   	pop    %ebx
  freep = p;
 962:	89 15 74 0f 00 00    	mov    %edx,0xf74
}
 968:	5e                   	pop    %esi
 969:	5f                   	pop    %edi
 96a:	5d                   	pop    %ebp
 96b:	c3                   	ret    
 96c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 970:	39 c2                	cmp    %eax,%edx
 972:	72 c4                	jb     938 <free+0x18>
 974:	39 c1                	cmp    %eax,%ecx
 976:	73 c0                	jae    938 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 978:	8b 73 fc             	mov    -0x4(%ebx),%esi
 97b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 97e:	39 f8                	cmp    %edi,%eax
 980:	75 d0                	jne    952 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 982:	03 70 04             	add    0x4(%eax),%esi
 985:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 988:	8b 02                	mov    (%edx),%eax
 98a:	8b 00                	mov    (%eax),%eax
 98c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 98f:	8b 42 04             	mov    0x4(%edx),%eax
 992:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 995:	39 f1                	cmp    %esi,%ecx
 997:	75 c6                	jne    95f <free+0x3f>
    p->s.size += bp->s.size;
 999:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 99c:	89 15 74 0f 00 00    	mov    %edx,0xf74
    p->s.size += bp->s.size;
 9a2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9a5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9a8:	89 0a                	mov    %ecx,(%edx)
}
 9aa:	5b                   	pop    %ebx
 9ab:	5e                   	pop    %esi
 9ac:	5f                   	pop    %edi
 9ad:	5d                   	pop    %ebp
 9ae:	c3                   	ret    
 9af:	90                   	nop

000009b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9b0:	55                   	push   %ebp
 9b1:	89 e5                	mov    %esp,%ebp
 9b3:	57                   	push   %edi
 9b4:	56                   	push   %esi
 9b5:	53                   	push   %ebx
 9b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9bc:	8b 3d 74 0f 00 00    	mov    0xf74,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9c2:	8d 70 07             	lea    0x7(%eax),%esi
 9c5:	c1 ee 03             	shr    $0x3,%esi
 9c8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9cb:	85 ff                	test   %edi,%edi
 9cd:	0f 84 9d 00 00 00    	je     a70 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9d5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9d8:	39 f1                	cmp    %esi,%ecx
 9da:	73 6a                	jae    a46 <malloc+0x96>
 9dc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9e1:	39 de                	cmp    %ebx,%esi
 9e3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9e6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9f0:	eb 17                	jmp    a09 <malloc+0x59>
 9f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9fa:	8b 48 04             	mov    0x4(%eax),%ecx
 9fd:	39 f1                	cmp    %esi,%ecx
 9ff:	73 4f                	jae    a50 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a01:	8b 3d 74 0f 00 00    	mov    0xf74,%edi
 a07:	89 c2                	mov    %eax,%edx
 a09:	39 d7                	cmp    %edx,%edi
 a0b:	75 eb                	jne    9f8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a0d:	83 ec 0c             	sub    $0xc,%esp
 a10:	ff 75 e4             	push   -0x1c(%ebp)
 a13:	e8 84 fc ff ff       	call   69c <sbrk>
  if(p == (char*)-1)
 a18:	83 c4 10             	add    $0x10,%esp
 a1b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a1e:	74 1c                	je     a3c <malloc+0x8c>
  hp->s.size = nu;
 a20:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a23:	83 ec 0c             	sub    $0xc,%esp
 a26:	83 c0 08             	add    $0x8,%eax
 a29:	50                   	push   %eax
 a2a:	e8 f1 fe ff ff       	call   920 <free>
  return freep;
 a2f:	8b 15 74 0f 00 00    	mov    0xf74,%edx
      if((p = morecore(nunits)) == 0)
 a35:	83 c4 10             	add    $0x10,%esp
 a38:	85 d2                	test   %edx,%edx
 a3a:	75 bc                	jne    9f8 <malloc+0x48>
        return 0;
  }
}
 a3c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a3f:	31 c0                	xor    %eax,%eax
}
 a41:	5b                   	pop    %ebx
 a42:	5e                   	pop    %esi
 a43:	5f                   	pop    %edi
 a44:	5d                   	pop    %ebp
 a45:	c3                   	ret    
    if(p->s.size >= nunits){
 a46:	89 d0                	mov    %edx,%eax
 a48:	89 fa                	mov    %edi,%edx
 a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a50:	39 ce                	cmp    %ecx,%esi
 a52:	74 4c                	je     aa0 <malloc+0xf0>
        p->s.size -= nunits;
 a54:	29 f1                	sub    %esi,%ecx
 a56:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a5c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a5f:	89 15 74 0f 00 00    	mov    %edx,0xf74
}
 a65:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a68:	83 c0 08             	add    $0x8,%eax
}
 a6b:	5b                   	pop    %ebx
 a6c:	5e                   	pop    %esi
 a6d:	5f                   	pop    %edi
 a6e:	5d                   	pop    %ebp
 a6f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a70:	c7 05 74 0f 00 00 78 	movl   $0xf78,0xf74
 a77:	0f 00 00 
    base.s.size = 0;
 a7a:	bf 78 0f 00 00       	mov    $0xf78,%edi
    base.s.ptr = freep = prevp = &base;
 a7f:	c7 05 78 0f 00 00 78 	movl   $0xf78,0xf78
 a86:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a89:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a8b:	c7 05 7c 0f 00 00 00 	movl   $0x0,0xf7c
 a92:	00 00 00 
    if(p->s.size >= nunits){
 a95:	e9 42 ff ff ff       	jmp    9dc <malloc+0x2c>
 a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 aa0:	8b 08                	mov    (%eax),%ecx
 aa2:	89 0a                	mov    %ecx,(%edx)
 aa4:	eb b9                	jmp    a5f <malloc+0xaf>
