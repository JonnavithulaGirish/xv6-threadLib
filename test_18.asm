
_test_18:     file format elf32-i386


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
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   ppid = getpid();
   f:	e8 b0 05 00 00       	call   5c4 <getpid>

   lock_init(&lock);
  14:	83 ec 0c             	sub    $0xc,%esp
  17:	68 70 0e 00 00       	push   $0xe70
   ppid = getpid();
  1c:	a3 7c 0e 00 00       	mov    %eax,0xe7c
   lock_init(&lock);
  21:	e8 ca 04 00 00       	call   4f0 <lock_init>

   int i;
   for (i = 0; i < num_threads; i++) {
  26:	a1 6c 0e 00 00       	mov    0xe6c,%eax
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 8e b4 00 00 00    	jle    ea <main+0xea>
  36:	31 db                	xor    %ebx,%ebx
  38:	eb 12                	jmp    4c <main+0x4c>
  3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40:	a1 6c 0e 00 00       	mov    0xe6c,%eax
  45:	83 c3 01             	add    $0x1,%ebx
  48:	39 d8                	cmp    %ebx,%eax
  4a:	7e 5e                	jle    aa <main+0xaa>
      int thread_pid = thread_create(worker, 0, 0);
  4c:	83 ec 04             	sub    $0x4,%esp
  4f:	6a 00                	push   $0x0
  51:	6a 00                	push   $0x0
  53:	68 60 01 00 00       	push   $0x160
  58:	e8 33 04 00 00       	call   490 <thread_create>
      assert(thread_pid > 0);
  5d:	83 c4 10             	add    $0x10,%esp
  60:	85 c0                	test   %eax,%eax
  62:	7f dc                	jg     40 <main+0x40>
  64:	6a 26                	push   $0x26
  66:	68 d8 09 00 00       	push   $0x9d8
  6b:	68 e2 09 00 00       	push   $0x9e2
  70:	6a 01                	push   $0x1
  72:	e8 39 06 00 00       	call   6b0 <printf>
  77:	83 c4 0c             	add    $0xc,%esp
  7a:	68 f1 09 00 00       	push   $0x9f1
   }

   for (i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  7f:	68 00 0a 00 00       	push   $0xa00
  84:	6a 01                	push   $0x1
  86:	e8 25 06 00 00       	call   6b0 <printf>
  8b:	5a                   	pop    %edx
  8c:	59                   	pop    %ecx
  8d:	68 14 0a 00 00       	push   $0xa14
  92:	6a 01                	push   $0x1
  94:	e8 17 06 00 00       	call   6b0 <printf>
  99:	5b                   	pop    %ebx
  9a:	ff 35 7c 0e 00 00    	push   0xe7c
  a0:	e8 cf 04 00 00       	call   574 <kill>
  a5:	e8 9a 04 00 00       	call   544 <exit>
   for (i = 0; i < num_threads; i++) {
  aa:	85 c0                	test   %eax,%eax
  ac:	7e 3c                	jle    ea <main+0xea>
  ae:	31 db                	xor    %ebx,%ebx
  b0:	eb 12                	jmp    c4 <main+0xc4>
  b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  b8:	a1 6c 0e 00 00       	mov    0xe6c,%eax
  bd:	83 c3 01             	add    $0x1,%ebx
  c0:	39 d8                	cmp    %ebx,%eax
  c2:	7e 26                	jle    ea <main+0xea>
      int join_pid = thread_join();
  c4:	e8 f7 03 00 00       	call   4c0 <thread_join>
      assert(join_pid > 0);
  c9:	85 c0                	test   %eax,%eax
  cb:	7f eb                	jg     b8 <main+0xb8>
  cd:	6a 2b                	push   $0x2b
  cf:	68 d8 09 00 00       	push   $0x9d8
  d4:	68 e2 09 00 00       	push   $0x9e2
  d9:	6a 01                	push   $0x1
  db:	e8 d0 05 00 00       	call   6b0 <printf>
  e0:	83 c4 0c             	add    $0xc,%esp
  e3:	68 28 0a 00 00       	push   $0xa28
  e8:	eb 95                	jmp    7f <main+0x7f>
   }

   assert(global == num_threads * 2);
  ea:	01 c0                	add    %eax,%eax
  ec:	3b 05 78 0e 00 00    	cmp    0xe78,%eax
  f2:	74 20                	je     114 <main+0x114>
  f4:	6a 2e                	push   $0x2e
  f6:	68 d8 09 00 00       	push   $0x9d8
  fb:	68 e2 09 00 00       	push   $0x9e2
 100:	6a 01                	push   $0x1
 102:	e8 a9 05 00 00       	call   6b0 <printf>
 107:	83 c4 0c             	add    $0xc,%esp
 10a:	68 35 0a 00 00       	push   $0xa35
 10f:	e9 6b ff ff ff       	jmp    7f <main+0x7f>

   printf(1, "TEST PASSED\n");
 114:	50                   	push   %eax
 115:	50                   	push   %eax
 116:	68 4f 0a 00 00       	push   $0xa4f
 11b:	6a 01                	push   $0x1
 11d:	e8 8e 05 00 00       	call   6b0 <printf>
   exit();
 122:	e8 1d 04 00 00       	call   544 <exit>
 127:	66 90                	xchg   %ax,%ax
 129:	66 90                	xchg   %ax,%ax
 12b:	66 90                	xchg   %ax,%ax
 12d:	66 90                	xchg   %ax,%ax
 12f:	90                   	nop

00000130 <worker2>:
}

