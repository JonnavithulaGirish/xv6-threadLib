
_test_20:     file format elf32-i386


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
   d:	51                   	push   %ecx
   e:	83 ec 14             	sub    $0x14,%esp
   ppid = getpid();
  11:	e8 ce 06 00 00       	call   6e4 <getpid>

   int arg1 = 11, arg2 = 22;

   size = (unsigned int)sbrk(0);
  16:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  19:	c7 45 f0 0b 00 00 00 	movl   $0xb,-0x10(%ebp)
   size = (unsigned int)sbrk(0);
  20:	6a 00                	push   $0x0
   ppid = getpid();
  22:	a3 90 0f 00 00       	mov    %eax,0xf90
   int arg1 = 11, arg2 = 22;
  27:	c7 45 f4 16 00 00 00 	movl   $0x16,-0xc(%ebp)
   size = (unsigned int)sbrk(0);
  2e:	e8 b9 06 00 00       	call   6ec <sbrk>

   int thread_pid = thread_create(worker, &arg1, &arg2);
  33:	83 c4 0c             	add    $0xc,%esp
   size = (unsigned int)sbrk(0);
  36:	a3 88 0f 00 00       	mov    %eax,0xf88
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3b:	8d 45 f4             	lea    -0xc(%ebp),%eax
  3e:	50                   	push   %eax
  3f:	8d 45 f0             	lea    -0x10(%ebp),%eax
  42:	50                   	push   %eax
  43:	68 b0 01 00 00       	push   $0x1b0
  48:	e8 63 05 00 00       	call   5b0 <thread_create>
   assert(thread_pid > 0);
  4d:	83 c4 10             	add    $0x10,%esp
  50:	85 c0                	test   %eax,%eax
  52:	7e 62                	jle    b6 <main+0xb6>
   
   int join_pid = thread_join();
  54:	e8 87 05 00 00       	call   5e0 <thread_join>
   assert(join_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	7e 13                	jle    70 <main+0x70>
   

   printf(1, "TEST PASSED\n");
  5d:	50                   	push   %eax
  5e:	50                   	push   %eax
  5f:	68 81 0b 00 00       	push   $0xb81
  64:	6a 01                	push   $0x1
  66:	e8 65 07 00 00       	call   7d0 <printf>
   exit();
  6b:	e8 f4 05 00 00       	call   664 <exit>
   assert(join_pid > 0);
  70:	6a 27                	push   $0x27
  72:	68 f8 0a 00 00       	push   $0xaf8
  77:	68 02 0b 00 00       	push   $0xb02
  7c:	6a 01                	push   $0x1
  7e:	e8 4d 07 00 00       	call   7d0 <printf>
  83:	83 c4 0c             	add    $0xc,%esp
  86:	68 65 0b 00 00       	push   $0xb65
  8b:	68 28 0b 00 00       	push   $0xb28
  90:	6a 01                	push   $0x1
  92:	e8 39 07 00 00       	call   7d0 <printf>
  97:	5a                   	pop    %edx
  98:	59                   	pop    %ecx
  99:	68 3c 0b 00 00       	push   $0xb3c
  9e:	6a 01                	push   $0x1
  a0:	e8 2b 07 00 00       	call   7d0 <printf>
  a5:	58                   	pop    %eax
  a6:	ff 35 90 0f 00 00    	push   0xf90
  ac:	e8 e3 05 00 00       	call   694 <kill>
  b1:	e8 ae 05 00 00       	call   664 <exit>
   assert(thread_pid > 0);
  b6:	6a 24                	push   $0x24
  b8:	68 f8 0a 00 00       	push   $0xaf8
  bd:	68 02 0b 00 00       	push   $0xb02
  c2:	6a 01                	push   $0x1
  c4:	e8 07 07 00 00       	call   7d0 <printf>
  c9:	83 c4 0c             	add    $0xc,%esp
  cc:	68 72 0b 00 00       	push   $0xb72
  d1:	eb b8                	jmp    8b <main+0x8b>
  d3:	66 90                	xchg   %ax,%ax
  d5:	66 90                	xchg   %ax,%ax
  d7:	66 90                	xchg   %ax,%ax
  d9:	66 90                	xchg   %ax,%ax
  db:	66 90                	xchg   %ax,%ax
  dd:	66 90                	xchg   %ax,%ax
  df:	90                   	nop

000000e0 <worker2>:
}

void worker2(void *arg1, void *arg2)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
  e6:	68 80 0f 00 00       	push   $0xf80
  eb:	e8 40 05 00 00       	call   630 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
  f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f7:	e8 f0 05 00 00       	call   6ec <sbrk>
  fc:	83 c4 10             	add    $0x10,%esp
  ff:	3b 05 88 0f 00 00    	cmp    0xf88,%eax
 105:	74 46                	je     14d <worker2+0x6d>
 107:	6a 31                	push   $0x31
   global++;
   lock_release(&lock);

   
   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 109:	68 f8 0a 00 00       	push   $0xaf8
 10e:	68 02 0b 00 00       	push   $0xb02
 113:	6a 01                	push   $0x1
 115:	e8 b6 06 00 00       	call   7d0 <printf>
 11a:	83 c4 0c             	add    $0xc,%esp
 11d:	68 0a 0b 00 00       	push   $0xb0a
 122:	68 28 0b 00 00       	push   $0xb28
 127:	6a 01                	push   $0x1
 129:	e8 a2 06 00 00       	call   7d0 <printf>
 12e:	58                   	pop    %eax
 12f:	5a                   	pop    %edx
 130:	68 3c 0b 00 00       	push   $0xb3c
 135:	6a 01                	push   $0x1
 137:	e8 94 06 00 00       	call   7d0 <printf>
 13c:	59                   	pop    %ecx
 13d:	ff 35 90 0f 00 00    	push   0xf90
 143:	e8 4c 05 00 00       	call   694 <kill>
 148:	e8 17 05 00 00       	call   664 <exit>
   lock_release(&lock);
 14d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 150:	83 05 8c 0f 00 00 01 	addl   $0x1,0xf8c
   lock_release(&lock);
 157:	68 80 0f 00 00       	push   $0xf80
 15c:	e8 ef 04 00 00       	call   650 <lock_release>
   lock_acquire(&lock2);
 161:	c7 04 24 78 0f 00 00 	movl   $0xf78,(%esp)
 168:	e8 c3 04 00 00       	call   630 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 16d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 174:	e8 73 05 00 00       	call   6ec <sbrk>
 179:	83 c4 10             	add    $0x10,%esp
 17c:	3b 05 88 0f 00 00    	cmp    0xf88,%eax
 182:	74 04                	je     188 <worker2+0xa8>
 184:	6a 37                	push   $0x37
 186:	eb 81                	jmp    109 <worker2+0x29>
   global++;
   lock_release(&lock2);
 188:	83 ec 0c             	sub    $0xc,%esp
   global++;
 18b:	83 05 8c 0f 00 00 01 	addl   $0x1,0xf8c
   lock_release(&lock2);
 192:	68 78 0f 00 00       	push   $0xf78
 197:	e8 b4 04 00 00       	call   650 <lock_release>

   
   exit();
 19c:	e8 c3 04 00 00       	call   664 <exit>
 1a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1af:	90                   	nop

