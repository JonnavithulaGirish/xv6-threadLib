
_test_6:     file format elf32-i386


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
  11:	83 ec 28             	sub    $0x28,%esp
   ppid = getpid();
  14:	e8 db 06 00 00       	call   6f4 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 e8 0f 00 00       	mov    %eax,0xfe8
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 e5 09 00 00       	call   a10 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 d5 00 00 00    	je     10b <main+0x10b>
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
  4b:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  4e:	57                   	push   %edi
  4f:	50                   	push   %eax
  50:	8d 45 e0             	lea    -0x20(%ebp),%eax
  53:	50                   	push   %eax
  54:	68 d0 01 00 00       	push   $0x1d0
   int arg1 = 42, arg2 = 24;
  59:	c7 45 e0 2a 00 00 00 	movl   $0x2a,-0x20(%ebp)
  60:	c7 45 e4 18 00 00 00 	movl   $0x18,-0x1c(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  67:	e8 a8 06 00 00       	call   714 <clone>
   assert(clone_pid > 0);
  6c:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  6f:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  71:	85 c0                	test   %eax,%eax
  73:	7e 79                	jle    ee <main+0xee>

   sbrk(PGSIZE);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	68 00 10 00 00       	push   $0x1000
  7d:	e8 7a 06 00 00       	call   6fc <sbrk>
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
  82:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  89:	e8 6e 06 00 00       	call   6fc <sbrk>
  8e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
   assert(join((void**)((uint)join_stack + 2)) == -1);
  91:	83 e8 02             	sub    $0x2,%eax
  94:	89 04 24             	mov    %eax,(%esp)
  97:	e8 80 06 00 00       	call   71c <join>
  9c:	83 c4 10             	add    $0x10,%esp
  9f:	83 c0 01             	add    $0x1,%eax
  a2:	0f 84 80 00 00 00    	je     128 <main+0x128>
  a8:	6a 29                	push   $0x29
  aa:	68 08 0b 00 00       	push   $0xb08
  af:	68 11 0b 00 00       	push   $0xb11
  b4:	6a 01                	push   $0x1
  b6:	e8 25 07 00 00       	call   7e0 <printf>
  bb:	83 c4 0c             	add    $0xc,%esp
  be:	68 c0 0b 00 00       	push   $0xbc0
   assert(clone_pid > 0);
  c3:	68 24 0b 00 00       	push   $0xb24
  c8:	6a 01                	push   $0x1
  ca:	e8 11 07 00 00       	call   7e0 <printf>
  cf:	5a                   	pop    %edx
  d0:	59                   	pop    %ecx
  d1:	68 38 0b 00 00       	push   $0xb38
  d6:	6a 01                	push   $0x1
  d8:	e8 03 07 00 00       	call   7e0 <printf>
  dd:	5b                   	pop    %ebx
  de:	ff 35 e8 0f 00 00    	push   0xfe8
  e4:	e8 bb 05 00 00       	call   6a4 <kill>
  e9:	e8 86 05 00 00       	call   674 <exit>
  ee:	6a 25                	push   $0x25
  f0:	68 08 0b 00 00       	push   $0xb08
  f5:	68 11 0b 00 00       	push   $0xb11
  fa:	6a 01                	push   $0x1
  fc:	e8 df 06 00 00       	call   7e0 <printf>
 101:	83 c4 0c             	add    $0xc,%esp
 104:	68 66 0b 00 00       	push   $0xb66
 109:	eb b8                	jmp    c3 <main+0xc3>
   assert(p != NULL);
 10b:	6a 1d                	push   $0x1d
 10d:	68 08 0b 00 00       	push   $0xb08
 112:	68 11 0b 00 00       	push   $0xb11
 117:	6a 01                	push   $0x1
 119:	e8 c2 06 00 00       	call   7e0 <printf>
 11e:	83 c4 0c             	add    $0xc,%esp
 121:	68 5c 0b 00 00       	push   $0xb5c
 126:	eb 9b                	jmp    c3 <main+0xc3>
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
 128:	8b 45 d4             	mov    -0x2c(%ebp),%eax
   assert(join(join_stack) == clone_pid);
 12b:	83 ec 0c             	sub    $0xc,%esp
   void **join_stack = (void**) ((uint)sbrk(0) - 4);
 12e:	83 e8 04             	sub    $0x4,%eax
   assert(join(join_stack) == clone_pid);
 131:	50                   	push   %eax
 132:	e8 e5 05 00 00       	call   71c <join>
 137:	83 c4 10             	add    $0x10,%esp
 13a:	39 f0                	cmp    %esi,%eax
 13c:	74 20                	je     15e <main+0x15e>
 13e:	6a 2a                	push   $0x2a
 140:	68 08 0b 00 00       	push   $0xb08
 145:	68 11 0b 00 00       	push   $0xb11
 14a:	6a 01                	push   $0x1
 14c:	e8 8f 06 00 00       	call   7e0 <printf>
 151:	83 c4 0c             	add    $0xc,%esp
 154:	68 74 0b 00 00       	push   $0xb74
 159:	e9 65 ff ff ff       	jmp    c3 <main+0xc3>
   assert(stack == *join_stack);
 15e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 161:	39 78 fc             	cmp    %edi,-0x4(%eax)
 164:	74 20                	je     186 <main+0x186>
 166:	6a 2b                	push   $0x2b
 168:	68 08 0b 00 00       	push   $0xb08
 16d:	68 11 0b 00 00       	push   $0xb11
 172:	6a 01                	push   $0x1
 174:	e8 67 06 00 00       	call   7e0 <printf>
 179:	83 c4 0c             	add    $0xc,%esp
 17c:	68 92 0b 00 00       	push   $0xb92
 181:	e9 3d ff ff ff       	jmp    c3 <main+0xc3>
   assert(global == 2);
 186:	83 3d e4 0f 00 00 02 	cmpl   $0x2,0xfe4
 18d:	74 20                	je     1af <main+0x1af>
 18f:	6a 2c                	push   $0x2c
 191:	68 08 0b 00 00       	push   $0xb08
 196:	68 11 0b 00 00       	push   $0xb11
 19b:	6a 01                	push   $0x1
 19d:	e8 3e 06 00 00       	call   7e0 <printf>
 1a2:	83 c4 0c             	add    $0xc,%esp
 1a5:	68 a7 0b 00 00       	push   $0xba7
 1aa:	e9 14 ff ff ff       	jmp    c3 <main+0xc3>

   printf(1, "TEST PASSED\n");
 1af:	50                   	push   %eax
 1b0:	50                   	push   %eax
 1b1:	68 b3 0b 00 00       	push   $0xbb3
 1b6:	6a 01                	push   $0x1
 1b8:	e8 23 06 00 00       	call   7e0 <printf>
   free(p);
 1bd:	89 1c 24             	mov    %ebx,(%esp)
 1c0:	e8 bb 07 00 00       	call   980 <free>
   exit();
 1c5:	e8 aa 04 00 00       	call   674 <exit>
 1ca:	66 90                	xchg   %ax,%ax
 1cc:	66 90                	xchg   %ax,%ax
 1ce:	66 90                	xchg   %ax,%ax

000001d0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 1d6:	8b 45 0c             	mov    0xc(%ebp),%eax
 1d9:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 1db:	8b 45 08             	mov    0x8(%ebp),%eax
 1de:	83 38 2a             	cmpl   $0x2a,(%eax)
 1e1:	75 75                	jne    258 <worker+0x88>
   assert(tmp2 == 24);
 1e3:	83 fa 18             	cmp    $0x18,%edx
 1e6:	75 2a                	jne    212 <worker+0x42>
   assert(global == 1);
 1e8:	83 3d e4 0f 00 00 01 	cmpl   $0x1,0xfe4
 1ef:	0f 84 80 00 00 00    	je     275 <worker+0xa5>
 1f5:	6a 39                	push   $0x39
 1f7:	68 08 0b 00 00       	push   $0xb08
 1fc:	68 11 0b 00 00       	push   $0xb11
 201:	6a 01                	push   $0x1
 203:	e8 d8 05 00 00       	call   7e0 <printf>
 208:	83 c4 0c             	add    $0xc,%esp
 20b:	68 50 0b 00 00       	push   $0xb50
 210:	eb 1b                	jmp    22d <worker+0x5d>
   assert(tmp2 == 24);
 212:	6a 38                	push   $0x38
 214:	68 08 0b 00 00       	push   $0xb08
 219:	68 11 0b 00 00       	push   $0xb11
 21e:	6a 01                	push   $0x1
 220:	e8 bb 05 00 00       	call   7e0 <printf>
 225:	83 c4 0c             	add    $0xc,%esp
 228:	68 45 0b 00 00       	push   $0xb45
 22d:	68 24 0b 00 00       	push   $0xb24
 232:	6a 01                	push   $0x1
 234:	e8 a7 05 00 00       	call   7e0 <printf>
 239:	58                   	pop    %eax
 23a:	5a                   	pop    %edx
 23b:	68 38 0b 00 00       	push   $0xb38
 240:	6a 01                	push   $0x1
 242:	e8 99 05 00 00       	call   7e0 <printf>
 247:	59                   	pop    %ecx
 248:	ff 35 e8 0f 00 00    	push   0xfe8
 24e:	e8 51 04 00 00       	call   6a4 <kill>
 253:	e8 1c 04 00 00       	call   674 <exit>
   assert(tmp1 == 42);
 258:	6a 37                	push   $0x37
 25a:	68 08 0b 00 00       	push   $0xb08
 25f:	68 11 0b 00 00       	push   $0xb11
 264:	6a 01                	push   $0x1
 266:	e8 75 05 00 00       	call   7e0 <printf>
 26b:	83 c4 0c             	add    $0xc,%esp
 26e:	68 19 0b 00 00       	push   $0xb19
 273:	eb b8                	jmp    22d <worker+0x5d>
   global++;
 275:	c7 05 e4 0f 00 00 02 	movl   $0x2,0xfe4
 27c:	00 00 00 
   exit();
 27f:	e8 f0 03 00 00       	call   674 <exit>
 284:	66 90                	xchg   %ax,%ax
 286:	66 90                	xchg   %ax,%ax
 288:	66 90                	xchg   %ax,%ax
 28a:	66 90                	xchg   %ax,%ax
 28c:	66 90                	xchg   %ax,%ax
 28e:	66 90                	xchg   %ax,%ax

00000290 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 290:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 291:	31 c0                	xor    %eax,%eax
{
 293:	89 e5                	mov    %esp,%ebp
 295:	53                   	push   %ebx
 296:	8b 4d 08             	mov    0x8(%ebp),%ecx
 299:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2a7:	83 c0 01             	add    $0x1,%eax
 2aa:	84 d2                	test   %dl,%dl
 2ac:	75 f2                	jne    2a0 <strcpy+0x10>
    ;
  return os;
}
 2ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2b1:	89 c8                	mov    %ecx,%eax
 2b3:	c9                   	leave  
 2b4:	c3                   	ret    
 2b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	53                   	push   %ebx
 2c4:	8b 55 08             	mov    0x8(%ebp),%edx
 2c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2ca:	0f b6 02             	movzbl (%edx),%eax
 2cd:	84 c0                	test   %al,%al
 2cf:	75 17                	jne    2e8 <strcmp+0x28>
 2d1:	eb 3a                	jmp    30d <strcmp+0x4d>
 2d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2d7:	90                   	nop
 2d8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 2dc:	83 c2 01             	add    $0x1,%edx
 2df:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 2e2:	84 c0                	test   %al,%al
 2e4:	74 1a                	je     300 <strcmp+0x40>
    p++, q++;
 2e6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 2e8:	0f b6 19             	movzbl (%ecx),%ebx
 2eb:	38 c3                	cmp    %al,%bl
 2ed:	74 e9                	je     2d8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 2ef:	29 d8                	sub    %ebx,%eax
}
 2f1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2f4:	c9                   	leave  
 2f5:	c3                   	ret    
 2f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 300:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 304:	31 c0                	xor    %eax,%eax
 306:	29 d8                	sub    %ebx,%eax
}
 308:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 30b:	c9                   	leave  
 30c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 30d:	0f b6 19             	movzbl (%ecx),%ebx
 310:	31 c0                	xor    %eax,%eax
 312:	eb db                	jmp    2ef <strcmp+0x2f>
 314:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 31f:	90                   	nop

