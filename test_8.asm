
_test_8:     file format elf32-i386


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
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
   ppid = getpid();
  14:	e8 bb 06 00 00       	call   6d4 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 a0 0f 00 00       	mov    %eax,0xfa0
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 c5 09 00 00       	call   9f0 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 c0 00 00 00    	je     f6 <main+0xf6>
  36:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
  38:	89 c7                	mov    %eax,%edi
  3a:	25 ff 0f 00 00       	and    $0xfff,%eax
  3f:	74 0a                	je     4b <main+0x4b>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  41:	89 da                	mov    %ebx,%edx
  43:	29 c2                	sub    %eax,%edx
  45:	8d ba 00 10 00 00    	lea    0x1000(%edx),%edi
   else
     stack = p;

   int arg1 = 42, arg2 = 24;
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  4b:	8d 45 e0             	lea    -0x20(%ebp),%eax
  4e:	57                   	push   %edi
  4f:	50                   	push   %eax
  50:	8d 45 dc             	lea    -0x24(%ebp),%eax
  53:	50                   	push   %eax
  54:	68 b0 01 00 00       	push   $0x1b0
   int arg1 = 42, arg2 = 24;
  59:	c7 45 dc 2a 00 00 00 	movl   $0x2a,-0x24(%ebp)
  60:	c7 45 e0 18 00 00 00 	movl   $0x18,-0x20(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  67:	e8 88 06 00 00       	call   6f4 <clone>
   assert(clone_pid > 0);
  6c:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  6f:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  71:	85 c0                	test   %eax,%eax
  73:	7e 64                	jle    d9 <main+0xd9>

   sleep(250);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	68 fa 00 00 00       	push   $0xfa
  7d:	e8 62 06 00 00       	call   6e4 <sleep>
   assert(wait() == -1);
  82:	e8 d5 05 00 00       	call   65c <wait>
  87:	83 c4 10             	add    $0x10,%esp
  8a:	83 c0 01             	add    $0x1,%eax
  8d:	0f 84 80 00 00 00    	je     113 <main+0x113>
  93:	6a 28                	push   $0x28
  95:	68 e8 0a 00 00       	push   $0xae8
  9a:	68 f1 0a 00 00       	push   $0xaf1
  9f:	6a 01                	push   $0x1
  a1:	e8 1a 07 00 00       	call   7c0 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 54 0b 00 00       	push   $0xb54
   assert(clone_pid > 0);
  ae:	68 04 0b 00 00       	push   $0xb04
  b3:	6a 01                	push   $0x1
  b5:	e8 06 07 00 00       	call   7c0 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 18 0b 00 00       	push   $0xb18
  c1:	6a 01                	push   $0x1
  c3:	e8 f8 06 00 00       	call   7c0 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 a0 0f 00 00    	push   0xfa0
  cf:	e8 b0 05 00 00       	call   684 <kill>
  d4:	e8 7b 05 00 00       	call   654 <exit>
  d9:	6a 25                	push   $0x25
  db:	68 e8 0a 00 00       	push   $0xae8
  e0:	68 f1 0a 00 00       	push   $0xaf1
  e5:	6a 01                	push   $0x1
  e7:	e8 d4 06 00 00       	call   7c0 <printf>
  ec:	83 c4 0c             	add    $0xc,%esp
  ef:	68 46 0b 00 00       	push   $0xb46
  f4:	eb b8                	jmp    ae <main+0xae>
   assert(p != NULL);
  f6:	6a 1d                	push   $0x1d
  f8:	68 e8 0a 00 00       	push   $0xae8
  fd:	68 f1 0a 00 00       	push   $0xaf1
 102:	6a 01                	push   $0x1
 104:	e8 b7 06 00 00       	call   7c0 <printf>
 109:	83 c4 0c             	add    $0xc,%esp
 10c:	68 3c 0b 00 00       	push   $0xb3c
 111:	eb 9b                	jmp    ae <main+0xae>

   void *join_stack;
   int join_pid = join(&join_stack);
 113:	83 ec 0c             	sub    $0xc,%esp
 116:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 119:	50                   	push   %eax
 11a:	e8 dd 05 00 00       	call   6fc <join>
   assert(join_pid == clone_pid);
 11f:	83 c4 10             	add    $0x10,%esp
 122:	39 c6                	cmp    %eax,%esi
 124:	74 20                	je     146 <main+0x146>
 126:	6a 2c                	push   $0x2c
 128:	68 e8 0a 00 00       	push   $0xae8
 12d:	68 f1 0a 00 00       	push   $0xaf1
 132:	6a 01                	push   $0x1
 134:	e8 87 06 00 00       	call   7c0 <printf>
 139:	83 c4 0c             	add    $0xc,%esp
 13c:	68 61 0b 00 00       	push   $0xb61
 141:	e9 68 ff ff ff       	jmp    ae <main+0xae>
   assert(stack == join_stack);
 146:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 149:	74 20                	je     16b <main+0x16b>
 14b:	6a 2d                	push   $0x2d
 14d:	68 e8 0a 00 00       	push   $0xae8
 152:	68 f1 0a 00 00       	push   $0xaf1
 157:	6a 01                	push   $0x1
 159:	e8 62 06 00 00       	call   7c0 <printf>
 15e:	83 c4 0c             	add    $0xc,%esp
 161:	68 77 0b 00 00       	push   $0xb77
 166:	e9 43 ff ff ff       	jmp    ae <main+0xae>
   assert(global == 2);
 16b:	83 3d 9c 0f 00 00 02 	cmpl   $0x2,0xf9c
 172:	74 20                	je     194 <main+0x194>
 174:	6a 2e                	push   $0x2e
 176:	68 e8 0a 00 00       	push   $0xae8
 17b:	68 f1 0a 00 00       	push   $0xaf1
 180:	6a 01                	push   $0x1
 182:	e8 39 06 00 00       	call   7c0 <printf>
 187:	83 c4 0c             	add    $0xc,%esp
 18a:	68 8b 0b 00 00       	push   $0xb8b
 18f:	e9 1a ff ff ff       	jmp    ae <main+0xae>

   printf(1, "TEST PASSED\n");
 194:	50                   	push   %eax
 195:	50                   	push   %eax
 196:	68 97 0b 00 00       	push   $0xb97
 19b:	6a 01                	push   $0x1
 19d:	e8 1e 06 00 00       	call   7c0 <printf>
   free(p);
 1a2:	89 1c 24             	mov    %ebx,(%esp)
 1a5:	e8 b6 07 00 00       	call   960 <free>
   exit();
 1aa:	e8 a5 04 00 00       	call   654 <exit>
 1af:	90                   	nop

000001b0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 1b6:	8b 45 0c             	mov    0xc(%ebp),%eax
 1b9:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 1bb:	8b 45 08             	mov    0x8(%ebp),%eax
 1be:	83 38 2a             	cmpl   $0x2a,(%eax)
 1c1:	75 75                	jne    238 <worker+0x88>
   assert(tmp2 == 24);
 1c3:	83 fa 18             	cmp    $0x18,%edx
 1c6:	75 2a                	jne    1f2 <worker+0x42>
   assert(global == 1);
 1c8:	83 3d 9c 0f 00 00 01 	cmpl   $0x1,0xf9c
 1cf:	0f 84 80 00 00 00    	je     255 <worker+0xa5>
 1d5:	6a 3b                	push   $0x3b
 1d7:	68 e8 0a 00 00       	push   $0xae8
 1dc:	68 f1 0a 00 00       	push   $0xaf1
 1e1:	6a 01                	push   $0x1
 1e3:	e8 d8 05 00 00       	call   7c0 <printf>
 1e8:	83 c4 0c             	add    $0xc,%esp
 1eb:	68 30 0b 00 00       	push   $0xb30
 1f0:	eb 1b                	jmp    20d <worker+0x5d>
   assert(tmp2 == 24);
 1f2:	6a 3a                	push   $0x3a
 1f4:	68 e8 0a 00 00       	push   $0xae8
 1f9:	68 f1 0a 00 00       	push   $0xaf1
 1fe:	6a 01                	push   $0x1
 200:	e8 bb 05 00 00       	call   7c0 <printf>
 205:	83 c4 0c             	add    $0xc,%esp
 208:	68 25 0b 00 00       	push   $0xb25
 20d:	68 04 0b 00 00       	push   $0xb04
 212:	6a 01                	push   $0x1
 214:	e8 a7 05 00 00       	call   7c0 <printf>
 219:	58                   	pop    %eax
 21a:	5a                   	pop    %edx
 21b:	68 18 0b 00 00       	push   $0xb18
 220:	6a 01                	push   $0x1
 222:	e8 99 05 00 00       	call   7c0 <printf>
 227:	59                   	pop    %ecx
 228:	ff 35 a0 0f 00 00    	push   0xfa0
 22e:	e8 51 04 00 00       	call   684 <kill>
 233:	e8 1c 04 00 00       	call   654 <exit>
   assert(tmp1 == 42);
 238:	6a 39                	push   $0x39
 23a:	68 e8 0a 00 00       	push   $0xae8
 23f:	68 f1 0a 00 00       	push   $0xaf1
 244:	6a 01                	push   $0x1
 246:	e8 75 05 00 00       	call   7c0 <printf>
 24b:	83 c4 0c             	add    $0xc,%esp
 24e:	68 f9 0a 00 00       	push   $0xaf9
 253:	eb b8                	jmp    20d <worker+0x5d>
   global++;
 255:	c7 05 9c 0f 00 00 02 	movl   $0x2,0xf9c
 25c:	00 00 00 
   exit();
 25f:	e8 f0 03 00 00       	call   654 <exit>
 264:	66 90                	xchg   %ax,%ax
 266:	66 90                	xchg   %ax,%ax
 268:	66 90                	xchg   %ax,%ax
 26a:	66 90                	xchg   %ax,%ax
 26c:	66 90                	xchg   %ax,%ax
 26e:	66 90                	xchg   %ax,%ax

00000270 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 270:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 271:	31 c0                	xor    %eax,%eax
{
 273:	89 e5                	mov    %esp,%ebp
 275:	53                   	push   %ebx
 276:	8b 4d 08             	mov    0x8(%ebp),%ecx
 279:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 27c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 280:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 284:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 287:	83 c0 01             	add    $0x1,%eax
 28a:	84 d2                	test   %dl,%dl
 28c:	75 f2                	jne    280 <strcpy+0x10>
    ;
  return os;
}
 28e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 291:	89 c8                	mov    %ecx,%eax
 293:	c9                   	leave  
 294:	c3                   	ret    
 295:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	53                   	push   %ebx
 2a4:	8b 55 08             	mov    0x8(%ebp),%edx
 2a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2aa:	0f b6 02             	movzbl (%edx),%eax
 2ad:	84 c0                	test   %al,%al
 2af:	75 17                	jne    2c8 <strcmp+0x28>
 2b1:	eb 3a                	jmp    2ed <strcmp+0x4d>
 2b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2b7:	90                   	nop
 2b8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 2bc:	83 c2 01             	add    $0x1,%edx
 2bf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 2c2:	84 c0                	test   %al,%al
 2c4:	74 1a                	je     2e0 <strcmp+0x40>
    p++, q++;
 2c6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 2c8:	0f b6 19             	movzbl (%ecx),%ebx
 2cb:	38 c3                	cmp    %al,%bl
 2cd:	74 e9                	je     2b8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 2cf:	29 d8                	sub    %ebx,%eax
}
 2d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2d4:	c9                   	leave  
 2d5:	c3                   	ret    
 2d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 2e0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2e4:	31 c0                	xor    %eax,%eax
 2e6:	29 d8                	sub    %ebx,%eax
}
 2e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2eb:	c9                   	leave  
 2ec:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 2ed:	0f b6 19             	movzbl (%ecx),%ebx
 2f0:	31 c0                	xor    %eax,%eax
 2f2:	eb db                	jmp    2cf <strcmp+0x2f>
 2f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2ff:	90                   	nop