000001b0 <worker>:
}


void worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 14             	sub    $0x14,%esp
   lock_init(&lock);
 1b6:	68 80 0f 00 00       	push   $0xf80
 1bb:	e8 50 04 00 00       	call   610 <lock_init>
   lock_init(&lock2);
 1c0:	c7 04 24 78 0f 00 00 	movl   $0xf78,(%esp)
 1c7:	e8 44 04 00 00       	call   610 <lock_init>
   lock_acquire(&lock);
 1cc:	c7 04 24 80 0f 00 00 	movl   $0xf80,(%esp)
 1d3:	e8 58 04 00 00       	call   630 <lock_acquire>
   lock_acquire(&lock2);
 1d8:	c7 04 24 78 0f 00 00 	movl   $0xf78,(%esp)
 1df:	e8 4c 04 00 00       	call   630 <lock_acquire>

   int nested_thread_id = thread_create(worker2, 0, 0);
 1e4:	83 c4 0c             	add    $0xc,%esp
 1e7:	6a 00                	push   $0x0
 1e9:	6a 00                	push   $0x0
 1eb:	68 e0 00 00 00       	push   $0xe0
 1f0:	e8 bb 03 00 00       	call   5b0 <thread_create>
    assert(nested_thread_id > 0);
 1f5:	83 c4 10             	add    $0x10,%esp
 1f8:	85 c0                	test   %eax,%eax
 1fa:	0f 8e 39 01 00 00    	jle    339 <worker+0x189>
   size = (unsigned int)sbrk(0);
 200:	83 ec 0c             	sub    $0xc,%esp
 203:	6a 00                	push   $0x0
 205:	e8 e2 04 00 00       	call   6ec <sbrk>

   while (global < num_threads) {
 20a:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
 20d:	a3 88 0f 00 00       	mov    %eax,0xf88
   while (global < num_threads) {
 212:	a1 74 0f 00 00       	mov    0xf74,%eax
 217:	39 05 8c 0f 00 00    	cmp    %eax,0xf8c
 21d:	7d 36                	jge    255 <worker+0xa5>
 21f:	90                   	nop
      lock_release(&lock);
 220:	83 ec 0c             	sub    $0xc,%esp
 223:	68 80 0f 00 00       	push   $0xf80
 228:	e8 23 04 00 00       	call   650 <lock_release>
      sleep(100);
 22d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 234:	e8 bb 04 00 00       	call   6f4 <sleep>
      lock_acquire(&lock);
 239:	c7 04 24 80 0f 00 00 	movl   $0xf80,(%esp)
 240:	e8 eb 03 00 00       	call   630 <lock_acquire>
   while (global < num_threads) {
 245:	a1 74 0f 00 00       	mov    0xf74,%eax
 24a:	83 c4 10             	add    $0x10,%esp
 24d:	39 05 8c 0f 00 00    	cmp    %eax,0xf8c
 253:	7c cb                	jl     220 <worker+0x70>
   }

   global = 0;
 255:	c7 05 8c 0f 00 00 00 	movl   $0x0,0xf8c
 25c:	00 00 00 
   sbrk(10000);
 25f:	83 ec 0c             	sub    $0xc,%esp
 262:	68 10 27 00 00       	push   $0x2710
 267:	e8 80 04 00 00       	call   6ec <sbrk>
   size = (unsigned int)sbrk(0);
 26c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 273:	e8 74 04 00 00       	call   6ec <sbrk>
   lock_release(&lock);
 278:	c7 04 24 80 0f 00 00 	movl   $0xf80,(%esp)
   size = (unsigned int)sbrk(0);
 27f:	a3 88 0f 00 00       	mov    %eax,0xf88
   lock_release(&lock);
 284:	e8 c7 03 00 00       	call   650 <lock_release>

   while (global < num_threads) {
 289:	a1 74 0f 00 00       	mov    0xf74,%eax
 28e:	83 c4 10             	add    $0x10,%esp
 291:	39 05 8c 0f 00 00    	cmp    %eax,0xf8c
 297:	7d 3c                	jge    2d5 <worker+0x125>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 2a0:	83 ec 0c             	sub    $0xc,%esp
 2a3:	68 78 0f 00 00       	push   $0xf78
 2a8:	e8 a3 03 00 00       	call   650 <lock_release>
      sleep(100);
 2ad:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 2b4:	e8 3b 04 00 00       	call   6f4 <sleep>
      lock_acquire(&lock2);
 2b9:	c7 04 24 78 0f 00 00 	movl   $0xf78,(%esp)
 2c0:	e8 6b 03 00 00       	call   630 <lock_acquire>
   while (global < num_threads) {
 2c5:	a1 74 0f 00 00       	mov    0xf74,%eax
 2ca:	83 c4 10             	add    $0x10,%esp
 2cd:	39 05 8c 0f 00 00    	cmp    %eax,0xf8c
 2d3:	7c cb                	jl     2a0 <worker+0xf0>
   }
   lock_release(&lock2);
 2d5:	83 ec 0c             	sub    $0xc,%esp
 2d8:	68 78 0f 00 00       	push   $0xf78
 2dd:	e8 6e 03 00 00       	call   650 <lock_release>

   int nested_join_pid = thread_join();
 2e2:	e8 f9 02 00 00       	call   5e0 <thread_join>
   assert(nested_join_pid > 0);
 2e7:	83 c4 10             	add    $0x10,%esp
 2ea:	85 c0                	test   %eax,%eax
 2ec:	7e 05                	jle    2f3 <worker+0x143>




   exit();
 2ee:	e8 71 03 00 00       	call   664 <exit>
   assert(nested_join_pid > 0);
 2f3:	6a 5d                	push   $0x5d
 2f5:	68 f8 0a 00 00       	push   $0xaf8
 2fa:	68 02 0b 00 00       	push   $0xb02
 2ff:	6a 01                	push   $0x1
 301:	e8 ca 04 00 00       	call   7d0 <printf>
 306:	83 c4 0c             	add    $0xc,%esp
 309:	68 5e 0b 00 00       	push   $0xb5e
 30e:	68 28 0b 00 00       	push   $0xb28
 313:	6a 01                	push   $0x1
 315:	e8 b6 04 00 00       	call   7d0 <printf>
 31a:	58                   	pop    %eax
 31b:	5a                   	pop    %edx
 31c:	68 3c 0b 00 00       	push   $0xb3c
 321:	6a 01                	push   $0x1
 323:	e8 a8 04 00 00       	call   7d0 <printf>
 328:	59                   	pop    %ecx
 329:	ff 35 90 0f 00 00    	push   0xf90
 32f:	e8 60 03 00 00       	call   694 <kill>
 334:	e8 2b 03 00 00       	call   664 <exit>
    assert(nested_thread_id > 0);
 339:	6a 47                	push   $0x47
 33b:	68 f8 0a 00 00       	push   $0xaf8
 340:	68 02 0b 00 00       	push   $0xb02
 345:	6a 01                	push   $0x1
 347:	e8 84 04 00 00       	call   7d0 <printf>
 34c:	83 c4 0c             	add    $0xc,%esp
 34f:	68 49 0b 00 00       	push   $0xb49
 354:	eb b8                	jmp    30e <worker+0x15e>
 356:	66 90                	xchg   %ax,%ax
 358:	66 90                	xchg   %ax,%ax
 35a:	66 90                	xchg   %ax,%ax
 35c:	66 90                	xchg   %ax,%ax
 35e:	66 90                	xchg   %ax,%ax

00000360 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 360:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 361:	31 c0                	xor    %eax,%eax
{
 363:	89 e5                	mov    %esp,%ebp
 365:	53                   	push   %ebx
 366:	8b 4d 08             	mov    0x8(%ebp),%ecx
 369:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 370:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 374:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 377:	83 c0 01             	add    $0x1,%eax
 37a:	84 d2                	test   %dl,%dl
 37c:	75 f2                	jne    370 <strcpy+0x10>
    ;
  return os;
}
 37e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 381:	89 c8                	mov    %ecx,%eax
 383:	c9                   	leave  
 384:	c3                   	ret    
 385:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000390 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	53                   	push   %ebx
 394:	8b 55 08             	mov    0x8(%ebp),%edx
 397:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 39a:	0f b6 02             	movzbl (%edx),%eax
 39d:	84 c0                	test   %al,%al
 39f:	75 17                	jne    3b8 <strcmp+0x28>
 3a1:	eb 3a                	jmp    3dd <strcmp+0x4d>
 3a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3a7:	90                   	nop
 3a8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3ac:	83 c2 01             	add    $0x1,%edx
 3af:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3b2:	84 c0                	test   %al,%al
 3b4:	74 1a                	je     3d0 <strcmp+0x40>
    p++, q++;
 3b6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 3b8:	0f b6 19             	movzbl (%ecx),%ebx
 3bb:	38 c3                	cmp    %al,%bl
 3bd:	74 e9                	je     3a8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3bf:	29 d8                	sub    %ebx,%eax
}
 3c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3c4:	c9                   	leave  
 3c5:	c3                   	ret    
 3c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 3d0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3d4:	31 c0                	xor    %eax,%eax
 3d6:	29 d8                	sub    %ebx,%eax
}
 3d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3db:	c9                   	leave  
 3dc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 3dd:	0f b6 19             	movzbl (%ecx),%ebx
 3e0:	31 c0                	xor    %eax,%eax
 3e2:	eb db                	jmp    3bf <strcmp+0x2f>
 3e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ef:	90                   	nop

000003f0 <strlen>:

uint
strlen(const char *s)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 3f6:	80 3a 00             	cmpb   $0x0,(%edx)
 3f9:	74 15                	je     410 <strlen+0x20>
 3fb:	31 c0                	xor    %eax,%eax
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
 400:	83 c0 01             	add    $0x1,%eax
 403:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 407:	89 c1                	mov    %eax,%ecx
 409:	75 f5                	jne    400 <strlen+0x10>
    ;
  return n;
}
 40b:	89 c8                	mov    %ecx,%eax
 40d:	5d                   	pop    %ebp
 40e:	c3                   	ret    
 40f:	90                   	nop
  for(n = 0; s[n]; n++)
 410:	31 c9                	xor    %ecx,%ecx
}
 412:	5d                   	pop    %ebp
 413:	89 c8                	mov    %ecx,%eax
 415:	c3                   	ret    
 416:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41d:	8d 76 00             	lea    0x0(%esi),%esi

