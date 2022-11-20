
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
  14:	e8 dd 07 00 00       	call   7f6 <getpid>

   int arg1 = 11, arg2 = 22;

   lock_init(&lock);
  19:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  1c:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
   lock_init(&lock);
  23:	68 ac 10 00 00       	push   $0x10ac
   ppid = getpid();
  28:	a3 b8 10 00 00       	mov    %eax,0x10b8
   int arg1 = 11, arg2 = 22;
  2d:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   lock_init(&lock);
  34:	e8 27 07 00 00       	call   760 <lock_init>
   lock_init(&lock2);
  39:	c7 04 24 a8 10 00 00 	movl   $0x10a8,(%esp)
  40:	e8 1b 07 00 00       	call   760 <lock_init>
   lock_acquire(&lock);
  45:	c7 04 24 ac 10 00 00 	movl   $0x10ac,(%esp)
  4c:	e8 cf 06 00 00       	call   720 <lock_acquire>
   lock_acquire(&lock2);
  51:	c7 04 24 a8 10 00 00 	movl   $0x10a8,(%esp)
  58:	e8 c3 06 00 00       	call   720 <lock_acquire>

   for (int i = 0; i < num_threads; i++) {
  5d:	8b 35 a4 10 00 00    	mov    0x10a4,%esi
  63:	83 c4 10             	add    $0x10,%esp
  66:	85 f6                	test   %esi,%esi
  68:	7e 75                	jle    df <main+0xdf>
  6a:	31 db                	xor    %ebx,%ebx
  6c:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  6f:	8d 75 e0             	lea    -0x20(%ebp),%esi
  72:	eb 0f                	jmp    83 <main+0x83>
  74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  78:	83 c3 01             	add    $0x1,%ebx
  7b:	39 1d a4 10 00 00    	cmp    %ebx,0x10a4
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
  9b:	68 08 0c 00 00       	push   $0xc08
  a0:	68 12 0c 00 00       	push   $0xc12
  a5:	6a 01                	push   $0x1
  a7:	e8 34 08 00 00       	call   8e0 <printf>
  ac:	83 c4 0c             	add    $0xc,%esp
  af:	68 59 0c 00 00       	push   $0xc59
   }
   lock_release(&lock2);

   for (int i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  b4:	68 38 0c 00 00       	push   $0xc38
  b9:	6a 01                	push   $0x1
  bb:	e8 20 08 00 00       	call   8e0 <printf>
  c0:	5a                   	pop    %edx
  c1:	59                   	pop    %ecx
  c2:	68 4c 0c 00 00       	push   $0xc4c
  c7:	6a 01                	push   $0x1
  c9:	e8 12 08 00 00       	call   8e0 <printf>
  ce:	5b                   	pop    %ebx
  cf:	ff 35 b8 10 00 00    	push   0x10b8
  d5:	e8 cc 06 00 00       	call   7a6 <kill>
  da:	e8 97 06 00 00       	call   776 <exit>
   size = (unsigned int)sbrk(0);
  df:	83 ec 0c             	sub    $0xc,%esp
  e2:	6a 00                	push   $0x0
  e4:	e8 15 07 00 00       	call   7fe <sbrk>
   while (global < num_threads) {
  e9:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
  ec:	a3 b0 10 00 00       	mov    %eax,0x10b0
   while (global < num_threads) {
  f1:	a1 a4 10 00 00       	mov    0x10a4,%eax
  f6:	39 05 b4 10 00 00    	cmp    %eax,0x10b4
  fc:	7d 37                	jge    135 <main+0x135>
  fe:	66 90                	xchg   %ax,%ax
      lock_release(&lock);
 100:	83 ec 0c             	sub    $0xc,%esp
 103:	68 ac 10 00 00       	push   $0x10ac
 108:	e8 33 06 00 00       	call   740 <lock_release>
      sleep(100);
 10d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 114:	e8 ed 06 00 00       	call   806 <sleep>
      lock_acquire(&lock);
 119:	c7 04 24 ac 10 00 00 	movl   $0x10ac,(%esp)
 120:	e8 fb 05 00 00       	call   720 <lock_acquire>
   while (global < num_threads) {
 125:	a1 a4 10 00 00       	mov    0x10a4,%eax
 12a:	83 c4 10             	add    $0x10,%esp
 12d:	39 05 b4 10 00 00    	cmp    %eax,0x10b4
 133:	7c cb                	jl     100 <main+0x100>
   global = 0;
 135:	c7 05 b4 10 00 00 00 	movl   $0x0,0x10b4
 13c:	00 00 00 
   sbrk(10000);
 13f:	83 ec 0c             	sub    $0xc,%esp
 142:	68 10 27 00 00       	push   $0x2710
 147:	e8 b2 06 00 00       	call   7fe <sbrk>
   size = (unsigned int)sbrk(0);
 14c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 153:	e8 a6 06 00 00       	call   7fe <sbrk>
   lock_release(&lock);
 158:	c7 04 24 ac 10 00 00 	movl   $0x10ac,(%esp)
   size = (unsigned int)sbrk(0);
 15f:	a3 b0 10 00 00       	mov    %eax,0x10b0
   lock_release(&lock);
 164:	e8 d7 05 00 00       	call   740 <lock_release>
   while (global < num_threads) {
 169:	a1 a4 10 00 00       	mov    0x10a4,%eax
 16e:	83 c4 10             	add    $0x10,%esp
 171:	39 05 b4 10 00 00    	cmp    %eax,0x10b4
 177:	7d 3c                	jge    1b5 <main+0x1b5>
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 180:	83 ec 0c             	sub    $0xc,%esp
 183:	68 a8 10 00 00       	push   $0x10a8
 188:	e8 b3 05 00 00       	call   740 <lock_release>
      sleep(100);
 18d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 194:	e8 6d 06 00 00       	call   806 <sleep>
      lock_acquire(&lock2);
 199:	c7 04 24 a8 10 00 00 	movl   $0x10a8,(%esp)
 1a0:	e8 7b 05 00 00       	call   720 <lock_acquire>
   while (global < num_threads) {
 1a5:	a1 a4 10 00 00       	mov    0x10a4,%eax
 1aa:	83 c4 10             	add    $0x10,%esp
 1ad:	39 05 b4 10 00 00    	cmp    %eax,0x10b4
 1b3:	7c cb                	jl     180 <main+0x180>
   lock_release(&lock2);
 1b5:	83 ec 0c             	sub    $0xc,%esp
 1b8:	68 a8 10 00 00       	push   $0x10a8
 1bd:	e8 7e 05 00 00       	call   740 <lock_release>
   for (int i = 0; i < num_threads; i++) {
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	83 3d a4 10 00 00 00 	cmpl   $0x0,0x10a4
 1cc:	7e 3e                	jle    20c <main+0x20c>
 1ce:	31 db                	xor    %ebx,%ebx
 1d0:	eb 11                	jmp    1e3 <main+0x1e3>
 1d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1d8:	83 c3 01             	add    $0x1,%ebx
 1db:	39 1d a4 10 00 00    	cmp    %ebx,0x10a4
 1e1:	7e 29                	jle    20c <main+0x20c>
      int join_pid = thread_join();
 1e3:	e8 b8 04 00 00       	call   6a0 <thread_join>
      assert(join_pid > 0);
 1e8:	85 c0                	test   %eax,%eax
 1ea:	7f ec                	jg     1d8 <main+0x1d8>
 1ec:	6a 41                	push   $0x41
 1ee:	68 08 0c 00 00       	push   $0xc08
 1f3:	68 12 0c 00 00       	push   $0xc12
 1f8:	6a 01                	push   $0x1
 1fa:	e8 e1 06 00 00       	call   8e0 <printf>
 1ff:	83 c4 0c             	add    $0xc,%esp
 202:	68 68 0c 00 00       	push   $0xc68
 207:	e9 a8 fe ff ff       	jmp    b4 <main+0xb4>
   }

   printf(1, "TEST PASSED\n");
 20c:	50                   	push   %eax
 20d:	50                   	push   %eax
 20e:	68 75 0c 00 00       	push   $0xc75
 213:	6a 01                	push   $0x1
 215:	e8 c6 06 00 00       	call   8e0 <printf>
   exit();
 21a:	e8 57 05 00 00       	call   776 <exit>
 21f:	90                   	nop

00000220 <worker>:
   
   exit();
}


void worker(void *arg1, void *arg2) {
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	83 ec 14             	sub    $0x14,%esp
   lock_acquire(&lock);
 226:	68 ac 10 00 00       	push   $0x10ac
 22b:	e8 f0 04 00 00       	call   720 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 230:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 237:	e8 c2 05 00 00       	call   7fe <sbrk>
 23c:	83 c4 10             	add    $0x10,%esp
 23f:	3b 05 b0 10 00 00    	cmp    0x10b0,%eax
 245:	74 46                	je     28d <worker+0x6d>
 247:	6a 5b                	push   $0x5b

   


   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 249:	68 08 0c 00 00       	push   $0xc08
 24e:	68 12 0c 00 00       	push   $0xc12
 253:	6a 01                	push   $0x1
 255:	e8 86 06 00 00       	call   8e0 <printf>
 25a:	83 c4 0c             	add    $0xc,%esp
 25d:	68 1a 0c 00 00       	push   $0xc1a
 262:	68 38 0c 00 00       	push   $0xc38
 267:	6a 01                	push   $0x1
 269:	e8 72 06 00 00       	call   8e0 <printf>
 26e:	58                   	pop    %eax
 26f:	5a                   	pop    %edx
 270:	68 4c 0c 00 00       	push   $0xc4c
 275:	6a 01                	push   $0x1
 277:	e8 64 06 00 00       	call   8e0 <printf>
 27c:	59                   	pop    %ecx
 27d:	ff 35 b8 10 00 00    	push   0x10b8
 283:	e8 1e 05 00 00       	call   7a6 <kill>
 288:	e8 e9 04 00 00       	call   776 <exit>
   lock_release(&lock);
 28d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 290:	83 05 b4 10 00 00 01 	addl   $0x1,0x10b4
   lock_release(&lock);
 297:	68 ac 10 00 00       	push   $0x10ac
 29c:	e8 9f 04 00 00       	call   740 <lock_release>
   lock_acquire(&lock2);
 2a1:	c7 04 24 a8 10 00 00 	movl   $0x10a8,(%esp)
 2a8:	e8 73 04 00 00       	call   720 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 2ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2b4:	e8 45 05 00 00       	call   7fe <sbrk>
 2b9:	83 c4 10             	add    $0x10,%esp
 2bc:	3b 05 b0 10 00 00    	cmp    0x10b0,%eax
 2c2:	74 04                	je     2c8 <worker+0xa8>
 2c4:	6a 63                	push   $0x63
 2c6:	eb 81                	jmp    249 <worker+0x29>
   global++;
   sbrk(10000);
 2c8:	83 ec 0c             	sub    $0xc,%esp
   global++;
 2cb:	83 05 b4 10 00 00 01 	addl   $0x1,0x10b4
   sbrk(10000);
 2d2:	68 10 27 00 00       	push   $0x2710
 2d7:	e8 22 05 00 00       	call   7fe <sbrk>
   size = (unsigned int)sbrk(0);
 2dc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 2e3:	e8 16 05 00 00       	call   7fe <sbrk>
   lock_release(&lock2);
 2e8:	c7 04 24 a8 10 00 00 	movl   $0x10a8,(%esp)
   size = (unsigned int)sbrk(0);
 2ef:	a3 b0 10 00 00       	mov    %eax,0x10b0
   lock_release(&lock2);
 2f4:	e8 47 04 00 00       	call   740 <lock_release>



   exit();
 2f9:	e8 78 04 00 00       	call   776 <exit>
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
 31a:	68 08 0c 00 00       	push   $0xc08
 31f:	68 12 0c 00 00       	push   $0xc12
 324:	6a 01                	push   $0x1
 326:	e8 b5 05 00 00       	call   8e0 <printf>
 32b:	83 c4 0c             	add    $0xc,%esp
 32e:	68 91 0c 00 00       	push   $0xc91
 333:	68 38 0c 00 00       	push   $0xc38
 338:	6a 01                	push   $0x1
 33a:	e8 a1 05 00 00       	call   8e0 <printf>
 33f:	58                   	pop    %eax
 340:	5a                   	pop    %edx
 341:	68 4c 0c 00 00       	push   $0xc4c
 346:	6a 01                	push   $0x1
 348:	e8 93 05 00 00       	call   8e0 <printf>
 34d:	59                   	pop    %ecx
 34e:	ff 35 b8 10 00 00    	push   0x10b8
 354:	e8 4d 04 00 00       	call   7a6 <kill>
 359:	e8 18 04 00 00       	call   776 <exit>
   assert(arg1_int == 11);
 35e:	6a 4c                	push   $0x4c
 360:	68 08 0c 00 00       	push   $0xc08
 365:	68 12 0c 00 00       	push   $0xc12
 36a:	6a 01                	push   $0x1
 36c:	e8 6f 05 00 00       	call   8e0 <printf>
 371:	83 c4 0c             	add    $0xc,%esp
 374:	68 82 0c 00 00       	push   $0xc82
 379:	eb b8                	jmp    333 <worker2+0x33>
   lock_acquire(&lock2);
 37b:	83 ec 0c             	sub    $0xc,%esp
 37e:	68 a8 10 00 00       	push   $0x10a8
 383:	e8 98 03 00 00       	call   720 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 388:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 38f:	e8 6a 04 00 00       	call   7fe <sbrk>
 394:	83 c4 10             	add    $0x10,%esp
 397:	3b 05 b0 10 00 00    	cmp    0x10b0,%eax
 39d:	74 20                	je     3bf <worker2+0xbf>
 39f:	6a 50                	push   $0x50
 3a1:	68 08 0c 00 00       	push   $0xc08
 3a6:	68 12 0c 00 00       	push   $0xc12
 3ab:	6a 01                	push   $0x1
 3ad:	e8 2e 05 00 00       	call   8e0 <printf>
 3b2:	83 c4 0c             	add    $0xc,%esp
 3b5:	68 1a 0c 00 00       	push   $0xc1a
 3ba:	e9 74 ff ff ff       	jmp    333 <worker2+0x33>
   lock_release(&lock2);
 3bf:	83 ec 0c             	sub    $0xc,%esp
   global++;
 3c2:	83 05 b4 10 00 00 01 	addl   $0x1,0x10b4
   lock_release(&lock2);
 3c9:	68 a8 10 00 00       	push   $0x10a8
 3ce:	e8 6d 03 00 00       	call   740 <lock_release>
   exit();
 3d3:	e8 9e 03 00 00       	call   776 <exit>
 3d8:	66 90                	xchg   %ax,%ax
 3da:	66 90                	xchg   %ax,%ax
 3dc:	66 90                	xchg   %ax,%ax
 3de:	66 90                	xchg   %ax,%ax

000003e0 <strcpy>:

lock_t lk_create,lk_join;

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
 518:	e8 71 02 00 00       	call   78e <read>
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
 57d:	e8 34 02 00 00       	call   7b6 <open>
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
 592:	e8 37 02 00 00       	call   7ce <fstat>
  close(fd);
 597:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 59a:	89 c6                	mov    %eax,%esi
  close(fd);
 59c:	e8 fd 01 00 00       	call   79e <close>
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
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 631:	ba 01 00 00 00       	mov    $0x1,%edx
 636:	89 e5                	mov    %esp,%ebp
 638:	83 ec 08             	sub    $0x8,%esp
 63b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 63f:	90                   	nop
 640:	89 d0                	mov    %edx,%eax
 642:	f0 87 05 c0 10 00 00 	lock xchg %eax,0x10c0
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 649:	85 c0                	test   %eax,%eax
 64b:	75 f3                	jne    640 <thread_create+0x10>
    __sync_synchronize();
 64d:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 652:	83 ec 0c             	sub    $0xc,%esp
 655:	68 00 20 00 00       	push   $0x2000
 65a:	e8 b1 04 00 00       	call   b10 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 65f:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 664:	c7 05 c0 10 00 00 00 	movl   $0x0,0x10c0
 66b:	00 00 00 
	if((uint)stack % PGSIZE)
 66e:	89 c2                	mov    %eax,%edx
 670:	83 c4 10             	add    $0x10,%esp
 673:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 679:	74 07                	je     682 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 67b:	29 d0                	sub    %edx,%eax
 67d:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 682:	50                   	push   %eax
 683:	ff 75 10             	push   0x10(%ebp)
 686:	ff 75 0c             	push   0xc(%ebp)
 689:	ff 75 08             	push   0x8(%ebp)
 68c:	e8 85 01 00 00       	call   816 <clone>
}
 691:	c9                   	leave  
 692:	c3                   	ret    
 693:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000006a0 <thread_join>:
int thread_join(){
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	53                   	push   %ebx
	int result= join(&stack);
 6a4:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 6a7:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 6aa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 6b1:	50                   	push   %eax
 6b2:	e8 67 01 00 00       	call   81e <join>
    while(xchg(&(lock->mutex), 1) != 0);
 6b7:	83 c4 10             	add    $0x10,%esp
 6ba:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 6bf:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 6c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6c8:	89 d0                	mov    %edx,%eax
 6ca:	f0 87 05 bc 10 00 00 	lock xchg %eax,0x10bc
 6d1:	85 c0                	test   %eax,%eax
 6d3:	75 f3                	jne    6c8 <thread_join+0x28>
    __sync_synchronize();
 6d5:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 6da:	83 ec 0c             	sub    $0xc,%esp
 6dd:	ff 75 f4             	push   -0xc(%ebp)
 6e0:	e8 9b 03 00 00       	call   a80 <free>
   __sync_synchronize();
 6e5:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 6ea:	c7 05 bc 10 00 00 00 	movl   $0x0,0x10bc
 6f1:	00 00 00 
}
 6f4:	89 d8                	mov    %ebx,%eax
 6f6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6f9:	c9                   	leave  
 6fa:	c3                   	ret    
 6fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6ff:	90                   	nop

00000700 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 700:	c7 05 c0 10 00 00 00 	movl   $0x0,0x10c0
 707:	00 00 00 
 70a:	c7 05 bc 10 00 00 00 	movl   $0x0,0x10bc
 711:	00 00 00 
}
 714:	c3                   	ret    
 715:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 71c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000720 <lock_acquire>:
void lock_acquire(lock_t *lock){
 720:	55                   	push   %ebp
 721:	b9 01 00 00 00       	mov    $0x1,%ecx
 726:	89 e5                	mov    %esp,%ebp
 728:	8b 55 08             	mov    0x8(%ebp),%edx
 72b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 72f:	90                   	nop
 730:	89 c8                	mov    %ecx,%eax
 732:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 735:	85 c0                	test   %eax,%eax
 737:	75 f7                	jne    730 <lock_acquire+0x10>
    __sync_synchronize();
 739:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 73e:	5d                   	pop    %ebp
 73f:	c3                   	ret    

00000740 <lock_release>:
void lock_release(lock_t *lock){
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 746:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 74b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 751:	5d                   	pop    %ebp
 752:	c3                   	ret    
 753:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000760 <lock_init>:
void lock_init(lock_t *lock) {
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 763:	8b 45 08             	mov    0x8(%ebp),%eax
 766:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 76c:	5d                   	pop    %ebp
 76d:	c3                   	ret    

0000076e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 76e:	b8 01 00 00 00       	mov    $0x1,%eax
 773:	cd 40                	int    $0x40
 775:	c3                   	ret    

00000776 <exit>:
SYSCALL(exit)
 776:	b8 02 00 00 00       	mov    $0x2,%eax
 77b:	cd 40                	int    $0x40
 77d:	c3                   	ret    

0000077e <wait>:
SYSCALL(wait)
 77e:	b8 03 00 00 00       	mov    $0x3,%eax
 783:	cd 40                	int    $0x40
 785:	c3                   	ret    

00000786 <pipe>:
SYSCALL(pipe)
 786:	b8 04 00 00 00       	mov    $0x4,%eax
 78b:	cd 40                	int    $0x40
 78d:	c3                   	ret    

0000078e <read>:
SYSCALL(read)
 78e:	b8 05 00 00 00       	mov    $0x5,%eax
 793:	cd 40                	int    $0x40
 795:	c3                   	ret    

00000796 <write>:
SYSCALL(write)
 796:	b8 10 00 00 00       	mov    $0x10,%eax
 79b:	cd 40                	int    $0x40
 79d:	c3                   	ret    

0000079e <close>:
SYSCALL(close)
 79e:	b8 15 00 00 00       	mov    $0x15,%eax
 7a3:	cd 40                	int    $0x40
 7a5:	c3                   	ret    

000007a6 <kill>:
SYSCALL(kill)
 7a6:	b8 06 00 00 00       	mov    $0x6,%eax
 7ab:	cd 40                	int    $0x40
 7ad:	c3                   	ret    

000007ae <exec>:
SYSCALL(exec)
 7ae:	b8 07 00 00 00       	mov    $0x7,%eax
 7b3:	cd 40                	int    $0x40
 7b5:	c3                   	ret    

000007b6 <open>:
SYSCALL(open)
 7b6:	b8 0f 00 00 00       	mov    $0xf,%eax
 7bb:	cd 40                	int    $0x40
 7bd:	c3                   	ret    

000007be <mknod>:
SYSCALL(mknod)
 7be:	b8 11 00 00 00       	mov    $0x11,%eax
 7c3:	cd 40                	int    $0x40
 7c5:	c3                   	ret    

000007c6 <unlink>:
SYSCALL(unlink)
 7c6:	b8 12 00 00 00       	mov    $0x12,%eax
 7cb:	cd 40                	int    $0x40
 7cd:	c3                   	ret    

000007ce <fstat>:
SYSCALL(fstat)
 7ce:	b8 08 00 00 00       	mov    $0x8,%eax
 7d3:	cd 40                	int    $0x40
 7d5:	c3                   	ret    

000007d6 <link>:
SYSCALL(link)
 7d6:	b8 13 00 00 00       	mov    $0x13,%eax
 7db:	cd 40                	int    $0x40
 7dd:	c3                   	ret    

000007de <mkdir>:
SYSCALL(mkdir)
 7de:	b8 14 00 00 00       	mov    $0x14,%eax
 7e3:	cd 40                	int    $0x40
 7e5:	c3                   	ret    

000007e6 <chdir>:
SYSCALL(chdir)
 7e6:	b8 09 00 00 00       	mov    $0x9,%eax
 7eb:	cd 40                	int    $0x40
 7ed:	c3                   	ret    

000007ee <dup>:
SYSCALL(dup)
 7ee:	b8 0a 00 00 00       	mov    $0xa,%eax
 7f3:	cd 40                	int    $0x40
 7f5:	c3                   	ret    

000007f6 <getpid>:
SYSCALL(getpid)
 7f6:	b8 0b 00 00 00       	mov    $0xb,%eax
 7fb:	cd 40                	int    $0x40
 7fd:	c3                   	ret    

000007fe <sbrk>:
SYSCALL(sbrk)
 7fe:	b8 0c 00 00 00       	mov    $0xc,%eax
 803:	cd 40                	int    $0x40
 805:	c3                   	ret    

00000806 <sleep>:
SYSCALL(sleep)
 806:	b8 0d 00 00 00       	mov    $0xd,%eax
 80b:	cd 40                	int    $0x40
 80d:	c3                   	ret    

0000080e <uptime>:
SYSCALL(uptime)
 80e:	b8 0e 00 00 00       	mov    $0xe,%eax
 813:	cd 40                	int    $0x40
 815:	c3                   	ret    

00000816 <clone>:
SYSCALL(clone)
 816:	b8 16 00 00 00       	mov    $0x16,%eax
 81b:	cd 40                	int    $0x40
 81d:	c3                   	ret    

0000081e <join>:
SYSCALL(join)
 81e:	b8 17 00 00 00       	mov    $0x17,%eax
 823:	cd 40                	int    $0x40
 825:	c3                   	ret    
 826:	66 90                	xchg   %ax,%ax
 828:	66 90                	xchg   %ax,%ax
 82a:	66 90                	xchg   %ax,%ax
 82c:	66 90                	xchg   %ax,%ax
 82e:	66 90                	xchg   %ax,%ax

00000830 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	57                   	push   %edi
 834:	56                   	push   %esi
 835:	53                   	push   %ebx
 836:	83 ec 3c             	sub    $0x3c,%esp
 839:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 83c:	89 d1                	mov    %edx,%ecx
{
 83e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 841:	85 d2                	test   %edx,%edx
 843:	0f 89 7f 00 00 00    	jns    8c8 <printint+0x98>
 849:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 84d:	74 79                	je     8c8 <printint+0x98>
    neg = 1;
 84f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 856:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 858:	31 db                	xor    %ebx,%ebx
 85a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 85d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 860:	89 c8                	mov    %ecx,%eax
 862:	31 d2                	xor    %edx,%edx
 864:	89 cf                	mov    %ecx,%edi
 866:	f7 75 c4             	divl   -0x3c(%ebp)
 869:	0f b6 92 00 0d 00 00 	movzbl 0xd00(%edx),%edx
 870:	89 45 c0             	mov    %eax,-0x40(%ebp)
 873:	89 d8                	mov    %ebx,%eax
 875:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 878:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 87b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 87e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 881:	76 dd                	jbe    860 <printint+0x30>
  if(neg)
 883:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 886:	85 c9                	test   %ecx,%ecx
 888:	74 0c                	je     896 <printint+0x66>
    buf[i++] = '-';
 88a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 88f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 891:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 896:	8b 7d b8             	mov    -0x48(%ebp),%edi
 899:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 89d:	eb 07                	jmp    8a6 <printint+0x76>
 89f:	90                   	nop
    putc(fd, buf[i]);
 8a0:	0f b6 13             	movzbl (%ebx),%edx
 8a3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 8a6:	83 ec 04             	sub    $0x4,%esp
 8a9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 8ac:	6a 01                	push   $0x1
 8ae:	56                   	push   %esi
 8af:	57                   	push   %edi
 8b0:	e8 e1 fe ff ff       	call   796 <write>
  while(--i >= 0)
 8b5:	83 c4 10             	add    $0x10,%esp
 8b8:	39 de                	cmp    %ebx,%esi
 8ba:	75 e4                	jne    8a0 <printint+0x70>
}
 8bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8bf:	5b                   	pop    %ebx
 8c0:	5e                   	pop    %esi
 8c1:	5f                   	pop    %edi
 8c2:	5d                   	pop    %ebp
 8c3:	c3                   	ret    
 8c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 8c8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 8cf:	eb 87                	jmp    858 <printint+0x28>
 8d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8df:	90                   	nop

000008e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 8e0:	55                   	push   %ebp
 8e1:	89 e5                	mov    %esp,%ebp
 8e3:	57                   	push   %edi
 8e4:	56                   	push   %esi
 8e5:	53                   	push   %ebx
 8e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 8ec:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 8ef:	0f b6 13             	movzbl (%ebx),%edx
 8f2:	84 d2                	test   %dl,%dl
 8f4:	74 6a                	je     960 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 8f6:	8d 45 10             	lea    0x10(%ebp),%eax
 8f9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 8fc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 8ff:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 901:	89 45 d0             	mov    %eax,-0x30(%ebp)
 904:	eb 36                	jmp    93c <printf+0x5c>
 906:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 90d:	8d 76 00             	lea    0x0(%esi),%esi
 910:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 913:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 918:	83 f8 25             	cmp    $0x25,%eax
 91b:	74 15                	je     932 <printf+0x52>
  write(fd, &c, 1);
 91d:	83 ec 04             	sub    $0x4,%esp
 920:	88 55 e7             	mov    %dl,-0x19(%ebp)
 923:	6a 01                	push   $0x1
 925:	57                   	push   %edi
 926:	56                   	push   %esi
 927:	e8 6a fe ff ff       	call   796 <write>
 92c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 92f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 932:	0f b6 13             	movzbl (%ebx),%edx
 935:	83 c3 01             	add    $0x1,%ebx
 938:	84 d2                	test   %dl,%dl
 93a:	74 24                	je     960 <printf+0x80>
    c = fmt[i] & 0xff;
 93c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 93f:	85 c9                	test   %ecx,%ecx
 941:	74 cd                	je     910 <printf+0x30>
      }
    } else if(state == '%'){
 943:	83 f9 25             	cmp    $0x25,%ecx
 946:	75 ea                	jne    932 <printf+0x52>
      if(c == 'd'){
 948:	83 f8 25             	cmp    $0x25,%eax
 94b:	0f 84 07 01 00 00    	je     a58 <printf+0x178>
 951:	83 e8 63             	sub    $0x63,%eax
 954:	83 f8 15             	cmp    $0x15,%eax
 957:	77 17                	ja     970 <printf+0x90>
 959:	ff 24 85 a8 0c 00 00 	jmp    *0xca8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 960:	8d 65 f4             	lea    -0xc(%ebp),%esp
 963:	5b                   	pop    %ebx
 964:	5e                   	pop    %esi
 965:	5f                   	pop    %edi
 966:	5d                   	pop    %ebp
 967:	c3                   	ret    
 968:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 96f:	90                   	nop
  write(fd, &c, 1);
 970:	83 ec 04             	sub    $0x4,%esp
 973:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 976:	6a 01                	push   $0x1
 978:	57                   	push   %edi
 979:	56                   	push   %esi
 97a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 97e:	e8 13 fe ff ff       	call   796 <write>
        putc(fd, c);
 983:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 987:	83 c4 0c             	add    $0xc,%esp
 98a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 98d:	6a 01                	push   $0x1
 98f:	57                   	push   %edi
 990:	56                   	push   %esi
 991:	e8 00 fe ff ff       	call   796 <write>
        putc(fd, c);
 996:	83 c4 10             	add    $0x10,%esp
      state = 0;
 999:	31 c9                	xor    %ecx,%ecx
 99b:	eb 95                	jmp    932 <printf+0x52>
 99d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 9a0:	83 ec 0c             	sub    $0xc,%esp
 9a3:	b9 10 00 00 00       	mov    $0x10,%ecx
 9a8:	6a 00                	push   $0x0
 9aa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9ad:	8b 10                	mov    (%eax),%edx
 9af:	89 f0                	mov    %esi,%eax
 9b1:	e8 7a fe ff ff       	call   830 <printint>
        ap++;
 9b6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9ba:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9bd:	31 c9                	xor    %ecx,%ecx
 9bf:	e9 6e ff ff ff       	jmp    932 <printf+0x52>
 9c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 9c8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 9cb:	8b 10                	mov    (%eax),%edx
        ap++;
 9cd:	83 c0 04             	add    $0x4,%eax
 9d0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 9d3:	85 d2                	test   %edx,%edx
 9d5:	0f 84 8d 00 00 00    	je     a68 <printf+0x188>
        while(*s != 0){
 9db:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 9de:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 9e0:	84 c0                	test   %al,%al
 9e2:	0f 84 4a ff ff ff    	je     932 <printf+0x52>
 9e8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9eb:	89 d3                	mov    %edx,%ebx
 9ed:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 9f0:	83 ec 04             	sub    $0x4,%esp
          s++;
 9f3:	83 c3 01             	add    $0x1,%ebx
 9f6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9f9:	6a 01                	push   $0x1
 9fb:	57                   	push   %edi
 9fc:	56                   	push   %esi
 9fd:	e8 94 fd ff ff       	call   796 <write>
        while(*s != 0){
 a02:	0f b6 03             	movzbl (%ebx),%eax
 a05:	83 c4 10             	add    $0x10,%esp
 a08:	84 c0                	test   %al,%al
 a0a:	75 e4                	jne    9f0 <printf+0x110>
      state = 0;
 a0c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 a0f:	31 c9                	xor    %ecx,%ecx
 a11:	e9 1c ff ff ff       	jmp    932 <printf+0x52>
 a16:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a1d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 a20:	83 ec 0c             	sub    $0xc,%esp
 a23:	b9 0a 00 00 00       	mov    $0xa,%ecx
 a28:	6a 01                	push   $0x1
 a2a:	e9 7b ff ff ff       	jmp    9aa <printf+0xca>
 a2f:	90                   	nop
        putc(fd, *ap);
 a30:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 a33:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 a36:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 a38:	6a 01                	push   $0x1
 a3a:	57                   	push   %edi
 a3b:	56                   	push   %esi
        putc(fd, *ap);
 a3c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 a3f:	e8 52 fd ff ff       	call   796 <write>
        ap++;
 a44:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a48:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a4b:	31 c9                	xor    %ecx,%ecx
 a4d:	e9 e0 fe ff ff       	jmp    932 <printf+0x52>
 a52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 a58:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 a5b:	83 ec 04             	sub    $0x4,%esp
 a5e:	e9 2a ff ff ff       	jmp    98d <printf+0xad>
 a63:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a67:	90                   	nop
          s = "(null)";
 a68:	ba a0 0c 00 00       	mov    $0xca0,%edx
        while(*s != 0){
 a6d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a70:	b8 28 00 00 00       	mov    $0x28,%eax
 a75:	89 d3                	mov    %edx,%ebx
 a77:	e9 74 ff ff ff       	jmp    9f0 <printf+0x110>
 a7c:	66 90                	xchg   %ax,%ax
 a7e:	66 90                	xchg   %ax,%ax

00000a80 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a80:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a81:	a1 c4 10 00 00       	mov    0x10c4,%eax
{
 a86:	89 e5                	mov    %esp,%ebp
 a88:	57                   	push   %edi
 a89:	56                   	push   %esi
 a8a:	53                   	push   %ebx
 a8b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a8e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a98:	89 c2                	mov    %eax,%edx
 a9a:	8b 00                	mov    (%eax),%eax
 a9c:	39 ca                	cmp    %ecx,%edx
 a9e:	73 30                	jae    ad0 <free+0x50>
 aa0:	39 c1                	cmp    %eax,%ecx
 aa2:	72 04                	jb     aa8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 aa4:	39 c2                	cmp    %eax,%edx
 aa6:	72 f0                	jb     a98 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 aa8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 aab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 aae:	39 f8                	cmp    %edi,%eax
 ab0:	74 30                	je     ae2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 ab2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 ab5:	8b 42 04             	mov    0x4(%edx),%eax
 ab8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 abb:	39 f1                	cmp    %esi,%ecx
 abd:	74 3a                	je     af9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 abf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 ac1:	5b                   	pop    %ebx
  freep = p;
 ac2:	89 15 c4 10 00 00    	mov    %edx,0x10c4
}
 ac8:	5e                   	pop    %esi
 ac9:	5f                   	pop    %edi
 aca:	5d                   	pop    %ebp
 acb:	c3                   	ret    
 acc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 ad0:	39 c2                	cmp    %eax,%edx
 ad2:	72 c4                	jb     a98 <free+0x18>
 ad4:	39 c1                	cmp    %eax,%ecx
 ad6:	73 c0                	jae    a98 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 ad8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 adb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 ade:	39 f8                	cmp    %edi,%eax
 ae0:	75 d0                	jne    ab2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 ae2:	03 70 04             	add    0x4(%eax),%esi
 ae5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 ae8:	8b 02                	mov    (%edx),%eax
 aea:	8b 00                	mov    (%eax),%eax
 aec:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 aef:	8b 42 04             	mov    0x4(%edx),%eax
 af2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 af5:	39 f1                	cmp    %esi,%ecx
 af7:	75 c6                	jne    abf <free+0x3f>
    p->s.size += bp->s.size;
 af9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 afc:	89 15 c4 10 00 00    	mov    %edx,0x10c4
    p->s.size += bp->s.size;
 b02:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 b05:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 b08:	89 0a                	mov    %ecx,(%edx)
}
 b0a:	5b                   	pop    %ebx
 b0b:	5e                   	pop    %esi
 b0c:	5f                   	pop    %edi
 b0d:	5d                   	pop    %ebp
 b0e:	c3                   	ret    
 b0f:	90                   	nop

00000b10 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 b10:	55                   	push   %ebp
 b11:	89 e5                	mov    %esp,%ebp
 b13:	57                   	push   %edi
 b14:	56                   	push   %esi
 b15:	53                   	push   %ebx
 b16:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b19:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 b1c:	8b 3d c4 10 00 00    	mov    0x10c4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b22:	8d 70 07             	lea    0x7(%eax),%esi
 b25:	c1 ee 03             	shr    $0x3,%esi
 b28:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 b2b:	85 ff                	test   %edi,%edi
 b2d:	0f 84 9d 00 00 00    	je     bd0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b33:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 b35:	8b 4a 04             	mov    0x4(%edx),%ecx
 b38:	39 f1                	cmp    %esi,%ecx
 b3a:	73 6a                	jae    ba6 <malloc+0x96>
 b3c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b41:	39 de                	cmp    %ebx,%esi
 b43:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 b46:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 b4d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 b50:	eb 17                	jmp    b69 <malloc+0x59>
 b52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b58:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b5a:	8b 48 04             	mov    0x4(%eax),%ecx
 b5d:	39 f1                	cmp    %esi,%ecx
 b5f:	73 4f                	jae    bb0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b61:	8b 3d c4 10 00 00    	mov    0x10c4,%edi
 b67:	89 c2                	mov    %eax,%edx
 b69:	39 d7                	cmp    %edx,%edi
 b6b:	75 eb                	jne    b58 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 b6d:	83 ec 0c             	sub    $0xc,%esp
 b70:	ff 75 e4             	push   -0x1c(%ebp)
 b73:	e8 86 fc ff ff       	call   7fe <sbrk>
  if(p == (char*)-1)
 b78:	83 c4 10             	add    $0x10,%esp
 b7b:	83 f8 ff             	cmp    $0xffffffff,%eax
 b7e:	74 1c                	je     b9c <malloc+0x8c>
  hp->s.size = nu;
 b80:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b83:	83 ec 0c             	sub    $0xc,%esp
 b86:	83 c0 08             	add    $0x8,%eax
 b89:	50                   	push   %eax
 b8a:	e8 f1 fe ff ff       	call   a80 <free>
  return freep;
 b8f:	8b 15 c4 10 00 00    	mov    0x10c4,%edx
      if((p = morecore(nunits)) == 0)
 b95:	83 c4 10             	add    $0x10,%esp
 b98:	85 d2                	test   %edx,%edx
 b9a:	75 bc                	jne    b58 <malloc+0x48>
        return 0;
  }
}
 b9c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b9f:	31 c0                	xor    %eax,%eax
}
 ba1:	5b                   	pop    %ebx
 ba2:	5e                   	pop    %esi
 ba3:	5f                   	pop    %edi
 ba4:	5d                   	pop    %ebp
 ba5:	c3                   	ret    
    if(p->s.size >= nunits){
 ba6:	89 d0                	mov    %edx,%eax
 ba8:	89 fa                	mov    %edi,%edx
 baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 bb0:	39 ce                	cmp    %ecx,%esi
 bb2:	74 4c                	je     c00 <malloc+0xf0>
        p->s.size -= nunits;
 bb4:	29 f1                	sub    %esi,%ecx
 bb6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 bb9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 bbc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 bbf:	89 15 c4 10 00 00    	mov    %edx,0x10c4
}
 bc5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 bc8:	83 c0 08             	add    $0x8,%eax
}
 bcb:	5b                   	pop    %ebx
 bcc:	5e                   	pop    %esi
 bcd:	5f                   	pop    %edi
 bce:	5d                   	pop    %ebp
 bcf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 bd0:	c7 05 c4 10 00 00 c8 	movl   $0x10c8,0x10c4
 bd7:	10 00 00 
    base.s.size = 0;
 bda:	bf c8 10 00 00       	mov    $0x10c8,%edi
    base.s.ptr = freep = prevp = &base;
 bdf:	c7 05 c8 10 00 00 c8 	movl   $0x10c8,0x10c8
 be6:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 be9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 beb:	c7 05 cc 10 00 00 00 	movl   $0x0,0x10cc
 bf2:	00 00 00 
    if(p->s.size >= nunits){
 bf5:	e9 42 ff ff ff       	jmp    b3c <malloc+0x2c>
 bfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 c00:	8b 08                	mov    (%eax),%ecx
 c02:	89 0a                	mov    %ecx,(%edx)
 c04:	eb b9                	jmp    bbf <malloc+0xaf>
