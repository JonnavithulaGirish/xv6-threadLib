
_test_12:     file format elf32-i386


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
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
   ppid = getpid();
  14:	e8 2b 08 00 00       	call   844 <getpid>

   int arg1 = 11, arg2 = 22;

   lock_init(&lock);
  19:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  1c:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
   lock_init(&lock);
  23:	68 10 11 00 00       	push   $0x1110
   ppid = getpid();
  28:	a3 20 11 00 00       	mov    %eax,0x1120
   int arg1 = 11, arg2 = 22;
  2d:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   lock_init(&lock);
  34:	e8 07 07 00 00       	call   740 <lock_init>
   lock_init(&lock2);
  39:	c7 04 24 08 11 00 00 	movl   $0x1108,(%esp)
  40:	e8 fb 06 00 00       	call   740 <lock_init>
   lock_acquire(&lock);
  45:	c7 04 24 10 11 00 00 	movl   $0x1110,(%esp)
  4c:	e8 0f 07 00 00       	call   760 <lock_acquire>
   lock_acquire(&lock2);
  51:	c7 04 24 08 11 00 00 	movl   $0x1108,(%esp)
  58:	e8 03 07 00 00       	call   760 <lock_acquire>

   for (int i = 0; i < num_threads; i++) {
  5d:	8b 35 04 11 00 00    	mov    0x1104,%esi
  63:	83 c4 10             	add    $0x10,%esp
  66:	85 f6                	test   %esi,%esi
  68:	7e 75                	jle    df <main+0xdf>
  6a:	31 db                	xor    %ebx,%ebx
  6c:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  6f:	8d 75 e0             	lea    -0x20(%ebp),%esi
  72:	eb 0f                	jmp    83 <main+0x83>
  74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  78:	83 c3 01             	add    $0x1,%ebx
  7b:	39 1d 04 11 00 00    	cmp    %ebx,0x1104
  81:	7e 5c                	jle    df <main+0xdf>
      int thread_pid = thread_create(worker, &arg1, &arg2);
  83:	83 ec 04             	sub    $0x4,%esp
  86:	57                   	push   %edi
  87:	56                   	push   %esi
  88:	68 20 02 00 00       	push   $0x220
  8d:	e8 9e 05 00 00       	call   630 <thread_create>
      assert(thread_pid > 0);
  92:	83 c4 10             	add    $0x10,%esp
  95:	85 c0                	test   %eax,%eax
  97:	7f df                	jg     78 <main+0x78>
  99:	6a 28                	push   $0x28
  9b:	68 58 0c 00 00       	push   $0xc58
  a0:	68 62 0c 00 00       	push   $0xc62
  a5:	6a 01                	push   $0x1
  a7:	e8 84 08 00 00       	call   930 <printf>
  ac:	83 c4 0c             	add    $0xc,%esp
  af:	68 a9 0c 00 00       	push   $0xca9
   }
   lock_release(&lock2);

   for (int i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  b4:	68 88 0c 00 00       	push   $0xc88
  b9:	6a 01                	push   $0x1
  bb:	e8 70 08 00 00       	call   930 <printf>
  c0:	5a                   	pop    %edx
  c1:	59                   	pop    %ecx
  c2:	68 9c 0c 00 00       	push   $0xc9c
  c7:	6a 01                	push   $0x1
  c9:	e8 62 08 00 00       	call   930 <printf>
  ce:	5b                   	pop    %ebx
  cf:	ff 35 20 11 00 00    	push   0x1120
  d5:	e8 1a 07 00 00       	call   7f4 <kill>
  da:	e8 e5 06 00 00       	call   7c4 <exit>
   size = (unsigned int)sbrk(0);
  df:	83 ec 0c             	sub    $0xc,%esp
  e2:	6a 00                	push   $0x0
  e4:	e8 63 07 00 00       	call   84c <sbrk>
   while (global < num_threads) {
  e9:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
  ec:	a3 18 11 00 00       	mov    %eax,0x1118
   while (global < num_threads) {
  f1:	a1 04 11 00 00       	mov    0x1104,%eax
  f6:	39 05 1c 11 00 00    	cmp    %eax,0x111c
  fc:	7d 37                	jge    135 <main+0x135>
  fe:	66 90                	xchg   %ax,%ax
      lock_release(&lock);
 100:	83 ec 0c             	sub    $0xc,%esp
 103:	68 10 11 00 00       	push   $0x1110
 108:	e8 a3 06 00 00       	call   7b0 <lock_release>
      sleep(100);
 10d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 114:	e8 3b 07 00 00       	call   854 <sleep>
      lock_acquire(&lock);
 119:	c7 04 24 10 11 00 00 	movl   $0x1110,(%esp)
 120:	e8 3b 06 00 00       	call   760 <lock_acquire>
   while (global < num_threads) {
 125:	a1 04 11 00 00       	mov    0x1104,%eax
 12a:	83 c4 10             	add    $0x10,%esp
 12d:	39 05 1c 11 00 00    	cmp    %eax,0x111c
 133:	7c cb                	jl     100 <main+0x100>
   global = 0;
 135:	c7 05 1c 11 00 00 00 	movl   $0x0,0x111c
 13c:	00 00 00 
   sbrk(10000);
 13f:	83 ec 0c             	sub    $0xc,%esp
 142:	68 10 27 00 00       	push   $0x2710
 147:	e8 00 07 00 00       	call   84c <sbrk>
   size = (unsigned int)sbrk(0);
 14c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 153:	e8 f4 06 00 00       	call   84c <sbrk>
   lock_release(&lock);
 158:	c7 04 24 10 11 00 00 	movl   $0x1110,(%esp)
   size = (unsigned int)sbrk(0);
 15f:	a3 18 11 00 00       	mov    %eax,0x1118
   lock_release(&lock);
 164:	e8 47 06 00 00       	call   7b0 <lock_release>
   while (global < num_threads) {
 169:	a1 04 11 00 00       	mov    0x1104,%eax
 16e:	83 c4 10             	add    $0x10,%esp
 171:	39 05 1c 11 00 00    	cmp    %eax,0x111c
 177:	7d 3c                	jge    1b5 <main+0x1b5>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 180:	83 ec 0c             	sub    $0xc,%esp
 183:	68 08 11 00 00       	push   $0x1108
 188:	e8 23 06 00 00       	call   7b0 <lock_release>
      sleep(100);
 18d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 194:	e8 bb 06 00 00       	call   854 <sleep>
      lock_acquire(&lock2);
 199:	c7 04 24 08 11 00 00 	movl   $0x1108,(%esp)
 1a0:	e8 bb 05 00 00       	call   760 <lock_acquire>
   while (global < num_threads) {
 1a5:	a1 04 11 00 00       	mov    0x1104,%eax
 1aa:	83 c4 10             	add    $0x10,%esp
 1ad:	39 05 1c 11 00 00    	cmp    %eax,0x111c
 1b3:	7c cb                	jl     180 <main+0x180>
   lock_release(&lock2);
 1b5:	83 ec 0c             	sub    $0xc,%esp
 1b8:	68 08 11 00 00       	push   $0x1108
 1bd:	e8 ee 05 00 00       	call   7b0 <lock_release>
   for (int i = 0; i < num_threads; i++) {
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	83 3d 04 11 00 00 00 	cmpl   $0x0,0x1104
 1cc:	7e 3e                	jle    20c <main+0x20c>
 1ce:	31 db                	xor    %ebx,%ebx
 1d0:	eb 11                	jmp    1e3 <main+0x1e3>
 1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d8:	83 c3 01             	add    $0x1,%ebx
 1db:	39 1d 04 11 00 00    	cmp    %ebx,0x1104
 1e1:	7e 29                	jle    20c <main+0x20c>
      int join_pid = thread_join();
 1e3:	e8 d8 04 00 00       	call   6c0 <thread_join>
      assert(join_pid > 0);
 1e8:	85 c0                	test   %eax,%eax
 1ea:	7f ec                	jg     1d8 <main+0x1d8>
 1ec:	6a 41                	push   $0x41
 1ee:	68 58 0c 00 00       	push   $0xc58
 1f3:	68 62 0c 00 00       	push   $0xc62
 1f8:	6a 01                	push   $0x1
 1fa:	e8 31 07 00 00       	call   930 <printf>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	68 b8 0c 00 00       	push   $0xcb8
 207:	e9 a8 fe ff ff       	jmp    b4 <main+0xb4>
   }

   printf(1, "TEST PASSED\n");
 20c:	50                   	push   %eax
 20d:	50                   	push   %eax
 20e:	68 c5 0c 00 00       	push   $0xcc5
 213:	6a 01                	push   $0x1
 215:	e8 16 07 00 00       	call   930 <printf>
   exit();
 21a:	e8 a5 05 00 00       	call   7c4 <exit>
 21f:	90                   	nop

00000220 <worker>:
   
   exit();
}


void worker(void *arg1, void *arg2) {
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
 226:	68 10 11 00 00       	push   $0x1110
 22b:	e8 30 05 00 00       	call   760 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 230:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 237:	e8 10 06 00 00       	call   84c <sbrk>
 23c:	83 c4 10             	add    $0x10,%esp
 23f:	3b 05 18 11 00 00    	cmp    0x1118,%eax
 245:	74 46                	je     28d <worker+0x6d>
 247:	6a 5b                	push   $0x5b

   


   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 249:	68 58 0c 00 00       	push   $0xc58
 24e:	68 62 0c 00 00       	push   $0xc62
 253:	6a 01                	push   $0x1
 255:	e8 d6 06 00 00       	call   930 <printf>
 25a:	83 c4 0c             	add    $0xc,%esp
 25d:	68 6a 0c 00 00       	push   $0xc6a
 262:	68 88 0c 00 00       	push   $0xc88
 267:	6a 01                	push   $0x1
 269:	e8 c2 06 00 00       	call   930 <printf>
 26e:	58                   	pop    %eax
 26f:	5a                   	pop    %edx
 270:	68 9c 0c 00 00       	push   $0xc9c
 275:	6a 01                	push   $0x1
 277:	e8 b4 06 00 00       	call   930 <printf>
 27c:	59                   	pop    %ecx
 27d:	ff 35 20 11 00 00    	push   0x1120
 283:	e8 6c 05 00 00       	call   7f4 <kill>
 288:	e8 37 05 00 00       	call   7c4 <exit>
   lock_release(&lock);
 28d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 290:	83 05 1c 11 00 00 01 	addl   $0x1,0x111c
   lock_release(&lock);
 297:	68 10 11 00 00       	push   $0x1110
 29c:	e8 0f 05 00 00       	call   7b0 <lock_release>
   lock_acquire(&lock2);
 2a1:	c7 04 24 08 11 00 00 	movl   $0x1108,(%esp)
 2a8:	e8 b3 04 00 00       	call   760 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 2ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2b4:	e8 93 05 00 00       	call   84c <sbrk>
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	3b 05 18 11 00 00    	cmp    0x1118,%eax
 2c2:	74 04                	je     2c8 <worker+0xa8>
 2c4:	6a 63                	push   $0x63
 2c6:	eb 81                	jmp    249 <worker+0x29>
   global++;
   sbrk(10000);
 2c8:	83 ec 0c             	sub    $0xc,%esp
   global++;
 2cb:	83 05 1c 11 00 00 01 	addl   $0x1,0x111c
   sbrk(10000);
 2d2:	68 10 27 00 00       	push   $0x2710
 2d7:	e8 70 05 00 00       	call   84c <sbrk>
   size = (unsigned int)sbrk(0);
 2dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2e3:	e8 64 05 00 00       	call   84c <sbrk>
   lock_release(&lock2);
 2e8:	c7 04 24 08 11 00 00 	movl   $0x1108,(%esp)
   size = (unsigned int)sbrk(0);
 2ef:	a3 18 11 00 00       	mov    %eax,0x1118
   lock_release(&lock2);
 2f4:	e8 b7 04 00 00       	call   7b0 <lock_release>



   exit();
 2f9:	e8 c6 04 00 00       	call   7c4 <exit>
 2fe:	66 90                	xchg   %ax,%ax

00000300 <worker2>:
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	83 ec 08             	sub    $0x8,%esp
   int arg2_int = *(int*)arg2;
 306:	8b 45 0c             	mov    0xc(%ebp),%eax
 309:	8b 10                	mov    (%eax),%edx
   assert(arg1_int == 11);
 30b:	8b 45 08             	mov    0x8(%ebp),%eax
 30e:	83 38 0b             	cmpl   $0xb,(%eax)
 311:	75 4b                	jne    35e <worker2+0x5e>
   assert(arg2_int == 22);
 313:	83 fa 16             	cmp    $0x16,%edx
 316:	74 63                	je     37b <worker2+0x7b>
 318:	6a 4d                	push   $0x4d
 31a:	68 58 0c 00 00       	push   $0xc58
 31f:	68 62 0c 00 00       	push   $0xc62
 324:	6a 01                	push   $0x1
 326:	e8 05 06 00 00       	call   930 <printf>
 32b:	83 c4 0c             	add    $0xc,%esp
 32e:	68 e1 0c 00 00       	push   $0xce1
 333:	68 88 0c 00 00       	push   $0xc88
 338:	6a 01                	push   $0x1
 33a:	e8 f1 05 00 00       	call   930 <printf>
 33f:	58                   	pop    %eax
 340:	5a                   	pop    %edx
 341:	68 9c 0c 00 00       	push   $0xc9c
 346:	6a 01                	push   $0x1
 348:	e8 e3 05 00 00       	call   930 <printf>
 34d:	59                   	pop    %ecx
 34e:	ff 35 20 11 00 00    	push   0x1120
 354:	e8 9b 04 00 00       	call   7f4 <kill>
 359:	e8 66 04 00 00       	call   7c4 <exit>
   assert(arg1_int == 11);
 35e:	6a 4c                	push   $0x4c
 360:	68 58 0c 00 00       	push   $0xc58
 365:	68 62 0c 00 00       	push   $0xc62
 36a:	6a 01                	push   $0x1
 36c:	e8 bf 05 00 00       	call   930 <printf>
 371:	83 c4 0c             	add    $0xc,%esp
 374:	68 d2 0c 00 00       	push   $0xcd2
 379:	eb b8                	jmp    333 <worker2+0x33>
   lock_acquire(&lock2);
 37b:	83 ec 0c             	sub    $0xc,%esp
 37e:	68 08 11 00 00       	push   $0x1108
 383:	e8 d8 03 00 00       	call   760 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 388:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 38f:	e8 b8 04 00 00       	call   84c <sbrk>
 394:	83 c4 10             	add    $0x10,%esp
 397:	3b 05 18 11 00 00    	cmp    0x1118,%eax
 39d:	74 20                	je     3bf <worker2+0xbf>
 39f:	6a 50                	push   $0x50
 3a1:	68 58 0c 00 00       	push   $0xc58
 3a6:	68 62 0c 00 00       	push   $0xc62
 3ab:	6a 01                	push   $0x1
 3ad:	e8 7e 05 00 00       	call   930 <printf>
 3b2:	83 c4 0c             	add    $0xc,%esp
 3b5:	68 6a 0c 00 00       	push   $0xc6a
 3ba:	e9 74 ff ff ff       	jmp    333 <worker2+0x33>
   lock_release(&lock2);
 3bf:	83 ec 0c             	sub    $0xc,%esp
   global++;
 3c2:	83 05 1c 11 00 00 01 	addl   $0x1,0x111c
   lock_release(&lock2);
 3c9:	68 08 11 00 00       	push   $0x1108
 3ce:	e8 dd 03 00 00       	call   7b0 <lock_release>
   exit();
 3d3:	e8 ec 03 00 00       	call   7c4 <exit>
 3d8:	66 90                	xchg   %ax,%ax
 3da:	66 90                	xchg   %ax,%ax
 3dc:	66 90                	xchg   %ax,%ax
 3de:	66 90                	xchg   %ax,%ax

000003e0 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 3e0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3e1:	31 c0                	xor    %eax,%eax
{
 3e3:	89 e5                	mov    %esp,%ebp
 3e5:	53                   	push   %ebx
 3e6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3f7:	83 c0 01             	add    $0x1,%eax
 3fa:	84 d2                	test   %dl,%dl
 3fc:	75 f2                	jne    3f0 <strcpy+0x10>
    ;
  return os;
}
 3fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 401:	89 c8                	mov    %ecx,%eax
 403:	c9                   	leave  
 404:	c3                   	ret    
 405:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000410 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	53                   	push   %ebx
 414:	8b 55 08             	mov    0x8(%ebp),%edx
 417:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 41a:	0f b6 02             	movzbl (%edx),%eax
 41d:	84 c0                	test   %al,%al
 41f:	75 17                	jne    438 <strcmp+0x28>
 421:	eb 3a                	jmp    45d <strcmp+0x4d>
 423:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 427:	90                   	nop
 428:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 42c:	83 c2 01             	add    $0x1,%edx
 42f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 432:	84 c0                	test   %al,%al
 434:	74 1a                	je     450 <strcmp+0x40>
    p++, q++;
 436:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 438:	0f b6 19             	movzbl (%ecx),%ebx
 43b:	38 c3                	cmp    %al,%bl
 43d:	74 e9                	je     428 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 43f:	29 d8                	sub    %ebx,%eax
}
 441:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 444:	c9                   	leave  
 445:	c3                   	ret    
 446:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 450:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 454:	31 c0                	xor    %eax,%eax
 456:	29 d8                	sub    %ebx,%eax
}
 458:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 45b:	c9                   	leave  
 45c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 45d:	0f b6 19             	movzbl (%ecx),%ebx
 460:	31 c0                	xor    %eax,%eax
 462:	eb db                	jmp    43f <strcmp+0x2f>
 464:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <strlen>:

uint
strlen(const char *s)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 476:	80 3a 00             	cmpb   $0x0,(%edx)
 479:	74 15                	je     490 <strlen+0x20>
 47b:	31 c0                	xor    %eax,%eax
 47d:	8d 76 00             	lea    0x0(%esi),%esi
 480:	83 c0 01             	add    $0x1,%eax
 483:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 487:	89 c1                	mov    %eax,%ecx
 489:	75 f5                	jne    480 <strlen+0x10>
    ;
  return n;
}
 48b:	89 c8                	mov    %ecx,%eax
 48d:	5d                   	pop    %ebp
 48e:	c3                   	ret    
 48f:	90                   	nop
  for(n = 0; s[n]; n++)
 490:	31 c9                	xor    %ecx,%ecx
}
 492:	5d                   	pop    %ebp
 493:	89 c8                	mov    %ecx,%eax
 495:	c3                   	ret    
 496:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49d:	8d 76 00             	lea    0x0(%esi),%esi

000004a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	57                   	push   %edi
 4a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 4a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 4aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 4ad:	89 d7                	mov    %edx,%edi
 4af:	fc                   	cld    
 4b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 4b2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 4b5:	89 d0                	mov    %edx,%eax
 4b7:	c9                   	leave  
 4b8:	c3                   	ret    
 4b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004c0 <strchr>:

char*
strchr(const char *s, char c)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
 4c6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 4ca:	0f b6 10             	movzbl (%eax),%edx
 4cd:	84 d2                	test   %dl,%dl
 4cf:	75 12                	jne    4e3 <strchr+0x23>
 4d1:	eb 1d                	jmp    4f0 <strchr+0x30>
 4d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4d7:	90                   	nop
 4d8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 4dc:	83 c0 01             	add    $0x1,%eax
 4df:	84 d2                	test   %dl,%dl
 4e1:	74 0d                	je     4f0 <strchr+0x30>
    if(*s == c)
 4e3:	38 d1                	cmp    %dl,%cl
 4e5:	75 f1                	jne    4d8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 4e7:	5d                   	pop    %ebp
 4e8:	c3                   	ret    
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4f0:	31 c0                	xor    %eax,%eax
}
 4f2:	5d                   	pop    %ebp
 4f3:	c3                   	ret    
 4f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <gets>:

char*
gets(char *buf, int max)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 505:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 508:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 509:	31 db                	xor    %ebx,%ebx
{
 50b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 50e:	eb 27                	jmp    537 <gets+0x37>
    cc = read(0, &c, 1);
 510:	83 ec 04             	sub    $0x4,%esp
 513:	6a 01                	push   $0x1
 515:	57                   	push   %edi
 516:	6a 00                	push   $0x0
 518:	e8 bf 02 00 00       	call   7dc <read>
    if(cc < 1)
 51d:	83 c4 10             	add    $0x10,%esp
 520:	85 c0                	test   %eax,%eax
 522:	7e 1d                	jle    541 <gets+0x41>
      break;
    buf[i++] = c;
 524:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 528:	8b 55 08             	mov    0x8(%ebp),%edx
 52b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 52f:	3c 0a                	cmp    $0xa,%al
 531:	74 1d                	je     550 <gets+0x50>
 533:	3c 0d                	cmp    $0xd,%al
 535:	74 19                	je     550 <gets+0x50>
  for(i=0; i+1 < max; ){
 537:	89 de                	mov    %ebx,%esi
 539:	83 c3 01             	add    $0x1,%ebx
 53c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 53f:	7c cf                	jl     510 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 541:	8b 45 08             	mov    0x8(%ebp),%eax
 544:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 548:	8d 65 f4             	lea    -0xc(%ebp),%esp
 54b:	5b                   	pop    %ebx
 54c:	5e                   	pop    %esi
 54d:	5f                   	pop    %edi
 54e:	5d                   	pop    %ebp
 54f:	c3                   	ret    
  buf[i] = '\0';
 550:	8b 45 08             	mov    0x8(%ebp),%eax
 553:	89 de                	mov    %ebx,%esi
 555:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 559:	8d 65 f4             	lea    -0xc(%ebp),%esp
 55c:	5b                   	pop    %ebx
 55d:	5e                   	pop    %esi
 55e:	5f                   	pop    %edi
 55f:	5d                   	pop    %ebp
 560:	c3                   	ret    
 561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56f:	90                   	nop

00000570 <stat>:

int
stat(const char *n, struct stat *st)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	56                   	push   %esi
 574:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 575:	83 ec 08             	sub    $0x8,%esp
 578:	6a 00                	push   $0x0
 57a:	ff 75 08             	push   0x8(%ebp)
 57d:	e8 82 02 00 00       	call   804 <open>
  if(fd < 0)
 582:	83 c4 10             	add    $0x10,%esp
 585:	85 c0                	test   %eax,%eax
 587:	78 27                	js     5b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 589:	83 ec 08             	sub    $0x8,%esp
 58c:	ff 75 0c             	push   0xc(%ebp)
 58f:	89 c3                	mov    %eax,%ebx
 591:	50                   	push   %eax
 592:	e8 85 02 00 00       	call   81c <fstat>
  close(fd);
 597:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 59a:	89 c6                	mov    %eax,%esi
  close(fd);
 59c:	e8 4b 02 00 00       	call   7ec <close>
  return r;
 5a1:	83 c4 10             	add    $0x10,%esp
}
 5a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5a7:	89 f0                	mov    %esi,%eax
 5a9:	5b                   	pop    %ebx
 5aa:	5e                   	pop    %esi
 5ab:	5d                   	pop    %ebp
 5ac:	c3                   	ret    
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 5b0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 5b5:	eb ed                	jmp    5a4 <stat+0x34>
 5b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5be:	66 90                	xchg   %ax,%ax

000005c0 <atoi>:

int
atoi(const char *s)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	53                   	push   %ebx
 5c4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 5c7:	0f be 02             	movsbl (%edx),%eax
 5ca:	8d 48 d0             	lea    -0x30(%eax),%ecx
 5cd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 5d0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 5d5:	77 1e                	ja     5f5 <atoi+0x35>
 5d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5de:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5e0:	83 c2 01             	add    $0x1,%edx
 5e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5e6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 5ea:	0f be 02             	movsbl (%edx),%eax
 5ed:	8d 58 d0             	lea    -0x30(%eax),%ebx
 5f0:	80 fb 09             	cmp    $0x9,%bl
 5f3:	76 eb                	jbe    5e0 <atoi+0x20>
  return n;
}
 5f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5f8:	89 c8                	mov    %ecx,%eax
 5fa:	c9                   	leave  
 5fb:	c3                   	ret    
 5fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000600 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	8b 45 10             	mov    0x10(%ebp),%eax
 607:	8b 55 08             	mov    0x8(%ebp),%edx
 60a:	56                   	push   %esi
 60b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 60e:	85 c0                	test   %eax,%eax
 610:	7e 13                	jle    625 <memmove+0x25>
 612:	01 d0                	add    %edx,%eax
  dst = vdst;
 614:	89 d7                	mov    %edx,%edi
 616:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 620:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 621:	39 f8                	cmp    %edi,%eax
 623:	75 fb                	jne    620 <memmove+0x20>
  return vdst;
}
 625:	5e                   	pop    %esi
 626:	89 d0                	mov    %edx,%eax
 628:	5f                   	pop    %edi
 629:	5d                   	pop    %ebp
 62a:	c3                   	ret    
 62b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 62f:	90                   	nop