00000420 <memset>:

void*
memset(void *dst, int c, uint n)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 427:	8b 4d 10             	mov    0x10(%ebp),%ecx
 42a:	8b 45 0c             	mov    0xc(%ebp),%eax
 42d:	89 d7                	mov    %edx,%edi
 42f:	fc                   	cld    
 430:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 432:	8b 7d fc             	mov    -0x4(%ebp),%edi
 435:	89 d0                	mov    %edx,%eax
 437:	c9                   	leave  
 438:	c3                   	ret    
 439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000440 <strchr>:

char*
strchr(const char *s, char c)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	8b 45 08             	mov    0x8(%ebp),%eax
 446:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 44a:	0f b6 10             	movzbl (%eax),%edx
 44d:	84 d2                	test   %dl,%dl
 44f:	75 12                	jne    463 <strchr+0x23>
 451:	eb 1d                	jmp    470 <strchr+0x30>
 453:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 457:	90                   	nop
 458:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 45c:	83 c0 01             	add    $0x1,%eax
 45f:	84 d2                	test   %dl,%dl
 461:	74 0d                	je     470 <strchr+0x30>
    if(*s == c)
 463:	38 d1                	cmp    %dl,%cl
 465:	75 f1                	jne    458 <strchr+0x18>
      return (char*)s;
  return 0;
}
 467:	5d                   	pop    %ebp
 468:	c3                   	ret    
 469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 470:	31 c0                	xor    %eax,%eax
}
 472:	5d                   	pop    %ebp
 473:	c3                   	ret    
 474:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <gets>:

char*
gets(char *buf, int max)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	57                   	push   %edi
 484:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 485:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 488:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 489:	31 db                	xor    %ebx,%ebx
{
 48b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 48e:	eb 27                	jmp    4b7 <gets+0x37>
    cc = read(0, &c, 1);
 490:	83 ec 04             	sub    $0x4,%esp
 493:	6a 01                	push   $0x1
 495:	57                   	push   %edi
 496:	6a 00                	push   $0x0
 498:	e8 df 01 00 00       	call   67c <read>
    if(cc < 1)
 49d:	83 c4 10             	add    $0x10,%esp
 4a0:	85 c0                	test   %eax,%eax
 4a2:	7e 1d                	jle    4c1 <gets+0x41>
      break;
    buf[i++] = c;
 4a4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4a8:	8b 55 08             	mov    0x8(%ebp),%edx
 4ab:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4af:	3c 0a                	cmp    $0xa,%al
 4b1:	74 1d                	je     4d0 <gets+0x50>
 4b3:	3c 0d                	cmp    $0xd,%al
 4b5:	74 19                	je     4d0 <gets+0x50>
  for(i=0; i+1 < max; ){
 4b7:	89 de                	mov    %ebx,%esi
 4b9:	83 c3 01             	add    $0x1,%ebx
 4bc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4bf:	7c cf                	jl     490 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4c1:	8b 45 08             	mov    0x8(%ebp),%eax
 4c4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4cb:	5b                   	pop    %ebx
 4cc:	5e                   	pop    %esi
 4cd:	5f                   	pop    %edi
 4ce:	5d                   	pop    %ebp
 4cf:	c3                   	ret    
  buf[i] = '\0';
 4d0:	8b 45 08             	mov    0x8(%ebp),%eax
 4d3:	89 de                	mov    %ebx,%esi
 4d5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 4d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4dc:	5b                   	pop    %ebx
 4dd:	5e                   	pop    %esi
 4de:	5f                   	pop    %edi
 4df:	5d                   	pop    %ebp
 4e0:	c3                   	ret    
 4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop

000004f0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	56                   	push   %esi
 4f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4f5:	83 ec 08             	sub    $0x8,%esp
 4f8:	6a 00                	push   $0x0
 4fa:	ff 75 08             	push   0x8(%ebp)
 4fd:	e8 a2 01 00 00       	call   6a4 <open>
  if(fd < 0)
 502:	83 c4 10             	add    $0x10,%esp
 505:	85 c0                	test   %eax,%eax
 507:	78 27                	js     530 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 509:	83 ec 08             	sub    $0x8,%esp
 50c:	ff 75 0c             	push   0xc(%ebp)
 50f:	89 c3                	mov    %eax,%ebx
 511:	50                   	push   %eax
 512:	e8 a5 01 00 00       	call   6bc <fstat>
  close(fd);
 517:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 51a:	89 c6                	mov    %eax,%esi
  close(fd);
 51c:	e8 6b 01 00 00       	call   68c <close>
  return r;
 521:	83 c4 10             	add    $0x10,%esp
}
 524:	8d 65 f8             	lea    -0x8(%ebp),%esp
 527:	89 f0                	mov    %esi,%eax
 529:	5b                   	pop    %ebx
 52a:	5e                   	pop    %esi
 52b:	5d                   	pop    %ebp
 52c:	c3                   	ret    
 52d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 530:	be ff ff ff ff       	mov    $0xffffffff,%esi
 535:	eb ed                	jmp    524 <stat+0x34>
 537:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53e:	66 90                	xchg   %ax,%ax

00000540 <atoi>:

int
atoi(const char *s)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	53                   	push   %ebx
 544:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 547:	0f be 02             	movsbl (%edx),%eax
 54a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 54d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 550:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 555:	77 1e                	ja     575 <atoi+0x35>
 557:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 560:	83 c2 01             	add    $0x1,%edx
 563:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 566:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 56a:	0f be 02             	movsbl (%edx),%eax
 56d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 570:	80 fb 09             	cmp    $0x9,%bl
 573:	76 eb                	jbe    560 <atoi+0x20>
  return n;
}
 575:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 578:	89 c8                	mov    %ecx,%eax
 57a:	c9                   	leave  
 57b:	c3                   	ret    
 57c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000580 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	57                   	push   %edi
 584:	8b 45 10             	mov    0x10(%ebp),%eax
 587:	8b 55 08             	mov    0x8(%ebp),%edx
 58a:	56                   	push   %esi
 58b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 58e:	85 c0                	test   %eax,%eax
 590:	7e 13                	jle    5a5 <memmove+0x25>
 592:	01 d0                	add    %edx,%eax
  dst = vdst;
 594:	89 d7                	mov    %edx,%edi
 596:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 5a0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 5a1:	39 f8                	cmp    %edi,%eax
 5a3:	75 fb                	jne    5a0 <memmove+0x20>
  return vdst;
}
 5a5:	5e                   	pop    %esi
 5a6:	89 d0                	mov    %edx,%eax
 5a8:	5f                   	pop    %edi
 5a9:	5d                   	pop    %ebp
 5aa:	c3                   	ret    
 5ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5af:	90                   	nop

