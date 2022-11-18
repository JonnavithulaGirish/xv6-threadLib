
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
  14:	e8 4b 07 00 00       	call   764 <getpid>

   int arg1 = 11, arg2 = 22;

   lock_init(&lock);
  19:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  1c:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
   lock_init(&lock);
  23:	68 0c 10 00 00       	push   $0x100c
   ppid = getpid();
  28:	a3 1c 10 00 00       	mov    %eax,0x101c
   int arg1 = 11, arg2 = 22;
  2d:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   lock_init(&lock);
  34:	e8 57 06 00 00       	call   690 <lock_init>
   lock_init(&lock2);
  39:	c7 04 24 04 10 00 00 	movl   $0x1004,(%esp)
  40:	e8 4b 06 00 00       	call   690 <lock_init>
   lock_acquire(&lock);
  45:	c7 04 24 0c 10 00 00 	movl   $0x100c,(%esp)
  4c:	e8 5f 06 00 00       	call   6b0 <lock_acquire>
   lock_acquire(&lock2);
  51:	c7 04 24 04 10 00 00 	movl   $0x1004,(%esp)
  58:	e8 53 06 00 00       	call   6b0 <lock_acquire>

   for (int i = 0; i < num_threads; i++) {
  5d:	8b 35 00 10 00 00    	mov    0x1000,%esi
  63:	83 c4 10             	add    $0x10,%esp
  66:	85 f6                	test   %esi,%esi
  68:	7e 75                	jle    df <main+0xdf>
  6a:	31 db                	xor    %ebx,%ebx
  6c:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  6f:	8d 75 e0             	lea    -0x20(%ebp),%esi
  72:	eb 0f                	jmp    83 <main+0x83>
  74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  78:	83 c3 01             	add    $0x1,%ebx
  7b:	39 1d 00 10 00 00    	cmp    %ebx,0x1000
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
  9b:	68 78 0b 00 00       	push   $0xb78
  a0:	68 82 0b 00 00       	push   $0xb82
  a5:	6a 01                	push   $0x1
  a7:	e8 a4 07 00 00       	call   850 <printf>
  ac:	83 c4 0c             	add    $0xc,%esp
  af:	68 c9 0b 00 00       	push   $0xbc9
   }
   lock_release(&lock2);

   for (int i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  b4:	68 a8 0b 00 00       	push   $0xba8
  b9:	6a 01                	push   $0x1
  bb:	e8 90 07 00 00       	call   850 <printf>
  c0:	5a                   	pop    %edx
  c1:	59                   	pop    %ecx
  c2:	68 bc 0b 00 00       	push   $0xbbc
  c7:	6a 01                	push   $0x1
  c9:	e8 82 07 00 00       	call   850 <printf>
  ce:	5b                   	pop    %ebx
  cf:	ff 35 1c 10 00 00    	push   0x101c
  d5:	e8 3a 06 00 00       	call   714 <kill>
  da:	e8 05 06 00 00       	call   6e4 <exit>
   size = (unsigned int)sbrk(0);
  df:	83 ec 0c             	sub    $0xc,%esp
  e2:	6a 00                	push   $0x0
  e4:	e8 83 06 00 00       	call   76c <sbrk>
   while (global < num_threads) {
  e9:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
  ec:	a3 14 10 00 00       	mov    %eax,0x1014
   while (global < num_threads) {
  f1:	a1 00 10 00 00       	mov    0x1000,%eax
  f6:	39 05 18 10 00 00    	cmp    %eax,0x1018
  fc:	7d 37                	jge    135 <main+0x135>
  fe:	66 90                	xchg   %ax,%ax
      lock_release(&lock);
 100:	83 ec 0c             	sub    $0xc,%esp
 103:	68 0c 10 00 00       	push   $0x100c
 108:	e8 c3 05 00 00       	call   6d0 <lock_release>
      sleep(100);
 10d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 114:	e8 5b 06 00 00       	call   774 <sleep>
      lock_acquire(&lock);
 119:	c7 04 24 0c 10 00 00 	movl   $0x100c,(%esp)
 120:	e8 8b 05 00 00       	call   6b0 <lock_acquire>
   while (global < num_threads) {
 125:	a1 00 10 00 00       	mov    0x1000,%eax
 12a:	83 c4 10             	add    $0x10,%esp
 12d:	39 05 18 10 00 00    	cmp    %eax,0x1018
 133:	7c cb                	jl     100 <main+0x100>
   global = 0;
 135:	c7 05 18 10 00 00 00 	movl   $0x0,0x1018
 13c:	00 00 00 
   sbrk(10000);
 13f:	83 ec 0c             	sub    $0xc,%esp
 142:	68 10 27 00 00       	push   $0x2710
 147:	e8 20 06 00 00       	call   76c <sbrk>
   size = (unsigned int)sbrk(0);
 14c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 153:	e8 14 06 00 00       	call   76c <sbrk>
   lock_release(&lock);
 158:	c7 04 24 0c 10 00 00 	movl   $0x100c,(%esp)
   size = (unsigned int)sbrk(0);
 15f:	a3 14 10 00 00       	mov    %eax,0x1014
   lock_release(&lock);
 164:	e8 67 05 00 00       	call   6d0 <lock_release>
   while (global < num_threads) {
 169:	a1 00 10 00 00       	mov    0x1000,%eax
 16e:	83 c4 10             	add    $0x10,%esp
 171:	39 05 18 10 00 00    	cmp    %eax,0x1018
 177:	7d 3c                	jge    1b5 <main+0x1b5>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 180:	83 ec 0c             	sub    $0xc,%esp
 183:	68 04 10 00 00       	push   $0x1004
 188:	e8 43 05 00 00       	call   6d0 <lock_release>
      sleep(100);
 18d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 194:	e8 db 05 00 00       	call   774 <sleep>
      lock_acquire(&lock2);
 199:	c7 04 24 04 10 00 00 	movl   $0x1004,(%esp)
 1a0:	e8 0b 05 00 00       	call   6b0 <lock_acquire>
   while (global < num_threads) {
 1a5:	a1 00 10 00 00       	mov    0x1000,%eax
 1aa:	83 c4 10             	add    $0x10,%esp
 1ad:	39 05 18 10 00 00    	cmp    %eax,0x1018
 1b3:	7c cb                	jl     180 <main+0x180>
   lock_release(&lock2);
 1b5:	83 ec 0c             	sub    $0xc,%esp
 1b8:	68 04 10 00 00       	push   $0x1004
 1bd:	e8 0e 05 00 00       	call   6d0 <lock_release>
   for (int i = 0; i < num_threads; i++) {
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	83 3d 00 10 00 00 00 	cmpl   $0x0,0x1000
 1cc:	7e 3e                	jle    20c <main+0x20c>
 1ce:	31 db                	xor    %ebx,%ebx
 1d0:	eb 11                	jmp    1e3 <main+0x1e3>
 1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d8:	83 c3 01             	add    $0x1,%ebx
 1db:	39 1d 00 10 00 00    	cmp    %ebx,0x1000
 1e1:	7e 29                	jle    20c <main+0x20c>
      int join_pid = thread_join();
 1e3:	e8 78 04 00 00       	call   660 <thread_join>
      assert(join_pid > 0);
 1e8:	85 c0                	test   %eax,%eax
 1ea:	7f ec                	jg     1d8 <main+0x1d8>
 1ec:	6a 41                	push   $0x41
 1ee:	68 78 0b 00 00       	push   $0xb78
 1f3:	68 82 0b 00 00       	push   $0xb82
 1f8:	6a 01                	push   $0x1
 1fa:	e8 51 06 00 00       	call   850 <printf>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	68 d8 0b 00 00       	push   $0xbd8
 207:	e9 a8 fe ff ff       	jmp    b4 <main+0xb4>
   }

   printf(1, "TEST PASSED\n");
 20c:	50                   	push   %eax
 20d:	50                   	push   %eax
 20e:	68 e5 0b 00 00       	push   $0xbe5
 213:	6a 01                	push   $0x1
 215:	e8 36 06 00 00       	call   850 <printf>
   exit();
 21a:	e8 c5 04 00 00       	call   6e4 <exit>
 21f:	90                   	nop

00000220 <worker>:
   
   exit();
}


void worker(void *arg1, void *arg2) {
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
 226:	68 0c 10 00 00       	push   $0x100c
 22b:	e8 80 04 00 00       	call   6b0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 230:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 237:	e8 30 05 00 00       	call   76c <sbrk>
 23c:	83 c4 10             	add    $0x10,%esp
 23f:	3b 05 14 10 00 00    	cmp    0x1014,%eax
 245:	74 46                	je     28d <worker+0x6d>
 247:	6a 5b                	push   $0x5b

   


   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 249:	68 78 0b 00 00       	push   $0xb78
 24e:	68 82 0b 00 00       	push   $0xb82
 253:	6a 01                	push   $0x1
 255:	e8 f6 05 00 00       	call   850 <printf>
 25a:	83 c4 0c             	add    $0xc,%esp
 25d:	68 8a 0b 00 00       	push   $0xb8a
 262:	68 a8 0b 00 00       	push   $0xba8
 267:	6a 01                	push   $0x1
 269:	e8 e2 05 00 00       	call   850 <printf>
 26e:	58                   	pop    %eax
 26f:	5a                   	pop    %edx
 270:	68 bc 0b 00 00       	push   $0xbbc
 275:	6a 01                	push   $0x1
 277:	e8 d4 05 00 00       	call   850 <printf>
 27c:	59                   	pop    %ecx
 27d:	ff 35 1c 10 00 00    	push   0x101c
 283:	e8 8c 04 00 00       	call   714 <kill>
 288:	e8 57 04 00 00       	call   6e4 <exit>
   lock_release(&lock);
 28d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 290:	83 05 18 10 00 00 01 	addl   $0x1,0x1018
   lock_release(&lock);
 297:	68 0c 10 00 00       	push   $0x100c
 29c:	e8 2f 04 00 00       	call   6d0 <lock_release>
   lock_acquire(&lock2);
 2a1:	c7 04 24 04 10 00 00 	movl   $0x1004,(%esp)
 2a8:	e8 03 04 00 00       	call   6b0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 2ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2b4:	e8 b3 04 00 00       	call   76c <sbrk>
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	3b 05 14 10 00 00    	cmp    0x1014,%eax
 2c2:	74 04                	je     2c8 <worker+0xa8>
 2c4:	6a 63                	push   $0x63
 2c6:	eb 81                	jmp    249 <worker+0x29>
   global++;
   sbrk(10000);
 2c8:	83 ec 0c             	sub    $0xc,%esp
   global++;
 2cb:	83 05 18 10 00 00 01 	addl   $0x1,0x1018
   sbrk(10000);
 2d2:	68 10 27 00 00       	push   $0x2710
 2d7:	e8 90 04 00 00       	call   76c <sbrk>
   size = (unsigned int)sbrk(0);
 2dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2e3:	e8 84 04 00 00       	call   76c <sbrk>
   lock_release(&lock2);
 2e8:	c7 04 24 04 10 00 00 	movl   $0x1004,(%esp)
   size = (unsigned int)sbrk(0);
 2ef:	a3 14 10 00 00       	mov    %eax,0x1014
   lock_release(&lock2);
 2f4:	e8 d7 03 00 00       	call   6d0 <lock_release>



   exit();
 2f9:	e8 e6 03 00 00       	call   6e4 <exit>
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
 31a:	68 78 0b 00 00       	push   $0xb78
 31f:	68 82 0b 00 00       	push   $0xb82
 324:	6a 01                	push   $0x1
 326:	e8 25 05 00 00       	call   850 <printf>
 32b:	83 c4 0c             	add    $0xc,%esp
 32e:	68 01 0c 00 00       	push   $0xc01
 333:	68 a8 0b 00 00       	push   $0xba8
 338:	6a 01                	push   $0x1
 33a:	e8 11 05 00 00       	call   850 <printf>
 33f:	58                   	pop    %eax
 340:	5a                   	pop    %edx
 341:	68 bc 0b 00 00       	push   $0xbbc
 346:	6a 01                	push   $0x1
 348:	e8 03 05 00 00       	call   850 <printf>
 34d:	59                   	pop    %ecx
 34e:	ff 35 1c 10 00 00    	push   0x101c
 354:	e8 bb 03 00 00       	call   714 <kill>
 359:	e8 86 03 00 00       	call   6e4 <exit>
   assert(arg1_int == 11);
 35e:	6a 4c                	push   $0x4c
 360:	68 78 0b 00 00       	push   $0xb78
 365:	68 82 0b 00 00       	push   $0xb82
 36a:	6a 01                	push   $0x1
 36c:	e8 df 04 00 00       	call   850 <printf>
 371:	83 c4 0c             	add    $0xc,%esp
 374:	68 f2 0b 00 00       	push   $0xbf2
 379:	eb b8                	jmp    333 <worker2+0x33>
   lock_acquire(&lock2);
 37b:	83 ec 0c             	sub    $0xc,%esp
 37e:	68 04 10 00 00       	push   $0x1004
 383:	e8 28 03 00 00       	call   6b0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 388:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 38f:	e8 d8 03 00 00       	call   76c <sbrk>
 394:	83 c4 10             	add    $0x10,%esp
 397:	3b 05 14 10 00 00    	cmp    0x1014,%eax
 39d:	74 20                	je     3bf <worker2+0xbf>
 39f:	6a 50                	push   $0x50
 3a1:	68 78 0b 00 00       	push   $0xb78
 3a6:	68 82 0b 00 00       	push   $0xb82
 3ab:	6a 01                	push   $0x1
 3ad:	e8 9e 04 00 00       	call   850 <printf>
 3b2:	83 c4 0c             	add    $0xc,%esp
 3b5:	68 8a 0b 00 00       	push   $0xb8a
 3ba:	e9 74 ff ff ff       	jmp    333 <worker2+0x33>
   lock_release(&lock2);
 3bf:	83 ec 0c             	sub    $0xc,%esp
   global++;
 3c2:	83 05 18 10 00 00 01 	addl   $0x1,0x1018
   lock_release(&lock2);
 3c9:	68 04 10 00 00       	push   $0x1004
 3ce:	e8 fd 02 00 00       	call   6d0 <lock_release>
   exit();
 3d3:	e8 0c 03 00 00       	call   6e4 <exit>
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
 518:	e8 df 01 00 00       	call   6fc <read>
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
 57d:	e8 a2 01 00 00       	call   724 <open>
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
 592:	e8 a5 01 00 00       	call   73c <fstat>
  close(fd);
 597:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 59a:	89 c6                	mov    %eax,%esi
  close(fd);
 59c:	e8 6b 01 00 00       	call   70c <close>
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


int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	83 ec 14             	sub    $0x14,%esp
   void *stack = malloc(PGSIZE);
 636:	68 00 10 00 00       	push   $0x1000
 63b:	e8 40 04 00 00       	call   a80 <malloc>
   return clone(start_routine, arg1, arg2, stack);
 640:	50                   	push   %eax
 641:	ff 75 10             	push   0x10(%ebp)
 644:	ff 75 0c             	push   0xc(%ebp)
 647:	ff 75 08             	push   0x8(%ebp)
 64a:	e8 35 01 00 00       	call   784 <clone>
}
 64f:	c9                   	leave  
 650:	c3                   	ret    
 651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop

00000660 <thread_join>:

int thread_join(){
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
  void *stack;
  int pid= join(&stack);
 664:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 667:	83 ec 20             	sub    $0x20,%esp
  int pid= join(&stack);
 66a:	50                   	push   %eax
 66b:	e8 1c 01 00 00       	call   78c <join>
  if(pid >0 ){
 670:	83 c4 10             	add    $0x10,%esp
  int pid= join(&stack);
 673:	89 c2                	mov    %eax,%edx
  if(pid >0 ){
 675:	85 c0                	test   %eax,%eax
 677:	7e 0d                	jle    686 <thread_join+0x26>
 679:	8b 7d f4             	mov    -0xc(%ebp),%edi
 67c:	b9 00 10 00 00       	mov    $0x1000,%ecx
 681:	31 c0                	xor    %eax,%eax
 683:	fc                   	cld    
 684:	f3 aa                	rep stos %al,%es:(%edi)
    memset(stack,0,PGSIZE);
  }
  return pid;
}
 686:	8b 7d fc             	mov    -0x4(%ebp),%edi
 689:	89 d0                	mov    %edx,%eax
 68b:	c9                   	leave  
 68c:	c3                   	ret    
 68d:	8d 76 00             	lea    0x0(%esi),%esi

00000690 <lock_init>:

void lock_init(lock_t *lock) {
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 696:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 69c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 6a3:	5d                   	pop    %ebp
 6a4:	c3                   	ret    
 6a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006b0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 6b0:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 6b1:	b8 01 00 00 00       	mov    $0x1,%eax
 6b6:	89 e5                	mov    %esp,%ebp
 6b8:	8b 55 08             	mov    0x8(%ebp),%edx
 6bb:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn);
 6bf:	8b 52 04             	mov    0x4(%edx),%edx
 6c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 6c8:	39 c2                	cmp    %eax,%edx
 6ca:	75 fc                	jne    6c8 <lock_acquire+0x18>
}
 6cc:	5d                   	pop    %ebp
 6cd:	c3                   	ret    
 6ce:	66 90                	xchg   %ax,%ax

000006d0 <lock_release>:

void lock_release(lock_t *lock){
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 6d6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 6da:	5d                   	pop    %ebp
 6db:	c3                   	ret    

000006dc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6dc:	b8 01 00 00 00       	mov    $0x1,%eax
 6e1:	cd 40                	int    $0x40
 6e3:	c3                   	ret    

000006e4 <exit>:
SYSCALL(exit)
 6e4:	b8 02 00 00 00       	mov    $0x2,%eax
 6e9:	cd 40                	int    $0x40
 6eb:	c3                   	ret    

000006ec <wait>:
SYSCALL(wait)
 6ec:	b8 03 00 00 00       	mov    $0x3,%eax
 6f1:	cd 40                	int    $0x40
 6f3:	c3                   	ret    

000006f4 <pipe>:
SYSCALL(pipe)
 6f4:	b8 04 00 00 00       	mov    $0x4,%eax
 6f9:	cd 40                	int    $0x40
 6fb:	c3                   	ret    

000006fc <read>:
SYSCALL(read)
 6fc:	b8 05 00 00 00       	mov    $0x5,%eax
 701:	cd 40                	int    $0x40
 703:	c3                   	ret    

00000704 <write>:
SYSCALL(write)
 704:	b8 10 00 00 00       	mov    $0x10,%eax
 709:	cd 40                	int    $0x40
 70b:	c3                   	ret    

0000070c <close>:
SYSCALL(close)
 70c:	b8 15 00 00 00       	mov    $0x15,%eax
 711:	cd 40                	int    $0x40
 713:	c3                   	ret    

00000714 <kill>:
SYSCALL(kill)
 714:	b8 06 00 00 00       	mov    $0x6,%eax
 719:	cd 40                	int    $0x40
 71b:	c3                   	ret    

0000071c <exec>:
SYSCALL(exec)
 71c:	b8 07 00 00 00       	mov    $0x7,%eax
 721:	cd 40                	int    $0x40
 723:	c3                   	ret    

00000724 <open>:
SYSCALL(open)
 724:	b8 0f 00 00 00       	mov    $0xf,%eax
 729:	cd 40                	int    $0x40
 72b:	c3                   	ret    

0000072c <mknod>:
SYSCALL(mknod)
 72c:	b8 11 00 00 00       	mov    $0x11,%eax
 731:	cd 40                	int    $0x40
 733:	c3                   	ret    

00000734 <unlink>:
SYSCALL(unlink)
 734:	b8 12 00 00 00       	mov    $0x12,%eax
 739:	cd 40                	int    $0x40
 73b:	c3                   	ret    

0000073c <fstat>:
SYSCALL(fstat)
 73c:	b8 08 00 00 00       	mov    $0x8,%eax
 741:	cd 40                	int    $0x40
 743:	c3                   	ret    

00000744 <link>:
SYSCALL(link)
 744:	b8 13 00 00 00       	mov    $0x13,%eax
 749:	cd 40                	int    $0x40
 74b:	c3                   	ret    

0000074c <mkdir>:
SYSCALL(mkdir)
 74c:	b8 14 00 00 00       	mov    $0x14,%eax
 751:	cd 40                	int    $0x40
 753:	c3                   	ret    

00000754 <chdir>:
SYSCALL(chdir)
 754:	b8 09 00 00 00       	mov    $0x9,%eax
 759:	cd 40                	int    $0x40
 75b:	c3                   	ret    

0000075c <dup>:
SYSCALL(dup)
 75c:	b8 0a 00 00 00       	mov    $0xa,%eax
 761:	cd 40                	int    $0x40
 763:	c3                   	ret    

00000764 <getpid>:
SYSCALL(getpid)
 764:	b8 0b 00 00 00       	mov    $0xb,%eax
 769:	cd 40                	int    $0x40
 76b:	c3                   	ret    

0000076c <sbrk>:
SYSCALL(sbrk)
 76c:	b8 0c 00 00 00       	mov    $0xc,%eax
 771:	cd 40                	int    $0x40
 773:	c3                   	ret    

00000774 <sleep>:
SYSCALL(sleep)
 774:	b8 0d 00 00 00       	mov    $0xd,%eax
 779:	cd 40                	int    $0x40
 77b:	c3                   	ret    

0000077c <uptime>:
SYSCALL(uptime)
 77c:	b8 0e 00 00 00       	mov    $0xe,%eax
 781:	cd 40                	int    $0x40
 783:	c3                   	ret    

00000784 <clone>:
SYSCALL(clone)
 784:	b8 16 00 00 00       	mov    $0x16,%eax
 789:	cd 40                	int    $0x40
 78b:	c3                   	ret    

0000078c <join>:
SYSCALL(join)
 78c:	b8 17 00 00 00       	mov    $0x17,%eax
 791:	cd 40                	int    $0x40
 793:	c3                   	ret    
 794:	66 90                	xchg   %ax,%ax
 796:	66 90                	xchg   %ax,%ax
 798:	66 90                	xchg   %ax,%ax
 79a:	66 90                	xchg   %ax,%ax
 79c:	66 90                	xchg   %ax,%ax
 79e:	66 90                	xchg   %ax,%ax

000007a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	57                   	push   %edi
 7a4:	56                   	push   %esi
 7a5:	53                   	push   %ebx
 7a6:	83 ec 3c             	sub    $0x3c,%esp
 7a9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 7ac:	89 d1                	mov    %edx,%ecx
{
 7ae:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 7b1:	85 d2                	test   %edx,%edx
 7b3:	0f 89 7f 00 00 00    	jns    838 <printint+0x98>
 7b9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7bd:	74 79                	je     838 <printint+0x98>
    neg = 1;
 7bf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7c6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7c8:	31 db                	xor    %ebx,%ebx
 7ca:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7d0:	89 c8                	mov    %ecx,%eax
 7d2:	31 d2                	xor    %edx,%edx
 7d4:	89 cf                	mov    %ecx,%edi
 7d6:	f7 75 c4             	divl   -0x3c(%ebp)
 7d9:	0f b6 92 70 0c 00 00 	movzbl 0xc70(%edx),%edx
 7e0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7e3:	89 d8                	mov    %ebx,%eax
 7e5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7e8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7eb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7ee:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7f1:	76 dd                	jbe    7d0 <printint+0x30>
  if(neg)
 7f3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7f6:	85 c9                	test   %ecx,%ecx
 7f8:	74 0c                	je     806 <printint+0x66>
    buf[i++] = '-';
 7fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7ff:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 801:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 806:	8b 7d b8             	mov    -0x48(%ebp),%edi
 809:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 80d:	eb 07                	jmp    816 <printint+0x76>
 80f:	90                   	nop
    putc(fd, buf[i]);
 810:	0f b6 13             	movzbl (%ebx),%edx
 813:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 816:	83 ec 04             	sub    $0x4,%esp
 819:	88 55 d7             	mov    %dl,-0x29(%ebp)
 81c:	6a 01                	push   $0x1
 81e:	56                   	push   %esi
 81f:	57                   	push   %edi
 820:	e8 df fe ff ff       	call   704 <write>
  while(--i >= 0)
 825:	83 c4 10             	add    $0x10,%esp
 828:	39 de                	cmp    %ebx,%esi
 82a:	75 e4                	jne    810 <printint+0x70>
}
 82c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 82f:	5b                   	pop    %ebx
 830:	5e                   	pop    %esi
 831:	5f                   	pop    %edi
 832:	5d                   	pop    %ebp
 833:	c3                   	ret    
 834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 838:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 83f:	eb 87                	jmp    7c8 <printint+0x28>
 841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 848:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84f:	90                   	nop

00000850 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 850:	55                   	push   %ebp
 851:	89 e5                	mov    %esp,%ebp
 853:	57                   	push   %edi
 854:	56                   	push   %esi
 855:	53                   	push   %ebx
 856:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 859:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 85c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 85f:	0f b6 13             	movzbl (%ebx),%edx
 862:	84 d2                	test   %dl,%dl
 864:	74 6a                	je     8d0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 866:	8d 45 10             	lea    0x10(%ebp),%eax
 869:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 86c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 86f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 871:	89 45 d0             	mov    %eax,-0x30(%ebp)
 874:	eb 36                	jmp    8ac <printf+0x5c>
 876:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 87d:	8d 76 00             	lea    0x0(%esi),%esi
 880:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 883:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 888:	83 f8 25             	cmp    $0x25,%eax
 88b:	74 15                	je     8a2 <printf+0x52>
  write(fd, &c, 1);
 88d:	83 ec 04             	sub    $0x4,%esp
 890:	88 55 e7             	mov    %dl,-0x19(%ebp)
 893:	6a 01                	push   $0x1
 895:	57                   	push   %edi
 896:	56                   	push   %esi
 897:	e8 68 fe ff ff       	call   704 <write>
 89c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 89f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8a2:	0f b6 13             	movzbl (%ebx),%edx
 8a5:	83 c3 01             	add    $0x1,%ebx
 8a8:	84 d2                	test   %dl,%dl
 8aa:	74 24                	je     8d0 <printf+0x80>
    c = fmt[i] & 0xff;
 8ac:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 8af:	85 c9                	test   %ecx,%ecx
 8b1:	74 cd                	je     880 <printf+0x30>
      }
    } else if(state == '%'){
 8b3:	83 f9 25             	cmp    $0x25,%ecx
 8b6:	75 ea                	jne    8a2 <printf+0x52>
      if(c == 'd'){
 8b8:	83 f8 25             	cmp    $0x25,%eax
 8bb:	0f 84 07 01 00 00    	je     9c8 <printf+0x178>
 8c1:	83 e8 63             	sub    $0x63,%eax
 8c4:	83 f8 15             	cmp    $0x15,%eax
 8c7:	77 17                	ja     8e0 <printf+0x90>
 8c9:	ff 24 85 18 0c 00 00 	jmp    *0xc18(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8d3:	5b                   	pop    %ebx
 8d4:	5e                   	pop    %esi
 8d5:	5f                   	pop    %edi
 8d6:	5d                   	pop    %ebp
 8d7:	c3                   	ret    
 8d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8df:	90                   	nop
  write(fd, &c, 1);
 8e0:	83 ec 04             	sub    $0x4,%esp
 8e3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8e6:	6a 01                	push   $0x1
 8e8:	57                   	push   %edi
 8e9:	56                   	push   %esi
 8ea:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8ee:	e8 11 fe ff ff       	call   704 <write>
        putc(fd, c);
 8f3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8f7:	83 c4 0c             	add    $0xc,%esp
 8fa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8fd:	6a 01                	push   $0x1
 8ff:	57                   	push   %edi
 900:	56                   	push   %esi
 901:	e8 fe fd ff ff       	call   704 <write>
        putc(fd, c);
 906:	83 c4 10             	add    $0x10,%esp
      state = 0;
 909:	31 c9                	xor    %ecx,%ecx
 90b:	eb 95                	jmp    8a2 <printf+0x52>
 90d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 910:	83 ec 0c             	sub    $0xc,%esp
 913:	b9 10 00 00 00       	mov    $0x10,%ecx
 918:	6a 00                	push   $0x0
 91a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 91d:	8b 10                	mov    (%eax),%edx
 91f:	89 f0                	mov    %esi,%eax
 921:	e8 7a fe ff ff       	call   7a0 <printint>
        ap++;
 926:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 92a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 92d:	31 c9                	xor    %ecx,%ecx
 92f:	e9 6e ff ff ff       	jmp    8a2 <printf+0x52>
 934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 938:	8b 45 d0             	mov    -0x30(%ebp),%eax
 93b:	8b 10                	mov    (%eax),%edx
        ap++;
 93d:	83 c0 04             	add    $0x4,%eax
 940:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 943:	85 d2                	test   %edx,%edx
 945:	0f 84 8d 00 00 00    	je     9d8 <printf+0x188>
        while(*s != 0){
 94b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 94e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 950:	84 c0                	test   %al,%al
 952:	0f 84 4a ff ff ff    	je     8a2 <printf+0x52>
 958:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 95b:	89 d3                	mov    %edx,%ebx
 95d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 960:	83 ec 04             	sub    $0x4,%esp
          s++;
 963:	83 c3 01             	add    $0x1,%ebx
 966:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 969:	6a 01                	push   $0x1
 96b:	57                   	push   %edi
 96c:	56                   	push   %esi
 96d:	e8 92 fd ff ff       	call   704 <write>
        while(*s != 0){
 972:	0f b6 03             	movzbl (%ebx),%eax
 975:	83 c4 10             	add    $0x10,%esp
 978:	84 c0                	test   %al,%al
 97a:	75 e4                	jne    960 <printf+0x110>
      state = 0;
 97c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 97f:	31 c9                	xor    %ecx,%ecx
 981:	e9 1c ff ff ff       	jmp    8a2 <printf+0x52>
 986:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 98d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 990:	83 ec 0c             	sub    $0xc,%esp
 993:	b9 0a 00 00 00       	mov    $0xa,%ecx
 998:	6a 01                	push   $0x1
 99a:	e9 7b ff ff ff       	jmp    91a <printf+0xca>
 99f:	90                   	nop
        putc(fd, *ap);
 9a0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 9a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9a6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 9a8:	6a 01                	push   $0x1
 9aa:	57                   	push   %edi
 9ab:	56                   	push   %esi
        putc(fd, *ap);
 9ac:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9af:	e8 50 fd ff ff       	call   704 <write>
        ap++;
 9b4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9b8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9bb:	31 c9                	xor    %ecx,%ecx
 9bd:	e9 e0 fe ff ff       	jmp    8a2 <printf+0x52>
 9c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9c8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9cb:	83 ec 04             	sub    $0x4,%esp
 9ce:	e9 2a ff ff ff       	jmp    8fd <printf+0xad>
 9d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9d7:	90                   	nop
          s = "(null)";
 9d8:	ba 10 0c 00 00       	mov    $0xc10,%edx
        while(*s != 0){
 9dd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9e0:	b8 28 00 00 00       	mov    $0x28,%eax
 9e5:	89 d3                	mov    %edx,%ebx
 9e7:	e9 74 ff ff ff       	jmp    960 <printf+0x110>
 9ec:	66 90                	xchg   %ax,%ax
 9ee:	66 90                	xchg   %ax,%ax

000009f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9f1:	a1 20 10 00 00       	mov    0x1020,%eax
{
 9f6:	89 e5                	mov    %esp,%ebp
 9f8:	57                   	push   %edi
 9f9:	56                   	push   %esi
 9fa:	53                   	push   %ebx
 9fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a08:	89 c2                	mov    %eax,%edx
 a0a:	8b 00                	mov    (%eax),%eax
 a0c:	39 ca                	cmp    %ecx,%edx
 a0e:	73 30                	jae    a40 <free+0x50>
 a10:	39 c1                	cmp    %eax,%ecx
 a12:	72 04                	jb     a18 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a14:	39 c2                	cmp    %eax,%edx
 a16:	72 f0                	jb     a08 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a18:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a1b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a1e:	39 f8                	cmp    %edi,%eax
 a20:	74 30                	je     a52 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a22:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a25:	8b 42 04             	mov    0x4(%edx),%eax
 a28:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a2b:	39 f1                	cmp    %esi,%ecx
 a2d:	74 3a                	je     a69 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a2f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a31:	5b                   	pop    %ebx
  freep = p;
 a32:	89 15 20 10 00 00    	mov    %edx,0x1020
}
 a38:	5e                   	pop    %esi
 a39:	5f                   	pop    %edi
 a3a:	5d                   	pop    %ebp
 a3b:	c3                   	ret    
 a3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a40:	39 c2                	cmp    %eax,%edx
 a42:	72 c4                	jb     a08 <free+0x18>
 a44:	39 c1                	cmp    %eax,%ecx
 a46:	73 c0                	jae    a08 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a48:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a4b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a4e:	39 f8                	cmp    %edi,%eax
 a50:	75 d0                	jne    a22 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a52:	03 70 04             	add    0x4(%eax),%esi
 a55:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a58:	8b 02                	mov    (%edx),%eax
 a5a:	8b 00                	mov    (%eax),%eax
 a5c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a5f:	8b 42 04             	mov    0x4(%edx),%eax
 a62:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a65:	39 f1                	cmp    %esi,%ecx
 a67:	75 c6                	jne    a2f <free+0x3f>
    p->s.size += bp->s.size;
 a69:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a6c:	89 15 20 10 00 00    	mov    %edx,0x1020
    p->s.size += bp->s.size;
 a72:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a75:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a78:	89 0a                	mov    %ecx,(%edx)
}
 a7a:	5b                   	pop    %ebx
 a7b:	5e                   	pop    %esi
 a7c:	5f                   	pop    %edi
 a7d:	5d                   	pop    %ebp
 a7e:	c3                   	ret    
 a7f:	90                   	nop

00000a80 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a80:	55                   	push   %ebp
 a81:	89 e5                	mov    %esp,%ebp
 a83:	57                   	push   %edi
 a84:	56                   	push   %esi
 a85:	53                   	push   %ebx
 a86:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a89:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a8c:	8b 3d 20 10 00 00    	mov    0x1020,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a92:	8d 70 07             	lea    0x7(%eax),%esi
 a95:	c1 ee 03             	shr    $0x3,%esi
 a98:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a9b:	85 ff                	test   %edi,%edi
 a9d:	0f 84 9d 00 00 00    	je     b40 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 aa3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 aa5:	8b 4a 04             	mov    0x4(%edx),%ecx
 aa8:	39 f1                	cmp    %esi,%ecx
 aaa:	73 6a                	jae    b16 <malloc+0x96>
 aac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ab1:	39 de                	cmp    %ebx,%esi
 ab3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 ab6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 abd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ac0:	eb 17                	jmp    ad9 <malloc+0x59>
 ac2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aca:	8b 48 04             	mov    0x4(%eax),%ecx
 acd:	39 f1                	cmp    %esi,%ecx
 acf:	73 4f                	jae    b20 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ad1:	8b 3d 20 10 00 00    	mov    0x1020,%edi
 ad7:	89 c2                	mov    %eax,%edx
 ad9:	39 d7                	cmp    %edx,%edi
 adb:	75 eb                	jne    ac8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 add:	83 ec 0c             	sub    $0xc,%esp
 ae0:	ff 75 e4             	push   -0x1c(%ebp)
 ae3:	e8 84 fc ff ff       	call   76c <sbrk>
  if(p == (char*)-1)
 ae8:	83 c4 10             	add    $0x10,%esp
 aeb:	83 f8 ff             	cmp    $0xffffffff,%eax
 aee:	74 1c                	je     b0c <malloc+0x8c>
  hp->s.size = nu;
 af0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 af3:	83 ec 0c             	sub    $0xc,%esp
 af6:	83 c0 08             	add    $0x8,%eax
 af9:	50                   	push   %eax
 afa:	e8 f1 fe ff ff       	call   9f0 <free>
  return freep;
 aff:	8b 15 20 10 00 00    	mov    0x1020,%edx
      if((p = morecore(nunits)) == 0)
 b05:	83 c4 10             	add    $0x10,%esp
 b08:	85 d2                	test   %edx,%edx
 b0a:	75 bc                	jne    ac8 <malloc+0x48>
        return 0;
  }
}
 b0c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b0f:	31 c0                	xor    %eax,%eax
}
 b11:	5b                   	pop    %ebx
 b12:	5e                   	pop    %esi
 b13:	5f                   	pop    %edi
 b14:	5d                   	pop    %ebp
 b15:	c3                   	ret    
    if(p->s.size >= nunits){
 b16:	89 d0                	mov    %edx,%eax
 b18:	89 fa                	mov    %edi,%edx
 b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b20:	39 ce                	cmp    %ecx,%esi
 b22:	74 4c                	je     b70 <malloc+0xf0>
        p->s.size -= nunits;
 b24:	29 f1                	sub    %esi,%ecx
 b26:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b29:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b2c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b2f:	89 15 20 10 00 00    	mov    %edx,0x1020
}
 b35:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b38:	83 c0 08             	add    $0x8,%eax
}
 b3b:	5b                   	pop    %ebx
 b3c:	5e                   	pop    %esi
 b3d:	5f                   	pop    %edi
 b3e:	5d                   	pop    %ebp
 b3f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b40:	c7 05 20 10 00 00 24 	movl   $0x1024,0x1020
 b47:	10 00 00 
    base.s.size = 0;
 b4a:	bf 24 10 00 00       	mov    $0x1024,%edi
    base.s.ptr = freep = prevp = &base;
 b4f:	c7 05 24 10 00 00 24 	movl   $0x1024,0x1024
 b56:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b59:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b5b:	c7 05 28 10 00 00 00 	movl   $0x0,0x1028
 b62:	00 00 00 
    if(p->s.size >= nunits){
 b65:	e9 42 ff ff ff       	jmp    aac <malloc+0x2c>
 b6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b70:	8b 08                	mov    (%eax),%ecx
 b72:	89 0a                	mov    %ecx,(%edx)
 b74:	eb b9                	jmp    b2f <malloc+0xaf>