00000630 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 630:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 631:	b8 01 00 00 00       	mov    $0x1,%eax
 636:	89 e5                	mov    %esp,%ebp
 638:	53                   	push   %ebx
 639:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 63c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 643:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 64a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 64f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 652:	39 c2                	cmp    %eax,%edx
 654:	74 24                	je     67a <thread_create+0x4a>
 656:	89 c3                	mov    %eax,%ebx
 658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 660:	83 ec 04             	sub    $0x4,%esp
 663:	52                   	push   %edx
 664:	68 f0 0c 00 00       	push   $0xcf0
 669:	6a 01                	push   $0x1
 66b:	e8 c0 02 00 00       	call   930 <printf>
  while(lock->turn != myturn){
 670:	8b 55 f4             	mov    -0xc(%ebp),%edx
 673:	83 c4 10             	add    $0x10,%esp
 676:	39 d3                	cmp    %edx,%ebx
 678:	75 e6                	jne    660 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 67a:	83 ec 0c             	sub    $0xc,%esp
 67d:	68 00 20 00 00       	push   $0x2000
 682:	e8 d9 04 00 00       	call   b60 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 687:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 68b:	83 c4 10             	add    $0x10,%esp
 68e:	89 c2                	mov    %eax,%edx
 690:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 696:	74 07                	je     69f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 698:	29 d0                	sub    %edx,%eax
 69a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 69f:	50                   	push   %eax
 6a0:	ff 75 10             	push   0x10(%ebp)
 6a3:	ff 75 0c             	push   0xc(%ebp)
 6a6:	ff 75 08             	push   0x8(%ebp)
 6a9:	e8 b6 01 00 00       	call   864 <clone>
}
 6ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6b1:	c9                   	leave  
 6b2:	c3                   	ret    
 6b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000006c0 <thread_join>:
int thread_join(){
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	56                   	push   %esi
 6c4:	53                   	push   %ebx
 6c5:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 6c8:	6a 04                	push   $0x4
 6ca:	e8 91 04 00 00       	call   b60 <malloc>
 6cf:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 6d2:	8d 45 ec             	lea    -0x14(%ebp),%eax
 6d5:	89 04 24             	mov    %eax,(%esp)
 6d8:	e8 8f 01 00 00       	call   86c <join>
  lock->ticket = 0;
 6dd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 6e4:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 6e6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 6ed:	b8 01 00 00 00       	mov    $0x1,%eax
 6f2:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 6f7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 6fa:	83 c4 10             	add    $0x10,%esp
 6fd:	39 c2                	cmp    %eax,%edx
 6ff:	74 21                	je     722 <thread_join+0x62>
 701:	89 c3                	mov    %eax,%ebx
 703:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 707:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 708:	83 ec 04             	sub    $0x4,%esp
 70b:	52                   	push   %edx
 70c:	68 f0 0c 00 00       	push   $0xcf0
 711:	6a 01                	push   $0x1
 713:	e8 18 02 00 00       	call   930 <printf>
  while(lock->turn != myturn){
 718:	8b 55 f4             	mov    -0xc(%ebp),%edx
 71b:	83 c4 10             	add    $0x10,%esp
 71e:	39 d3                	cmp    %edx,%ebx
 720:	75 e6                	jne    708 <thread_join+0x48>
	free(stack);
 722:	83 ec 0c             	sub    $0xc,%esp
 725:	ff 75 ec             	push   -0x14(%ebp)
 728:	e8 a3 03 00 00       	call   ad0 <free>
}
 72d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 730:	89 f0                	mov    %esi,%eax
 732:	5b                   	pop    %ebx
 733:	5e                   	pop    %esi
 734:	5d                   	pop    %ebp
 735:	c3                   	ret    
 736:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73d:	8d 76 00             	lea    0x0(%esi),%esi

00000740 <lock_init>:
void lock_init(lock_t *lock) {
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 746:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 74c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 753:	5d                   	pop    %ebp
 754:	c3                   	ret    
 755:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000760 <lock_acquire>:
void lock_acquire(lock_t *lock){
 760:	55                   	push   %ebp
 761:	b8 01 00 00 00       	mov    $0x1,%eax
 766:	89 e5                	mov    %esp,%ebp
 768:	56                   	push   %esi
 769:	8b 75 08             	mov    0x8(%ebp),%esi
 76c:	53                   	push   %ebx
 76d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 771:	8b 56 04             	mov    0x4(%esi),%edx
 774:	39 d0                	cmp    %edx,%eax
 776:	74 22                	je     79a <lock_acquire+0x3a>
 778:	89 c3                	mov    %eax,%ebx
 77a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 780:	83 ec 04             	sub    $0x4,%esp
 783:	52                   	push   %edx
 784:	68 f0 0c 00 00       	push   $0xcf0
 789:	6a 01                	push   $0x1
 78b:	e8 a0 01 00 00       	call   930 <printf>
  while(lock->turn != myturn){
 790:	8b 56 04             	mov    0x4(%esi),%edx
 793:	83 c4 10             	add    $0x10,%esp
 796:	39 da                	cmp    %ebx,%edx
 798:	75 e6                	jne    780 <lock_acquire+0x20>
}
 79a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 79d:	5b                   	pop    %ebx
 79e:	5e                   	pop    %esi
 79f:	5d                   	pop    %ebp
 7a0:	c3                   	ret    
 7a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7af:	90                   	nop

000007b0 <lock_release>:
void lock_release(lock_t *lock){
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 7b6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 7ba:	5d                   	pop    %ebp
 7bb:	c3                   	ret    

000007bc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 7bc:	b8 01 00 00 00       	mov    $0x1,%eax
 7c1:	cd 40                	int    $0x40
 7c3:	c3                   	ret    

000007c4 <exit>:
SYSCALL(exit)
 7c4:	b8 02 00 00 00       	mov    $0x2,%eax
 7c9:	cd 40                	int    $0x40
 7cb:	c3                   	ret    

000007cc <wait>:
SYSCALL(wait)
 7cc:	b8 03 00 00 00       	mov    $0x3,%eax
 7d1:	cd 40                	int    $0x40
 7d3:	c3                   	ret    

000007d4 <pipe>:
SYSCALL(pipe)
 7d4:	b8 04 00 00 00       	mov    $0x4,%eax
 7d9:	cd 40                	int    $0x40
 7db:	c3                   	ret    

000007dc <read>:
SYSCALL(read)
 7dc:	b8 05 00 00 00       	mov    $0x5,%eax
 7e1:	cd 40                	int    $0x40
 7e3:	c3                   	ret    

000007e4 <write>:
SYSCALL(write)
 7e4:	b8 10 00 00 00       	mov    $0x10,%eax
 7e9:	cd 40                	int    $0x40
 7eb:	c3                   	ret    

000007ec <close>:
SYSCALL(close)
 7ec:	b8 15 00 00 00       	mov    $0x15,%eax
 7f1:	cd 40                	int    $0x40
 7f3:	c3                   	ret    

000007f4 <kill>:
SYSCALL(kill)
 7f4:	b8 06 00 00 00       	mov    $0x6,%eax
 7f9:	cd 40                	int    $0x40
 7fb:	c3                   	ret    

000007fc <exec>:
SYSCALL(exec)
 7fc:	b8 07 00 00 00       	mov    $0x7,%eax
 801:	cd 40                	int    $0x40
 803:	c3                   	ret    

00000804 <open>:
SYSCALL(open)
 804:	b8 0f 00 00 00       	mov    $0xf,%eax
 809:	cd 40                	int    $0x40
 80b:	c3                   	ret    

0000080c <mknod>:
SYSCALL(mknod)
 80c:	b8 11 00 00 00       	mov    $0x11,%eax
 811:	cd 40                	int    $0x40
 813:	c3                   	ret    

00000814 <unlink>:
SYSCALL(unlink)
 814:	b8 12 00 00 00       	mov    $0x12,%eax
 819:	cd 40                	int    $0x40
 81b:	c3                   	ret    

0000081c <fstat>:
SYSCALL(fstat)
 81c:	b8 08 00 00 00       	mov    $0x8,%eax
 821:	cd 40                	int    $0x40
 823:	c3                   	ret    

00000824 <link>:
SYSCALL(link)
 824:	b8 13 00 00 00       	mov    $0x13,%eax
 829:	cd 40                	int    $0x40
 82b:	c3                   	ret    

0000082c <mkdir>:
SYSCALL(mkdir)
 82c:	b8 14 00 00 00       	mov    $0x14,%eax
 831:	cd 40                	int    $0x40
 833:	c3                   	ret    

00000834 <chdir>:
SYSCALL(chdir)
 834:	b8 09 00 00 00       	mov    $0x9,%eax
 839:	cd 40                	int    $0x40
 83b:	c3                   	ret    

0000083c <dup>:
SYSCALL(dup)
 83c:	b8 0a 00 00 00       	mov    $0xa,%eax
 841:	cd 40                	int    $0x40
 843:	c3                   	ret    

00000844 <getpid>:
SYSCALL(getpid)
 844:	b8 0b 00 00 00       	mov    $0xb,%eax
 849:	cd 40                	int    $0x40
 84b:	c3                   	ret    

0000084c <sbrk>:
SYSCALL(sbrk)
 84c:	b8 0c 00 00 00       	mov    $0xc,%eax
 851:	cd 40                	int    $0x40
 853:	c3                   	ret    

00000854 <sleep>:
SYSCALL(sleep)
 854:	b8 0d 00 00 00       	mov    $0xd,%eax
 859:	cd 40                	int    $0x40
 85b:	c3                   	ret    

0000085c <uptime>:
SYSCALL(uptime)
 85c:	b8 0e 00 00 00       	mov    $0xe,%eax
 861:	cd 40                	int    $0x40
 863:	c3                   	ret    

00000864 <clone>:
SYSCALL(clone)
 864:	b8 16 00 00 00       	mov    $0x16,%eax
 869:	cd 40                	int    $0x40
 86b:	c3                   	ret    

0000086c <join>:
SYSCALL(join)
 86c:	b8 17 00 00 00       	mov    $0x17,%eax
 871:	cd 40                	int    $0x40
 873:	c3                   	ret    
 874:	66 90                	xchg   %ax,%ax
 876:	66 90                	xchg   %ax,%ax
 878:	66 90                	xchg   %ax,%ax
 87a:	66 90                	xchg   %ax,%ax
 87c:	66 90                	xchg   %ax,%ax
 87e:	66 90                	xchg   %ax,%ax

00000880 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 880:	55                   	push   %ebp
 881:	89 e5                	mov    %esp,%ebp
 883:	57                   	push   %edi
 884:	56                   	push   %esi
 885:	53                   	push   %ebx
 886:	83 ec 3c             	sub    $0x3c,%esp
 889:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 88c:	89 d1                	mov    %edx,%ecx
{
 88e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 891:	85 d2                	test   %edx,%edx
 893:	0f 89 7f 00 00 00    	jns    918 <printint+0x98>
 899:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 89d:	74 79                	je     918 <printint+0x98>
    neg = 1;
 89f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 8a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 8a8:	31 db                	xor    %ebx,%ebx
 8aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 8ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 8b0:	89 c8                	mov    %ecx,%eax
 8b2:	31 d2                	xor    %edx,%edx
 8b4:	89 cf                	mov    %ecx,%edi
 8b6:	f7 75 c4             	divl   -0x3c(%ebp)
 8b9:	0f b6 92 64 0d 00 00 	movzbl 0xd64(%edx),%edx
 8c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 8c3:	89 d8                	mov    %ebx,%eax
 8c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 8c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 8cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 8ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 8d1:	76 dd                	jbe    8b0 <printint+0x30>
  if(neg)
 8d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 8d6:	85 c9                	test   %ecx,%ecx
 8d8:	74 0c                	je     8e6 <printint+0x66>
    buf[i++] = '-';
 8da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 8df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 8e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 8e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 8e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 8ed:	eb 07                	jmp    8f6 <printint+0x76>
 8ef:	90                   	nop
    putc(fd, buf[i]);
 8f0:	0f b6 13             	movzbl (%ebx),%edx
 8f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 8f6:	83 ec 04             	sub    $0x4,%esp
 8f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 8fc:	6a 01                	push   $0x1
 8fe:	56                   	push   %esi
 8ff:	57                   	push   %edi
 900:	e8 df fe ff ff       	call   7e4 <write>
  while(--i >= 0)
 905:	83 c4 10             	add    $0x10,%esp
 908:	39 de                	cmp    %ebx,%esi
 90a:	75 e4                	jne    8f0 <printint+0x70>
}
 90c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 90f:	5b                   	pop    %ebx
 910:	5e                   	pop    %esi
 911:	5f                   	pop    %edi
 912:	5d                   	pop    %ebp
 913:	c3                   	ret    
 914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 918:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 91f:	eb 87                	jmp    8a8 <printint+0x28>
 921:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 928:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 92f:	90                   	nop

00000930 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 930:	55                   	push   %ebp
 931:	89 e5                	mov    %esp,%ebp
 933:	57                   	push   %edi
 934:	56                   	push   %esi
 935:	53                   	push   %ebx
 936:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 939:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 93c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 93f:	0f b6 13             	movzbl (%ebx),%edx
 942:	84 d2                	test   %dl,%dl
 944:	74 6a                	je     9b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 946:	8d 45 10             	lea    0x10(%ebp),%eax
 949:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 94c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 94f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 951:	89 45 d0             	mov    %eax,-0x30(%ebp)
 954:	eb 36                	jmp    98c <printf+0x5c>
 956:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 95d:	8d 76 00             	lea    0x0(%esi),%esi
 960:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 963:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 968:	83 f8 25             	cmp    $0x25,%eax
 96b:	74 15                	je     982 <printf+0x52>
  write(fd, &c, 1);
 96d:	83 ec 04             	sub    $0x4,%esp
 970:	88 55 e7             	mov    %dl,-0x19(%ebp)
 973:	6a 01                	push   $0x1
 975:	57                   	push   %edi
 976:	56                   	push   %esi
 977:	e8 68 fe ff ff       	call   7e4 <write>
 97c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 97f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 982:	0f b6 13             	movzbl (%ebx),%edx
 985:	83 c3 01             	add    $0x1,%ebx
 988:	84 d2                	test   %dl,%dl
 98a:	74 24                	je     9b0 <printf+0x80>
    c = fmt[i] & 0xff;
 98c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 98f:	85 c9                	test   %ecx,%ecx
 991:	74 cd                	je     960 <printf+0x30>
      }
    } else if(state == '%'){
 993:	83 f9 25             	cmp    $0x25,%ecx
 996:	75 ea                	jne    982 <printf+0x52>
      if(c == 'd'){
 998:	83 f8 25             	cmp    $0x25,%eax
 99b:	0f 84 07 01 00 00    	je     aa8 <printf+0x178>
 9a1:	83 e8 63             	sub    $0x63,%eax
 9a4:	83 f8 15             	cmp    $0x15,%eax
 9a7:	77 17                	ja     9c0 <printf+0x90>
 9a9:	ff 24 85 0c 0d 00 00 	jmp    *0xd0c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 9b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9b3:	5b                   	pop    %ebx
 9b4:	5e                   	pop    %esi
 9b5:	5f                   	pop    %edi
 9b6:	5d                   	pop    %ebp
 9b7:	c3                   	ret    
 9b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9bf:	90                   	nop
  write(fd, &c, 1);
 9c0:	83 ec 04             	sub    $0x4,%esp
 9c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 9c6:	6a 01                	push   $0x1
 9c8:	57                   	push   %edi
 9c9:	56                   	push   %esi
 9ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 9ce:	e8 11 fe ff ff       	call   7e4 <write>
        putc(fd, c);
 9d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 9d7:	83 c4 0c             	add    $0xc,%esp
 9da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 9dd:	6a 01                	push   $0x1
 9df:	57                   	push   %edi
 9e0:	56                   	push   %esi
 9e1:	e8 fe fd ff ff       	call   7e4 <write>
        putc(fd, c);
 9e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9e9:	31 c9                	xor    %ecx,%ecx
 9eb:	eb 95                	jmp    982 <printf+0x52>
 9ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 9f0:	83 ec 0c             	sub    $0xc,%esp
 9f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 9f8:	6a 00                	push   $0x0
 9fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9fd:	8b 10                	mov    (%eax),%edx
 9ff:	89 f0                	mov    %esi,%eax
 a01:	e8 7a fe ff ff       	call   880 <printint>
        ap++;
 a06:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a0a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a0d:	31 c9                	xor    %ecx,%ecx
 a0f:	e9 6e ff ff ff       	jmp    982 <printf+0x52>
 a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 a18:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a1b:	8b 10                	mov    (%eax),%edx
        ap++;
 a1d:	83 c0 04             	add    $0x4,%eax
 a20:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 a23:	85 d2                	test   %edx,%edx
 a25:	0f 84 8d 00 00 00    	je     ab8 <printf+0x188>
        while(*s != 0){
 a2b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 a2e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 a30:	84 c0                	test   %al,%al
 a32:	0f 84 4a ff ff ff    	je     982 <printf+0x52>
 a38:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a3b:	89 d3                	mov    %edx,%ebx
 a3d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 a40:	83 ec 04             	sub    $0x4,%esp
          s++;
 a43:	83 c3 01             	add    $0x1,%ebx
 a46:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 a49:	6a 01                	push   $0x1
 a4b:	57                   	push   %edi
 a4c:	56                   	push   %esi
 a4d:	e8 92 fd ff ff       	call   7e4 <write>
        while(*s != 0){
 a52:	0f b6 03             	movzbl (%ebx),%eax
 a55:	83 c4 10             	add    $0x10,%esp
 a58:	84 c0                	test   %al,%al
 a5a:	75 e4                	jne    a40 <printf+0x110>
      state = 0;
 a5c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 a5f:	31 c9                	xor    %ecx,%ecx
 a61:	e9 1c ff ff ff       	jmp    982 <printf+0x52>
 a66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a6d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 a70:	83 ec 0c             	sub    $0xc,%esp
 a73:	b9 0a 00 00 00       	mov    $0xa,%ecx
 a78:	6a 01                	push   $0x1
 a7a:	e9 7b ff ff ff       	jmp    9fa <printf+0xca>
 a7f:	90                   	nop
        putc(fd, *ap);
 a80:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 a83:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 a86:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 a88:	6a 01                	push   $0x1
 a8a:	57                   	push   %edi
 a8b:	56                   	push   %esi
        putc(fd, *ap);
 a8c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 a8f:	e8 50 fd ff ff       	call   7e4 <write>
        ap++;
 a94:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a98:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a9b:	31 c9                	xor    %ecx,%ecx
 a9d:	e9 e0 fe ff ff       	jmp    982 <printf+0x52>
 aa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 aa8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 aab:	83 ec 04             	sub    $0x4,%esp
 aae:	e9 2a ff ff ff       	jmp    9dd <printf+0xad>
 ab3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 ab7:	90                   	nop
          s = "(null)";
 ab8:	ba 04 0d 00 00       	mov    $0xd04,%edx
        while(*s != 0){
 abd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 ac0:	b8 28 00 00 00       	mov    $0x28,%eax
 ac5:	89 d3                	mov    %edx,%ebx
 ac7:	e9 74 ff ff ff       	jmp    a40 <printf+0x110>
 acc:	66 90                	xchg   %ax,%ax
 ace:	66 90                	xchg   %ax,%ax

00000ad0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 ad0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 ad1:	a1 24 11 00 00       	mov    0x1124,%eax
{
 ad6:	89 e5                	mov    %esp,%ebp
 ad8:	57                   	push   %edi
 ad9:	56                   	push   %esi
 ada:	53                   	push   %ebx
 adb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 ade:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 ae1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 ae8:	89 c2                	mov    %eax,%edx
 aea:	8b 00                	mov    (%eax),%eax
 aec:	39 ca                	cmp    %ecx,%edx
 aee:	73 30                	jae    b20 <free+0x50>
 af0:	39 c1                	cmp    %eax,%ecx
 af2:	72 04                	jb     af8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 af4:	39 c2                	cmp    %eax,%edx
 af6:	72 f0                	jb     ae8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 af8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 afb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 afe:	39 f8                	cmp    %edi,%eax
 b00:	74 30                	je     b32 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 b02:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 b05:	8b 42 04             	mov    0x4(%edx),%eax
 b08:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 b0b:	39 f1                	cmp    %esi,%ecx
 b0d:	74 3a                	je     b49 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 b0f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 b11:	5b                   	pop    %ebx
  freep = p;
 b12:	89 15 24 11 00 00    	mov    %edx,0x1124
}
 b18:	5e                   	pop    %esi
 b19:	5f                   	pop    %edi
 b1a:	5d                   	pop    %ebp
 b1b:	c3                   	ret    
 b1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b20:	39 c2                	cmp    %eax,%edx
 b22:	72 c4                	jb     ae8 <free+0x18>
 b24:	39 c1                	cmp    %eax,%ecx
 b26:	73 c0                	jae    ae8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 b28:	8b 73 fc             	mov    -0x4(%ebx),%esi
 b2b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 b2e:	39 f8                	cmp    %edi,%eax
 b30:	75 d0                	jne    b02 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 b32:	03 70 04             	add    0x4(%eax),%esi
 b35:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 b38:	8b 02                	mov    (%edx),%eax
 b3a:	8b 00                	mov    (%eax),%eax
 b3c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 b3f:	8b 42 04             	mov    0x4(%edx),%eax
 b42:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 b45:	39 f1                	cmp    %esi,%ecx
 b47:	75 c6                	jne    b0f <free+0x3f>
    p->s.size += bp->s.size;
 b49:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 b4c:	89 15 24 11 00 00    	mov    %edx,0x1124
    p->s.size += bp->s.size;
 b52:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 b55:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 b58:	89 0a                	mov    %ecx,(%edx)
}
 b5a:	5b                   	pop    %ebx
 b5b:	5e                   	pop    %esi
 b5c:	5f                   	pop    %edi
 b5d:	5d                   	pop    %ebp
 b5e:	c3                   	ret    
 b5f:	90                   	nop

00000b60 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b60:	55                   	push   %ebp
 b61:	89 e5                	mov    %esp,%ebp
 b63:	57                   	push   %edi
 b64:	56                   	push   %esi
 b65:	53                   	push   %ebx
 b66:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b69:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b6c:	8b 3d 24 11 00 00    	mov    0x1124,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b72:	8d 70 07             	lea    0x7(%eax),%esi
 b75:	c1 ee 03             	shr    $0x3,%esi
 b78:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 b7b:	85 ff                	test   %edi,%edi
 b7d:	0f 84 9d 00 00 00    	je     c20 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b83:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 b85:	8b 4a 04             	mov    0x4(%edx),%ecx
 b88:	39 f1                	cmp    %esi,%ecx
 b8a:	73 6a                	jae    bf6 <malloc+0x96>
 b8c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b91:	39 de                	cmp    %ebx,%esi
 b93:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 b96:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 b9d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ba0:	eb 17                	jmp    bb9 <malloc+0x59>
 ba2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ba8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 baa:	8b 48 04             	mov    0x4(%eax),%ecx
 bad:	39 f1                	cmp    %esi,%ecx
 baf:	73 4f                	jae    c00 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 bb1:	8b 3d 24 11 00 00    	mov    0x1124,%edi
 bb7:	89 c2                	mov    %eax,%edx
 bb9:	39 d7                	cmp    %edx,%edi
 bbb:	75 eb                	jne    ba8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 bbd:	83 ec 0c             	sub    $0xc,%esp
 bc0:	ff 75 e4             	push   -0x1c(%ebp)
 bc3:	e8 84 fc ff ff       	call   84c <sbrk>
  if(p == (char*)-1)
 bc8:	83 c4 10             	add    $0x10,%esp
 bcb:	83 f8 ff             	cmp    $0xffffffff,%eax
 bce:	74 1c                	je     bec <malloc+0x8c>
  hp->s.size = nu;
 bd0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 bd3:	83 ec 0c             	sub    $0xc,%esp
 bd6:	83 c0 08             	add    $0x8,%eax
 bd9:	50                   	push   %eax
 bda:	e8 f1 fe ff ff       	call   ad0 <free>
  return freep;
 bdf:	8b 15 24 11 00 00    	mov    0x1124,%edx
      if((p = morecore(nunits)) == 0)
 be5:	83 c4 10             	add    $0x10,%esp
 be8:	85 d2                	test   %edx,%edx
 bea:	75 bc                	jne    ba8 <malloc+0x48>
        return 0;
  }
}
 bec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 bef:	31 c0                	xor    %eax,%eax
}
 bf1:	5b                   	pop    %ebx
 bf2:	5e                   	pop    %esi
 bf3:	5f                   	pop    %edi
 bf4:	5d                   	pop    %ebp
 bf5:	c3                   	ret    
    if(p->s.size >= nunits){
 bf6:	89 d0                	mov    %edx,%eax
 bf8:	89 fa                	mov    %edi,%edx
 bfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 c00:	39 ce                	cmp    %ecx,%esi
 c02:	74 4c                	je     c50 <malloc+0xf0>
        p->s.size -= nunits;
 c04:	29 f1                	sub    %esi,%ecx
 c06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 c09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 c0c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 c0f:	89 15 24 11 00 00    	mov    %edx,0x1124
}
 c15:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 c18:	83 c0 08             	add    $0x8,%eax
}
 c1b:	5b                   	pop    %ebx
 c1c:	5e                   	pop    %esi
 c1d:	5f                   	pop    %edi
 c1e:	5d                   	pop    %ebp
 c1f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 c20:	c7 05 24 11 00 00 28 	movl   $0x1128,0x1124
 c27:	11 00 00 
    base.s.size = 0;
 c2a:	bf 28 11 00 00       	mov    $0x1128,%edi
    base.s.ptr = freep = prevp = &base;
 c2f:	c7 05 28 11 00 00 28 	movl   $0x1128,0x1128
 c36:	11 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c39:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 c3b:	c7 05 2c 11 00 00 00 	movl   $0x0,0x112c
 c42:	00 00 00 
    if(p->s.size >= nunits){
 c45:	e9 42 ff ff ff       	jmp    b8c <malloc+0x2c>
 c4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 c50:	8b 08                	mov    (%eax),%ecx
 c52:	89 0a                	mov    %ecx,(%edx)
 c54:	eb b9                	jmp    c0f <malloc+0xaf>