000005b0 <thread_create>:


//Create thread_Create & thread_join


int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	83 ec 14             	sub    $0x14,%esp
   void *stack = malloc(PGSIZE);
 5b6:	68 00 10 00 00       	push   $0x1000
 5bb:	e8 40 04 00 00       	call   a00 <malloc>
   return clone(start_routine, arg1, arg2, stack);
 5c0:	50                   	push   %eax
 5c1:	ff 75 10             	push   0x10(%ebp)
 5c4:	ff 75 0c             	push   0xc(%ebp)
 5c7:	ff 75 08             	push   0x8(%ebp)
 5ca:	e8 35 01 00 00       	call   704 <clone>
}
 5cf:	c9                   	leave  
 5d0:	c3                   	ret    
 5d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop

000005e0 <thread_join>:

int thread_join(){
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
  void *stack;
  int pid= join(&stack);
 5e4:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 5e7:	83 ec 20             	sub    $0x20,%esp
  int pid= join(&stack);
 5ea:	50                   	push   %eax
 5eb:	e8 1c 01 00 00       	call   70c <join>
  if(pid >0 ){
 5f0:	83 c4 10             	add    $0x10,%esp
  int pid= join(&stack);
 5f3:	89 c2                	mov    %eax,%edx
  if(pid >0 ){
 5f5:	85 c0                	test   %eax,%eax
 5f7:	7e 0d                	jle    606 <thread_join+0x26>
 5f9:	8b 7d f4             	mov    -0xc(%ebp),%edi
 5fc:	b9 00 10 00 00       	mov    $0x1000,%ecx
 601:	31 c0                	xor    %eax,%eax
 603:	fc                   	cld    
 604:	f3 aa                	rep stos %al,%es:(%edi)
    memset(stack,0,PGSIZE);
  }
  return pid;
}
 606:	8b 7d fc             	mov    -0x4(%ebp),%edi
 609:	89 d0                	mov    %edx,%eax
 60b:	c9                   	leave  
 60c:	c3                   	ret    
 60d:	8d 76 00             	lea    0x0(%esi),%esi

00000610 <lock_init>:

void lock_init(lock_t *lock) {
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 616:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 61c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 623:	5d                   	pop    %ebp
 624:	c3                   	ret    
 625:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000630 <lock_acquire>:

void lock_acquire(lock_t *lock){
 630:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 631:	b8 01 00 00 00       	mov    $0x1,%eax
 636:	89 e5                	mov    %esp,%ebp
 638:	8b 55 08             	mov    0x8(%ebp),%edx
 63b:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn);
 63f:	8b 52 04             	mov    0x4(%edx),%edx
 642:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 648:	39 c2                	cmp    %eax,%edx
 64a:	75 fc                	jne    648 <lock_acquire+0x18>
}
 64c:	5d                   	pop    %ebp
 64d:	c3                   	ret    
 64e:	66 90                	xchg   %ax,%ax

00000650 <lock_release>:

void lock_release(lock_t *lock){
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 656:	83 40 04 01          	addl   $0x1,0x4(%eax)
 65a:	5d                   	pop    %ebp
 65b:	c3                   	ret    

0000065c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 65c:	b8 01 00 00 00       	mov    $0x1,%eax
 661:	cd 40                	int    $0x40
 663:	c3                   	ret    

00000664 <exit>:
SYSCALL(exit)
 664:	b8 02 00 00 00       	mov    $0x2,%eax
 669:	cd 40                	int    $0x40
 66b:	c3                   	ret    

0000066c <wait>:
SYSCALL(wait)
 66c:	b8 03 00 00 00       	mov    $0x3,%eax
 671:	cd 40                	int    $0x40
 673:	c3                   	ret    

00000674 <pipe>:
SYSCALL(pipe)
 674:	b8 04 00 00 00       	mov    $0x4,%eax
 679:	cd 40                	int    $0x40
 67b:	c3                   	ret    

0000067c <read>:
SYSCALL(read)
 67c:	b8 05 00 00 00       	mov    $0x5,%eax
 681:	cd 40                	int    $0x40
 683:	c3                   	ret    

00000684 <write>:
SYSCALL(write)
 684:	b8 10 00 00 00       	mov    $0x10,%eax
 689:	cd 40                	int    $0x40
 68b:	c3                   	ret    

0000068c <close>:
SYSCALL(close)
 68c:	b8 15 00 00 00       	mov    $0x15,%eax
 691:	cd 40                	int    $0x40
 693:	c3                   	ret    

00000694 <kill>:
SYSCALL(kill)
 694:	b8 06 00 00 00       	mov    $0x6,%eax
 699:	cd 40                	int    $0x40
 69b:	c3                   	ret    

0000069c <exec>:
SYSCALL(exec)
 69c:	b8 07 00 00 00       	mov    $0x7,%eax
 6a1:	cd 40                	int    $0x40
 6a3:	c3                   	ret    

000006a4 <open>:
SYSCALL(open)
 6a4:	b8 0f 00 00 00       	mov    $0xf,%eax
 6a9:	cd 40                	int    $0x40
 6ab:	c3                   	ret    

000006ac <mknod>:
SYSCALL(mknod)
 6ac:	b8 11 00 00 00       	mov    $0x11,%eax
 6b1:	cd 40                	int    $0x40
 6b3:	c3                   	ret    

000006b4 <unlink>:
SYSCALL(unlink)
 6b4:	b8 12 00 00 00       	mov    $0x12,%eax
 6b9:	cd 40                	int    $0x40
 6bb:	c3                   	ret    

000006bc <fstat>:
SYSCALL(fstat)
 6bc:	b8 08 00 00 00       	mov    $0x8,%eax
 6c1:	cd 40                	int    $0x40
 6c3:	c3                   	ret    

000006c4 <link>:
SYSCALL(link)
 6c4:	b8 13 00 00 00       	mov    $0x13,%eax
 6c9:	cd 40                	int    $0x40
 6cb:	c3                   	ret    

000006cc <mkdir>:
SYSCALL(mkdir)
 6cc:	b8 14 00 00 00       	mov    $0x14,%eax
 6d1:	cd 40                	int    $0x40
 6d3:	c3                   	ret    

000006d4 <chdir>:
SYSCALL(chdir)
 6d4:	b8 09 00 00 00       	mov    $0x9,%eax
 6d9:	cd 40                	int    $0x40
 6db:	c3                   	ret    

000006dc <dup>:
SYSCALL(dup)
 6dc:	b8 0a 00 00 00       	mov    $0xa,%eax
 6e1:	cd 40                	int    $0x40
 6e3:	c3                   	ret    

000006e4 <getpid>:
SYSCALL(getpid)
 6e4:	b8 0b 00 00 00       	mov    $0xb,%eax
 6e9:	cd 40                	int    $0x40
 6eb:	c3                   	ret    

000006ec <sbrk>:
SYSCALL(sbrk)
 6ec:	b8 0c 00 00 00       	mov    $0xc,%eax
 6f1:	cd 40                	int    $0x40
 6f3:	c3                   	ret    

000006f4 <sleep>:
SYSCALL(sleep)
 6f4:	b8 0d 00 00 00       	mov    $0xd,%eax
 6f9:	cd 40                	int    $0x40
 6fb:	c3                   	ret    

000006fc <uptime>:
SYSCALL(uptime)
 6fc:	b8 0e 00 00 00       	mov    $0xe,%eax
 701:	cd 40                	int    $0x40
 703:	c3                   	ret    

00000704 <clone>:
SYSCALL(clone)
 704:	b8 16 00 00 00       	mov    $0x16,%eax
 709:	cd 40                	int    $0x40
 70b:	c3                   	ret    

0000070c <join>:
SYSCALL(join)
 70c:	b8 17 00 00 00       	mov    $0x17,%eax
 711:	cd 40                	int    $0x40
 713:	c3                   	ret    
 714:	66 90                	xchg   %ax,%ax
 716:	66 90                	xchg   %ax,%ax
 718:	66 90                	xchg   %ax,%ax
 71a:	66 90                	xchg   %ax,%ax
 71c:	66 90                	xchg   %ax,%ax
 71e:	66 90                	xchg   %ax,%ax

00000720 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 720:	55                   	push   %ebp
 721:	89 e5                	mov    %esp,%ebp
 723:	57                   	push   %edi
 724:	56                   	push   %esi
 725:	53                   	push   %ebx
 726:	83 ec 3c             	sub    $0x3c,%esp
 729:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 72c:	89 d1                	mov    %edx,%ecx
{
 72e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 731:	85 d2                	test   %edx,%edx
 733:	0f 89 7f 00 00 00    	jns    7b8 <printint+0x98>
 739:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 73d:	74 79                	je     7b8 <printint+0x98>
    neg = 1;
 73f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 746:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 748:	31 db                	xor    %ebx,%ebx
 74a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 74d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 750:	89 c8                	mov    %ecx,%eax
 752:	31 d2                	xor    %edx,%edx
 754:	89 cf                	mov    %ecx,%edi
 756:	f7 75 c4             	divl   -0x3c(%ebp)
 759:	0f b6 92 f0 0b 00 00 	movzbl 0xbf0(%edx),%edx
 760:	89 45 c0             	mov    %eax,-0x40(%ebp)
 763:	89 d8                	mov    %ebx,%eax
 765:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 768:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 76b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 76e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 771:	76 dd                	jbe    750 <printint+0x30>
  if(neg)
 773:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 776:	85 c9                	test   %ecx,%ecx
 778:	74 0c                	je     786 <printint+0x66>
    buf[i++] = '-';
 77a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 77f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 781:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 786:	8b 7d b8             	mov    -0x48(%ebp),%edi
 789:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 78d:	eb 07                	jmp    796 <printint+0x76>
 78f:	90                   	nop
    putc(fd, buf[i]);
 790:	0f b6 13             	movzbl (%ebx),%edx
 793:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 796:	83 ec 04             	sub    $0x4,%esp
 799:	88 55 d7             	mov    %dl,-0x29(%ebp)
 79c:	6a 01                	push   $0x1
 79e:	56                   	push   %esi
 79f:	57                   	push   %edi
 7a0:	e8 df fe ff ff       	call   684 <write>
  while(--i >= 0)
 7a5:	83 c4 10             	add    $0x10,%esp
 7a8:	39 de                	cmp    %ebx,%esi
 7aa:	75 e4                	jne    790 <printint+0x70>
}
 7ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7af:	5b                   	pop    %ebx
 7b0:	5e                   	pop    %esi
 7b1:	5f                   	pop    %edi
 7b2:	5d                   	pop    %ebp
 7b3:	c3                   	ret    
 7b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7b8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7bf:	eb 87                	jmp    748 <printint+0x28>
 7c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cf:	90                   	nop

000007d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7d0:	55                   	push   %ebp
 7d1:	89 e5                	mov    %esp,%ebp
 7d3:	57                   	push   %edi
 7d4:	56                   	push   %esi
 7d5:	53                   	push   %ebx
 7d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7dc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7df:	0f b6 13             	movzbl (%ebx),%edx
 7e2:	84 d2                	test   %dl,%dl
 7e4:	74 6a                	je     850 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7e6:	8d 45 10             	lea    0x10(%ebp),%eax
 7e9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7ec:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7ef:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7f4:	eb 36                	jmp    82c <printf+0x5c>
 7f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7fd:	8d 76 00             	lea    0x0(%esi),%esi
 800:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 803:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 808:	83 f8 25             	cmp    $0x25,%eax
 80b:	74 15                	je     822 <printf+0x52>
  write(fd, &c, 1);
 80d:	83 ec 04             	sub    $0x4,%esp
 810:	88 55 e7             	mov    %dl,-0x19(%ebp)
 813:	6a 01                	push   $0x1
 815:	57                   	push   %edi
 816:	56                   	push   %esi
 817:	e8 68 fe ff ff       	call   684 <write>
 81c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 81f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 822:	0f b6 13             	movzbl (%ebx),%edx
 825:	83 c3 01             	add    $0x1,%ebx
 828:	84 d2                	test   %dl,%dl
 82a:	74 24                	je     850 <printf+0x80>
    c = fmt[i] & 0xff;
 82c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 82f:	85 c9                	test   %ecx,%ecx
 831:	74 cd                	je     800 <printf+0x30>
      }
    } else if(state == '%'){
 833:	83 f9 25             	cmp    $0x25,%ecx
 836:	75 ea                	jne    822 <printf+0x52>
      if(c == 'd'){
 838:	83 f8 25             	cmp    $0x25,%eax
 83b:	0f 84 07 01 00 00    	je     948 <printf+0x178>
 841:	83 e8 63             	sub    $0x63,%eax
 844:	83 f8 15             	cmp    $0x15,%eax
 847:	77 17                	ja     860 <printf+0x90>
 849:	ff 24 85 98 0b 00 00 	jmp    *0xb98(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 850:	8d 65 f4             	lea    -0xc(%ebp),%esp
 853:	5b                   	pop    %ebx
 854:	5e                   	pop    %esi
 855:	5f                   	pop    %edi
 856:	5d                   	pop    %ebp
 857:	c3                   	ret    
 858:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85f:	90                   	nop
  write(fd, &c, 1);
 860:	83 ec 04             	sub    $0x4,%esp
 863:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 866:	6a 01                	push   $0x1
 868:	57                   	push   %edi
 869:	56                   	push   %esi
 86a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 86e:	e8 11 fe ff ff       	call   684 <write>
        putc(fd, c);
 873:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 877:	83 c4 0c             	add    $0xc,%esp
 87a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 87d:	6a 01                	push   $0x1
 87f:	57                   	push   %edi
 880:	56                   	push   %esi
 881:	e8 fe fd ff ff       	call   684 <write>
        putc(fd, c);
 886:	83 c4 10             	add    $0x10,%esp
      state = 0;
 889:	31 c9                	xor    %ecx,%ecx
 88b:	eb 95                	jmp    822 <printf+0x52>
 88d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 890:	83 ec 0c             	sub    $0xc,%esp
 893:	b9 10 00 00 00       	mov    $0x10,%ecx
 898:	6a 00                	push   $0x0
 89a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 89d:	8b 10                	mov    (%eax),%edx
 89f:	89 f0                	mov    %esi,%eax
 8a1:	e8 7a fe ff ff       	call   720 <printint>
        ap++;
 8a6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8aa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8ad:	31 c9                	xor    %ecx,%ecx
 8af:	e9 6e ff ff ff       	jmp    822 <printf+0x52>
 8b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8b8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8bb:	8b 10                	mov    (%eax),%edx
        ap++;
 8bd:	83 c0 04             	add    $0x4,%eax
 8c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8c3:	85 d2                	test   %edx,%edx
 8c5:	0f 84 8d 00 00 00    	je     958 <printf+0x188>
        while(*s != 0){
 8cb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8ce:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8d0:	84 c0                	test   %al,%al
 8d2:	0f 84 4a ff ff ff    	je     822 <printf+0x52>
 8d8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8db:	89 d3                	mov    %edx,%ebx
 8dd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8e0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8e3:	83 c3 01             	add    $0x1,%ebx
 8e6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8e9:	6a 01                	push   $0x1
 8eb:	57                   	push   %edi
 8ec:	56                   	push   %esi
 8ed:	e8 92 fd ff ff       	call   684 <write>
        while(*s != 0){
 8f2:	0f b6 03             	movzbl (%ebx),%eax
 8f5:	83 c4 10             	add    $0x10,%esp
 8f8:	84 c0                	test   %al,%al
 8fa:	75 e4                	jne    8e0 <printf+0x110>
      state = 0;
 8fc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8ff:	31 c9                	xor    %ecx,%ecx
 901:	e9 1c ff ff ff       	jmp    822 <printf+0x52>
 906:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 90d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 910:	83 ec 0c             	sub    $0xc,%esp
 913:	b9 0a 00 00 00       	mov    $0xa,%ecx
 918:	6a 01                	push   $0x1
 91a:	e9 7b ff ff ff       	jmp    89a <printf+0xca>
 91f:	90                   	nop
        putc(fd, *ap);
 920:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 923:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 926:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 928:	6a 01                	push   $0x1
 92a:	57                   	push   %edi
 92b:	56                   	push   %esi
        putc(fd, *ap);
 92c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 92f:	e8 50 fd ff ff       	call   684 <write>
        ap++;
 934:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 938:	83 c4 10             	add    $0x10,%esp
      state = 0;
 93b:	31 c9                	xor    %ecx,%ecx
 93d:	e9 e0 fe ff ff       	jmp    822 <printf+0x52>
 942:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 948:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 94b:	83 ec 04             	sub    $0x4,%esp
 94e:	e9 2a ff ff ff       	jmp    87d <printf+0xad>
 953:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 957:	90                   	nop
          s = "(null)";
 958:	ba 8e 0b 00 00       	mov    $0xb8e,%edx
        while(*s != 0){
 95d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 960:	b8 28 00 00 00       	mov    $0x28,%eax
 965:	89 d3                	mov    %edx,%ebx
 967:	e9 74 ff ff ff       	jmp    8e0 <printf+0x110>
 96c:	66 90                	xchg   %ax,%ax
 96e:	66 90                	xchg   %ax,%ax

00000970 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 970:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 971:	a1 94 0f 00 00       	mov    0xf94,%eax
{
 976:	89 e5                	mov    %esp,%ebp
 978:	57                   	push   %edi
 979:	56                   	push   %esi
 97a:	53                   	push   %ebx
 97b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 97e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 981:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 988:	89 c2                	mov    %eax,%edx
 98a:	8b 00                	mov    (%eax),%eax
 98c:	39 ca                	cmp    %ecx,%edx
 98e:	73 30                	jae    9c0 <free+0x50>
 990:	39 c1                	cmp    %eax,%ecx
 992:	72 04                	jb     998 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 994:	39 c2                	cmp    %eax,%edx
 996:	72 f0                	jb     988 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 998:	8b 73 fc             	mov    -0x4(%ebx),%esi
 99b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 99e:	39 f8                	cmp    %edi,%eax
 9a0:	74 30                	je     9d2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9a2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9a5:	8b 42 04             	mov    0x4(%edx),%eax
 9a8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9ab:	39 f1                	cmp    %esi,%ecx
 9ad:	74 3a                	je     9e9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9af:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9b1:	5b                   	pop    %ebx
  freep = p;
 9b2:	89 15 94 0f 00 00    	mov    %edx,0xf94
}
 9b8:	5e                   	pop    %esi
 9b9:	5f                   	pop    %edi
 9ba:	5d                   	pop    %ebp
 9bb:	c3                   	ret    
 9bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9c0:	39 c2                	cmp    %eax,%edx
 9c2:	72 c4                	jb     988 <free+0x18>
 9c4:	39 c1                	cmp    %eax,%ecx
 9c6:	73 c0                	jae    988 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ce:	39 f8                	cmp    %edi,%eax
 9d0:	75 d0                	jne    9a2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9d2:	03 70 04             	add    0x4(%eax),%esi
 9d5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9d8:	8b 02                	mov    (%edx),%eax
 9da:	8b 00                	mov    (%eax),%eax
 9dc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9df:	8b 42 04             	mov    0x4(%edx),%eax
 9e2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9e5:	39 f1                	cmp    %esi,%ecx
 9e7:	75 c6                	jne    9af <free+0x3f>
    p->s.size += bp->s.size;
 9e9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9ec:	89 15 94 0f 00 00    	mov    %edx,0xf94
    p->s.size += bp->s.size;
 9f2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9f5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9f8:	89 0a                	mov    %ecx,(%edx)
}
 9fa:	5b                   	pop    %ebx
 9fb:	5e                   	pop    %esi
 9fc:	5f                   	pop    %edi
 9fd:	5d                   	pop    %ebp
 9fe:	c3                   	ret    
 9ff:	90                   	nop

00000a00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a00:	55                   	push   %ebp
 a01:	89 e5                	mov    %esp,%ebp
 a03:	57                   	push   %edi
 a04:	56                   	push   %esi
 a05:	53                   	push   %ebx
 a06:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a0c:	8b 3d 94 0f 00 00    	mov    0xf94,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a12:	8d 70 07             	lea    0x7(%eax),%esi
 a15:	c1 ee 03             	shr    $0x3,%esi
 a18:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a1b:	85 ff                	test   %edi,%edi
 a1d:	0f 84 9d 00 00 00    	je     ac0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a23:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a25:	8b 4a 04             	mov    0x4(%edx),%ecx
 a28:	39 f1                	cmp    %esi,%ecx
 a2a:	73 6a                	jae    a96 <malloc+0x96>
 a2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a31:	39 de                	cmp    %ebx,%esi
 a33:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a36:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a3d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a40:	eb 17                	jmp    a59 <malloc+0x59>
 a42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a48:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a4a:	8b 48 04             	mov    0x4(%eax),%ecx
 a4d:	39 f1                	cmp    %esi,%ecx
 a4f:	73 4f                	jae    aa0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a51:	8b 3d 94 0f 00 00    	mov    0xf94,%edi
 a57:	89 c2                	mov    %eax,%edx
 a59:	39 d7                	cmp    %edx,%edi
 a5b:	75 eb                	jne    a48 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a5d:	83 ec 0c             	sub    $0xc,%esp
 a60:	ff 75 e4             	push   -0x1c(%ebp)
 a63:	e8 84 fc ff ff       	call   6ec <sbrk>
  if(p == (char*)-1)
 a68:	83 c4 10             	add    $0x10,%esp
 a6b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a6e:	74 1c                	je     a8c <malloc+0x8c>
  hp->s.size = nu;
 a70:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a73:	83 ec 0c             	sub    $0xc,%esp
 a76:	83 c0 08             	add    $0x8,%eax
 a79:	50                   	push   %eax
 a7a:	e8 f1 fe ff ff       	call   970 <free>
  return freep;
 a7f:	8b 15 94 0f 00 00    	mov    0xf94,%edx
      if((p = morecore(nunits)) == 0)
 a85:	83 c4 10             	add    $0x10,%esp
 a88:	85 d2                	test   %edx,%edx
 a8a:	75 bc                	jne    a48 <malloc+0x48>
        return 0;
  }
}
 a8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a8f:	31 c0                	xor    %eax,%eax
}
 a91:	5b                   	pop    %ebx
 a92:	5e                   	pop    %esi
 a93:	5f                   	pop    %edi
 a94:	5d                   	pop    %ebp
 a95:	c3                   	ret    
    if(p->s.size >= nunits){
 a96:	89 d0                	mov    %edx,%eax
 a98:	89 fa                	mov    %edi,%edx
 a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 aa0:	39 ce                	cmp    %ecx,%esi
 aa2:	74 4c                	je     af0 <malloc+0xf0>
        p->s.size -= nunits;
 aa4:	29 f1                	sub    %esi,%ecx
 aa6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 aa9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 aac:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 aaf:	89 15 94 0f 00 00    	mov    %edx,0xf94
}
 ab5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ab8:	83 c0 08             	add    $0x8,%eax
}
 abb:	5b                   	pop    %ebx
 abc:	5e                   	pop    %esi
 abd:	5f                   	pop    %edi
 abe:	5d                   	pop    %ebp
 abf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 ac0:	c7 05 94 0f 00 00 98 	movl   $0xf98,0xf94
 ac7:	0f 00 00 
    base.s.size = 0;
 aca:	bf 98 0f 00 00       	mov    $0xf98,%edi
    base.s.ptr = freep = prevp = &base;
 acf:	c7 05 98 0f 00 00 98 	movl   $0xf98,0xf98
 ad6:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ad9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 adb:	c7 05 9c 0f 00 00 00 	movl   $0x0,0xf9c
 ae2:	00 00 00 
    if(p->s.size >= nunits){
 ae5:	e9 42 ff ff ff       	jmp    a2c <malloc+0x2c>
 aea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 af0:	8b 08                	mov    (%eax),%ecx
 af2:	89 0a                	mov    %ecx,(%edx)
 af4:	eb b9                	jmp    aaf <malloc+0xaf>