void worker2(void *arg1,void *arg2){
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	83 ec 14             	sub    $0x14,%esp
    int j;
    lock_acquire(&lock);
 136:	68 70 0e 00 00       	push   $0xe70
 13b:	e8 d0 03 00 00       	call   510 <lock_acquire>
    for(j=0;j<50;j++);
    global++;
    lock_release(&lock);
 140:	c7 04 24 70 0e 00 00 	movl   $0xe70,(%esp)
    global++;
 147:	83 05 78 0e 00 00 01 	addl   $0x1,0xe78
    lock_release(&lock);
 14e:	e8 dd 03 00 00       	call   530 <lock_release>
    exit();
 153:	e8 ec 03 00 00       	call   544 <exit>
 158:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 15f:	90                   	nop

00000160 <worker>:
    
}
void
worker(void *arg1, void *arg2) {
 160:	55                   	push   %ebp
 161:	89 e5                	mov    %esp,%ebp
 163:	53                   	push   %ebx
 164:	83 ec 10             	sub    $0x10,%esp
   
    lock_acquire(&lock);
 167:	68 70 0e 00 00       	push   $0xe70
 16c:	e8 9f 03 00 00       	call   510 <lock_acquire>
    int j;
    for(j = 0; j < 50; j++); // take some time
    global++;
    lock_release(&lock);
 171:	c7 04 24 70 0e 00 00 	movl   $0xe70,(%esp)
    global++;
 178:	83 05 78 0e 00 00 01 	addl   $0x1,0xe78
    lock_release(&lock);
 17f:	e8 ac 03 00 00       	call   530 <lock_release>

    int nested_thread_pid = thread_create(worker2, 0, 0);
 184:	83 c4 0c             	add    $0xc,%esp
 187:	6a 00                	push   $0x0
 189:	6a 00                	push   $0x0
 18b:	68 30 01 00 00       	push   $0x130
 190:	e8 fb 02 00 00       	call   490 <thread_create>
    assert(nested_thread_pid > 0);
 195:	83 c4 10             	add    $0x10,%esp
 198:	85 c0                	test   %eax,%eax
 19a:	7e 59                	jle    1f5 <worker+0x95>
 19c:	89 c3                	mov    %eax,%ebx
    int nested_join_pid = thread_join();
 19e:	e8 1d 03 00 00       	call   4c0 <thread_join>
    assert(nested_join_pid > 0);
 1a3:	85 c0                	test   %eax,%eax
 1a5:	7e 6b                	jle    212 <worker+0xb2>
    
    assert(nested_thread_pid==nested_join_pid);
 1a7:	39 c3                	cmp    %eax,%ebx
 1a9:	0f 84 80 00 00 00    	je     22f <worker+0xcf>
 1af:	6a 4b                	push   $0x4b
 1b1:	68 d8 09 00 00       	push   $0x9d8
 1b6:	68 e2 09 00 00       	push   $0x9e2
 1bb:	6a 01                	push   $0x1
 1bd:	e8 ee 04 00 00       	call   6b0 <printf>
 1c2:	83 c4 0c             	add    $0xc,%esp
 1c5:	68 5c 0a 00 00       	push   $0xa5c
    assert(nested_join_pid > 0);
 1ca:	68 00 0a 00 00       	push   $0xa00
 1cf:	6a 01                	push   $0x1
 1d1:	e8 da 04 00 00       	call   6b0 <printf>
 1d6:	58                   	pop    %eax
 1d7:	5a                   	pop    %edx
 1d8:	68 14 0a 00 00       	push   $0xa14
 1dd:	6a 01                	push   $0x1
 1df:	e8 cc 04 00 00       	call   6b0 <printf>
 1e4:	59                   	pop    %ecx
 1e5:	ff 35 7c 0e 00 00    	push   0xe7c
 1eb:	e8 84 03 00 00       	call   574 <kill>
 1f0:	e8 4f 03 00 00       	call   544 <exit>
    assert(nested_thread_pid > 0);
 1f5:	6a 47                	push   $0x47
 1f7:	68 d8 09 00 00       	push   $0x9d8
 1fc:	68 e2 09 00 00       	push   $0x9e2
 201:	6a 01                	push   $0x1
 203:	e8 a8 04 00 00       	call   6b0 <printf>
 208:	83 c4 0c             	add    $0xc,%esp
 20b:	68 ea 09 00 00       	push   $0x9ea
 210:	eb b8                	jmp    1ca <worker+0x6a>
    assert(nested_join_pid > 0);
 212:	6a 49                	push   $0x49
 214:	68 d8 09 00 00       	push   $0x9d8
 219:	68 e2 09 00 00       	push   $0x9e2
 21e:	6a 01                	push   $0x1
 220:	e8 8b 04 00 00       	call   6b0 <printf>
 225:	83 c4 0c             	add    $0xc,%esp
 228:	68 21 0a 00 00       	push   $0xa21
 22d:	eb 9b                	jmp    1ca <worker+0x6a>

   exit();
 22f:	e8 10 03 00 00       	call   544 <exit>
 234:	66 90                	xchg   %ax,%ax
 236:	66 90                	xchg   %ax,%ax
 238:	66 90                	xchg   %ax,%ax
 23a:	66 90                	xchg   %ax,%ax
 23c:	66 90                	xchg   %ax,%ax
 23e:	66 90                	xchg   %ax,%ax

00000240 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 240:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 241:	31 c0                	xor    %eax,%eax
{
 243:	89 e5                	mov    %esp,%ebp
 245:	53                   	push   %ebx
 246:	8b 4d 08             	mov    0x8(%ebp),%ecx
 249:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 250:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 254:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 257:	83 c0 01             	add    $0x1,%eax
 25a:	84 d2                	test   %dl,%dl
 25c:	75 f2                	jne    250 <strcpy+0x10>
    ;
  return os;
}
 25e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 261:	89 c8                	mov    %ecx,%eax
 263:	c9                   	leave  
 264:	c3                   	ret    
 265:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000270 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	53                   	push   %ebx
 274:	8b 55 08             	mov    0x8(%ebp),%edx
 277:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 27a:	0f b6 02             	movzbl (%edx),%eax
 27d:	84 c0                	test   %al,%al
 27f:	75 17                	jne    298 <strcmp+0x28>
 281:	eb 3a                	jmp    2bd <strcmp+0x4d>
 283:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 287:	90                   	nop
 288:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 28c:	83 c2 01             	add    $0x1,%edx
 28f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 292:	84 c0                	test   %al,%al
 294:	74 1a                	je     2b0 <strcmp+0x40>
    p++, q++;
 296:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 298:	0f b6 19             	movzbl (%ecx),%ebx
 29b:	38 c3                	cmp    %al,%bl
 29d:	74 e9                	je     288 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 29f:	29 d8                	sub    %ebx,%eax
}
 2a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2a4:	c9                   	leave  
 2a5:	c3                   	ret    
 2a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 2b0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2b4:	31 c0                	xor    %eax,%eax
 2b6:	29 d8                	sub    %ebx,%eax
}
 2b8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2bb:	c9                   	leave  
 2bc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 2bd:	0f b6 19             	movzbl (%ecx),%ebx
 2c0:	31 c0                	xor    %eax,%eax
 2c2:	eb db                	jmp    29f <strcmp+0x2f>
 2c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2cf:	90                   	nop