00000300 <strlen>:

uint
strlen(const char *s)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 306:	80 3a 00             	cmpb   $0x0,(%edx)
 309:	74 15                	je     320 <strlen+0x20>
 30b:	31 c0                	xor    %eax,%eax
 30d:	8d 76 00             	lea    0x0(%esi),%esi
 310:	83 c0 01             	add    $0x1,%eax
 313:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 317:	89 c1                	mov    %eax,%ecx
 319:	75 f5                	jne    310 <strlen+0x10>
    ;
  return n;
}
 31b:	89 c8                	mov    %ecx,%eax
 31d:	5d                   	pop    %ebp
 31e:	c3                   	ret    
 31f:	90                   	nop
  for(n = 0; s[n]; n++)
 320:	31 c9                	xor    %ecx,%ecx
}
 322:	5d                   	pop    %ebp
 323:	89 c8                	mov    %ecx,%eax
 325:	c3                   	ret    
 326:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32d:	8d 76 00             	lea    0x0(%esi),%esi

00000330 <memset>:

void*
memset(void *dst, int c, uint n)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	57                   	push   %edi
 334:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 337:	8b 4d 10             	mov    0x10(%ebp),%ecx
 33a:	8b 45 0c             	mov    0xc(%ebp),%eax
 33d:	89 d7                	mov    %edx,%edi
 33f:	fc                   	cld    
 340:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 342:	8b 7d fc             	mov    -0x4(%ebp),%edi
 345:	89 d0                	mov    %edx,%eax
 347:	c9                   	leave  
 348:	c3                   	ret    
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000350 <strchr>:

