
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
  14:	e8 6d 06 00 00       	call   686 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 40 0f 00 00       	mov    %eax,0xf40
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 75 09 00 00       	call   9a0 <malloc>
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
  67:	e8 3a 06 00 00       	call   6a6 <clone>
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
  7d:	e8 14 06 00 00       	call   696 <sleep>
   assert(wait() == -1);
  82:	e8 87 05 00 00       	call   60e <wait>
  87:	83 c4 10             	add    $0x10,%esp
  8a:	83 c0 01             	add    $0x1,%eax
  8d:	0f 84 80 00 00 00    	je     113 <main+0x113>
  93:	6a 28                	push   $0x28
  95:	68 98 0a 00 00       	push   $0xa98
  9a:	68 a1 0a 00 00       	push   $0xaa1
  9f:	6a 01                	push   $0x1
  a1:	e8 ca 06 00 00       	call   770 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 04 0b 00 00       	push   $0xb04
   assert(clone_pid > 0);
  ae:	68 b4 0a 00 00       	push   $0xab4
  b3:	6a 01                	push   $0x1
  b5:	e8 b6 06 00 00       	call   770 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 c8 0a 00 00       	push   $0xac8
  c1:	6a 01                	push   $0x1
  c3:	e8 a8 06 00 00       	call   770 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 40 0f 00 00    	push   0xf40
  cf:	e8 62 05 00 00       	call   636 <kill>
  d4:	e8 2d 05 00 00       	call   606 <exit>
  d9:	6a 25                	push   $0x25
  db:	68 98 0a 00 00       	push   $0xa98
  e0:	68 a1 0a 00 00       	push   $0xaa1
  e5:	6a 01                	push   $0x1
  e7:	e8 84 06 00 00       	call   770 <printf>
  ec:	83 c4 0c             	add    $0xc,%esp
  ef:	68 f6 0a 00 00       	push   $0xaf6
  f4:	eb b8                	jmp    ae <main+0xae>
   assert(p != NULL);
  f6:	6a 1d                	push   $0x1d
  f8:	68 98 0a 00 00       	push   $0xa98
  fd:	68 a1 0a 00 00       	push   $0xaa1
 102:	6a 01                	push   $0x1
 104:	e8 67 06 00 00       	call   770 <printf>
 109:	83 c4 0c             	add    $0xc,%esp
 10c:	68 ec 0a 00 00       	push   $0xaec
 111:	eb 9b                	jmp    ae <main+0xae>

   void *join_stack;
   int join_pid = join(&join_stack);
 113:	83 ec 0c             	sub    $0xc,%esp
 116:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 119:	50                   	push   %eax
 11a:	e8 8f 05 00 00       	call   6ae <join>
   assert(join_pid == clone_pid);
 11f:	83 c4 10             	add    $0x10,%esp
 122:	39 c6                	cmp    %eax,%esi
 124:	74 20                	je     146 <main+0x146>
 126:	6a 2c                	push   $0x2c
 128:	68 98 0a 00 00       	push   $0xa98
 12d:	68 a1 0a 00 00       	push   $0xaa1
 132:	6a 01                	push   $0x1
 134:	e8 37 06 00 00       	call   770 <printf>
 139:	83 c4 0c             	add    $0xc,%esp
 13c:	68 11 0b 00 00       	push   $0xb11
 141:	e9 68 ff ff ff       	jmp    ae <main+0xae>
   assert(stack == join_stack);
 146:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
 149:	74 20                	je     16b <main+0x16b>
 14b:	6a 2d                	push   $0x2d
 14d:	68 98 0a 00 00       	push   $0xa98
 152:	68 a1 0a 00 00       	push   $0xaa1
 157:	6a 01                	push   $0x1
 159:	e8 12 06 00 00       	call   770 <printf>
 15e:	83 c4 0c             	add    $0xc,%esp
 161:	68 27 0b 00 00       	push   $0xb27
 166:	e9 43 ff ff ff       	jmp    ae <main+0xae>
   assert(global == 2);
 16b:	83 3d 3c 0f 00 00 02 	cmpl   $0x2,0xf3c
 172:	74 20                	je     194 <main+0x194>
 174:	6a 2e                	push   $0x2e
 176:	68 98 0a 00 00       	push   $0xa98
 17b:	68 a1 0a 00 00       	push   $0xaa1
 180:	6a 01                	push   $0x1
 182:	e8 e9 05 00 00       	call   770 <printf>
 187:	83 c4 0c             	add    $0xc,%esp
 18a:	68 3b 0b 00 00       	push   $0xb3b
 18f:	e9 1a ff ff ff       	jmp    ae <main+0xae>

   printf(1, "TEST PASSED\n");
 194:	50                   	push   %eax
 195:	50                   	push   %eax
 196:	68 47 0b 00 00       	push   $0xb47
 19b:	6a 01                	push   $0x1
 19d:	e8 ce 05 00 00       	call   770 <printf>
   free(p);
 1a2:	89 1c 24             	mov    %ebx,(%esp)
 1a5:	e8 66 07 00 00       	call   910 <free>
   exit();
 1aa:	e8 57 04 00 00       	call   606 <exit>
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
 1c8:	83 3d 3c 0f 00 00 01 	cmpl   $0x1,0xf3c
 1cf:	0f 84 80 00 00 00    	je     255 <worker+0xa5>
 1d5:	6a 3b                	push   $0x3b
 1d7:	68 98 0a 00 00       	push   $0xa98
 1dc:	68 a1 0a 00 00       	push   $0xaa1
 1e1:	6a 01                	push   $0x1
 1e3:	e8 88 05 00 00       	call   770 <printf>
 1e8:	83 c4 0c             	add    $0xc,%esp
 1eb:	68 e0 0a 00 00       	push   $0xae0
 1f0:	eb 1b                	jmp    20d <worker+0x5d>
   assert(tmp2 == 24);
 1f2:	6a 3a                	push   $0x3a
 1f4:	68 98 0a 00 00       	push   $0xa98
 1f9:	68 a1 0a 00 00       	push   $0xaa1
 1fe:	6a 01                	push   $0x1
 200:	e8 6b 05 00 00       	call   770 <printf>
 205:	83 c4 0c             	add    $0xc,%esp
 208:	68 d5 0a 00 00       	push   $0xad5
 20d:	68 b4 0a 00 00       	push   $0xab4
 212:	6a 01                	push   $0x1
 214:	e8 57 05 00 00       	call   770 <printf>
 219:	58                   	pop    %eax
 21a:	5a                   	pop    %edx
 21b:	68 c8 0a 00 00       	push   $0xac8
 220:	6a 01                	push   $0x1
 222:	e8 49 05 00 00       	call   770 <printf>
 227:	59                   	pop    %ecx
 228:	ff 35 40 0f 00 00    	push   0xf40
 22e:	e8 03 04 00 00       	call   636 <kill>
 233:	e8 ce 03 00 00       	call   606 <exit>
   assert(tmp1 == 42);
 238:	6a 39                	push   $0x39
 23a:	68 98 0a 00 00       	push   $0xa98
 23f:	68 a1 0a 00 00       	push   $0xaa1
 244:	6a 01                	push   $0x1
 246:	e8 25 05 00 00       	call   770 <printf>
 24b:	83 c4 0c             	add    $0xc,%esp
 24e:	68 a9 0a 00 00       	push   $0xaa9
 253:	eb b8                	jmp    20d <worker+0x5d>
   global++;
 255:	c7 05 3c 0f 00 00 02 	movl   $0x2,0xf3c
 25c:	00 00 00 
   exit();
 25f:	e8 a2 03 00 00       	call   606 <exit>
 264:	66 90                	xchg   %ax,%ax
 266:	66 90                	xchg   %ax,%ax
 268:	66 90                	xchg   %ax,%ax
 26a:	66 90                	xchg   %ax,%ax
 26c:	66 90                	xchg   %ax,%ax
 26e:	66 90                	xchg   %ax,%ax

