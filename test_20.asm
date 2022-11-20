
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
  11:	e8 60 07 00 00       	call   776 <getpid>

   int arg1 = 11, arg2 = 22;

   size = (unsigned int)sbrk(0);
  16:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  19:	c7 45 f0 0b 00 00 00 	movl   $0xb,-0x10(%ebp)
   size = (unsigned int)sbrk(0);
  20:	6a 00                	push   $0x0
   ppid = getpid();
  22:	a3 2c 10 00 00       	mov    %eax,0x102c
   int arg1 = 11, arg2 = 22;
  27:	c7 45 f4 16 00 00 00 	movl   $0x16,-0xc(%ebp)
   size = (unsigned int)sbrk(0);
  2e:	e8 4b 07 00 00       	call   77e <sbrk>

   int thread_pid = thread_create(worker, &arg1, &arg2);
  33:	83 c4 0c             	add    $0xc,%esp
   size = (unsigned int)sbrk(0);
  36:	a3 24 10 00 00       	mov    %eax,0x1024
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
  54:	e8 c7 05 00 00       	call   620 <thread_join>
   assert(join_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	7e 13                	jle    70 <main+0x70>
   

   printf(1, "TEST PASSED\n");
  5d:	50                   	push   %eax
  5e:	50                   	push   %eax
  5f:	68 11 0c 00 00       	push   $0xc11
  64:	6a 01                	push   $0x1
  66:	e8 f5 07 00 00       	call   860 <printf>
   exit();
  6b:	e8 86 06 00 00       	call   6f6 <exit>
   assert(join_pid > 0);
  70:	6a 27                	push   $0x27
  72:	68 88 0b 00 00       	push   $0xb88
  77:	68 92 0b 00 00       	push   $0xb92
  7c:	6a 01                	push   $0x1
  7e:	e8 dd 07 00 00       	call   860 <printf>
  83:	83 c4 0c             	add    $0xc,%esp
  86:	68 f5 0b 00 00       	push   $0xbf5
  8b:	68 b8 0b 00 00       	push   $0xbb8
  90:	6a 01                	push   $0x1
  92:	e8 c9 07 00 00       	call   860 <printf>
  97:	5a                   	pop    %edx
  98:	59                   	pop    %ecx
  99:	68 cc 0b 00 00       	push   $0xbcc
  9e:	6a 01                	push   $0x1
  a0:	e8 bb 07 00 00       	call   860 <printf>
  a5:	58                   	pop    %eax
  a6:	ff 35 2c 10 00 00    	push   0x102c
  ac:	e8 75 06 00 00       	call   726 <kill>
  b1:	e8 40 06 00 00       	call   6f6 <exit>
   assert(thread_pid > 0);
  b6:	6a 24                	push   $0x24
  b8:	68 88 0b 00 00       	push   $0xb88
  bd:	68 92 0b 00 00       	push   $0xb92
  c2:	6a 01                	push   $0x1
  c4:	e8 97 07 00 00       	call   860 <printf>
  c9:	83 c4 0c             	add    $0xc,%esp
  cc:	68 02 0c 00 00       	push   $0xc02
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
  e6:	68 20 10 00 00       	push   $0x1020
  eb:	e8 b0 05 00 00       	call   6a0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
  f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f7:	e8 82 06 00 00       	call   77e <sbrk>
  fc:	83 c4 10             	add    $0x10,%esp
  ff:	3b 05 24 10 00 00    	cmp    0x1024,%eax
 105:	74 46                	je     14d <worker2+0x6d>
 107:	6a 31                	push   $0x31
   global++;
   lock_release(&lock);

   
   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 109:	68 88 0b 00 00       	push   $0xb88
 10e:	68 92 0b 00 00       	push   $0xb92
 113:	6a 01                	push   $0x1
 115:	e8 46 07 00 00       	call   860 <printf>
 11a:	83 c4 0c             	add    $0xc,%esp
 11d:	68 9a 0b 00 00       	push   $0xb9a
 122:	68 b8 0b 00 00       	push   $0xbb8
 127:	6a 01                	push   $0x1
 129:	e8 32 07 00 00       	call   860 <printf>
 12e:	58                   	pop    %eax
 12f:	5a                   	pop    %edx
 130:	68 cc 0b 00 00       	push   $0xbcc
 135:	6a 01                	push   $0x1
 137:	e8 24 07 00 00       	call   860 <printf>
 13c:	59                   	pop    %ecx
 13d:	ff 35 2c 10 00 00    	push   0x102c
 143:	e8 de 05 00 00       	call   726 <kill>
 148:	e8 a9 05 00 00       	call   6f6 <exit>
   lock_release(&lock);
 14d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 150:	83 05 28 10 00 00 01 	addl   $0x1,0x1028
   lock_release(&lock);
 157:	68 20 10 00 00       	push   $0x1020
 15c:	e8 5f 05 00 00       	call   6c0 <lock_release>
   lock_acquire(&lock2);
 161:	c7 04 24 1c 10 00 00 	movl   $0x101c,(%esp)
 168:	e8 33 05 00 00       	call   6a0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 16d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 174:	e8 05 06 00 00       	call   77e <sbrk>
 179:	83 c4 10             	add    $0x10,%esp
 17c:	3b 05 24 10 00 00    	cmp    0x1024,%eax
 182:	74 04                	je     188 <worker2+0xa8>
 184:	6a 37                	push   $0x37
 186:	eb 81                	jmp    109 <worker2+0x29>
   global++;
   lock_release(&lock2);
 188:	83 ec 0c             	sub    $0xc,%esp
   global++;
 18b:	83 05 28 10 00 00 01 	addl   $0x1,0x1028
   lock_release(&lock2);
 192:	68 1c 10 00 00       	push   $0x101c
 197:	e8 24 05 00 00       	call   6c0 <lock_release>

   
   exit();
 19c:	e8 55 05 00 00       	call   6f6 <exit>
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
 1b6:	68 20 10 00 00       	push   $0x1020
 1bb:	e8 20 05 00 00       	call   6e0 <lock_init>
   lock_init(&lock2);
 1c0:	c7 04 24 1c 10 00 00 	movl   $0x101c,(%esp)
 1c7:	e8 14 05 00 00       	call   6e0 <lock_init>
   lock_acquire(&lock);
 1cc:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 1d3:	e8 c8 04 00 00       	call   6a0 <lock_acquire>
   lock_acquire(&lock2);
 1d8:	c7 04 24 1c 10 00 00 	movl   $0x101c,(%esp)
 1df:	e8 bc 04 00 00       	call   6a0 <lock_acquire>

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
 205:	e8 74 05 00 00       	call   77e <sbrk>

   while (global < num_threads) {
 20a:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
 20d:	a3 24 10 00 00       	mov    %eax,0x1024
   while (global < num_threads) {
 212:	a1 18 10 00 00       	mov    0x1018,%eax
 217:	39 05 28 10 00 00    	cmp    %eax,0x1028
 21d:	7d 36                	jge    255 <worker+0xa5>
 21f:	90                   	nop
      lock_release(&lock);
 220:	83 ec 0c             	sub    $0xc,%esp
 223:	68 20 10 00 00       	push   $0x1020
 228:	e8 93 04 00 00       	call   6c0 <lock_release>
      sleep(100);
 22d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 234:	e8 4d 05 00 00       	call   786 <sleep>
      lock_acquire(&lock);
 239:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
 240:	e8 5b 04 00 00       	call   6a0 <lock_acquire>
   while (global < num_threads) {
 245:	a1 18 10 00 00       	mov    0x1018,%eax
 24a:	83 c4 10             	add    $0x10,%esp
 24d:	39 05 28 10 00 00    	cmp    %eax,0x1028
 253:	7c cb                	jl     220 <worker+0x70>
   }

   global = 0;
 255:	c7 05 28 10 00 00 00 	movl   $0x0,0x1028
 25c:	00 00 00 
   sbrk(10000);
 25f:	83 ec 0c             	sub    $0xc,%esp
 262:	68 10 27 00 00       	push   $0x2710
 267:	e8 12 05 00 00       	call   77e <sbrk>
   size = (unsigned int)sbrk(0);
 26c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 273:	e8 06 05 00 00       	call   77e <sbrk>
   lock_release(&lock);
 278:	c7 04 24 20 10 00 00 	movl   $0x1020,(%esp)
   size = (unsigned int)sbrk(0);
 27f:	a3 24 10 00 00       	mov    %eax,0x1024
   lock_release(&lock);
 284:	e8 37 04 00 00       	call   6c0 <lock_release>

   while (global < num_threads) {
 289:	a1 18 10 00 00       	mov    0x1018,%eax
 28e:	83 c4 10             	add    $0x10,%esp
 291:	39 05 28 10 00 00    	cmp    %eax,0x1028
 297:	7d 3c                	jge    2d5 <worker+0x125>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 2a0:	83 ec 0c             	sub    $0xc,%esp
 2a3:	68 1c 10 00 00       	push   $0x101c
 2a8:	e8 13 04 00 00       	call   6c0 <lock_release>
      sleep(100);
 2ad:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 2b4:	e8 cd 04 00 00       	call   786 <sleep>
      lock_acquire(&lock2);
 2b9:	c7 04 24 1c 10 00 00 	movl   $0x101c,(%esp)
 2c0:	e8 db 03 00 00       	call   6a0 <lock_acquire>
   while (global < num_threads) {
 2c5:	a1 18 10 00 00       	mov    0x1018,%eax
 2ca:	83 c4 10             	add    $0x10,%esp
 2cd:	39 05 28 10 00 00    	cmp    %eax,0x1028
 2d3:	7c cb                	jl     2a0 <worker+0xf0>
   }
   lock_release(&lock2);
 2d5:	83 ec 0c             	sub    $0xc,%esp
 2d8:	68 1c 10 00 00       	push   $0x101c
 2dd:	e8 de 03 00 00       	call   6c0 <lock_release>

   int nested_join_pid = thread_join();
 2e2:	e8 39 03 00 00       	call   620 <thread_join>
   assert(nested_join_pid > 0);
 2e7:	83 c4 10             	add    $0x10,%esp
 2ea:	85 c0                	test   %eax,%eax
 2ec:	7e 05                	jle    2f3 <worker+0x143>




   exit();
 2ee:	e8 03 04 00 00       	call   6f6 <exit>
   assert(nested_join_pid > 0);
 2f3:	6a 5d                	push   $0x5d
 2f5:	68 88 0b 00 00       	push   $0xb88
 2fa:	68 92 0b 00 00       	push   $0xb92
 2ff:	6a 01                	push   $0x1
 301:	e8 5a 05 00 00       	call   860 <printf>
 306:	83 c4 0c             	add    $0xc,%esp
 309:	68 ee 0b 00 00       	push   $0xbee
 30e:	68 b8 0b 00 00       	push   $0xbb8
 313:	6a 01                	push   $0x1
 315:	e8 46 05 00 00       	call   860 <printf>
 31a:	58                   	pop    %eax
 31b:	5a                   	pop    %edx
 31c:	68 cc 0b 00 00       	push   $0xbcc
 321:	6a 01                	push   $0x1
 323:	e8 38 05 00 00       	call   860 <printf>
 328:	59                   	pop    %ecx
 329:	ff 35 2c 10 00 00    	push   0x102c
 32f:	e8 f2 03 00 00       	call   726 <kill>
 334:	e8 bd 03 00 00       	call   6f6 <exit>
    assert(nested_thread_id > 0);
 339:	6a 47                	push   $0x47
 33b:	68 88 0b 00 00       	push   $0xb88
 340:	68 92 0b 00 00       	push   $0xb92
 345:	6a 01                	push   $0x1
 347:	e8 14 05 00 00       	call   860 <printf>
 34c:	83 c4 0c             	add    $0xc,%esp
 34f:	68 d9 0b 00 00       	push   $0xbd9
 354:	eb b8                	jmp    30e <worker+0x15e>
 356:	66 90                	xchg   %ax,%ax
 358:	66 90                	xchg   %ax,%ax
 35a:	66 90                	xchg   %ax,%ax
 35c:	66 90                	xchg   %ax,%ax
 35e:	66 90                	xchg   %ax,%ax

00000360 <strcpy>:

lock_t lk_create,lk_join;

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
 498:	e8 71 02 00 00       	call   70e <read>
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
 4fd:	e8 34 02 00 00       	call   736 <open>
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
 512:	e8 37 02 00 00       	call   74e <fstat>
  close(fd);
 517:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 51a:	89 c6                	mov    %eax,%esi
  close(fd);
 51c:	e8 fd 01 00 00       	call   71e <close>
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
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 5b0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 5b1:	ba 01 00 00 00       	mov    $0x1,%edx
 5b6:	89 e5                	mov    %esp,%ebp
 5b8:	83 ec 08             	sub    $0x8,%esp
 5bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop
 5c0:	89 d0                	mov    %edx,%eax
 5c2:	f0 87 05 34 10 00 00 	lock xchg %eax,0x1034
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 5c9:	85 c0                	test   %eax,%eax
 5cb:	75 f3                	jne    5c0 <thread_create+0x10>
    __sync_synchronize();
 5cd:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 5d2:	83 ec 0c             	sub    $0xc,%esp
 5d5:	68 00 20 00 00       	push   $0x2000
 5da:	e8 b1 04 00 00       	call   a90 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 5df:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 5e4:	c7 05 34 10 00 00 00 	movl   $0x0,0x1034
 5eb:	00 00 00 
	if((uint)stack % PGSIZE)
 5ee:	89 c2                	mov    %eax,%edx
 5f0:	83 c4 10             	add    $0x10,%esp
 5f3:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 5f9:	74 07                	je     602 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 5fb:	29 d0                	sub    %edx,%eax
 5fd:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 602:	50                   	push   %eax
 603:	ff 75 10             	push   0x10(%ebp)
 606:	ff 75 0c             	push   0xc(%ebp)
 609:	ff 75 08             	push   0x8(%ebp)
 60c:	e8 85 01 00 00       	call   796 <clone>
}
 611:	c9                   	leave  
 612:	c3                   	ret    
 613:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000620 <thread_join>:
int thread_join(){
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	53                   	push   %ebx
	int result= join(&stack);
 624:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 627:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 62a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 631:	50                   	push   %eax
 632:	e8 67 01 00 00       	call   79e <join>
    while(xchg(&(lock->mutex), 1) != 0);
 637:	83 c4 10             	add    $0x10,%esp
 63a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 63f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 641:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 648:	89 d0                	mov    %edx,%eax
 64a:	f0 87 05 30 10 00 00 	lock xchg %eax,0x1030
 651:	85 c0                	test   %eax,%eax
 653:	75 f3                	jne    648 <thread_join+0x28>
    __sync_synchronize();
 655:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 65a:	83 ec 0c             	sub    $0xc,%esp
 65d:	ff 75 f4             	push   -0xc(%ebp)
 660:	e8 9b 03 00 00       	call   a00 <free>
   __sync_synchronize();
 665:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 66a:	c7 05 30 10 00 00 00 	movl   $0x0,0x1030
 671:	00 00 00 
}
 674:	89 d8                	mov    %ebx,%eax
 676:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 679:	c9                   	leave  
 67a:	c3                   	ret    
 67b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 67f:	90                   	nop

00000680 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 680:	c7 05 34 10 00 00 00 	movl   $0x0,0x1034
 687:	00 00 00 
 68a:	c7 05 30 10 00 00 00 	movl   $0x0,0x1030
 691:	00 00 00 
}
 694:	c3                   	ret    
 695:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006a0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 6a0:	55                   	push   %ebp
 6a1:	b9 01 00 00 00       	mov    $0x1,%ecx
 6a6:	89 e5                	mov    %esp,%ebp
 6a8:	8b 55 08             	mov    0x8(%ebp),%edx
 6ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6af:	90                   	nop
 6b0:	89 c8                	mov    %ecx,%eax
 6b2:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 6b5:	85 c0                	test   %eax,%eax
 6b7:	75 f7                	jne    6b0 <lock_acquire+0x10>
    __sync_synchronize();
 6b9:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 6be:	5d                   	pop    %ebp
 6bf:	c3                   	ret    

000006c0 <lock_release>:
void lock_release(lock_t *lock){
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 6c6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 6cb:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 6d1:	5d                   	pop    %ebp
 6d2:	c3                   	ret    
 6d3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000006e0 <lock_init>:
void lock_init(lock_t *lock) {
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 6e3:	8b 45 08             	mov    0x8(%ebp),%eax
 6e6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 6ec:	5d                   	pop    %ebp
 6ed:	c3                   	ret    

000006ee <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6ee:	b8 01 00 00 00       	mov    $0x1,%eax
 6f3:	cd 40                	int    $0x40
 6f5:	c3                   	ret    

000006f6 <exit>:
SYSCALL(exit)
 6f6:	b8 02 00 00 00       	mov    $0x2,%eax
 6fb:	cd 40                	int    $0x40
 6fd:	c3                   	ret    

000006fe <wait>:
SYSCALL(wait)
 6fe:	b8 03 00 00 00       	mov    $0x3,%eax
 703:	cd 40                	int    $0x40
 705:	c3                   	ret    

00000706 <pipe>:
SYSCALL(pipe)
 706:	b8 04 00 00 00       	mov    $0x4,%eax
 70b:	cd 40                	int    $0x40
 70d:	c3                   	ret    

0000070e <read>:
SYSCALL(read)
 70e:	b8 05 00 00 00       	mov    $0x5,%eax
 713:	cd 40                	int    $0x40
 715:	c3                   	ret    

00000716 <write>:
SYSCALL(write)
 716:	b8 10 00 00 00       	mov    $0x10,%eax
 71b:	cd 40                	int    $0x40
 71d:	c3                   	ret    

0000071e <close>:
SYSCALL(close)
 71e:	b8 15 00 00 00       	mov    $0x15,%eax
 723:	cd 40                	int    $0x40
 725:	c3                   	ret    

00000726 <kill>:
SYSCALL(kill)
 726:	b8 06 00 00 00       	mov    $0x6,%eax
 72b:	cd 40                	int    $0x40
 72d:	c3                   	ret    

0000072e <exec>:
SYSCALL(exec)
 72e:	b8 07 00 00 00       	mov    $0x7,%eax
 733:	cd 40                	int    $0x40
 735:	c3                   	ret    

00000736 <open>:
SYSCALL(open)
 736:	b8 0f 00 00 00       	mov    $0xf,%eax
 73b:	cd 40                	int    $0x40
 73d:	c3                   	ret    

0000073e <mknod>:
SYSCALL(mknod)
 73e:	b8 11 00 00 00       	mov    $0x11,%eax
 743:	cd 40                	int    $0x40
 745:	c3                   	ret    

00000746 <unlink>:
SYSCALL(unlink)
 746:	b8 12 00 00 00       	mov    $0x12,%eax
 74b:	cd 40                	int    $0x40
 74d:	c3                   	ret    

0000074e <fstat>:
SYSCALL(fstat)
 74e:	b8 08 00 00 00       	mov    $0x8,%eax
 753:	cd 40                	int    $0x40
 755:	c3                   	ret    

00000756 <link>:
SYSCALL(link)
 756:	b8 13 00 00 00       	mov    $0x13,%eax
 75b:	cd 40                	int    $0x40
 75d:	c3                   	ret    

0000075e <mkdir>:
SYSCALL(mkdir)
 75e:	b8 14 00 00 00       	mov    $0x14,%eax
 763:	cd 40                	int    $0x40
 765:	c3                   	ret    

00000766 <chdir>:
SYSCALL(chdir)
 766:	b8 09 00 00 00       	mov    $0x9,%eax
 76b:	cd 40                	int    $0x40
 76d:	c3                   	ret    

0000076e <dup>:
SYSCALL(dup)
 76e:	b8 0a 00 00 00       	mov    $0xa,%eax
 773:	cd 40                	int    $0x40
 775:	c3                   	ret    

00000776 <getpid>:
SYSCALL(getpid)
 776:	b8 0b 00 00 00       	mov    $0xb,%eax
 77b:	cd 40                	int    $0x40
 77d:	c3                   	ret    

0000077e <sbrk>:
SYSCALL(sbrk)
 77e:	b8 0c 00 00 00       	mov    $0xc,%eax
 783:	cd 40                	int    $0x40
 785:	c3                   	ret    

00000786 <sleep>:
SYSCALL(sleep)
 786:	b8 0d 00 00 00       	mov    $0xd,%eax
 78b:	cd 40                	int    $0x40
 78d:	c3                   	ret    

0000078e <uptime>:
SYSCALL(uptime)
 78e:	b8 0e 00 00 00       	mov    $0xe,%eax
 793:	cd 40                	int    $0x40
 795:	c3                   	ret    

00000796 <clone>:
SYSCALL(clone)
 796:	b8 16 00 00 00       	mov    $0x16,%eax
 79b:	cd 40                	int    $0x40
 79d:	c3                   	ret    

0000079e <join>:
SYSCALL(join)
 79e:	b8 17 00 00 00       	mov    $0x17,%eax
 7a3:	cd 40                	int    $0x40
 7a5:	c3                   	ret    
 7a6:	66 90                	xchg   %ax,%ax
 7a8:	66 90                	xchg   %ax,%ax
 7aa:	66 90                	xchg   %ax,%ax
 7ac:	66 90                	xchg   %ax,%ax
 7ae:	66 90                	xchg   %ax,%ax

000007b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	57                   	push   %edi
 7b4:	56                   	push   %esi
 7b5:	53                   	push   %ebx
 7b6:	83 ec 3c             	sub    $0x3c,%esp
 7b9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 7bc:	89 d1                	mov    %edx,%ecx
{
 7be:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 7c1:	85 d2                	test   %edx,%edx
 7c3:	0f 89 7f 00 00 00    	jns    848 <printint+0x98>
 7c9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7cd:	74 79                	je     848 <printint+0x98>
    neg = 1;
 7cf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7d6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7d8:	31 db                	xor    %ebx,%ebx
 7da:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7dd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7e0:	89 c8                	mov    %ecx,%eax
 7e2:	31 d2                	xor    %edx,%edx
 7e4:	89 cf                	mov    %ecx,%edi
 7e6:	f7 75 c4             	divl   -0x3c(%ebp)
 7e9:	0f b6 92 80 0c 00 00 	movzbl 0xc80(%edx),%edx
 7f0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7f3:	89 d8                	mov    %ebx,%eax
 7f5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7f8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7fb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7fe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 801:	76 dd                	jbe    7e0 <printint+0x30>
  if(neg)
 803:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 806:	85 c9                	test   %ecx,%ecx
 808:	74 0c                	je     816 <printint+0x66>
    buf[i++] = '-';
 80a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 80f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 811:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 816:	8b 7d b8             	mov    -0x48(%ebp),%edi
 819:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 81d:	eb 07                	jmp    826 <printint+0x76>
 81f:	90                   	nop
    putc(fd, buf[i]);
 820:	0f b6 13             	movzbl (%ebx),%edx
 823:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 826:	83 ec 04             	sub    $0x4,%esp
 829:	88 55 d7             	mov    %dl,-0x29(%ebp)
 82c:	6a 01                	push   $0x1
 82e:	56                   	push   %esi
 82f:	57                   	push   %edi
 830:	e8 e1 fe ff ff       	call   716 <write>
  while(--i >= 0)
 835:	83 c4 10             	add    $0x10,%esp
 838:	39 de                	cmp    %ebx,%esi
 83a:	75 e4                	jne    820 <printint+0x70>
}
 83c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 83f:	5b                   	pop    %ebx
 840:	5e                   	pop    %esi
 841:	5f                   	pop    %edi
 842:	5d                   	pop    %ebp
 843:	c3                   	ret    
 844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 848:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 84f:	eb 87                	jmp    7d8 <printint+0x28>
 851:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 858:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85f:	90                   	nop

00000860 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 860:	55                   	push   %ebp
 861:	89 e5                	mov    %esp,%ebp
 863:	57                   	push   %edi
 864:	56                   	push   %esi
 865:	53                   	push   %ebx
 866:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 869:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 86c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 86f:	0f b6 13             	movzbl (%ebx),%edx
 872:	84 d2                	test   %dl,%dl
 874:	74 6a                	je     8e0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 876:	8d 45 10             	lea    0x10(%ebp),%eax
 879:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 87c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 87f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 881:	89 45 d0             	mov    %eax,-0x30(%ebp)
 884:	eb 36                	jmp    8bc <printf+0x5c>
 886:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 88d:	8d 76 00             	lea    0x0(%esi),%esi
 890:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 893:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 898:	83 f8 25             	cmp    $0x25,%eax
 89b:	74 15                	je     8b2 <printf+0x52>
  write(fd, &c, 1);
 89d:	83 ec 04             	sub    $0x4,%esp
 8a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8a3:	6a 01                	push   $0x1
 8a5:	57                   	push   %edi
 8a6:	56                   	push   %esi
 8a7:	e8 6a fe ff ff       	call   716 <write>
 8ac:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 8af:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8b2:	0f b6 13             	movzbl (%ebx),%edx
 8b5:	83 c3 01             	add    $0x1,%ebx
 8b8:	84 d2                	test   %dl,%dl
 8ba:	74 24                	je     8e0 <printf+0x80>
    c = fmt[i] & 0xff;
 8bc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 8bf:	85 c9                	test   %ecx,%ecx
 8c1:	74 cd                	je     890 <printf+0x30>
      }
    } else if(state == '%'){
 8c3:	83 f9 25             	cmp    $0x25,%ecx
 8c6:	75 ea                	jne    8b2 <printf+0x52>
      if(c == 'd'){
 8c8:	83 f8 25             	cmp    $0x25,%eax
 8cb:	0f 84 07 01 00 00    	je     9d8 <printf+0x178>
 8d1:	83 e8 63             	sub    $0x63,%eax
 8d4:	83 f8 15             	cmp    $0x15,%eax
 8d7:	77 17                	ja     8f0 <printf+0x90>
 8d9:	ff 24 85 28 0c 00 00 	jmp    *0xc28(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8e3:	5b                   	pop    %ebx
 8e4:	5e                   	pop    %esi
 8e5:	5f                   	pop    %edi
 8e6:	5d                   	pop    %ebp
 8e7:	c3                   	ret    
 8e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ef:	90                   	nop
  write(fd, &c, 1);
 8f0:	83 ec 04             	sub    $0x4,%esp
 8f3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8f6:	6a 01                	push   $0x1
 8f8:	57                   	push   %edi
 8f9:	56                   	push   %esi
 8fa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8fe:	e8 13 fe ff ff       	call   716 <write>
        putc(fd, c);
 903:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 907:	83 c4 0c             	add    $0xc,%esp
 90a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 90d:	6a 01                	push   $0x1
 90f:	57                   	push   %edi
 910:	56                   	push   %esi
 911:	e8 00 fe ff ff       	call   716 <write>
        putc(fd, c);
 916:	83 c4 10             	add    $0x10,%esp
      state = 0;
 919:	31 c9                	xor    %ecx,%ecx
 91b:	eb 95                	jmp    8b2 <printf+0x52>
 91d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 920:	83 ec 0c             	sub    $0xc,%esp
 923:	b9 10 00 00 00       	mov    $0x10,%ecx
 928:	6a 00                	push   $0x0
 92a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 92d:	8b 10                	mov    (%eax),%edx
 92f:	89 f0                	mov    %esi,%eax
 931:	e8 7a fe ff ff       	call   7b0 <printint>
        ap++;
 936:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 93a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 93d:	31 c9                	xor    %ecx,%ecx
 93f:	e9 6e ff ff ff       	jmp    8b2 <printf+0x52>
 944:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 948:	8b 45 d0             	mov    -0x30(%ebp),%eax
 94b:	8b 10                	mov    (%eax),%edx
        ap++;
 94d:	83 c0 04             	add    $0x4,%eax
 950:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 953:	85 d2                	test   %edx,%edx
 955:	0f 84 8d 00 00 00    	je     9e8 <printf+0x188>
        while(*s != 0){
 95b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 95e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 960:	84 c0                	test   %al,%al
 962:	0f 84 4a ff ff ff    	je     8b2 <printf+0x52>
 968:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 96b:	89 d3                	mov    %edx,%ebx
 96d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 970:	83 ec 04             	sub    $0x4,%esp
          s++;
 973:	83 c3 01             	add    $0x1,%ebx
 976:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 979:	6a 01                	push   $0x1
 97b:	57                   	push   %edi
 97c:	56                   	push   %esi
 97d:	e8 94 fd ff ff       	call   716 <write>
        while(*s != 0){
 982:	0f b6 03             	movzbl (%ebx),%eax
 985:	83 c4 10             	add    $0x10,%esp
 988:	84 c0                	test   %al,%al
 98a:	75 e4                	jne    970 <printf+0x110>
      state = 0;
 98c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 98f:	31 c9                	xor    %ecx,%ecx
 991:	e9 1c ff ff ff       	jmp    8b2 <printf+0x52>
 996:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 99d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 9a0:	83 ec 0c             	sub    $0xc,%esp
 9a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9a8:	6a 01                	push   $0x1
 9aa:	e9 7b ff ff ff       	jmp    92a <printf+0xca>
 9af:	90                   	nop
        putc(fd, *ap);
 9b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 9b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9b6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 9b8:	6a 01                	push   $0x1
 9ba:	57                   	push   %edi
 9bb:	56                   	push   %esi
        putc(fd, *ap);
 9bc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9bf:	e8 52 fd ff ff       	call   716 <write>
        ap++;
 9c4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9c8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9cb:	31 c9                	xor    %ecx,%ecx
 9cd:	e9 e0 fe ff ff       	jmp    8b2 <printf+0x52>
 9d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9d8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9db:	83 ec 04             	sub    $0x4,%esp
 9de:	e9 2a ff ff ff       	jmp    90d <printf+0xad>
 9e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9e7:	90                   	nop
          s = "(null)";
 9e8:	ba 1e 0c 00 00       	mov    $0xc1e,%edx
        while(*s != 0){
 9ed:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9f0:	b8 28 00 00 00       	mov    $0x28,%eax
 9f5:	89 d3                	mov    %edx,%ebx
 9f7:	e9 74 ff ff ff       	jmp    970 <printf+0x110>
 9fc:	66 90                	xchg   %ax,%ax
 9fe:	66 90                	xchg   %ax,%ax

00000a00 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a00:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a01:	a1 38 10 00 00       	mov    0x1038,%eax
{
 a06:	89 e5                	mov    %esp,%ebp
 a08:	57                   	push   %edi
 a09:	56                   	push   %esi
 a0a:	53                   	push   %ebx
 a0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a0e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a18:	89 c2                	mov    %eax,%edx
 a1a:	8b 00                	mov    (%eax),%eax
 a1c:	39 ca                	cmp    %ecx,%edx
 a1e:	73 30                	jae    a50 <free+0x50>
 a20:	39 c1                	cmp    %eax,%ecx
 a22:	72 04                	jb     a28 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a24:	39 c2                	cmp    %eax,%edx
 a26:	72 f0                	jb     a18 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a28:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a2b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a2e:	39 f8                	cmp    %edi,%eax
 a30:	74 30                	je     a62 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a32:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a35:	8b 42 04             	mov    0x4(%edx),%eax
 a38:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a3b:	39 f1                	cmp    %esi,%ecx
 a3d:	74 3a                	je     a79 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a3f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a41:	5b                   	pop    %ebx
  freep = p;
 a42:	89 15 38 10 00 00    	mov    %edx,0x1038
}
 a48:	5e                   	pop    %esi
 a49:	5f                   	pop    %edi
 a4a:	5d                   	pop    %ebp
 a4b:	c3                   	ret    
 a4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a50:	39 c2                	cmp    %eax,%edx
 a52:	72 c4                	jb     a18 <free+0x18>
 a54:	39 c1                	cmp    %eax,%ecx
 a56:	73 c0                	jae    a18 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a58:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a5b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a5e:	39 f8                	cmp    %edi,%eax
 a60:	75 d0                	jne    a32 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a62:	03 70 04             	add    0x4(%eax),%esi
 a65:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a68:	8b 02                	mov    (%edx),%eax
 a6a:	8b 00                	mov    (%eax),%eax
 a6c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a6f:	8b 42 04             	mov    0x4(%edx),%eax
 a72:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a75:	39 f1                	cmp    %esi,%ecx
 a77:	75 c6                	jne    a3f <free+0x3f>
    p->s.size += bp->s.size;
 a79:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a7c:	89 15 38 10 00 00    	mov    %edx,0x1038
    p->s.size += bp->s.size;
 a82:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a85:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a88:	89 0a                	mov    %ecx,(%edx)
}
 a8a:	5b                   	pop    %ebx
 a8b:	5e                   	pop    %esi
 a8c:	5f                   	pop    %edi
 a8d:	5d                   	pop    %ebp
 a8e:	c3                   	ret    
 a8f:	90                   	nop

00000a90 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a90:	55                   	push   %ebp
 a91:	89 e5                	mov    %esp,%ebp
 a93:	57                   	push   %edi
 a94:	56                   	push   %esi
 a95:	53                   	push   %ebx
 a96:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a99:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a9c:	8b 3d 38 10 00 00    	mov    0x1038,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 aa2:	8d 70 07             	lea    0x7(%eax),%esi
 aa5:	c1 ee 03             	shr    $0x3,%esi
 aa8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 aab:	85 ff                	test   %edi,%edi
 aad:	0f 84 9d 00 00 00    	je     b50 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ab3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 ab5:	8b 4a 04             	mov    0x4(%edx),%ecx
 ab8:	39 f1                	cmp    %esi,%ecx
 aba:	73 6a                	jae    b26 <malloc+0x96>
 abc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ac1:	39 de                	cmp    %ebx,%esi
 ac3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 ac6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 acd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ad0:	eb 17                	jmp    ae9 <malloc+0x59>
 ad2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ad8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 ada:	8b 48 04             	mov    0x4(%eax),%ecx
 add:	39 f1                	cmp    %esi,%ecx
 adf:	73 4f                	jae    b30 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ae1:	8b 3d 38 10 00 00    	mov    0x1038,%edi
 ae7:	89 c2                	mov    %eax,%edx
 ae9:	39 d7                	cmp    %edx,%edi
 aeb:	75 eb                	jne    ad8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 aed:	83 ec 0c             	sub    $0xc,%esp
 af0:	ff 75 e4             	push   -0x1c(%ebp)
 af3:	e8 86 fc ff ff       	call   77e <sbrk>
  if(p == (char*)-1)
 af8:	83 c4 10             	add    $0x10,%esp
 afb:	83 f8 ff             	cmp    $0xffffffff,%eax
 afe:	74 1c                	je     b1c <malloc+0x8c>
  hp->s.size = nu;
 b00:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b03:	83 ec 0c             	sub    $0xc,%esp
 b06:	83 c0 08             	add    $0x8,%eax
 b09:	50                   	push   %eax
 b0a:	e8 f1 fe ff ff       	call   a00 <free>
  return freep;
 b0f:	8b 15 38 10 00 00    	mov    0x1038,%edx
      if((p = morecore(nunits)) == 0)
 b15:	83 c4 10             	add    $0x10,%esp
 b18:	85 d2                	test   %edx,%edx
 b1a:	75 bc                	jne    ad8 <malloc+0x48>
        return 0;
  }
}
 b1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b1f:	31 c0                	xor    %eax,%eax
}
 b21:	5b                   	pop    %ebx
 b22:	5e                   	pop    %esi
 b23:	5f                   	pop    %edi
 b24:	5d                   	pop    %ebp
 b25:	c3                   	ret    
    if(p->s.size >= nunits){
 b26:	89 d0                	mov    %edx,%eax
 b28:	89 fa                	mov    %edi,%edx
 b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b30:	39 ce                	cmp    %ecx,%esi
 b32:	74 4c                	je     b80 <malloc+0xf0>
        p->s.size -= nunits;
 b34:	29 f1                	sub    %esi,%ecx
 b36:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b39:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b3c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b3f:	89 15 38 10 00 00    	mov    %edx,0x1038
}
 b45:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b48:	83 c0 08             	add    $0x8,%eax
}
 b4b:	5b                   	pop    %ebx
 b4c:	5e                   	pop    %esi
 b4d:	5f                   	pop    %edi
 b4e:	5d                   	pop    %ebp
 b4f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b50:	c7 05 38 10 00 00 3c 	movl   $0x103c,0x1038
 b57:	10 00 00 
    base.s.size = 0;
 b5a:	bf 3c 10 00 00       	mov    $0x103c,%edi
    base.s.ptr = freep = prevp = &base;
 b5f:	c7 05 3c 10 00 00 3c 	movl   $0x103c,0x103c
 b66:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b69:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b6b:	c7 05 40 10 00 00 00 	movl   $0x0,0x1040
 b72:	00 00 00 
    if(p->s.size >= nunits){
 b75:	e9 42 ff ff ff       	jmp    abc <malloc+0x2c>
 b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b80:	8b 08                	mov    (%eax),%ecx
 b82:	89 0a                	mov    %ecx,(%edx)
 b84:	eb b9                	jmp    b3f <malloc+0xaf>