000002d0 <strlen>:

uint
strlen(const char *s)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2d6:	80 3a 00             	cmpb   $0x0,(%edx)
 2d9:	74 15                	je     2f0 <strlen+0x20>
 2db:	31 c0                	xor    %eax,%eax
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
 2e0:	83 c0 01             	add    $0x1,%eax
 2e3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2e7:	89 c1                	mov    %eax,%ecx
 2e9:	75 f5                	jne    2e0 <strlen+0x10>
    ;
  return n;
}
 2eb:	89 c8                	mov    %ecx,%eax
 2ed:	5d                   	pop    %ebp
 2ee:	c3                   	ret    
 2ef:	90                   	nop
  for(n = 0; s[n]; n++)
 2f0:	31 c9                	xor    %ecx,%ecx
}
 2f2:	5d                   	pop    %ebp
 2f3:	89 c8                	mov    %ecx,%eax
 2f5:	c3                   	ret    
 2f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fd:	8d 76 00             	lea    0x0(%esi),%esi

00000300 <memset>:

void*
memset(void *dst, int c, uint n)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	57                   	push   %edi
 304:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 307:	8b 4d 10             	mov    0x10(%ebp),%ecx
 30a:	8b 45 0c             	mov    0xc(%ebp),%eax
 30d:	89 d7                	mov    %edx,%edi
 30f:	fc                   	cld    
 310:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 312:	8b 7d fc             	mov    -0x4(%ebp),%edi
 315:	89 d0                	mov    %edx,%eax
 317:	c9                   	leave  
 318:	c3                   	ret    
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000320 <strchr>:

char*
strchr(const char *s, char c)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	8b 45 08             	mov    0x8(%ebp),%eax
 326:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 32a:	0f b6 10             	movzbl (%eax),%edx
 32d:	84 d2                	test   %dl,%dl
 32f:	75 12                	jne    343 <strchr+0x23>
 331:	eb 1d                	jmp    350 <strchr+0x30>
 333:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 337:	90                   	nop
 338:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 33c:	83 c0 01             	add    $0x1,%eax
 33f:	84 d2                	test   %dl,%dl
 341:	74 0d                	je     350 <strchr+0x30>
    if(*s == c)
 343:	38 d1                	cmp    %dl,%cl
 345:	75 f1                	jne    338 <strchr+0x18>
      return (char*)s;
  return 0;
}
 347:	5d                   	pop    %ebp
 348:	c3                   	ret    
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 350:	31 c0                	xor    %eax,%eax
}
 352:	5d                   	pop    %ebp
 353:	c3                   	ret    
 354:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <gets>:

char*
gets(char *buf, int max)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
 364:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 365:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 368:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 369:	31 db                	xor    %ebx,%ebx
{
 36b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 36e:	eb 27                	jmp    397 <gets+0x37>
    cc = read(0, &c, 1);
 370:	83 ec 04             	sub    $0x4,%esp
 373:	6a 01                	push   $0x1
 375:	57                   	push   %edi
 376:	6a 00                	push   $0x0
 378:	e8 df 01 00 00       	call   55c <read>
    if(cc < 1)
 37d:	83 c4 10             	add    $0x10,%esp
 380:	85 c0                	test   %eax,%eax
 382:	7e 1d                	jle    3a1 <gets+0x41>
      break;
    buf[i++] = c;
 384:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 388:	8b 55 08             	mov    0x8(%ebp),%edx
 38b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 38f:	3c 0a                	cmp    $0xa,%al
 391:	74 1d                	je     3b0 <gets+0x50>
 393:	3c 0d                	cmp    $0xd,%al
 395:	74 19                	je     3b0 <gets+0x50>
  for(i=0; i+1 < max; ){
 397:	89 de                	mov    %ebx,%esi
 399:	83 c3 01             	add    $0x1,%ebx
 39c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 39f:	7c cf                	jl     370 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 3a1:	8b 45 08             	mov    0x8(%ebp),%eax
 3a4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 3a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3ab:	5b                   	pop    %ebx
 3ac:	5e                   	pop    %esi
 3ad:	5f                   	pop    %edi
 3ae:	5d                   	pop    %ebp
 3af:	c3                   	ret    
  buf[i] = '\0';
 3b0:	8b 45 08             	mov    0x8(%ebp),%eax
 3b3:	89 de                	mov    %ebx,%esi
 3b5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 3b9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3bc:	5b                   	pop    %ebx
 3bd:	5e                   	pop    %esi
 3be:	5f                   	pop    %edi
 3bf:	5d                   	pop    %ebp
 3c0:	c3                   	ret    
 3c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	56                   	push   %esi
 3d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3d5:	83 ec 08             	sub    $0x8,%esp
 3d8:	6a 00                	push   $0x0
 3da:	ff 75 08             	push   0x8(%ebp)
 3dd:	e8 a2 01 00 00       	call   584 <open>
  if(fd < 0)
 3e2:	83 c4 10             	add    $0x10,%esp
 3e5:	85 c0                	test   %eax,%eax
 3e7:	78 27                	js     410 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3e9:	83 ec 08             	sub    $0x8,%esp
 3ec:	ff 75 0c             	push   0xc(%ebp)
 3ef:	89 c3                	mov    %eax,%ebx
 3f1:	50                   	push   %eax
 3f2:	e8 a5 01 00 00       	call   59c <fstat>
  close(fd);
 3f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3fa:	89 c6                	mov    %eax,%esi
  close(fd);
 3fc:	e8 6b 01 00 00       	call   56c <close>
  return r;
 401:	83 c4 10             	add    $0x10,%esp
}
 404:	8d 65 f8             	lea    -0x8(%ebp),%esp
 407:	89 f0                	mov    %esi,%eax
 409:	5b                   	pop    %ebx
 40a:	5e                   	pop    %esi
 40b:	5d                   	pop    %ebp
 40c:	c3                   	ret    
 40d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 410:	be ff ff ff ff       	mov    $0xffffffff,%esi
 415:	eb ed                	jmp    404 <stat+0x34>
 417:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41e:	66 90                	xchg   %ax,%ax

00000420 <atoi>:

int
atoi(const char *s)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	53                   	push   %ebx
 424:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 427:	0f be 02             	movsbl (%edx),%eax
 42a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 42d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 430:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 435:	77 1e                	ja     455 <atoi+0x35>
 437:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 43e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 440:	83 c2 01             	add    $0x1,%edx
 443:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 446:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 44a:	0f be 02             	movsbl (%edx),%eax
 44d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 450:	80 fb 09             	cmp    $0x9,%bl
 453:	76 eb                	jbe    440 <atoi+0x20>
  return n;
}
 455:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 458:	89 c8                	mov    %ecx,%eax
 45a:	c9                   	leave  
 45b:	c3                   	ret    
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000460 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	8b 45 10             	mov    0x10(%ebp),%eax
 467:	8b 55 08             	mov    0x8(%ebp),%edx
 46a:	56                   	push   %esi
 46b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 46e:	85 c0                	test   %eax,%eax
 470:	7e 13                	jle    485 <memmove+0x25>
 472:	01 d0                	add    %edx,%eax
  dst = vdst;
 474:	89 d7                	mov    %edx,%edi
 476:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 480:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 481:	39 f8                	cmp    %edi,%eax
 483:	75 fb                	jne    480 <memmove+0x20>
  return vdst;
}
 485:	5e                   	pop    %esi
 486:	89 d0                	mov    %edx,%eax
 488:	5f                   	pop    %edi
 489:	5d                   	pop    %ebp
 48a:	c3                   	ret    
 48b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <thread_create>:


//Create thread_Create & thread_join


int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	83 ec 14             	sub    $0x14,%esp
   void *stack = malloc(PGSIZE);
 496:	68 00 10 00 00       	push   $0x1000
 49b:	e8 40 04 00 00       	call   8e0 <malloc>
   return clone(start_routine, arg1, arg2, stack);
 4a0:	50                   	push   %eax
 4a1:	ff 75 10             	push   0x10(%ebp)
 4a4:	ff 75 0c             	push   0xc(%ebp)
 4a7:	ff 75 08             	push   0x8(%ebp)
 4aa:	e8 35 01 00 00       	call   5e4 <clone>
}
 4af:	c9                   	leave  
 4b0:	c3                   	ret    
 4b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop

000004c0 <thread_join>:

int thread_join(){
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
  void *stack;
  int pid= join(&stack);
 4c4:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 4c7:	83 ec 20             	sub    $0x20,%esp
  int pid= join(&stack);
 4ca:	50                   	push   %eax
 4cb:	e8 1c 01 00 00       	call   5ec <join>
  if(pid >0 ){
 4d0:	83 c4 10             	add    $0x10,%esp
  int pid= join(&stack);
 4d3:	89 c2                	mov    %eax,%edx
  if(pid >0 ){
 4d5:	85 c0                	test   %eax,%eax
 4d7:	7e 0d                	jle    4e6 <thread_join+0x26>
 4d9:	8b 7d f4             	mov    -0xc(%ebp),%edi
 4dc:	b9 00 10 00 00       	mov    $0x1000,%ecx
 4e1:	31 c0                	xor    %eax,%eax
 4e3:	fc                   	cld    
 4e4:	f3 aa                	rep stos %al,%es:(%edi)
    memset(stack,0,PGSIZE);
  }
  return pid;
}
 4e6:	8b 7d fc             	mov    -0x4(%ebp),%edi
 4e9:	89 d0                	mov    %edx,%eax
 4eb:	c9                   	leave  
 4ec:	c3                   	ret    
 4ed:	8d 76 00             	lea    0x0(%esi),%esi

000004f0 <lock_init>:

void lock_init(lock_t *lock) {
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 4f6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 4fc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 503:	5d                   	pop    %ebp
 504:	c3                   	ret    
 505:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 50c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000510 <lock_acquire>:

void lock_acquire(lock_t *lock){
 510:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 511:	b8 01 00 00 00       	mov    $0x1,%eax
 516:	89 e5                	mov    %esp,%ebp
 518:	8b 55 08             	mov    0x8(%ebp),%edx
 51b:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn);
 51f:	8b 52 04             	mov    0x4(%edx),%edx
 522:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 528:	39 c2                	cmp    %eax,%edx
 52a:	75 fc                	jne    528 <lock_acquire+0x18>
}
 52c:	5d                   	pop    %ebp
 52d:	c3                   	ret    
 52e:	66 90                	xchg   %ax,%ax

00000530 <lock_release>:

void lock_release(lock_t *lock){
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 536:	83 40 04 01          	addl   $0x1,0x4(%eax)
 53a:	5d                   	pop    %ebp
 53b:	c3                   	ret    

0000053c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 53c:	b8 01 00 00 00       	mov    $0x1,%eax
 541:	cd 40                	int    $0x40
 543:	c3                   	ret    

00000544 <exit>:
SYSCALL(exit)
 544:	b8 02 00 00 00       	mov    $0x2,%eax
 549:	cd 40                	int    $0x40
 54b:	c3                   	ret    

0000054c <wait>:
SYSCALL(wait)
 54c:	b8 03 00 00 00       	mov    $0x3,%eax
 551:	cd 40                	int    $0x40
 553:	c3                   	ret    

00000554 <pipe>:
SYSCALL(pipe)
 554:	b8 04 00 00 00       	mov    $0x4,%eax
 559:	cd 40                	int    $0x40
 55b:	c3                   	ret    

0000055c <read>:
SYSCALL(read)
 55c:	b8 05 00 00 00       	mov    $0x5,%eax
 561:	cd 40                	int    $0x40
 563:	c3                   	ret    

00000564 <write>:
SYSCALL(write)
 564:	b8 10 00 00 00       	mov    $0x10,%eax
 569:	cd 40                	int    $0x40
 56b:	c3                   	ret    

0000056c <close>:
SYSCALL(close)
 56c:	b8 15 00 00 00       	mov    $0x15,%eax
 571:	cd 40                	int    $0x40
 573:	c3                   	ret    

00000574 <kill>:
SYSCALL(kill)
 574:	b8 06 00 00 00       	mov    $0x6,%eax
 579:	cd 40                	int    $0x40
 57b:	c3                   	ret    

0000057c <exec>:
SYSCALL(exec)
 57c:	b8 07 00 00 00       	mov    $0x7,%eax
 581:	cd 40                	int    $0x40
 583:	c3                   	ret    

00000584 <open>:
SYSCALL(open)
 584:	b8 0f 00 00 00       	mov    $0xf,%eax
 589:	cd 40                	int    $0x40
 58b:	c3                   	ret    

0000058c <mknod>:
SYSCALL(mknod)
 58c:	b8 11 00 00 00       	mov    $0x11,%eax
 591:	cd 40                	int    $0x40
 593:	c3                   	ret    

00000594 <unlink>:
SYSCALL(unlink)
 594:	b8 12 00 00 00       	mov    $0x12,%eax
 599:	cd 40                	int    $0x40
 59b:	c3                   	ret    

0000059c <fstat>:
SYSCALL(fstat)
 59c:	b8 08 00 00 00       	mov    $0x8,%eax
 5a1:	cd 40                	int    $0x40
 5a3:	c3                   	ret    

000005a4 <link>:
SYSCALL(link)
 5a4:	b8 13 00 00 00       	mov    $0x13,%eax
 5a9:	cd 40                	int    $0x40
 5ab:	c3                   	ret    

000005ac <mkdir>:
SYSCALL(mkdir)
 5ac:	b8 14 00 00 00       	mov    $0x14,%eax
 5b1:	cd 40                	int    $0x40
 5b3:	c3                   	ret    

000005b4 <chdir>:
SYSCALL(chdir)
 5b4:	b8 09 00 00 00       	mov    $0x9,%eax
 5b9:	cd 40                	int    $0x40
 5bb:	c3                   	ret    

000005bc <dup>:
SYSCALL(dup)
 5bc:	b8 0a 00 00 00       	mov    $0xa,%eax
 5c1:	cd 40                	int    $0x40
 5c3:	c3                   	ret    

000005c4 <getpid>:
SYSCALL(getpid)
 5c4:	b8 0b 00 00 00       	mov    $0xb,%eax
 5c9:	cd 40                	int    $0x40
 5cb:	c3                   	ret    

000005cc <sbrk>:
SYSCALL(sbrk)
 5cc:	b8 0c 00 00 00       	mov    $0xc,%eax
 5d1:	cd 40                	int    $0x40
 5d3:	c3                   	ret    

000005d4 <sleep>:
SYSCALL(sleep)
 5d4:	b8 0d 00 00 00       	mov    $0xd,%eax
 5d9:	cd 40                	int    $0x40
 5db:	c3                   	ret    

000005dc <uptime>:
SYSCALL(uptime)
 5dc:	b8 0e 00 00 00       	mov    $0xe,%eax
 5e1:	cd 40                	int    $0x40
 5e3:	c3                   	ret    

000005e4 <clone>:
SYSCALL(clone)
 5e4:	b8 16 00 00 00       	mov    $0x16,%eax
 5e9:	cd 40                	int    $0x40
 5eb:	c3                   	ret    

000005ec <join>:
SYSCALL(join)
 5ec:	b8 17 00 00 00       	mov    $0x17,%eax
 5f1:	cd 40                	int    $0x40
 5f3:	c3                   	ret    
 5f4:	66 90                	xchg   %ax,%ax
 5f6:	66 90                	xchg   %ax,%ax
 5f8:	66 90                	xchg   %ax,%ax
 5fa:	66 90                	xchg   %ax,%ax
 5fc:	66 90                	xchg   %ax,%ax
 5fe:	66 90                	xchg   %ax,%ax

00000600 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	56                   	push   %esi
 605:	53                   	push   %ebx
 606:	83 ec 3c             	sub    $0x3c,%esp
 609:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 60c:	89 d1                	mov    %edx,%ecx
{
 60e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 611:	85 d2                	test   %edx,%edx
 613:	0f 89 7f 00 00 00    	jns    698 <printint+0x98>
 619:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 61d:	74 79                	je     698 <printint+0x98>
    neg = 1;
 61f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 626:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 628:	31 db                	xor    %ebx,%ebx
 62a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 62d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 630:	89 c8                	mov    %ecx,%eax
 632:	31 d2                	xor    %edx,%edx
 634:	89 cf                	mov    %ecx,%edi
 636:	f7 75 c4             	divl   -0x3c(%ebp)
 639:	0f b6 92 e0 0a 00 00 	movzbl 0xae0(%edx),%edx
 640:	89 45 c0             	mov    %eax,-0x40(%ebp)
 643:	89 d8                	mov    %ebx,%eax
 645:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 648:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 64b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 64e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 651:	76 dd                	jbe    630 <printint+0x30>
  if(neg)
 653:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 656:	85 c9                	test   %ecx,%ecx
 658:	74 0c                	je     666 <printint+0x66>
    buf[i++] = '-';
 65a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 65f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 661:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 666:	8b 7d b8             	mov    -0x48(%ebp),%edi
 669:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 66d:	eb 07                	jmp    676 <printint+0x76>
 66f:	90                   	nop
    putc(fd, buf[i]);
 670:	0f b6 13             	movzbl (%ebx),%edx
 673:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 676:	83 ec 04             	sub    $0x4,%esp
 679:	88 55 d7             	mov    %dl,-0x29(%ebp)
 67c:	6a 01                	push   $0x1
 67e:	56                   	push   %esi
 67f:	57                   	push   %edi
 680:	e8 df fe ff ff       	call   564 <write>
  while(--i >= 0)
 685:	83 c4 10             	add    $0x10,%esp
 688:	39 de                	cmp    %ebx,%esi
 68a:	75 e4                	jne    670 <printint+0x70>
}
 68c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 68f:	5b                   	pop    %ebx
 690:	5e                   	pop    %esi
 691:	5f                   	pop    %edi
 692:	5d                   	pop    %ebp
 693:	c3                   	ret    
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 698:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 69f:	eb 87                	jmp    628 <printint+0x28>
 6a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6af:	90                   	nop

000006b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	56                   	push   %esi
 6b5:	53                   	push   %ebx
 6b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6bc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6bf:	0f b6 13             	movzbl (%ebx),%edx
 6c2:	84 d2                	test   %dl,%dl
 6c4:	74 6a                	je     730 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6c6:	8d 45 10             	lea    0x10(%ebp),%eax
 6c9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6cc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6cf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6d1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6d4:	eb 36                	jmp    70c <printf+0x5c>
 6d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
 6e0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6e3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6e8:	83 f8 25             	cmp    $0x25,%eax
 6eb:	74 15                	je     702 <printf+0x52>
  write(fd, &c, 1);
 6ed:	83 ec 04             	sub    $0x4,%esp
 6f0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6f3:	6a 01                	push   $0x1
 6f5:	57                   	push   %edi
 6f6:	56                   	push   %esi
 6f7:	e8 68 fe ff ff       	call   564 <write>
 6fc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6ff:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 702:	0f b6 13             	movzbl (%ebx),%edx
 705:	83 c3 01             	add    $0x1,%ebx
 708:	84 d2                	test   %dl,%dl
 70a:	74 24                	je     730 <printf+0x80>
    c = fmt[i] & 0xff;
 70c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 70f:	85 c9                	test   %ecx,%ecx
 711:	74 cd                	je     6e0 <printf+0x30>
      }
    } else if(state == '%'){
 713:	83 f9 25             	cmp    $0x25,%ecx
 716:	75 ea                	jne    702 <printf+0x52>
      if(c == 'd'){
 718:	83 f8 25             	cmp    $0x25,%eax
 71b:	0f 84 07 01 00 00    	je     828 <printf+0x178>
 721:	83 e8 63             	sub    $0x63,%eax
 724:	83 f8 15             	cmp    $0x15,%eax
 727:	77 17                	ja     740 <printf+0x90>
 729:	ff 24 85 88 0a 00 00 	jmp    *0xa88(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 730:	8d 65 f4             	lea    -0xc(%ebp),%esp
 733:	5b                   	pop    %ebx
 734:	5e                   	pop    %esi
 735:	5f                   	pop    %edi
 736:	5d                   	pop    %ebp
 737:	c3                   	ret    
 738:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73f:	90                   	nop
  write(fd, &c, 1);
 740:	83 ec 04             	sub    $0x4,%esp
 743:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 746:	6a 01                	push   $0x1
 748:	57                   	push   %edi
 749:	56                   	push   %esi
 74a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 74e:	e8 11 fe ff ff       	call   564 <write>
        putc(fd, c);
 753:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 757:	83 c4 0c             	add    $0xc,%esp
 75a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 75d:	6a 01                	push   $0x1
 75f:	57                   	push   %edi
 760:	56                   	push   %esi
 761:	e8 fe fd ff ff       	call   564 <write>
        putc(fd, c);
 766:	83 c4 10             	add    $0x10,%esp
      state = 0;
 769:	31 c9                	xor    %ecx,%ecx
 76b:	eb 95                	jmp    702 <printf+0x52>
 76d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 770:	83 ec 0c             	sub    $0xc,%esp
 773:	b9 10 00 00 00       	mov    $0x10,%ecx
 778:	6a 00                	push   $0x0
 77a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 77d:	8b 10                	mov    (%eax),%edx
 77f:	89 f0                	mov    %esi,%eax
 781:	e8 7a fe ff ff       	call   600 <printint>
        ap++;
 786:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 78a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 78d:	31 c9                	xor    %ecx,%ecx
 78f:	e9 6e ff ff ff       	jmp    702 <printf+0x52>
 794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 798:	8b 45 d0             	mov    -0x30(%ebp),%eax
 79b:	8b 10                	mov    (%eax),%edx
        ap++;
 79d:	83 c0 04             	add    $0x4,%eax
 7a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7a3:	85 d2                	test   %edx,%edx
 7a5:	0f 84 8d 00 00 00    	je     838 <printf+0x188>
        while(*s != 0){
 7ab:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 7ae:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7b0:	84 c0                	test   %al,%al
 7b2:	0f 84 4a ff ff ff    	je     702 <printf+0x52>
 7b8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7bb:	89 d3                	mov    %edx,%ebx
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7c0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7c3:	83 c3 01             	add    $0x1,%ebx
 7c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7c9:	6a 01                	push   $0x1
 7cb:	57                   	push   %edi
 7cc:	56                   	push   %esi
 7cd:	e8 92 fd ff ff       	call   564 <write>
        while(*s != 0){
 7d2:	0f b6 03             	movzbl (%ebx),%eax
 7d5:	83 c4 10             	add    $0x10,%esp
 7d8:	84 c0                	test   %al,%al
 7da:	75 e4                	jne    7c0 <printf+0x110>
      state = 0;
 7dc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7df:	31 c9                	xor    %ecx,%ecx
 7e1:	e9 1c ff ff ff       	jmp    702 <printf+0x52>
 7e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7f0:	83 ec 0c             	sub    $0xc,%esp
 7f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7f8:	6a 01                	push   $0x1
 7fa:	e9 7b ff ff ff       	jmp    77a <printf+0xca>
 7ff:	90                   	nop
        putc(fd, *ap);
 800:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 803:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 806:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 808:	6a 01                	push   $0x1
 80a:	57                   	push   %edi
 80b:	56                   	push   %esi
        putc(fd, *ap);
 80c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 80f:	e8 50 fd ff ff       	call   564 <write>
        ap++;
 814:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 818:	83 c4 10             	add    $0x10,%esp
      state = 0;
 81b:	31 c9                	xor    %ecx,%ecx
 81d:	e9 e0 fe ff ff       	jmp    702 <printf+0x52>
 822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 828:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 82b:	83 ec 04             	sub    $0x4,%esp
 82e:	e9 2a ff ff ff       	jmp    75d <printf+0xad>
 833:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 837:	90                   	nop
          s = "(null)";
 838:	ba 7f 0a 00 00       	mov    $0xa7f,%edx
        while(*s != 0){
 83d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 840:	b8 28 00 00 00       	mov    $0x28,%eax
 845:	89 d3                	mov    %edx,%ebx
 847:	e9 74 ff ff ff       	jmp    7c0 <printf+0x110>
 84c:	66 90                	xchg   %ax,%ax
 84e:	66 90                	xchg   %ax,%ax

00000850 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 850:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 851:	a1 80 0e 00 00       	mov    0xe80,%eax
{
 856:	89 e5                	mov    %esp,%ebp
 858:	57                   	push   %edi
 859:	56                   	push   %esi
 85a:	53                   	push   %ebx
 85b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 85e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 868:	89 c2                	mov    %eax,%edx
 86a:	8b 00                	mov    (%eax),%eax
 86c:	39 ca                	cmp    %ecx,%edx
 86e:	73 30                	jae    8a0 <free+0x50>
 870:	39 c1                	cmp    %eax,%ecx
 872:	72 04                	jb     878 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 874:	39 c2                	cmp    %eax,%edx
 876:	72 f0                	jb     868 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 878:	8b 73 fc             	mov    -0x4(%ebx),%esi
 87b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 87e:	39 f8                	cmp    %edi,%eax
 880:	74 30                	je     8b2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 882:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 885:	8b 42 04             	mov    0x4(%edx),%eax
 888:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 88b:	39 f1                	cmp    %esi,%ecx
 88d:	74 3a                	je     8c9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 88f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 891:	5b                   	pop    %ebx
  freep = p;
 892:	89 15 80 0e 00 00    	mov    %edx,0xe80
}
 898:	5e                   	pop    %esi
 899:	5f                   	pop    %edi
 89a:	5d                   	pop    %ebp
 89b:	c3                   	ret    
 89c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8a0:	39 c2                	cmp    %eax,%edx
 8a2:	72 c4                	jb     868 <free+0x18>
 8a4:	39 c1                	cmp    %eax,%ecx
 8a6:	73 c0                	jae    868 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 8a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ae:	39 f8                	cmp    %edi,%eax
 8b0:	75 d0                	jne    882 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8b2:	03 70 04             	add    0x4(%eax),%esi
 8b5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8b8:	8b 02                	mov    (%edx),%eax
 8ba:	8b 00                	mov    (%eax),%eax
 8bc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8bf:	8b 42 04             	mov    0x4(%edx),%eax
 8c2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8c5:	39 f1                	cmp    %esi,%ecx
 8c7:	75 c6                	jne    88f <free+0x3f>
    p->s.size += bp->s.size;
 8c9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8cc:	89 15 80 0e 00 00    	mov    %edx,0xe80
    p->s.size += bp->s.size;
 8d2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8d5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8d8:	89 0a                	mov    %ecx,(%edx)
}
 8da:	5b                   	pop    %ebx
 8db:	5e                   	pop    %esi
 8dc:	5f                   	pop    %edi
 8dd:	5d                   	pop    %ebp
 8de:	c3                   	ret    
 8df:	90                   	nop

000008e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8e0:	55                   	push   %ebp
 8e1:	89 e5                	mov    %esp,%ebp
 8e3:	57                   	push   %edi
 8e4:	56                   	push   %esi
 8e5:	53                   	push   %ebx
 8e6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8ec:	8b 3d 80 0e 00 00    	mov    0xe80,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f2:	8d 70 07             	lea    0x7(%eax),%esi
 8f5:	c1 ee 03             	shr    $0x3,%esi
 8f8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8fb:	85 ff                	test   %edi,%edi
 8fd:	0f 84 9d 00 00 00    	je     9a0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 903:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 905:	8b 4a 04             	mov    0x4(%edx),%ecx
 908:	39 f1                	cmp    %esi,%ecx
 90a:	73 6a                	jae    976 <malloc+0x96>
 90c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 911:	39 de                	cmp    %ebx,%esi
 913:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 916:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 91d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 920:	eb 17                	jmp    939 <malloc+0x59>
 922:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 928:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 92a:	8b 48 04             	mov    0x4(%eax),%ecx
 92d:	39 f1                	cmp    %esi,%ecx
 92f:	73 4f                	jae    980 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 931:	8b 3d 80 0e 00 00    	mov    0xe80,%edi
 937:	89 c2                	mov    %eax,%edx
 939:	39 d7                	cmp    %edx,%edi
 93b:	75 eb                	jne    928 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 93d:	83 ec 0c             	sub    $0xc,%esp
 940:	ff 75 e4             	push   -0x1c(%ebp)
 943:	e8 84 fc ff ff       	call   5cc <sbrk>
  if(p == (char*)-1)
 948:	83 c4 10             	add    $0x10,%esp
 94b:	83 f8 ff             	cmp    $0xffffffff,%eax
 94e:	74 1c                	je     96c <malloc+0x8c>
  hp->s.size = nu;
 950:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 953:	83 ec 0c             	sub    $0xc,%esp
 956:	83 c0 08             	add    $0x8,%eax
 959:	50                   	push   %eax
 95a:	e8 f1 fe ff ff       	call   850 <free>
  return freep;
 95f:	8b 15 80 0e 00 00    	mov    0xe80,%edx
      if((p = morecore(nunits)) == 0)
 965:	83 c4 10             	add    $0x10,%esp
 968:	85 d2                	test   %edx,%edx
 96a:	75 bc                	jne    928 <malloc+0x48>
        return 0;
  }
}
 96c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 96f:	31 c0                	xor    %eax,%eax
}
 971:	5b                   	pop    %ebx
 972:	5e                   	pop    %esi
 973:	5f                   	pop    %edi
 974:	5d                   	pop    %ebp
 975:	c3                   	ret    
    if(p->s.size >= nunits){
 976:	89 d0                	mov    %edx,%eax
 978:	89 fa                	mov    %edi,%edx
 97a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 980:	39 ce                	cmp    %ecx,%esi
 982:	74 4c                	je     9d0 <malloc+0xf0>
        p->s.size -= nunits;
 984:	29 f1                	sub    %esi,%ecx
 986:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 989:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 98c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 98f:	89 15 80 0e 00 00    	mov    %edx,0xe80
}
 995:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 998:	83 c0 08             	add    $0x8,%eax
}
 99b:	5b                   	pop    %ebx
 99c:	5e                   	pop    %esi
 99d:	5f                   	pop    %edi
 99e:	5d                   	pop    %ebp
 99f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 9a0:	c7 05 80 0e 00 00 84 	movl   $0xe84,0xe80
 9a7:	0e 00 00 
    base.s.size = 0;
 9aa:	bf 84 0e 00 00       	mov    $0xe84,%edi
    base.s.ptr = freep = prevp = &base;
 9af:	c7 05 84 0e 00 00 84 	movl   $0xe84,0xe84
 9b6:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9b9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9bb:	c7 05 88 0e 00 00 00 	movl   $0x0,0xe88
 9c2:	00 00 00 
    if(p->s.size >= nunits){
 9c5:	e9 42 ff ff ff       	jmp    90c <malloc+0x2c>
 9ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9d0:	8b 08                	mov    (%eax),%ecx
 9d2:	89 0a                	mov    %ecx,(%edx)
 9d4:	eb b9                	jmp    98f <malloc+0xaf>