char*
strchr(const char *s, char c)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	8b 45 08             	mov    0x8(%ebp),%eax
 356:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 35a:	0f b6 10             	movzbl (%eax),%edx
 35d:	84 d2                	test   %dl,%dl
 35f:	75 12                	jne    373 <strchr+0x23>
 361:	eb 1d                	jmp    380 <strchr+0x30>
 363:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 367:	90                   	nop
 368:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 36c:	83 c0 01             	add    $0x1,%eax
 36f:	84 d2                	test   %dl,%dl
 371:	74 0d                	je     380 <strchr+0x30>
    if(*s == c)
 373:	38 d1                	cmp    %dl,%cl
 375:	75 f1                	jne    368 <strchr+0x18>
      return (char*)s;
  return 0;
}
 377:	5d                   	pop    %ebp
 378:	c3                   	ret    
 379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 380:	31 c0                	xor    %eax,%eax
}
 382:	5d                   	pop    %ebp
 383:	c3                   	ret    
 384:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop

00000390 <gets>:

char*
gets(char *buf, int max)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	57                   	push   %edi
 394:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 395:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 398:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 399:	31 db                	xor    %ebx,%ebx
{
 39b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 39e:	eb 27                	jmp    3c7 <gets+0x37>
    cc = read(0, &c, 1);
 3a0:	83 ec 04             	sub    $0x4,%esp
 3a3:	6a 01                	push   $0x1
 3a5:	57                   	push   %edi
 3a6:	6a 00                	push   $0x0
 3a8:	e8 bf 02 00 00       	call   66c <read>
    if(cc < 1)
 3ad:	83 c4 10             	add    $0x10,%esp
 3b0:	85 c0                	test   %eax,%eax
 3b2:	7e 1d                	jle    3d1 <gets+0x41>
      break;
    buf[i++] = c;
 3b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3b8:	8b 55 08             	mov    0x8(%ebp),%edx
 3bb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 3bf:	3c 0a                	cmp    $0xa,%al
 3c1:	74 1d                	je     3e0 <gets+0x50>
 3c3:	3c 0d                	cmp    $0xd,%al
 3c5:	74 19                	je     3e0 <gets+0x50>
  for(i=0; i+1 < max; ){
 3c7:	89 de                	mov    %ebx,%esi
 3c9:	83 c3 01             	add    $0x1,%ebx
 3cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3cf:	7c cf                	jl     3a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 3d1:	8b 45 08             	mov    0x8(%ebp),%eax
 3d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 3d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3db:	5b                   	pop    %ebx
 3dc:	5e                   	pop    %esi
 3dd:	5f                   	pop    %edi
 3de:	5d                   	pop    %ebp
 3df:	c3                   	ret    
  buf[i] = '\0';
 3e0:	8b 45 08             	mov    0x8(%ebp),%eax
 3e3:	89 de                	mov    %ebx,%esi
 3e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 3e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3ec:	5b                   	pop    %ebx
 3ed:	5e                   	pop    %esi
 3ee:	5f                   	pop    %edi
 3ef:	5d                   	pop    %ebp
 3f0:	c3                   	ret    
 3f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <stat>:

int
stat(const char *n, struct stat *st)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	56                   	push   %esi
 404:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 405:	83 ec 08             	sub    $0x8,%esp
 408:	6a 00                	push   $0x0
 40a:	ff 75 08             	push   0x8(%ebp)
 40d:	e8 82 02 00 00       	call   694 <open>
  if(fd < 0)
 412:	83 c4 10             	add    $0x10,%esp
 415:	85 c0                	test   %eax,%eax
 417:	78 27                	js     440 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 419:	83 ec 08             	sub    $0x8,%esp
 41c:	ff 75 0c             	push   0xc(%ebp)
 41f:	89 c3                	mov    %eax,%ebx
 421:	50                   	push   %eax
 422:	e8 85 02 00 00       	call   6ac <fstat>
  close(fd);
 427:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 42a:	89 c6                	mov    %eax,%esi
  close(fd);
 42c:	e8 4b 02 00 00       	call   67c <close>
  return r;
 431:	83 c4 10             	add    $0x10,%esp
}
 434:	8d 65 f8             	lea    -0x8(%ebp),%esp
 437:	89 f0                	mov    %esi,%eax
 439:	5b                   	pop    %ebx
 43a:	5e                   	pop    %esi
 43b:	5d                   	pop    %ebp
 43c:	c3                   	ret    
 43d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 440:	be ff ff ff ff       	mov    $0xffffffff,%esi
 445:	eb ed                	jmp    434 <stat+0x34>
 447:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44e:	66 90                	xchg   %ax,%ax

00000450 <atoi>:

int
atoi(const char *s)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	53                   	push   %ebx
 454:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 457:	0f be 02             	movsbl (%edx),%eax
 45a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 45d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 460:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 465:	77 1e                	ja     485 <atoi+0x35>
 467:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 470:	83 c2 01             	add    $0x1,%edx
 473:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 476:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 47a:	0f be 02             	movsbl (%edx),%eax
 47d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 480:	80 fb 09             	cmp    $0x9,%bl
 483:	76 eb                	jbe    470 <atoi+0x20>
  return n;
}
 485:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 488:	89 c8                	mov    %ecx,%eax
 48a:	c9                   	leave  
 48b:	c3                   	ret    
 48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	8b 45 10             	mov    0x10(%ebp),%eax
 497:	8b 55 08             	mov    0x8(%ebp),%edx
 49a:	56                   	push   %esi
 49b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 49e:	85 c0                	test   %eax,%eax
 4a0:	7e 13                	jle    4b5 <memmove+0x25>
 4a2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4a4:	89 d7                	mov    %edx,%edi
 4a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ad:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 4b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 4b1:	39 f8                	cmp    %edi,%eax
 4b3:	75 fb                	jne    4b0 <memmove+0x20>
  return vdst;
}
 4b5:	5e                   	pop    %esi
 4b6:	89 d0                	mov    %edx,%eax
 4b8:	5f                   	pop    %edi
 4b9:	5d                   	pop    %ebp
 4ba:	c3                   	ret    
 4bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop

000004c0 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 4c0:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 4c1:	b8 01 00 00 00       	mov    $0x1,%eax
 4c6:	89 e5                	mov    %esp,%ebp
 4c8:	53                   	push   %ebx
 4c9:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 4cc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 4d3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 4da:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 4df:	8b 55 f4             	mov    -0xc(%ebp),%edx
 4e2:	39 c2                	cmp    %eax,%edx
 4e4:	74 24                	je     50a <thread_create+0x4a>
 4e6:	89 c3                	mov    %eax,%ebx
 4e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 4f0:	83 ec 04             	sub    $0x4,%esp
 4f3:	52                   	push   %edx
 4f4:	68 a4 0b 00 00       	push   $0xba4
 4f9:	6a 01                	push   $0x1
 4fb:	e8 c0 02 00 00       	call   7c0 <printf>
  while(lock->turn != myturn){
 500:	8b 55 f4             	mov    -0xc(%ebp),%edx
 503:	83 c4 10             	add    $0x10,%esp
 506:	39 d3                	cmp    %edx,%ebx
 508:	75 e6                	jne    4f0 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 50a:	83 ec 0c             	sub    $0xc,%esp
 50d:	68 00 20 00 00       	push   $0x2000
 512:	e8 d9 04 00 00       	call   9f0 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 517:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 51b:	83 c4 10             	add    $0x10,%esp
 51e:	89 c2                	mov    %eax,%edx
 520:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 526:	74 07                	je     52f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 528:	29 d0                	sub    %edx,%eax
 52a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 52f:	50                   	push   %eax
 530:	ff 75 10             	push   0x10(%ebp)
 533:	ff 75 0c             	push   0xc(%ebp)
 536:	ff 75 08             	push   0x8(%ebp)
 539:	e8 b6 01 00 00       	call   6f4 <clone>
}
 53e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 541:	c9                   	leave  
 542:	c3                   	ret    
 543:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000550 <thread_join>:
int thread_join(){
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	56                   	push   %esi
 554:	53                   	push   %ebx
 555:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 558:	6a 04                	push   $0x4
 55a:	e8 91 04 00 00       	call   9f0 <malloc>
 55f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 562:	8d 45 ec             	lea    -0x14(%ebp),%eax
 565:	89 04 24             	mov    %eax,(%esp)
 568:	e8 8f 01 00 00       	call   6fc <join>
  lock->ticket = 0;
 56d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 574:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 576:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 57d:	b8 01 00 00 00       	mov    $0x1,%eax
 582:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 587:	8b 55 f4             	mov    -0xc(%ebp),%edx
 58a:	83 c4 10             	add    $0x10,%esp
 58d:	39 c2                	cmp    %eax,%edx
 58f:	74 21                	je     5b2 <thread_join+0x62>
 591:	89 c3                	mov    %eax,%ebx
 593:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 597:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 598:	83 ec 04             	sub    $0x4,%esp
 59b:	52                   	push   %edx
 59c:	68 a4 0b 00 00       	push   $0xba4
 5a1:	6a 01                	push   $0x1
 5a3:	e8 18 02 00 00       	call   7c0 <printf>
  while(lock->turn != myturn){
 5a8:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5ab:	83 c4 10             	add    $0x10,%esp
 5ae:	39 d3                	cmp    %edx,%ebx
 5b0:	75 e6                	jne    598 <thread_join+0x48>
	free(stack);
 5b2:	83 ec 0c             	sub    $0xc,%esp
 5b5:	ff 75 ec             	push   -0x14(%ebp)
 5b8:	e8 a3 03 00 00       	call   960 <free>
}
 5bd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5c0:	89 f0                	mov    %esi,%eax
 5c2:	5b                   	pop    %ebx
 5c3:	5e                   	pop    %esi
 5c4:	5d                   	pop    %ebp
 5c5:	c3                   	ret    
 5c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5cd:	8d 76 00             	lea    0x0(%esi),%esi

000005d0 <lock_init>:
void lock_init(lock_t *lock) {
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 5d6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 5dc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 5e3:	5d                   	pop    %ebp
 5e4:	c3                   	ret    
 5e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005f0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 5f0:	55                   	push   %ebp
 5f1:	b8 01 00 00 00       	mov    $0x1,%eax
 5f6:	89 e5                	mov    %esp,%ebp
 5f8:	56                   	push   %esi
 5f9:	8b 75 08             	mov    0x8(%ebp),%esi
 5fc:	53                   	push   %ebx
 5fd:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 601:	8b 56 04             	mov    0x4(%esi),%edx
 604:	39 d0                	cmp    %edx,%eax
 606:	74 22                	je     62a <lock_acquire+0x3a>
 608:	89 c3                	mov    %eax,%ebx
 60a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 610:	83 ec 04             	sub    $0x4,%esp
 613:	52                   	push   %edx
 614:	68 a4 0b 00 00       	push   $0xba4
 619:	6a 01                	push   $0x1
 61b:	e8 a0 01 00 00       	call   7c0 <printf>
  while(lock->turn != myturn){
 620:	8b 56 04             	mov    0x4(%esi),%edx
 623:	83 c4 10             	add    $0x10,%esp
 626:	39 da                	cmp    %ebx,%edx
 628:	75 e6                	jne    610 <lock_acquire+0x20>
}
 62a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 62d:	5b                   	pop    %ebx
 62e:	5e                   	pop    %esi
 62f:	5d                   	pop    %ebp
 630:	c3                   	ret    
 631:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 638:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63f:	90                   	nop

00000640 <lock_release>:
void lock_release(lock_t *lock){
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 646:	83 40 04 01          	addl   $0x1,0x4(%eax)
 64a:	5d                   	pop    %ebp
 64b:	c3                   	ret    

0000064c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 64c:	b8 01 00 00 00       	mov    $0x1,%eax
 651:	cd 40                	int    $0x40
 653:	c3                   	ret    

00000654 <exit>:
SYSCALL(exit)
 654:	b8 02 00 00 00       	mov    $0x2,%eax
 659:	cd 40                	int    $0x40
 65b:	c3                   	ret    

0000065c <wait>:
SYSCALL(wait)
 65c:	b8 03 00 00 00       	mov    $0x3,%eax
 661:	cd 40                	int    $0x40
 663:	c3                   	ret    

00000664 <pipe>:
SYSCALL(pipe)
 664:	b8 04 00 00 00       	mov    $0x4,%eax
 669:	cd 40                	int    $0x40
 66b:	c3                   	ret    

0000066c <read>:
SYSCALL(read)
 66c:	b8 05 00 00 00       	mov    $0x5,%eax
 671:	cd 40                	int    $0x40
 673:	c3                   	ret    

00000674 <write>:
SYSCALL(write)
 674:	b8 10 00 00 00       	mov    $0x10,%eax
 679:	cd 40                	int    $0x40
 67b:	c3                   	ret    

0000067c <close>:
SYSCALL(close)
 67c:	b8 15 00 00 00       	mov    $0x15,%eax
 681:	cd 40                	int    $0x40
 683:	c3                   	ret    

00000684 <kill>:
SYSCALL(kill)
 684:	b8 06 00 00 00       	mov    $0x6,%eax
 689:	cd 40                	int    $0x40
 68b:	c3                   	ret    

0000068c <exec>:
SYSCALL(exec)
 68c:	b8 07 00 00 00       	mov    $0x7,%eax
 691:	cd 40                	int    $0x40
 693:	c3                   	ret    

00000694 <open>:
SYSCALL(open)
 694:	b8 0f 00 00 00       	mov    $0xf,%eax
 699:	cd 40                	int    $0x40
 69b:	c3                   	ret    

0000069c <mknod>:
SYSCALL(mknod)
 69c:	b8 11 00 00 00       	mov    $0x11,%eax
 6a1:	cd 40                	int    $0x40
 6a3:	c3                   	ret    

000006a4 <unlink>:
SYSCALL(unlink)
 6a4:	b8 12 00 00 00       	mov    $0x12,%eax
 6a9:	cd 40                	int    $0x40
 6ab:	c3                   	ret    

000006ac <fstat>:
SYSCALL(fstat)
 6ac:	b8 08 00 00 00       	mov    $0x8,%eax
 6b1:	cd 40                	int    $0x40
 6b3:	c3                   	ret    

000006b4 <link>:
SYSCALL(link)
 6b4:	b8 13 00 00 00       	mov    $0x13,%eax
 6b9:	cd 40                	int    $0x40
 6bb:	c3                   	ret    

000006bc <mkdir>:
SYSCALL(mkdir)
 6bc:	b8 14 00 00 00       	mov    $0x14,%eax
 6c1:	cd 40                	int    $0x40
 6c3:	c3                   	ret    

000006c4 <chdir>:
SYSCALL(chdir)
 6c4:	b8 09 00 00 00       	mov    $0x9,%eax
 6c9:	cd 40                	int    $0x40
 6cb:	c3                   	ret    

000006cc <dup>:
SYSCALL(dup)
 6cc:	b8 0a 00 00 00       	mov    $0xa,%eax
 6d1:	cd 40                	int    $0x40
 6d3:	c3                   	ret    

000006d4 <getpid>:
SYSCALL(getpid)
 6d4:	b8 0b 00 00 00       	mov    $0xb,%eax
 6d9:	cd 40                	int    $0x40
 6db:	c3                   	ret    

000006dc <sbrk>:
SYSCALL(sbrk)
 6dc:	b8 0c 00 00 00       	mov    $0xc,%eax
 6e1:	cd 40                	int    $0x40
 6e3:	c3                   	ret    

000006e4 <sleep>:
SYSCALL(sleep)
 6e4:	b8 0d 00 00 00       	mov    $0xd,%eax
 6e9:	cd 40                	int    $0x40
 6eb:	c3                   	ret    

000006ec <uptime>:
SYSCALL(uptime)
 6ec:	b8 0e 00 00 00       	mov    $0xe,%eax
 6f1:	cd 40                	int    $0x40
 6f3:	c3                   	ret    

000006f4 <clone>:
SYSCALL(clone)
 6f4:	b8 16 00 00 00       	mov    $0x16,%eax
 6f9:	cd 40                	int    $0x40
 6fb:	c3                   	ret    

000006fc <join>:
SYSCALL(join)
 6fc:	b8 17 00 00 00       	mov    $0x17,%eax
 701:	cd 40                	int    $0x40
 703:	c3                   	ret    
 704:	66 90                	xchg   %ax,%ax
 706:	66 90                	xchg   %ax,%ax
 708:	66 90                	xchg   %ax,%ax
 70a:	66 90                	xchg   %ax,%ax
 70c:	66 90                	xchg   %ax,%ax
 70e:	66 90                	xchg   %ax,%ax

00000710 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	57                   	push   %edi
 714:	56                   	push   %esi
 715:	53                   	push   %ebx
 716:	83 ec 3c             	sub    $0x3c,%esp
 719:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 71c:	89 d1                	mov    %edx,%ecx
{
 71e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 721:	85 d2                	test   %edx,%edx
 723:	0f 89 7f 00 00 00    	jns    7a8 <printint+0x98>
 729:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 72d:	74 79                	je     7a8 <printint+0x98>
    neg = 1;
 72f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 736:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 738:	31 db                	xor    %ebx,%ebx
 73a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 73d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 740:	89 c8                	mov    %ecx,%eax
 742:	31 d2                	xor    %edx,%edx
 744:	89 cf                	mov    %ecx,%edi
 746:	f7 75 c4             	divl   -0x3c(%ebp)
 749:	0f b6 92 18 0c 00 00 	movzbl 0xc18(%edx),%edx
 750:	89 45 c0             	mov    %eax,-0x40(%ebp)
 753:	89 d8                	mov    %ebx,%eax
 755:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 758:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 75b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 75e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 761:	76 dd                	jbe    740 <printint+0x30>
  if(neg)
 763:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 766:	85 c9                	test   %ecx,%ecx
 768:	74 0c                	je     776 <printint+0x66>
    buf[i++] = '-';
 76a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 76f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 771:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 776:	8b 7d b8             	mov    -0x48(%ebp),%edi
 779:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 77d:	eb 07                	jmp    786 <printint+0x76>
 77f:	90                   	nop
    putc(fd, buf[i]);
 780:	0f b6 13             	movzbl (%ebx),%edx
 783:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 786:	83 ec 04             	sub    $0x4,%esp
 789:	88 55 d7             	mov    %dl,-0x29(%ebp)
 78c:	6a 01                	push   $0x1
 78e:	56                   	push   %esi
 78f:	57                   	push   %edi
 790:	e8 df fe ff ff       	call   674 <write>
  while(--i >= 0)
 795:	83 c4 10             	add    $0x10,%esp
 798:	39 de                	cmp    %ebx,%esi
 79a:	75 e4                	jne    780 <printint+0x70>
}
 79c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 79f:	5b                   	pop    %ebx
 7a0:	5e                   	pop    %esi
 7a1:	5f                   	pop    %edi
 7a2:	5d                   	pop    %ebp
 7a3:	c3                   	ret    
 7a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7af:	eb 87                	jmp    738 <printint+0x28>
 7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bf:	90                   	nop

000007c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7c0:	55                   	push   %ebp
 7c1:	89 e5                	mov    %esp,%ebp
 7c3:	57                   	push   %edi
 7c4:	56                   	push   %esi
 7c5:	53                   	push   %ebx
 7c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7cf:	0f b6 13             	movzbl (%ebx),%edx
 7d2:	84 d2                	test   %dl,%dl
 7d4:	74 6a                	je     840 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7d6:	8d 45 10             	lea    0x10(%ebp),%eax
 7d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7e4:	eb 36                	jmp    81c <printf+0x5c>
 7e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
 7f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7f8:	83 f8 25             	cmp    $0x25,%eax
 7fb:	74 15                	je     812 <printf+0x52>
  write(fd, &c, 1);
 7fd:	83 ec 04             	sub    $0x4,%esp
 800:	88 55 e7             	mov    %dl,-0x19(%ebp)
 803:	6a 01                	push   $0x1
 805:	57                   	push   %edi
 806:	56                   	push   %esi
 807:	e8 68 fe ff ff       	call   674 <write>
 80c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 80f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 812:	0f b6 13             	movzbl (%ebx),%edx
 815:	83 c3 01             	add    $0x1,%ebx
 818:	84 d2                	test   %dl,%dl
 81a:	74 24                	je     840 <printf+0x80>
    c = fmt[i] & 0xff;
 81c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 81f:	85 c9                	test   %ecx,%ecx
 821:	74 cd                	je     7f0 <printf+0x30>
      }
    } else if(state == '%'){
 823:	83 f9 25             	cmp    $0x25,%ecx
 826:	75 ea                	jne    812 <printf+0x52>
      if(c == 'd'){
 828:	83 f8 25             	cmp    $0x25,%eax
 82b:	0f 84 07 01 00 00    	je     938 <printf+0x178>
 831:	83 e8 63             	sub    $0x63,%eax
 834:	83 f8 15             	cmp    $0x15,%eax
 837:	77 17                	ja     850 <printf+0x90>
 839:	ff 24 85 c0 0b 00 00 	jmp    *0xbc0(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 840:	8d 65 f4             	lea    -0xc(%ebp),%esp
 843:	5b                   	pop    %ebx
 844:	5e                   	pop    %esi
 845:	5f                   	pop    %edi
 846:	5d                   	pop    %ebp
 847:	c3                   	ret    
 848:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84f:	90                   	nop
  write(fd, &c, 1);
 850:	83 ec 04             	sub    $0x4,%esp
 853:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 856:	6a 01                	push   $0x1
 858:	57                   	push   %edi
 859:	56                   	push   %esi
 85a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 85e:	e8 11 fe ff ff       	call   674 <write>
        putc(fd, c);
 863:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 867:	83 c4 0c             	add    $0xc,%esp
 86a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 86d:	6a 01                	push   $0x1
 86f:	57                   	push   %edi
 870:	56                   	push   %esi
 871:	e8 fe fd ff ff       	call   674 <write>
        putc(fd, c);
 876:	83 c4 10             	add    $0x10,%esp
      state = 0;
 879:	31 c9                	xor    %ecx,%ecx
 87b:	eb 95                	jmp    812 <printf+0x52>
 87d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 880:	83 ec 0c             	sub    $0xc,%esp
 883:	b9 10 00 00 00       	mov    $0x10,%ecx
 888:	6a 00                	push   $0x0
 88a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 88d:	8b 10                	mov    (%eax),%edx
 88f:	89 f0                	mov    %esi,%eax
 891:	e8 7a fe ff ff       	call   710 <printint>
        ap++;
 896:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 89a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 89d:	31 c9                	xor    %ecx,%ecx
 89f:	e9 6e ff ff ff       	jmp    812 <printf+0x52>
 8a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8ab:	8b 10                	mov    (%eax),%edx
        ap++;
 8ad:	83 c0 04             	add    $0x4,%eax
 8b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8b3:	85 d2                	test   %edx,%edx
 8b5:	0f 84 8d 00 00 00    	je     948 <printf+0x188>
        while(*s != 0){
 8bb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8be:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8c0:	84 c0                	test   %al,%al
 8c2:	0f 84 4a ff ff ff    	je     812 <printf+0x52>
 8c8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8cb:	89 d3                	mov    %edx,%ebx
 8cd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8d0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8d3:	83 c3 01             	add    $0x1,%ebx
 8d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8d9:	6a 01                	push   $0x1
 8db:	57                   	push   %edi
 8dc:	56                   	push   %esi
 8dd:	e8 92 fd ff ff       	call   674 <write>
        while(*s != 0){
 8e2:	0f b6 03             	movzbl (%ebx),%eax
 8e5:	83 c4 10             	add    $0x10,%esp
 8e8:	84 c0                	test   %al,%al
 8ea:	75 e4                	jne    8d0 <printf+0x110>
      state = 0;
 8ec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8ef:	31 c9                	xor    %ecx,%ecx
 8f1:	e9 1c ff ff ff       	jmp    812 <printf+0x52>
 8f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 900:	83 ec 0c             	sub    $0xc,%esp
 903:	b9 0a 00 00 00       	mov    $0xa,%ecx
 908:	6a 01                	push   $0x1
 90a:	e9 7b ff ff ff       	jmp    88a <printf+0xca>
 90f:	90                   	nop
        putc(fd, *ap);
 910:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 913:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 916:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 918:	6a 01                	push   $0x1
 91a:	57                   	push   %edi
 91b:	56                   	push   %esi
        putc(fd, *ap);
 91c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 91f:	e8 50 fd ff ff       	call   674 <write>
        ap++;
 924:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 928:	83 c4 10             	add    $0x10,%esp
      state = 0;
 92b:	31 c9                	xor    %ecx,%ecx
 92d:	e9 e0 fe ff ff       	jmp    812 <printf+0x52>
 932:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 938:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 93b:	83 ec 04             	sub    $0x4,%esp
 93e:	e9 2a ff ff ff       	jmp    86d <printf+0xad>
 943:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 947:	90                   	nop
          s = "(null)";
 948:	ba b8 0b 00 00       	mov    $0xbb8,%edx
        while(*s != 0){
 94d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 950:	b8 28 00 00 00       	mov    $0x28,%eax
 955:	89 d3                	mov    %edx,%ebx
 957:	e9 74 ff ff ff       	jmp    8d0 <printf+0x110>
 95c:	66 90                	xchg   %ax,%ax
 95e:	66 90                	xchg   %ax,%ax

00000960 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 960:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 961:	a1 a4 0f 00 00       	mov    0xfa4,%eax
{
 966:	89 e5                	mov    %esp,%ebp
 968:	57                   	push   %edi
 969:	56                   	push   %esi
 96a:	53                   	push   %ebx
 96b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 96e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 971:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 978:	89 c2                	mov    %eax,%edx
 97a:	8b 00                	mov    (%eax),%eax
 97c:	39 ca                	cmp    %ecx,%edx
 97e:	73 30                	jae    9b0 <free+0x50>
 980:	39 c1                	cmp    %eax,%ecx
 982:	72 04                	jb     988 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 984:	39 c2                	cmp    %eax,%edx
 986:	72 f0                	jb     978 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 988:	8b 73 fc             	mov    -0x4(%ebx),%esi
 98b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 98e:	39 f8                	cmp    %edi,%eax
 990:	74 30                	je     9c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 992:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 995:	8b 42 04             	mov    0x4(%edx),%eax
 998:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 99b:	39 f1                	cmp    %esi,%ecx
 99d:	74 3a                	je     9d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 99f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9a1:	5b                   	pop    %ebx
  freep = p;
 9a2:	89 15 a4 0f 00 00    	mov    %edx,0xfa4
}
 9a8:	5e                   	pop    %esi
 9a9:	5f                   	pop    %edi
 9aa:	5d                   	pop    %ebp
 9ab:	c3                   	ret    
 9ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9b0:	39 c2                	cmp    %eax,%edx
 9b2:	72 c4                	jb     978 <free+0x18>
 9b4:	39 c1                	cmp    %eax,%ecx
 9b6:	73 c0                	jae    978 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9be:	39 f8                	cmp    %edi,%eax
 9c0:	75 d0                	jne    992 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9c2:	03 70 04             	add    0x4(%eax),%esi
 9c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9c8:	8b 02                	mov    (%edx),%eax
 9ca:	8b 00                	mov    (%eax),%eax
 9cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9cf:	8b 42 04             	mov    0x4(%edx),%eax
 9d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9d5:	39 f1                	cmp    %esi,%ecx
 9d7:	75 c6                	jne    99f <free+0x3f>
    p->s.size += bp->s.size;
 9d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9dc:	89 15 a4 0f 00 00    	mov    %edx,0xfa4
    p->s.size += bp->s.size;
 9e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9e8:	89 0a                	mov    %ecx,(%edx)
}
 9ea:	5b                   	pop    %ebx
 9eb:	5e                   	pop    %esi
 9ec:	5f                   	pop    %edi
 9ed:	5d                   	pop    %ebp
 9ee:	c3                   	ret    
 9ef:	90                   	nop

000009f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9f0:	55                   	push   %ebp
 9f1:	89 e5                	mov    %esp,%ebp
 9f3:	57                   	push   %edi
 9f4:	56                   	push   %esi
 9f5:	53                   	push   %ebx
 9f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9fc:	8b 3d a4 0f 00 00    	mov    0xfa4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a02:	8d 70 07             	lea    0x7(%eax),%esi
 a05:	c1 ee 03             	shr    $0x3,%esi
 a08:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a0b:	85 ff                	test   %edi,%edi
 a0d:	0f 84 9d 00 00 00    	je     ab0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a13:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a15:	8b 4a 04             	mov    0x4(%edx),%ecx
 a18:	39 f1                	cmp    %esi,%ecx
 a1a:	73 6a                	jae    a86 <malloc+0x96>
 a1c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a21:	39 de                	cmp    %ebx,%esi
 a23:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a26:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a2d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a30:	eb 17                	jmp    a49 <malloc+0x59>
 a32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a38:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a3a:	8b 48 04             	mov    0x4(%eax),%ecx
 a3d:	39 f1                	cmp    %esi,%ecx
 a3f:	73 4f                	jae    a90 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a41:	8b 3d a4 0f 00 00    	mov    0xfa4,%edi
 a47:	89 c2                	mov    %eax,%edx
 a49:	39 d7                	cmp    %edx,%edi
 a4b:	75 eb                	jne    a38 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a4d:	83 ec 0c             	sub    $0xc,%esp
 a50:	ff 75 e4             	push   -0x1c(%ebp)
 a53:	e8 84 fc ff ff       	call   6dc <sbrk>
  if(p == (char*)-1)
 a58:	83 c4 10             	add    $0x10,%esp
 a5b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a5e:	74 1c                	je     a7c <malloc+0x8c>
  hp->s.size = nu;
 a60:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a63:	83 ec 0c             	sub    $0xc,%esp
 a66:	83 c0 08             	add    $0x8,%eax
 a69:	50                   	push   %eax
 a6a:	e8 f1 fe ff ff       	call   960 <free>
  return freep;
 a6f:	8b 15 a4 0f 00 00    	mov    0xfa4,%edx
      if((p = morecore(nunits)) == 0)
 a75:	83 c4 10             	add    $0x10,%esp
 a78:	85 d2                	test   %edx,%edx
 a7a:	75 bc                	jne    a38 <malloc+0x48>
        return 0;
  }
}
 a7c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a7f:	31 c0                	xor    %eax,%eax
}
 a81:	5b                   	pop    %ebx
 a82:	5e                   	pop    %esi
 a83:	5f                   	pop    %edi
 a84:	5d                   	pop    %ebp
 a85:	c3                   	ret    
    if(p->s.size >= nunits){
 a86:	89 d0                	mov    %edx,%eax
 a88:	89 fa                	mov    %edi,%edx
 a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a90:	39 ce                	cmp    %ecx,%esi
 a92:	74 4c                	je     ae0 <malloc+0xf0>
        p->s.size -= nunits;
 a94:	29 f1                	sub    %esi,%ecx
 a96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a9c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a9f:	89 15 a4 0f 00 00    	mov    %edx,0xfa4
}
 aa5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 aa8:	83 c0 08             	add    $0x8,%eax
}
 aab:	5b                   	pop    %ebx
 aac:	5e                   	pop    %esi
 aad:	5f                   	pop    %edi
 aae:	5d                   	pop    %ebp
 aaf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 ab0:	c7 05 a4 0f 00 00 a8 	movl   $0xfa8,0xfa4
 ab7:	0f 00 00 
    base.s.size = 0;
 aba:	bf a8 0f 00 00       	mov    $0xfa8,%edi
    base.s.ptr = freep = prevp = &base;
 abf:	c7 05 a8 0f 00 00 a8 	movl   $0xfa8,0xfa8
 ac6:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 acb:	c7 05 ac 0f 00 00 00 	movl   $0x0,0xfac
 ad2:	00 00 00 
    if(p->s.size >= nunits){
 ad5:	e9 42 ff ff ff       	jmp    a1c <malloc+0x2c>
 ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 ae0:	8b 08                	mov    (%eax),%ecx
 ae2:	89 0a                	mov    %ecx,(%edx)
 ae4:	eb b9                	jmp    a9f <malloc+0xaf>