00000270 <strcpy>:

lock_t lk_create,lk_join;

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
 3a8:	e8 71 02 00 00       	call   61e <read>
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
 40d:	e8 34 02 00 00       	call   646 <open>
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
 422:	e8 37 02 00 00       	call   65e <fstat>
  close(fd);
 427:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 42a:	89 c6                	mov    %eax,%esi
  close(fd);
 42c:	e8 fd 01 00 00       	call   62e <close>
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
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 4c1:	ba 01 00 00 00       	mov    $0x1,%edx
 4c6:	89 e5                	mov    %esp,%ebp
 4c8:	83 ec 08             	sub    $0x8,%esp
 4cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4cf:	90                   	nop
 4d0:	89 d0                	mov    %edx,%eax
 4d2:	f0 87 05 48 0f 00 00 	lock xchg %eax,0xf48
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 4d9:	85 c0                	test   %eax,%eax
 4db:	75 f3                	jne    4d0 <thread_create+0x10>
    __sync_synchronize();
 4dd:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 4e2:	83 ec 0c             	sub    $0xc,%esp
 4e5:	68 00 20 00 00       	push   $0x2000
 4ea:	e8 b1 04 00 00       	call   9a0 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 4ef:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 4f4:	c7 05 48 0f 00 00 00 	movl   $0x0,0xf48
 4fb:	00 00 00 
	if((uint)stack % PGSIZE)
 4fe:	89 c2                	mov    %eax,%edx
 500:	83 c4 10             	add    $0x10,%esp
 503:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 509:	74 07                	je     512 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 50b:	29 d0                	sub    %edx,%eax
 50d:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 512:	50                   	push   %eax
 513:	ff 75 10             	push   0x10(%ebp)
 516:	ff 75 0c             	push   0xc(%ebp)
 519:	ff 75 08             	push   0x8(%ebp)
 51c:	e8 85 01 00 00       	call   6a6 <clone>
}
 521:	c9                   	leave  
 522:	c3                   	ret    
 523:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000530 <thread_join>:
int thread_join(){
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	53                   	push   %ebx
	int result= join(&stack);
 534:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 537:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 53a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 541:	50                   	push   %eax
 542:	e8 67 01 00 00       	call   6ae <join>
    while(xchg(&(lock->mutex), 1) != 0);
 547:	83 c4 10             	add    $0x10,%esp
 54a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 54f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 551:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 558:	89 d0                	mov    %edx,%eax
 55a:	f0 87 05 44 0f 00 00 	lock xchg %eax,0xf44
 561:	85 c0                	test   %eax,%eax
 563:	75 f3                	jne    558 <thread_join+0x28>
    __sync_synchronize();
 565:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 56a:	83 ec 0c             	sub    $0xc,%esp
 56d:	ff 75 f4             	push   -0xc(%ebp)
 570:	e8 9b 03 00 00       	call   910 <free>
   __sync_synchronize();
 575:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 57a:	c7 05 44 0f 00 00 00 	movl   $0x0,0xf44
 581:	00 00 00 
}
 584:	89 d8                	mov    %ebx,%eax
 586:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 589:	c9                   	leave  
 58a:	c3                   	ret    
 58b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop

00000590 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 590:	c7 05 48 0f 00 00 00 	movl   $0x0,0xf48
 597:	00 00 00 
 59a:	c7 05 44 0f 00 00 00 	movl   $0x0,0xf44
 5a1:	00 00 00 
}
 5a4:	c3                   	ret    
 5a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005b0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 5b0:	55                   	push   %ebp
 5b1:	b9 01 00 00 00       	mov    $0x1,%ecx
 5b6:	89 e5                	mov    %esp,%ebp
 5b8:	8b 55 08             	mov    0x8(%ebp),%edx
 5bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop
 5c0:	89 c8                	mov    %ecx,%eax
 5c2:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 5c5:	85 c0                	test   %eax,%eax
 5c7:	75 f7                	jne    5c0 <lock_acquire+0x10>
    __sync_synchronize();
 5c9:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 5ce:	5d                   	pop    %ebp
 5cf:	c3                   	ret    