00000320 <strlen>:

uint
strlen(const char *s)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 326:	80 3a 00             	cmpb   $0x0,(%edx)
 329:	74 15                	je     340 <strlen+0x20>
 32b:	31 c0                	xor    %eax,%eax
 32d:	8d 76 00             	lea    0x0(%esi),%esi
 330:	83 c0 01             	add    $0x1,%eax
 333:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 337:	89 c1                	mov    %eax,%ecx
 339:	75 f5                	jne    330 <strlen+0x10>
    ;
  return n;
}
 33b:	89 c8                	mov    %ecx,%eax
 33d:	5d                   	pop    %ebp
 33e:	c3                   	ret    
 33f:	90                   	nop
  for(n = 0; s[n]; n++)
 340:	31 c9                	xor    %ecx,%ecx
}
 342:	5d                   	pop    %ebp
 343:	89 c8                	mov    %ecx,%eax
 345:	c3                   	ret    
 346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34d:	8d 76 00             	lea    0x0(%esi),%esi

00000350 <memset>:

void*
memset(void *dst, int c, uint n)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 357:	8b 4d 10             	mov    0x10(%ebp),%ecx
 35a:	8b 45 0c             	mov    0xc(%ebp),%eax
 35d:	89 d7                	mov    %edx,%edi
 35f:	fc                   	cld    
 360:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 362:	8b 7d fc             	mov    -0x4(%ebp),%edi
 365:	89 d0                	mov    %edx,%eax
 367:	c9                   	leave  
 368:	c3                   	ret    
 369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000370 <strchr>:

char*
strchr(const char *s, char c)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 45 08             	mov    0x8(%ebp),%eax
 376:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 37a:	0f b6 10             	movzbl (%eax),%edx
 37d:	84 d2                	test   %dl,%dl
 37f:	75 12                	jne    393 <strchr+0x23>
 381:	eb 1d                	jmp    3a0 <strchr+0x30>
 383:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 387:	90                   	nop
 388:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 38c:	83 c0 01             	add    $0x1,%eax
 38f:	84 d2                	test   %dl,%dl
 391:	74 0d                	je     3a0 <strchr+0x30>
    if(*s == c)
 393:	38 d1                	cmp    %dl,%cl
 395:	75 f1                	jne    388 <strchr+0x18>
      return (char*)s;
  return 0;
}
 397:	5d                   	pop    %ebp
 398:	c3                   	ret    
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3a0:	31 c0                	xor    %eax,%eax
}
 3a2:	5d                   	pop    %ebp
 3a3:	c3                   	ret    
 3a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3af:	90                   	nop

000003b0 <gets>:

char*
gets(char *buf, int max)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	57                   	push   %edi
 3b4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3b5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 3b8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 3b9:	31 db                	xor    %ebx,%ebx
{
 3bb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 3be:	eb 27                	jmp    3e7 <gets+0x37>
    cc = read(0, &c, 1);
 3c0:	83 ec 04             	sub    $0x4,%esp
 3c3:	6a 01                	push   $0x1
 3c5:	57                   	push   %edi
 3c6:	6a 00                	push   $0x0
 3c8:	e8 bf 02 00 00       	call   68c <read>
    if(cc < 1)
 3cd:	83 c4 10             	add    $0x10,%esp
 3d0:	85 c0                	test   %eax,%eax
 3d2:	7e 1d                	jle    3f1 <gets+0x41>
      break;
    buf[i++] = c;
 3d4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 3d8:	8b 55 08             	mov    0x8(%ebp),%edx
 3db:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 3df:	3c 0a                	cmp    $0xa,%al
 3e1:	74 1d                	je     400 <gets+0x50>
 3e3:	3c 0d                	cmp    $0xd,%al
 3e5:	74 19                	je     400 <gets+0x50>
  for(i=0; i+1 < max; ){
 3e7:	89 de                	mov    %ebx,%esi
 3e9:	83 c3 01             	add    $0x1,%ebx
 3ec:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 3ef:	7c cf                	jl     3c0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 3f1:	8b 45 08             	mov    0x8(%ebp),%eax
 3f4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 3f8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3fb:	5b                   	pop    %ebx
 3fc:	5e                   	pop    %esi
 3fd:	5f                   	pop    %edi
 3fe:	5d                   	pop    %ebp
 3ff:	c3                   	ret    
  buf[i] = '\0';
 400:	8b 45 08             	mov    0x8(%ebp),%eax
 403:	89 de                	mov    %ebx,%esi
 405:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 409:	8d 65 f4             	lea    -0xc(%ebp),%esp
 40c:	5b                   	pop    %ebx
 40d:	5e                   	pop    %esi
 40e:	5f                   	pop    %edi
 40f:	5d                   	pop    %ebp
 410:	c3                   	ret    
 411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 418:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <stat>:

int
stat(const char *n, struct stat *st)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	56                   	push   %esi
 424:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 425:	83 ec 08             	sub    $0x8,%esp
 428:	6a 00                	push   $0x0
 42a:	ff 75 08             	push   0x8(%ebp)
 42d:	e8 82 02 00 00       	call   6b4 <open>
  if(fd < 0)
 432:	83 c4 10             	add    $0x10,%esp
 435:	85 c0                	test   %eax,%eax
 437:	78 27                	js     460 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 439:	83 ec 08             	sub    $0x8,%esp
 43c:	ff 75 0c             	push   0xc(%ebp)
 43f:	89 c3                	mov    %eax,%ebx
 441:	50                   	push   %eax
 442:	e8 85 02 00 00       	call   6cc <fstat>
  close(fd);
 447:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 44a:	89 c6                	mov    %eax,%esi
  close(fd);
 44c:	e8 4b 02 00 00       	call   69c <close>
  return r;
 451:	83 c4 10             	add    $0x10,%esp
}
 454:	8d 65 f8             	lea    -0x8(%ebp),%esp
 457:	89 f0                	mov    %esi,%eax
 459:	5b                   	pop    %ebx
 45a:	5e                   	pop    %esi
 45b:	5d                   	pop    %ebp
 45c:	c3                   	ret    
 45d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 460:	be ff ff ff ff       	mov    $0xffffffff,%esi
 465:	eb ed                	jmp    454 <stat+0x34>
 467:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46e:	66 90                	xchg   %ax,%ax

00000470 <atoi>:

int
atoi(const char *s)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	53                   	push   %ebx
 474:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 477:	0f be 02             	movsbl (%edx),%eax
 47a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 47d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 480:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 485:	77 1e                	ja     4a5 <atoi+0x35>
 487:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 490:	83 c2 01             	add    $0x1,%edx
 493:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 496:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 49a:	0f be 02             	movsbl (%edx),%eax
 49d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4a0:	80 fb 09             	cmp    $0x9,%bl
 4a3:	76 eb                	jbe    490 <atoi+0x20>
  return n;
}
 4a5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4a8:	89 c8                	mov    %ecx,%eax
 4aa:	c9                   	leave  
 4ab:	c3                   	ret    
 4ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004b0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4b0:	55                   	push   %ebp
 4b1:	89 e5                	mov    %esp,%ebp
 4b3:	57                   	push   %edi
 4b4:	8b 45 10             	mov    0x10(%ebp),%eax
 4b7:	8b 55 08             	mov    0x8(%ebp),%edx
 4ba:	56                   	push   %esi
 4bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4be:	85 c0                	test   %eax,%eax
 4c0:	7e 13                	jle    4d5 <memmove+0x25>
 4c2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4c4:	89 d7                	mov    %edx,%edi
 4c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 4d0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 4d1:	39 f8                	cmp    %edi,%eax
 4d3:	75 fb                	jne    4d0 <memmove+0x20>
  return vdst;
}
 4d5:	5e                   	pop    %esi
 4d6:	89 d0                	mov    %edx,%eax
 4d8:	5f                   	pop    %edi
 4d9:	5d                   	pop    %ebp
 4da:	c3                   	ret    
 4db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop

000004e0 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 4e0:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 4e1:	b8 01 00 00 00       	mov    $0x1,%eax
 4e6:	89 e5                	mov    %esp,%ebp
 4e8:	53                   	push   %ebx
 4e9:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 4ec:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 4f3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 4fa:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 4ff:	8b 55 f4             	mov    -0xc(%ebp),%edx
 502:	39 c2                	cmp    %eax,%edx
 504:	74 24                	je     52a <thread_create+0x4a>
 506:	89 c3                	mov    %eax,%ebx
 508:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 510:	83 ec 04             	sub    $0x4,%esp
 513:	52                   	push   %edx
 514:	68 eb 0b 00 00       	push   $0xbeb
 519:	6a 01                	push   $0x1
 51b:	e8 c0 02 00 00       	call   7e0 <printf>
  while(lock->turn != myturn){
 520:	8b 55 f4             	mov    -0xc(%ebp),%edx
 523:	83 c4 10             	add    $0x10,%esp
 526:	39 d3                	cmp    %edx,%ebx
 528:	75 e6                	jne    510 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 52a:	83 ec 0c             	sub    $0xc,%esp
 52d:	68 00 20 00 00       	push   $0x2000
 532:	e8 d9 04 00 00       	call   a10 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 537:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 53b:	83 c4 10             	add    $0x10,%esp
 53e:	89 c2                	mov    %eax,%edx
 540:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 546:	74 07                	je     54f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 548:	29 d0                	sub    %edx,%eax
 54a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 54f:	50                   	push   %eax
 550:	ff 75 10             	push   0x10(%ebp)
 553:	ff 75 0c             	push   0xc(%ebp)
 556:	ff 75 08             	push   0x8(%ebp)
 559:	e8 b6 01 00 00       	call   714 <clone>
}
 55e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 561:	c9                   	leave  
 562:	c3                   	ret    
 563:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000570 <thread_join>:
int thread_join(){
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	56                   	push   %esi
 574:	53                   	push   %ebx
 575:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 578:	6a 04                	push   $0x4
 57a:	e8 91 04 00 00       	call   a10 <malloc>
 57f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 582:	8d 45 ec             	lea    -0x14(%ebp),%eax
 585:	89 04 24             	mov    %eax,(%esp)
 588:	e8 8f 01 00 00       	call   71c <join>
  lock->ticket = 0;
 58d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 594:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 596:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 59d:	b8 01 00 00 00       	mov    $0x1,%eax
 5a2:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 5a7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5aa:	83 c4 10             	add    $0x10,%esp
 5ad:	39 c2                	cmp    %eax,%edx
 5af:	74 21                	je     5d2 <thread_join+0x62>
 5b1:	89 c3                	mov    %eax,%ebx
 5b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5b7:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 5b8:	83 ec 04             	sub    $0x4,%esp
 5bb:	52                   	push   %edx
 5bc:	68 eb 0b 00 00       	push   $0xbeb
 5c1:	6a 01                	push   $0x1
 5c3:	e8 18 02 00 00       	call   7e0 <printf>
  while(lock->turn != myturn){
 5c8:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5cb:	83 c4 10             	add    $0x10,%esp
 5ce:	39 d3                	cmp    %edx,%ebx
 5d0:	75 e6                	jne    5b8 <thread_join+0x48>
	free(stack);
 5d2:	83 ec 0c             	sub    $0xc,%esp
 5d5:	ff 75 ec             	push   -0x14(%ebp)
 5d8:	e8 a3 03 00 00       	call   980 <free>
}
 5dd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5e0:	89 f0                	mov    %esi,%eax
 5e2:	5b                   	pop    %ebx
 5e3:	5e                   	pop    %esi
 5e4:	5d                   	pop    %ebp
 5e5:	c3                   	ret    
 5e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ed:	8d 76 00             	lea    0x0(%esi),%esi

000005f0 <lock_init>:
void lock_init(lock_t *lock) {
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 5f6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 5fc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 603:	5d                   	pop    %ebp
 604:	c3                   	ret    
 605:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000610 <lock_acquire>:
void lock_acquire(lock_t *lock){
 610:	55                   	push   %ebp
 611:	b8 01 00 00 00       	mov    $0x1,%eax
 616:	89 e5                	mov    %esp,%ebp
 618:	56                   	push   %esi
 619:	8b 75 08             	mov    0x8(%ebp),%esi
 61c:	53                   	push   %ebx
 61d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 621:	8b 56 04             	mov    0x4(%esi),%edx
 624:	39 d0                	cmp    %edx,%eax
 626:	74 22                	je     64a <lock_acquire+0x3a>
 628:	89 c3                	mov    %eax,%ebx
 62a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 630:	83 ec 04             	sub    $0x4,%esp
 633:	52                   	push   %edx
 634:	68 eb 0b 00 00       	push   $0xbeb
 639:	6a 01                	push   $0x1
 63b:	e8 a0 01 00 00       	call   7e0 <printf>
  while(lock->turn != myturn){
 640:	8b 56 04             	mov    0x4(%esi),%edx
 643:	83 c4 10             	add    $0x10,%esp
 646:	39 da                	cmp    %ebx,%edx
 648:	75 e6                	jne    630 <lock_acquire+0x20>
}
 64a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 64d:	5b                   	pop    %ebx
 64e:	5e                   	pop    %esi
 64f:	5d                   	pop    %ebp
 650:	c3                   	ret    
 651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop

00000660 <lock_release>:
void lock_release(lock_t *lock){
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 666:	83 40 04 01          	addl   $0x1,0x4(%eax)
 66a:	5d                   	pop    %ebp
 66b:	c3                   	ret    

0000066c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 66c:	b8 01 00 00 00       	mov    $0x1,%eax
 671:	cd 40                	int    $0x40
 673:	c3                   	ret    

00000674 <exit>:
SYSCALL(exit)
 674:	b8 02 00 00 00       	mov    $0x2,%eax
 679:	cd 40                	int    $0x40
 67b:	c3                   	ret    

0000067c <wait>:
SYSCALL(wait)
 67c:	b8 03 00 00 00       	mov    $0x3,%eax
 681:	cd 40                	int    $0x40
 683:	c3                   	ret    

00000684 <pipe>:
SYSCALL(pipe)
 684:	b8 04 00 00 00       	mov    $0x4,%eax
 689:	cd 40                	int    $0x40
 68b:	c3                   	ret    

0000068c <read>:
SYSCALL(read)
 68c:	b8 05 00 00 00       	mov    $0x5,%eax
 691:	cd 40                	int    $0x40
 693:	c3                   	ret    

00000694 <write>:
SYSCALL(write)
 694:	b8 10 00 00 00       	mov    $0x10,%eax
 699:	cd 40                	int    $0x40
 69b:	c3                   	ret    

0000069c <close>:
SYSCALL(close)
 69c:	b8 15 00 00 00       	mov    $0x15,%eax
 6a1:	cd 40                	int    $0x40
 6a3:	c3                   	ret    

000006a4 <kill>:
SYSCALL(kill)
 6a4:	b8 06 00 00 00       	mov    $0x6,%eax
 6a9:	cd 40                	int    $0x40
 6ab:	c3                   	ret    

000006ac <exec>:
SYSCALL(exec)
 6ac:	b8 07 00 00 00       	mov    $0x7,%eax
 6b1:	cd 40                	int    $0x40
 6b3:	c3                   	ret    

000006b4 <open>:
SYSCALL(open)
 6b4:	b8 0f 00 00 00       	mov    $0xf,%eax
 6b9:	cd 40                	int    $0x40
 6bb:	c3                   	ret    

000006bc <mknod>:
SYSCALL(mknod)
 6bc:	b8 11 00 00 00       	mov    $0x11,%eax
 6c1:	cd 40                	int    $0x40
 6c3:	c3                   	ret    

000006c4 <unlink>:
SYSCALL(unlink)
 6c4:	b8 12 00 00 00       	mov    $0x12,%eax
 6c9:	cd 40                	int    $0x40
 6cb:	c3                   	ret    

000006cc <fstat>:
SYSCALL(fstat)
 6cc:	b8 08 00 00 00       	mov    $0x8,%eax
 6d1:	cd 40                	int    $0x40
 6d3:	c3                   	ret    

000006d4 <link>:
SYSCALL(link)
 6d4:	b8 13 00 00 00       	mov    $0x13,%eax
 6d9:	cd 40                	int    $0x40
 6db:	c3                   	ret    

000006dc <mkdir>:
SYSCALL(mkdir)
 6dc:	b8 14 00 00 00       	mov    $0x14,%eax
 6e1:	cd 40                	int    $0x40
 6e3:	c3                   	ret    

000006e4 <chdir>:
SYSCALL(chdir)
 6e4:	b8 09 00 00 00       	mov    $0x9,%eax
 6e9:	cd 40                	int    $0x40
 6eb:	c3                   	ret    

000006ec <dup>:
SYSCALL(dup)
 6ec:	b8 0a 00 00 00       	mov    $0xa,%eax
 6f1:	cd 40                	int    $0x40
 6f3:	c3                   	ret    

000006f4 <getpid>:
SYSCALL(getpid)
 6f4:	b8 0b 00 00 00       	mov    $0xb,%eax
 6f9:	cd 40                	int    $0x40
 6fb:	c3                   	ret    

000006fc <sbrk>:
SYSCALL(sbrk)
 6fc:	b8 0c 00 00 00       	mov    $0xc,%eax
 701:	cd 40                	int    $0x40
 703:	c3                   	ret    

00000704 <sleep>:
SYSCALL(sleep)
 704:	b8 0d 00 00 00       	mov    $0xd,%eax
 709:	cd 40                	int    $0x40
 70b:	c3                   	ret    

0000070c <uptime>:
SYSCALL(uptime)
 70c:	b8 0e 00 00 00       	mov    $0xe,%eax
 711:	cd 40                	int    $0x40
 713:	c3                   	ret    

00000714 <clone>:
SYSCALL(clone)
 714:	b8 16 00 00 00       	mov    $0x16,%eax
 719:	cd 40                	int    $0x40
 71b:	c3                   	ret    

0000071c <join>:
SYSCALL(join)
 71c:	b8 17 00 00 00       	mov    $0x17,%eax
 721:	cd 40                	int    $0x40
 723:	c3                   	ret    
 724:	66 90                	xchg   %ax,%ax
 726:	66 90                	xchg   %ax,%ax
 728:	66 90                	xchg   %ax,%ax
 72a:	66 90                	xchg   %ax,%ax
 72c:	66 90                	xchg   %ax,%ax
 72e:	66 90                	xchg   %ax,%ax

00000730 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
 734:	56                   	push   %esi
 735:	53                   	push   %ebx
 736:	83 ec 3c             	sub    $0x3c,%esp
 739:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 73c:	89 d1                	mov    %edx,%ecx
{
 73e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 741:	85 d2                	test   %edx,%edx
 743:	0f 89 7f 00 00 00    	jns    7c8 <printint+0x98>
 749:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 74d:	74 79                	je     7c8 <printint+0x98>
    neg = 1;
 74f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 756:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 758:	31 db                	xor    %ebx,%ebx
 75a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 75d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 760:	89 c8                	mov    %ecx,%eax
 762:	31 d2                	xor    %edx,%edx
 764:	89 cf                	mov    %ecx,%edi
 766:	f7 75 c4             	divl   -0x3c(%ebp)
 769:	0f b6 92 60 0c 00 00 	movzbl 0xc60(%edx),%edx
 770:	89 45 c0             	mov    %eax,-0x40(%ebp)
 773:	89 d8                	mov    %ebx,%eax
 775:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 778:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 77b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 77e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 781:	76 dd                	jbe    760 <printint+0x30>
  if(neg)
 783:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 786:	85 c9                	test   %ecx,%ecx
 788:	74 0c                	je     796 <printint+0x66>
    buf[i++] = '-';
 78a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 78f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 791:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 796:	8b 7d b8             	mov    -0x48(%ebp),%edi
 799:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 79d:	eb 07                	jmp    7a6 <printint+0x76>
 79f:	90                   	nop
    putc(fd, buf[i]);
 7a0:	0f b6 13             	movzbl (%ebx),%edx
 7a3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7a6:	83 ec 04             	sub    $0x4,%esp
 7a9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7ac:	6a 01                	push   $0x1
 7ae:	56                   	push   %esi
 7af:	57                   	push   %edi
 7b0:	e8 df fe ff ff       	call   694 <write>
  while(--i >= 0)
 7b5:	83 c4 10             	add    $0x10,%esp
 7b8:	39 de                	cmp    %ebx,%esi
 7ba:	75 e4                	jne    7a0 <printint+0x70>
}
 7bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7bf:	5b                   	pop    %ebx
 7c0:	5e                   	pop    %esi
 7c1:	5f                   	pop    %edi
 7c2:	5d                   	pop    %ebp
 7c3:	c3                   	ret    
 7c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7c8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7cf:	eb 87                	jmp    758 <printint+0x28>
 7d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7df:	90                   	nop

000007e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7e0:	55                   	push   %ebp
 7e1:	89 e5                	mov    %esp,%ebp
 7e3:	57                   	push   %edi
 7e4:	56                   	push   %esi
 7e5:	53                   	push   %ebx
 7e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7ec:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7ef:	0f b6 13             	movzbl (%ebx),%edx
 7f2:	84 d2                	test   %dl,%dl
 7f4:	74 6a                	je     860 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7f6:	8d 45 10             	lea    0x10(%ebp),%eax
 7f9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7fc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7ff:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 801:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804:	eb 36                	jmp    83c <printf+0x5c>
 806:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80d:	8d 76 00             	lea    0x0(%esi),%esi
 810:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 813:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 818:	83 f8 25             	cmp    $0x25,%eax
 81b:	74 15                	je     832 <printf+0x52>
  write(fd, &c, 1);
 81d:	83 ec 04             	sub    $0x4,%esp
 820:	88 55 e7             	mov    %dl,-0x19(%ebp)
 823:	6a 01                	push   $0x1
 825:	57                   	push   %edi
 826:	56                   	push   %esi
 827:	e8 68 fe ff ff       	call   694 <write>
 82c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 82f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 832:	0f b6 13             	movzbl (%ebx),%edx
 835:	83 c3 01             	add    $0x1,%ebx
 838:	84 d2                	test   %dl,%dl
 83a:	74 24                	je     860 <printf+0x80>
    c = fmt[i] & 0xff;
 83c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 83f:	85 c9                	test   %ecx,%ecx
 841:	74 cd                	je     810 <printf+0x30>
      }
    } else if(state == '%'){
 843:	83 f9 25             	cmp    $0x25,%ecx
 846:	75 ea                	jne    832 <printf+0x52>
      if(c == 'd'){
 848:	83 f8 25             	cmp    $0x25,%eax
 84b:	0f 84 07 01 00 00    	je     958 <printf+0x178>
 851:	83 e8 63             	sub    $0x63,%eax
 854:	83 f8 15             	cmp    $0x15,%eax
 857:	77 17                	ja     870 <printf+0x90>
 859:	ff 24 85 08 0c 00 00 	jmp    *0xc08(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 860:	8d 65 f4             	lea    -0xc(%ebp),%esp
 863:	5b                   	pop    %ebx
 864:	5e                   	pop    %esi
 865:	5f                   	pop    %edi
 866:	5d                   	pop    %ebp
 867:	c3                   	ret    
 868:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 86f:	90                   	nop
  write(fd, &c, 1);
 870:	83 ec 04             	sub    $0x4,%esp
 873:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 876:	6a 01                	push   $0x1
 878:	57                   	push   %edi
 879:	56                   	push   %esi
 87a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 87e:	e8 11 fe ff ff       	call   694 <write>
        putc(fd, c);
 883:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 887:	83 c4 0c             	add    $0xc,%esp
 88a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 88d:	6a 01                	push   $0x1
 88f:	57                   	push   %edi
 890:	56                   	push   %esi
 891:	e8 fe fd ff ff       	call   694 <write>
        putc(fd, c);
 896:	83 c4 10             	add    $0x10,%esp
      state = 0;
 899:	31 c9                	xor    %ecx,%ecx
 89b:	eb 95                	jmp    832 <printf+0x52>
 89d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8a0:	83 ec 0c             	sub    $0xc,%esp
 8a3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8a8:	6a 00                	push   $0x0
 8aa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8ad:	8b 10                	mov    (%eax),%edx
 8af:	89 f0                	mov    %esi,%eax
 8b1:	e8 7a fe ff ff       	call   730 <printint>
        ap++;
 8b6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8ba:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8bd:	31 c9                	xor    %ecx,%ecx
 8bf:	e9 6e ff ff ff       	jmp    832 <printf+0x52>
 8c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8c8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8cb:	8b 10                	mov    (%eax),%edx
        ap++;
 8cd:	83 c0 04             	add    $0x4,%eax
 8d0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8d3:	85 d2                	test   %edx,%edx
 8d5:	0f 84 8d 00 00 00    	je     968 <printf+0x188>
        while(*s != 0){
 8db:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8de:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8e0:	84 c0                	test   %al,%al
 8e2:	0f 84 4a ff ff ff    	je     832 <printf+0x52>
 8e8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8eb:	89 d3                	mov    %edx,%ebx
 8ed:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8f0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8f3:	83 c3 01             	add    $0x1,%ebx
 8f6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8f9:	6a 01                	push   $0x1
 8fb:	57                   	push   %edi
 8fc:	56                   	push   %esi
 8fd:	e8 92 fd ff ff       	call   694 <write>
        while(*s != 0){
 902:	0f b6 03             	movzbl (%ebx),%eax
 905:	83 c4 10             	add    $0x10,%esp
 908:	84 c0                	test   %al,%al
 90a:	75 e4                	jne    8f0 <printf+0x110>
      state = 0;
 90c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 90f:	31 c9                	xor    %ecx,%ecx
 911:	e9 1c ff ff ff       	jmp    832 <printf+0x52>
 916:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 91d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 920:	83 ec 0c             	sub    $0xc,%esp
 923:	b9 0a 00 00 00       	mov    $0xa,%ecx
 928:	6a 01                	push   $0x1
 92a:	e9 7b ff ff ff       	jmp    8aa <printf+0xca>
 92f:	90                   	nop
        putc(fd, *ap);
 930:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 933:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 936:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 938:	6a 01                	push   $0x1
 93a:	57                   	push   %edi
 93b:	56                   	push   %esi
        putc(fd, *ap);
 93c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 93f:	e8 50 fd ff ff       	call   694 <write>
        ap++;
 944:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 948:	83 c4 10             	add    $0x10,%esp
      state = 0;
 94b:	31 c9                	xor    %ecx,%ecx
 94d:	e9 e0 fe ff ff       	jmp    832 <printf+0x52>
 952:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 958:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 95b:	83 ec 04             	sub    $0x4,%esp
 95e:	e9 2a ff ff ff       	jmp    88d <printf+0xad>
 963:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 967:	90                   	nop
          s = "(null)";
 968:	ba ff 0b 00 00       	mov    $0xbff,%edx
        while(*s != 0){
 96d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 970:	b8 28 00 00 00       	mov    $0x28,%eax
 975:	89 d3                	mov    %edx,%ebx
 977:	e9 74 ff ff ff       	jmp    8f0 <printf+0x110>
 97c:	66 90                	xchg   %ax,%ax
 97e:	66 90                	xchg   %ax,%ax

00000980 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 980:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 981:	a1 ec 0f 00 00       	mov    0xfec,%eax
{
 986:	89 e5                	mov    %esp,%ebp
 988:	57                   	push   %edi
 989:	56                   	push   %esi
 98a:	53                   	push   %ebx
 98b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 98e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 991:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 998:	89 c2                	mov    %eax,%edx
 99a:	8b 00                	mov    (%eax),%eax
 99c:	39 ca                	cmp    %ecx,%edx
 99e:	73 30                	jae    9d0 <free+0x50>
 9a0:	39 c1                	cmp    %eax,%ecx
 9a2:	72 04                	jb     9a8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9a4:	39 c2                	cmp    %eax,%edx
 9a6:	72 f0                	jb     998 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ae:	39 f8                	cmp    %edi,%eax
 9b0:	74 30                	je     9e2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9b2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9b5:	8b 42 04             	mov    0x4(%edx),%eax
 9b8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9bb:	39 f1                	cmp    %esi,%ecx
 9bd:	74 3a                	je     9f9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9bf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9c1:	5b                   	pop    %ebx
  freep = p;
 9c2:	89 15 ec 0f 00 00    	mov    %edx,0xfec
}
 9c8:	5e                   	pop    %esi
 9c9:	5f                   	pop    %edi
 9ca:	5d                   	pop    %ebp
 9cb:	c3                   	ret    
 9cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9d0:	39 c2                	cmp    %eax,%edx
 9d2:	72 c4                	jb     998 <free+0x18>
 9d4:	39 c1                	cmp    %eax,%ecx
 9d6:	73 c0                	jae    998 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9de:	39 f8                	cmp    %edi,%eax
 9e0:	75 d0                	jne    9b2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9e2:	03 70 04             	add    0x4(%eax),%esi
 9e5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9e8:	8b 02                	mov    (%edx),%eax
 9ea:	8b 00                	mov    (%eax),%eax
 9ec:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9ef:	8b 42 04             	mov    0x4(%edx),%eax
 9f2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9f5:	39 f1                	cmp    %esi,%ecx
 9f7:	75 c6                	jne    9bf <free+0x3f>
    p->s.size += bp->s.size;
 9f9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9fc:	89 15 ec 0f 00 00    	mov    %edx,0xfec
    p->s.size += bp->s.size;
 a02:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a05:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a08:	89 0a                	mov    %ecx,(%edx)
}
 a0a:	5b                   	pop    %ebx
 a0b:	5e                   	pop    %esi
 a0c:	5f                   	pop    %edi
 a0d:	5d                   	pop    %ebp
 a0e:	c3                   	ret    
 a0f:	90                   	nop

00000a10 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a10:	55                   	push   %ebp
 a11:	89 e5                	mov    %esp,%ebp
 a13:	57                   	push   %edi
 a14:	56                   	push   %esi
 a15:	53                   	push   %ebx
 a16:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a19:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a1c:	8b 3d ec 0f 00 00    	mov    0xfec,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a22:	8d 70 07             	lea    0x7(%eax),%esi
 a25:	c1 ee 03             	shr    $0x3,%esi
 a28:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a2b:	85 ff                	test   %edi,%edi
 a2d:	0f 84 9d 00 00 00    	je     ad0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a33:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a35:	8b 4a 04             	mov    0x4(%edx),%ecx
 a38:	39 f1                	cmp    %esi,%ecx
 a3a:	73 6a                	jae    aa6 <malloc+0x96>
 a3c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a41:	39 de                	cmp    %ebx,%esi
 a43:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a46:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a4d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a50:	eb 17                	jmp    a69 <malloc+0x59>
 a52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a58:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a5a:	8b 48 04             	mov    0x4(%eax),%ecx
 a5d:	39 f1                	cmp    %esi,%ecx
 a5f:	73 4f                	jae    ab0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a61:	8b 3d ec 0f 00 00    	mov    0xfec,%edi
 a67:	89 c2                	mov    %eax,%edx
 a69:	39 d7                	cmp    %edx,%edi
 a6b:	75 eb                	jne    a58 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a6d:	83 ec 0c             	sub    $0xc,%esp
 a70:	ff 75 e4             	push   -0x1c(%ebp)
 a73:	e8 84 fc ff ff       	call   6fc <sbrk>
  if(p == (char*)-1)
 a78:	83 c4 10             	add    $0x10,%esp
 a7b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a7e:	74 1c                	je     a9c <malloc+0x8c>
  hp->s.size = nu;
 a80:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a83:	83 ec 0c             	sub    $0xc,%esp
 a86:	83 c0 08             	add    $0x8,%eax
 a89:	50                   	push   %eax
 a8a:	e8 f1 fe ff ff       	call   980 <free>
  return freep;
 a8f:	8b 15 ec 0f 00 00    	mov    0xfec,%edx
      if((p = morecore(nunits)) == 0)
 a95:	83 c4 10             	add    $0x10,%esp
 a98:	85 d2                	test   %edx,%edx
 a9a:	75 bc                	jne    a58 <malloc+0x48>
        return 0;
  }
}
 a9c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a9f:	31 c0                	xor    %eax,%eax
}
 aa1:	5b                   	pop    %ebx
 aa2:	5e                   	pop    %esi
 aa3:	5f                   	pop    %edi
 aa4:	5d                   	pop    %ebp
 aa5:	c3                   	ret    
    if(p->s.size >= nunits){
 aa6:	89 d0                	mov    %edx,%eax
 aa8:	89 fa                	mov    %edi,%edx
 aaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ab0:	39 ce                	cmp    %ecx,%esi
 ab2:	74 4c                	je     b00 <malloc+0xf0>
        p->s.size -= nunits;
 ab4:	29 f1                	sub    %esi,%ecx
 ab6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ab9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 abc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 abf:	89 15 ec 0f 00 00    	mov    %edx,0xfec
}
 ac5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ac8:	83 c0 08             	add    $0x8,%eax
}
 acb:	5b                   	pop    %ebx
 acc:	5e                   	pop    %esi
 acd:	5f                   	pop    %edi
 ace:	5d                   	pop    %ebp
 acf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 ad0:	c7 05 ec 0f 00 00 f0 	movl   $0xff0,0xfec
 ad7:	0f 00 00 
    base.s.size = 0;
 ada:	bf f0 0f 00 00       	mov    $0xff0,%edi
    base.s.ptr = freep = prevp = &base;
 adf:	c7 05 f0 0f 00 00 f0 	movl   $0xff0,0xff0
 ae6:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ae9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 aeb:	c7 05 f4 0f 00 00 00 	movl   $0x0,0xff4
 af2:	00 00 00 
    if(p->s.size >= nunits){
 af5:	e9 42 ff ff ff       	jmp    a3c <malloc+0x2c>
 afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b00:	8b 08                	mov    (%eax),%ecx
 b02:	89 0a                	mov    %ecx,(%edx)
 b04:	eb b9                	jmp    abf <malloc+0xaf>