000005d0 <lock_release>:
void lock_release(lock_t *lock){
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 5d6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 5db:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 5e1:	5d                   	pop    %ebp
 5e2:	c3                   	ret    
 5e3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005f0 <lock_init>:
void lock_init(lock_t *lock) {
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 5f3:	8b 45 08             	mov    0x8(%ebp),%eax
 5f6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 5fc:	5d                   	pop    %ebp
 5fd:	c3                   	ret    

000005fe <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5fe:	b8 01 00 00 00       	mov    $0x1,%eax
 603:	cd 40                	int    $0x40
 605:	c3                   	ret    

00000606 <exit>:
SYSCALL(exit)
 606:	b8 02 00 00 00       	mov    $0x2,%eax
 60b:	cd 40                	int    $0x40
 60d:	c3                   	ret    

0000060e <wait>:
SYSCALL(wait)
 60e:	b8 03 00 00 00       	mov    $0x3,%eax
 613:	cd 40                	int    $0x40
 615:	c3                   	ret    

00000616 <pipe>:
SYSCALL(pipe)
 616:	b8 04 00 00 00       	mov    $0x4,%eax
 61b:	cd 40                	int    $0x40
 61d:	c3                   	ret    

0000061e <read>:
SYSCALL(read)
 61e:	b8 05 00 00 00       	mov    $0x5,%eax
 623:	cd 40                	int    $0x40
 625:	c3                   	ret    

00000626 <write>:
SYSCALL(write)
 626:	b8 10 00 00 00       	mov    $0x10,%eax
 62b:	cd 40                	int    $0x40
 62d:	c3                   	ret    

0000062e <close>:
SYSCALL(close)
 62e:	b8 15 00 00 00       	mov    $0x15,%eax
 633:	cd 40                	int    $0x40
 635:	c3                   	ret    

00000636 <kill>:
SYSCALL(kill)
 636:	b8 06 00 00 00       	mov    $0x6,%eax
 63b:	cd 40                	int    $0x40
 63d:	c3                   	ret    

0000063e <exec>:
SYSCALL(exec)
 63e:	b8 07 00 00 00       	mov    $0x7,%eax
 643:	cd 40                	int    $0x40
 645:	c3                   	ret    

00000646 <open>:
SYSCALL(open)
 646:	b8 0f 00 00 00       	mov    $0xf,%eax
 64b:	cd 40                	int    $0x40
 64d:	c3                   	ret    

0000064e <mknod>:
SYSCALL(mknod)
 64e:	b8 11 00 00 00       	mov    $0x11,%eax
 653:	cd 40                	int    $0x40
 655:	c3                   	ret    

00000656 <unlink>:
SYSCALL(unlink)
 656:	b8 12 00 00 00       	mov    $0x12,%eax
 65b:	cd 40                	int    $0x40
 65d:	c3                   	ret    

0000065e <fstat>:
SYSCALL(fstat)
 65e:	b8 08 00 00 00       	mov    $0x8,%eax
 663:	cd 40                	int    $0x40
 665:	c3                   	ret    

00000666 <link>:
SYSCALL(link)
 666:	b8 13 00 00 00       	mov    $0x13,%eax
 66b:	cd 40                	int    $0x40
 66d:	c3                   	ret    

0000066e <mkdir>:
SYSCALL(mkdir)
 66e:	b8 14 00 00 00       	mov    $0x14,%eax
 673:	cd 40                	int    $0x40
 675:	c3                   	ret    

00000676 <chdir>:
SYSCALL(chdir)
 676:	b8 09 00 00 00       	mov    $0x9,%eax
 67b:	cd 40                	int    $0x40
 67d:	c3                   	ret    

0000067e <dup>:
SYSCALL(dup)
 67e:	b8 0a 00 00 00       	mov    $0xa,%eax
 683:	cd 40                	int    $0x40
 685:	c3                   	ret    

00000686 <getpid>:
SYSCALL(getpid)
 686:	b8 0b 00 00 00       	mov    $0xb,%eax
 68b:	cd 40                	int    $0x40
 68d:	c3                   	ret    

0000068e <sbrk>:
SYSCALL(sbrk)
 68e:	b8 0c 00 00 00       	mov    $0xc,%eax
 693:	cd 40                	int    $0x40
 695:	c3                   	ret    

00000696 <sleep>:
SYSCALL(sleep)
 696:	b8 0d 00 00 00       	mov    $0xd,%eax
 69b:	cd 40                	int    $0x40
 69d:	c3                   	ret    

0000069e <uptime>:
SYSCALL(uptime)
 69e:	b8 0e 00 00 00       	mov    $0xe,%eax
 6a3:	cd 40                	int    $0x40
 6a5:	c3                   	ret    

000006a6 <clone>:
SYSCALL(clone)
 6a6:	b8 16 00 00 00       	mov    $0x16,%eax
 6ab:	cd 40                	int    $0x40
 6ad:	c3                   	ret    

000006ae <join>:
SYSCALL(join)
 6ae:	b8 17 00 00 00       	mov    $0x17,%eax
 6b3:	cd 40                	int    $0x40
 6b5:	c3                   	ret    
 6b6:	66 90                	xchg   %ax,%ax
 6b8:	66 90                	xchg   %ax,%ax
 6ba:	66 90                	xchg   %ax,%ax
 6bc:	66 90                	xchg   %ax,%ax
 6be:	66 90                	xchg   %ax,%ax

000006c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	53                   	push   %ebx
 6c6:	83 ec 3c             	sub    $0x3c,%esp
 6c9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6cc:	89 d1                	mov    %edx,%ecx
{
 6ce:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6d1:	85 d2                	test   %edx,%edx
 6d3:	0f 89 7f 00 00 00    	jns    758 <printint+0x98>
 6d9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6dd:	74 79                	je     758 <printint+0x98>
    neg = 1;
 6df:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6e6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6e8:	31 db                	xor    %ebx,%ebx
 6ea:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6f0:	89 c8                	mov    %ecx,%eax
 6f2:	31 d2                	xor    %edx,%edx
 6f4:	89 cf                	mov    %ecx,%edi
 6f6:	f7 75 c4             	divl   -0x3c(%ebp)
 6f9:	0f b6 92 b4 0b 00 00 	movzbl 0xbb4(%edx),%edx
 700:	89 45 c0             	mov    %eax,-0x40(%ebp)
 703:	89 d8                	mov    %ebx,%eax
 705:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 708:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 70b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 70e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 711:	76 dd                	jbe    6f0 <printint+0x30>
  if(neg)
 713:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 716:	85 c9                	test   %ecx,%ecx
 718:	74 0c                	je     726 <printint+0x66>
    buf[i++] = '-';
 71a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 71f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 721:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 726:	8b 7d b8             	mov    -0x48(%ebp),%edi
 729:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 72d:	eb 07                	jmp    736 <printint+0x76>
 72f:	90                   	nop
    putc(fd, buf[i]);
 730:	0f b6 13             	movzbl (%ebx),%edx
 733:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 736:	83 ec 04             	sub    $0x4,%esp
 739:	88 55 d7             	mov    %dl,-0x29(%ebp)
 73c:	6a 01                	push   $0x1
 73e:	56                   	push   %esi
 73f:	57                   	push   %edi
 740:	e8 e1 fe ff ff       	call   626 <write>
  while(--i >= 0)
 745:	83 c4 10             	add    $0x10,%esp
 748:	39 de                	cmp    %ebx,%esi
 74a:	75 e4                	jne    730 <printint+0x70>
}
 74c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 74f:	5b                   	pop    %ebx
 750:	5e                   	pop    %esi
 751:	5f                   	pop    %edi
 752:	5d                   	pop    %ebp
 753:	c3                   	ret    
 754:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 758:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 75f:	eb 87                	jmp    6e8 <printint+0x28>
 761:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 768:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 76f:	90                   	nop

00000770 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 770:	55                   	push   %ebp
 771:	89 e5                	mov    %esp,%ebp
 773:	57                   	push   %edi
 774:	56                   	push   %esi
 775:	53                   	push   %ebx
 776:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 779:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 77c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 77f:	0f b6 13             	movzbl (%ebx),%edx
 782:	84 d2                	test   %dl,%dl
 784:	74 6a                	je     7f0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 786:	8d 45 10             	lea    0x10(%ebp),%eax
 789:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 78c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 78f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 791:	89 45 d0             	mov    %eax,-0x30(%ebp)
 794:	eb 36                	jmp    7cc <printf+0x5c>
 796:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 79d:	8d 76 00             	lea    0x0(%esi),%esi
 7a0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7a3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7a8:	83 f8 25             	cmp    $0x25,%eax
 7ab:	74 15                	je     7c2 <printf+0x52>
  write(fd, &c, 1);
 7ad:	83 ec 04             	sub    $0x4,%esp
 7b0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7b3:	6a 01                	push   $0x1
 7b5:	57                   	push   %edi
 7b6:	56                   	push   %esi
 7b7:	e8 6a fe ff ff       	call   626 <write>
 7bc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7bf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7c2:	0f b6 13             	movzbl (%ebx),%edx
 7c5:	83 c3 01             	add    $0x1,%ebx
 7c8:	84 d2                	test   %dl,%dl
 7ca:	74 24                	je     7f0 <printf+0x80>
    c = fmt[i] & 0xff;
 7cc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7cf:	85 c9                	test   %ecx,%ecx
 7d1:	74 cd                	je     7a0 <printf+0x30>
      }
    } else if(state == '%'){
 7d3:	83 f9 25             	cmp    $0x25,%ecx
 7d6:	75 ea                	jne    7c2 <printf+0x52>
      if(c == 'd'){
 7d8:	83 f8 25             	cmp    $0x25,%eax
 7db:	0f 84 07 01 00 00    	je     8e8 <printf+0x178>
 7e1:	83 e8 63             	sub    $0x63,%eax
 7e4:	83 f8 15             	cmp    $0x15,%eax
 7e7:	77 17                	ja     800 <printf+0x90>
 7e9:	ff 24 85 5c 0b 00 00 	jmp    *0xb5c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7f3:	5b                   	pop    %ebx
 7f4:	5e                   	pop    %esi
 7f5:	5f                   	pop    %edi
 7f6:	5d                   	pop    %ebp
 7f7:	c3                   	ret    
 7f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ff:	90                   	nop
  write(fd, &c, 1);
 800:	83 ec 04             	sub    $0x4,%esp
 803:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 806:	6a 01                	push   $0x1
 808:	57                   	push   %edi
 809:	56                   	push   %esi
 80a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 80e:	e8 13 fe ff ff       	call   626 <write>
        putc(fd, c);
 813:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 817:	83 c4 0c             	add    $0xc,%esp
 81a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 81d:	6a 01                	push   $0x1
 81f:	57                   	push   %edi
 820:	56                   	push   %esi
 821:	e8 00 fe ff ff       	call   626 <write>
        putc(fd, c);
 826:	83 c4 10             	add    $0x10,%esp
      state = 0;
 829:	31 c9                	xor    %ecx,%ecx
 82b:	eb 95                	jmp    7c2 <printf+0x52>
 82d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 830:	83 ec 0c             	sub    $0xc,%esp
 833:	b9 10 00 00 00       	mov    $0x10,%ecx
 838:	6a 00                	push   $0x0
 83a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 83d:	8b 10                	mov    (%eax),%edx
 83f:	89 f0                	mov    %esi,%eax
 841:	e8 7a fe ff ff       	call   6c0 <printint>
        ap++;
 846:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 84a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 84d:	31 c9                	xor    %ecx,%ecx
 84f:	e9 6e ff ff ff       	jmp    7c2 <printf+0x52>
 854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 858:	8b 45 d0             	mov    -0x30(%ebp),%eax
 85b:	8b 10                	mov    (%eax),%edx
        ap++;
 85d:	83 c0 04             	add    $0x4,%eax
 860:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 863:	85 d2                	test   %edx,%edx
 865:	0f 84 8d 00 00 00    	je     8f8 <printf+0x188>
        while(*s != 0){
 86b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 86e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 870:	84 c0                	test   %al,%al
 872:	0f 84 4a ff ff ff    	je     7c2 <printf+0x52>
 878:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 87b:	89 d3                	mov    %edx,%ebx
 87d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 880:	83 ec 04             	sub    $0x4,%esp
          s++;
 883:	83 c3 01             	add    $0x1,%ebx
 886:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 889:	6a 01                	push   $0x1
 88b:	57                   	push   %edi
 88c:	56                   	push   %esi
 88d:	e8 94 fd ff ff       	call   626 <write>
        while(*s != 0){
 892:	0f b6 03             	movzbl (%ebx),%eax
 895:	83 c4 10             	add    $0x10,%esp
 898:	84 c0                	test   %al,%al
 89a:	75 e4                	jne    880 <printf+0x110>
      state = 0;
 89c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 89f:	31 c9                	xor    %ecx,%ecx
 8a1:	e9 1c ff ff ff       	jmp    7c2 <printf+0x52>
 8a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8b0:	83 ec 0c             	sub    $0xc,%esp
 8b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8b8:	6a 01                	push   $0x1
 8ba:	e9 7b ff ff ff       	jmp    83a <printf+0xca>
 8bf:	90                   	nop
        putc(fd, *ap);
 8c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8c6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8c8:	6a 01                	push   $0x1
 8ca:	57                   	push   %edi
 8cb:	56                   	push   %esi
        putc(fd, *ap);
 8cc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8cf:	e8 52 fd ff ff       	call   626 <write>
        ap++;
 8d4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8d8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8db:	31 c9                	xor    %ecx,%ecx
 8dd:	e9 e0 fe ff ff       	jmp    7c2 <printf+0x52>
 8e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8e8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8eb:	83 ec 04             	sub    $0x4,%esp
 8ee:	e9 2a ff ff ff       	jmp    81d <printf+0xad>
 8f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8f7:	90                   	nop
          s = "(null)";
 8f8:	ba 54 0b 00 00       	mov    $0xb54,%edx
        while(*s != 0){
 8fd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 900:	b8 28 00 00 00       	mov    $0x28,%eax
 905:	89 d3                	mov    %edx,%ebx
 907:	e9 74 ff ff ff       	jmp    880 <printf+0x110>
 90c:	66 90                	xchg   %ax,%ax
 90e:	66 90                	xchg   %ax,%ax

00000910 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 910:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 911:	a1 4c 0f 00 00       	mov    0xf4c,%eax
{
 916:	89 e5                	mov    %esp,%ebp
 918:	57                   	push   %edi
 919:	56                   	push   %esi
 91a:	53                   	push   %ebx
 91b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 91e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 921:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 928:	89 c2                	mov    %eax,%edx
 92a:	8b 00                	mov    (%eax),%eax
 92c:	39 ca                	cmp    %ecx,%edx
 92e:	73 30                	jae    960 <free+0x50>
 930:	39 c1                	cmp    %eax,%ecx
 932:	72 04                	jb     938 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 934:	39 c2                	cmp    %eax,%edx
 936:	72 f0                	jb     928 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 938:	8b 73 fc             	mov    -0x4(%ebx),%esi
 93b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 93e:	39 f8                	cmp    %edi,%eax
 940:	74 30                	je     972 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 942:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 945:	8b 42 04             	mov    0x4(%edx),%eax
 948:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 94b:	39 f1                	cmp    %esi,%ecx
 94d:	74 3a                	je     989 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 94f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 951:	5b                   	pop    %ebx
  freep = p;
 952:	89 15 4c 0f 00 00    	mov    %edx,0xf4c
}
 958:	5e                   	pop    %esi
 959:	5f                   	pop    %edi
 95a:	5d                   	pop    %ebp
 95b:	c3                   	ret    
 95c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 960:	39 c2                	cmp    %eax,%edx
 962:	72 c4                	jb     928 <free+0x18>
 964:	39 c1                	cmp    %eax,%ecx
 966:	73 c0                	jae    928 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 968:	8b 73 fc             	mov    -0x4(%ebx),%esi
 96b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 96e:	39 f8                	cmp    %edi,%eax
 970:	75 d0                	jne    942 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 972:	03 70 04             	add    0x4(%eax),%esi
 975:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 978:	8b 02                	mov    (%edx),%eax
 97a:	8b 00                	mov    (%eax),%eax
 97c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 97f:	8b 42 04             	mov    0x4(%edx),%eax
 982:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 985:	39 f1                	cmp    %esi,%ecx
 987:	75 c6                	jne    94f <free+0x3f>
    p->s.size += bp->s.size;
 989:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 98c:	89 15 4c 0f 00 00    	mov    %edx,0xf4c
    p->s.size += bp->s.size;
 992:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 995:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 998:	89 0a                	mov    %ecx,(%edx)
}
 99a:	5b                   	pop    %ebx
 99b:	5e                   	pop    %esi
 99c:	5f                   	pop    %edi
 99d:	5d                   	pop    %ebp
 99e:	c3                   	ret    
 99f:	90                   	nop

000009a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9a0:	55                   	push   %ebp
 9a1:	89 e5                	mov    %esp,%ebp
 9a3:	57                   	push   %edi
 9a4:	56                   	push   %esi
 9a5:	53                   	push   %ebx
 9a6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9ac:	8b 3d 4c 0f 00 00    	mov    0xf4c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9b2:	8d 70 07             	lea    0x7(%eax),%esi
 9b5:	c1 ee 03             	shr    $0x3,%esi
 9b8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9bb:	85 ff                	test   %edi,%edi
 9bd:	0f 84 9d 00 00 00    	je     a60 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9c3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9c5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9c8:	39 f1                	cmp    %esi,%ecx
 9ca:	73 6a                	jae    a36 <malloc+0x96>
 9cc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9d1:	39 de                	cmp    %ebx,%esi
 9d3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9d6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9dd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9e0:	eb 17                	jmp    9f9 <malloc+0x59>
 9e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9e8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9ea:	8b 48 04             	mov    0x4(%eax),%ecx
 9ed:	39 f1                	cmp    %esi,%ecx
 9ef:	73 4f                	jae    a40 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9f1:	8b 3d 4c 0f 00 00    	mov    0xf4c,%edi
 9f7:	89 c2                	mov    %eax,%edx
 9f9:	39 d7                	cmp    %edx,%edi
 9fb:	75 eb                	jne    9e8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9fd:	83 ec 0c             	sub    $0xc,%esp
 a00:	ff 75 e4             	push   -0x1c(%ebp)
 a03:	e8 86 fc ff ff       	call   68e <sbrk>
  if(p == (char*)-1)
 a08:	83 c4 10             	add    $0x10,%esp
 a0b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a0e:	74 1c                	je     a2c <malloc+0x8c>
  hp->s.size = nu;
 a10:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a13:	83 ec 0c             	sub    $0xc,%esp
 a16:	83 c0 08             	add    $0x8,%eax
 a19:	50                   	push   %eax
 a1a:	e8 f1 fe ff ff       	call   910 <free>
  return freep;
 a1f:	8b 15 4c 0f 00 00    	mov    0xf4c,%edx
      if((p = morecore(nunits)) == 0)
 a25:	83 c4 10             	add    $0x10,%esp
 a28:	85 d2                	test   %edx,%edx
 a2a:	75 bc                	jne    9e8 <malloc+0x48>
        return 0;
  }
}
 a2c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a2f:	31 c0                	xor    %eax,%eax
}
 a31:	5b                   	pop    %ebx
 a32:	5e                   	pop    %esi
 a33:	5f                   	pop    %edi
 a34:	5d                   	pop    %ebp
 a35:	c3                   	ret    
    if(p->s.size >= nunits){
 a36:	89 d0                	mov    %edx,%eax
 a38:	89 fa                	mov    %edi,%edx
 a3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a40:	39 ce                	cmp    %ecx,%esi
 a42:	74 4c                	je     a90 <malloc+0xf0>
        p->s.size -= nunits;
 a44:	29 f1                	sub    %esi,%ecx
 a46:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a49:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a4c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a4f:	89 15 4c 0f 00 00    	mov    %edx,0xf4c
}
 a55:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a58:	83 c0 08             	add    $0x8,%eax
}
 a5b:	5b                   	pop    %ebx
 a5c:	5e                   	pop    %esi
 a5d:	5f                   	pop    %edi
 a5e:	5d                   	pop    %ebp
 a5f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a60:	c7 05 4c 0f 00 00 50 	movl   $0xf50,0xf4c
 a67:	0f 00 00 
    base.s.size = 0;
 a6a:	bf 50 0f 00 00       	mov    $0xf50,%edi
    base.s.ptr = freep = prevp = &base;
 a6f:	c7 05 50 0f 00 00 50 	movl   $0xf50,0xf50
 a76:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a79:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a7b:	c7 05 54 0f 00 00 00 	movl   $0x0,0xf54
 a82:	00 00 00 
    if(p->s.size >= nunits){
 a85:	e9 42 ff ff ff       	jmp    9cc <malloc+0x2c>
 a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a90:	8b 08                	mov    (%eax),%ecx
 a92:	89 0a                	mov    %ecx,(%edx)
 a94:	eb b9                	jmp    a4f <malloc+0xaf>
