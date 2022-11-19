
_test_13:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}


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
  14:	e8 1b 09 00 00       	call   934 <getpid>

   assert(fib(28) == 317811);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	6a 1c                	push   $0x1c
   ppid = getpid();
  1e:	a3 3c 12 00 00       	mov    %eax,0x123c
   assert(fib(28) == 317811);
  23:	e8 18 01 00 00       	call   140 <fib>
  28:	83 c4 10             	add    $0x10,%esp
  2b:	3d 73 d9 04 00       	cmp    $0x4d973,%eax
  30:	0f 85 92 00 00 00    	jne    c8 <main+0xc8>

   int arg1 = 11, arg2 = 22;

   for (int i = 0; i < num_threads; i++) {
  36:	83 3d 34 12 00 00 00 	cmpl   $0x0,0x1234
   int arg1 = 11, arg2 = 22;
  3d:	c7 45 e0 0b 00 00 00 	movl   $0xb,-0x20(%ebp)
  44:	c7 45 e4 16 00 00 00 	movl   $0x16,-0x1c(%ebp)
   for (int i = 0; i < num_threads; i++) {
  4b:	0f 8e d3 00 00 00    	jle    124 <main+0x124>
  51:	31 db                	xor    %ebx,%ebx
  53:	8d 7d e4             	lea    -0x1c(%ebp),%edi
  56:	8d 75 e0             	lea    -0x20(%ebp),%esi
  59:	eb 11                	jmp    6c <main+0x6c>
  5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  5f:	90                   	nop
  60:	a1 34 12 00 00       	mov    0x1234,%eax
  65:	83 c3 01             	add    $0x1,%ebx
  68:	39 d8                	cmp    %ebx,%eax
  6a:	7e 79                	jle    e5 <main+0xe5>
      int thread_pid = thread_create(worker, &arg1, &arg2);
  6c:	83 ec 04             	sub    $0x4,%esp
  6f:	57                   	push   %edi
  70:	56                   	push   %esi
  71:	68 50 03 00 00       	push   $0x350
  76:	e8 a5 06 00 00       	call   720 <thread_create>
      assert(thread_pid > 0);
  7b:	83 c4 10             	add    $0x10,%esp
  7e:	85 c0                	test   %eax,%eax
  80:	7f de                	jg     60 <main+0x60>
  82:	6a 2e                	push   $0x2e
  84:	68 48 0d 00 00       	push   $0xd48
  89:	68 52 0d 00 00       	push   $0xd52
  8e:	6a 01                	push   $0x1
  90:	e8 8b 09 00 00       	call   a20 <printf>
  95:	83 c4 0c             	add    $0xc,%esp
  98:	68 f0 0d 00 00       	push   $0xdf0
  9d:	68 65 0d 00 00       	push   $0xd65
  a2:	6a 01                	push   $0x1
  a4:	e8 77 09 00 00       	call   a20 <printf>
  a9:	58                   	pop    %eax
  aa:	5a                   	pop    %edx
  ab:	68 79 0d 00 00       	push   $0xd79
  b0:	6a 01                	push   $0x1
  b2:	e8 69 09 00 00       	call   a20 <printf>
  b7:	59                   	pop    %ecx
  b8:	ff 35 3c 12 00 00    	push   0x123c
  be:	e8 21 08 00 00       	call   8e4 <kill>
  c3:	e8 ec 07 00 00       	call   8b4 <exit>
   assert(fib(28) == 317811);
  c8:	6a 28                	push   $0x28
  ca:	68 48 0d 00 00       	push   $0xd48
  cf:	68 52 0d 00 00       	push   $0xd52
  d4:	6a 01                	push   $0x1
  d6:	e8 45 09 00 00       	call   a20 <printf>
  db:	83 c4 0c             	add    $0xc,%esp
  de:	68 d1 0d 00 00       	push   $0xdd1
  e3:	eb b8                	jmp    9d <main+0x9d>
   }

   for (int i = 0; i < num_threads; i++) {
  e5:	85 c0                	test   %eax,%eax
  e7:	7e 3b                	jle    124 <main+0x124>
  e9:	31 db                	xor    %ebx,%ebx
  eb:	eb 0e                	jmp    fb <main+0xfb>
  ed:	8d 76 00             	lea    0x0(%esi),%esi
  f0:	83 c3 01             	add    $0x1,%ebx
  f3:	39 1d 34 12 00 00    	cmp    %ebx,0x1234
  f9:	7e 29                	jle    124 <main+0x124>
      int join_pid = thread_join();
  fb:	e8 b0 06 00 00       	call   7b0 <thread_join>
      assert(join_pid > 0);
 100:	85 c0                	test   %eax,%eax
 102:	7f ec                	jg     f0 <main+0xf0>
 104:	6a 33                	push   $0x33
 106:	68 48 0d 00 00       	push   $0xd48
 10b:	68 52 0d 00 00       	push   $0xd52
 110:	6a 01                	push   $0x1
 112:	e8 09 09 00 00       	call   a20 <printf>
 117:	83 c4 0c             	add    $0xc,%esp
 11a:	68 ff 0d 00 00       	push   $0xdff
 11f:	e9 79 ff ff ff       	jmp    9d <main+0x9d>
   }

   printf(1, "TEST PASSED\n");
 124:	53                   	push   %ebx
 125:	53                   	push   %ebx
 126:	68 e3 0d 00 00       	push   $0xde3
 12b:	6a 01                	push   $0x1
 12d:	e8 ee 08 00 00       	call   a20 <printf>
   exit();
 132:	e8 7d 07 00 00       	call   8b4 <exit>
 137:	66 90                	xchg   %ax,%ax
 139:	66 90                	xchg   %ax,%ax
 13b:	66 90                	xchg   %ax,%ax
 13d:	66 90                	xchg   %ax,%ax
 13f:	90                   	nop

00000140 <fib>:
unsigned int fib(unsigned int n) {
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	57                   	push   %edi
 144:	56                   	push   %esi
 145:	53                   	push   %ebx
 146:	83 ec 4c             	sub    $0x4c,%esp
   if (n == 0) {
 149:	8b 45 08             	mov    0x8(%ebp),%eax
 14c:	85 c0                	test   %eax,%eax
 14e:	0f 84 7d 01 00 00    	je     2d1 <fib+0x191>
   } else if (n == 1) {
 154:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 158:	0f 84 73 01 00 00    	je     2d1 <fib+0x191>
 15e:	8b 45 08             	mov    0x8(%ebp),%eax
 161:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
 168:	89 45 d8             	mov    %eax,-0x28(%ebp)
      return fib(n - 1) + fib(n - 2);
 16b:	8b 45 d8             	mov    -0x28(%ebp),%eax
 16e:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 175:	83 e8 01             	sub    $0x1,%eax
 178:	89 45 b8             	mov    %eax,-0x48(%ebp)
   } else if (n == 1) {
 17b:	8b 45 b8             	mov    -0x48(%ebp),%eax
 17e:	83 f8 01             	cmp    $0x1,%eax
 181:	0f 84 2c 01 00 00    	je     2b3 <fib+0x173>
      return fib(n - 1) + fib(n - 2);
 187:	83 e8 01             	sub    $0x1,%eax
 18a:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 191:	89 45 b4             	mov    %eax,-0x4c(%ebp)
   } else if (n == 1) {
 194:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 197:	83 f8 01             	cmp    $0x1,%eax
 19a:	0f 84 90 01 00 00    	je     330 <fib+0x1f0>
      return fib(n - 1) + fib(n - 2);
 1a0:	83 e8 01             	sub    $0x1,%eax
 1a3:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
 1aa:	89 45 ac             	mov    %eax,-0x54(%ebp)
   } else if (n == 1) {
 1ad:	8b 45 ac             	mov    -0x54(%ebp),%eax
 1b0:	83 f8 01             	cmp    $0x1,%eax
 1b3:	0f 84 5e 01 00 00    	je     317 <fib+0x1d7>
      return fib(n - 1) + fib(n - 2);
 1b9:	83 e8 01             	sub    $0x1,%eax
 1bc:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 1c3:	89 45 b0             	mov    %eax,-0x50(%ebp)
   } else if (n == 1) {
 1c6:	8b 45 b0             	mov    -0x50(%ebp),%eax
 1c9:	83 f8 01             	cmp    $0x1,%eax
 1cc:	0f 84 3c 01 00 00    	je     30e <fib+0x1ce>
      return fib(n - 1) + fib(n - 2);
 1d2:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 1d9:	8d 48 ff             	lea    -0x1(%eax),%ecx
 1dc:	89 cb                	mov    %ecx,%ebx
   } else if (n == 1) {
 1de:	83 fb 01             	cmp    $0x1,%ebx
 1e1:	0f 84 13 01 00 00    	je     2fa <fib+0x1ba>
      return fib(n - 1) + fib(n - 2);
 1e7:	8d 43 ff             	lea    -0x1(%ebx),%eax
 1ea:	83 eb 02             	sub    $0x2,%ebx
 1ed:	31 c9                	xor    %ecx,%ecx
 1ef:	89 45 e0             	mov    %eax,-0x20(%ebp)
 1f2:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
 1f5:	89 5d c4             	mov    %ebx,-0x3c(%ebp)
   } else if (n == 1) {
 1f8:	83 7d e0 01          	cmpl   $0x1,-0x20(%ebp)
 1fc:	0f 84 01 01 00 00    	je     303 <fib+0x1c3>
 202:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 205:	31 c0                	xor    %eax,%eax
 207:	89 d7                	mov    %edx,%edi
 209:	89 c2                	mov    %eax,%edx
 20b:	83 ff 01             	cmp    $0x1,%edi
 20e:	0f 84 dc 00 00 00    	je     2f0 <fib+0x1b0>
      return fib(n - 1) + fib(n - 2);
 214:	89 7d c0             	mov    %edi,-0x40(%ebp)
 217:	8d 5f ff             	lea    -0x1(%edi),%ebx
 21a:	31 f6                	xor    %esi,%esi
 21c:	89 cf                	mov    %ecx,%edi
   } else if (n == 1) {
 21e:	83 fb 01             	cmp    $0x1,%ebx
 221:	0f 84 b9 00 00 00    	je     2e0 <fib+0x1a0>
      return fib(n - 1) + fib(n - 2);
 227:	83 ec 0c             	sub    $0xc,%esp
 22a:	8d 43 ff             	lea    -0x1(%ebx),%eax
 22d:	89 55 bc             	mov    %edx,-0x44(%ebp)
 230:	50                   	push   %eax
 231:	e8 0a ff ff ff       	call   140 <fib>
 236:	83 c4 10             	add    $0x10,%esp
   if (n == 0) {
 239:	8b 55 bc             	mov    -0x44(%ebp),%edx
 23c:	01 c6                	add    %eax,%esi
 23e:	83 eb 02             	sub    $0x2,%ebx
 241:	75 db                	jne    21e <fib+0xde>
 243:	89 f9                	mov    %edi,%ecx
 245:	8b 7d c0             	mov    -0x40(%ebp),%edi
 248:	01 f2                	add    %esi,%edx
 24a:	83 ef 02             	sub    $0x2,%edi
 24d:	75 bc                	jne    20b <fib+0xcb>
 24f:	89 d7                	mov    %edx,%edi
 251:	83 6d e4 02          	subl   $0x2,-0x1c(%ebp)
 255:	01 f9                	add    %edi,%ecx
 257:	83 6d e0 02          	subl   $0x2,-0x20(%ebp)
 25b:	75 9b                	jne    1f8 <fib+0xb8>
 25d:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
 260:	01 4d dc             	add    %ecx,-0x24(%ebp)
 263:	85 db                	test   %ebx,%ebx
 265:	0f 85 73 ff ff ff    	jne    1de <fib+0x9e>
 26b:	8b 75 dc             	mov    -0x24(%ebp),%esi
 26e:	01 75 c8             	add    %esi,-0x38(%ebp)
 271:	83 6d b0 02          	subl   $0x2,-0x50(%ebp)
 275:	0f 85 4b ff ff ff    	jne    1c6 <fib+0x86>
 27b:	8b 75 c8             	mov    -0x38(%ebp),%esi
 27e:	01 75 cc             	add    %esi,-0x34(%ebp)
 281:	83 6d ac 02          	subl   $0x2,-0x54(%ebp)
 285:	0f 85 22 ff ff ff    	jne    1ad <fib+0x6d>
 28b:	8b 75 cc             	mov    -0x34(%ebp),%esi
 28e:	01 75 d0             	add    %esi,-0x30(%ebp)
 291:	83 6d b4 02          	subl   $0x2,-0x4c(%ebp)
 295:	0f 85 f9 fe ff ff    	jne    194 <fib+0x54>
 29b:	8b 75 d0             	mov    -0x30(%ebp),%esi
 29e:	01 75 d4             	add    %esi,-0x2c(%ebp)
 2a1:	83 6d b8 02          	subl   $0x2,-0x48(%ebp)
 2a5:	74 10                	je     2b7 <fib+0x177>
   } else if (n == 1) {
 2a7:	8b 45 b8             	mov    -0x48(%ebp),%eax
 2aa:	83 f8 01             	cmp    $0x1,%eax
 2ad:	0f 85 d4 fe ff ff    	jne    187 <fib+0x47>
 2b3:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
 2b7:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 2ba:	01 45 08             	add    %eax,0x8(%ebp)
   if (n == 0) {
 2bd:	83 6d d8 02          	subl   $0x2,-0x28(%ebp)
 2c1:	74 0e                	je     2d1 <fib+0x191>
   } else if (n == 1) {
 2c3:	83 7d d8 01          	cmpl   $0x1,-0x28(%ebp)
 2c7:	0f 85 9e fe ff ff    	jne    16b <fib+0x2b>
 2cd:	83 45 08 01          	addl   $0x1,0x8(%ebp)
}
 2d1:	8b 45 08             	mov    0x8(%ebp),%eax
 2d4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2d7:	5b                   	pop    %ebx
 2d8:	5e                   	pop    %esi
 2d9:	5f                   	pop    %edi
 2da:	5d                   	pop    %ebp
 2db:	c3                   	ret    
 2dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e0:	89 f9                	mov    %edi,%ecx
 2e2:	83 c6 01             	add    $0x1,%esi
 2e5:	8b 7d c0             	mov    -0x40(%ebp),%edi
 2e8:	e9 5b ff ff ff       	jmp    248 <fib+0x108>
 2ed:	8d 76 00             	lea    0x0(%esi),%esi
 2f0:	89 d7                	mov    %edx,%edi
 2f2:	83 c7 01             	add    $0x1,%edi
 2f5:	e9 57 ff ff ff       	jmp    251 <fib+0x111>
 2fa:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
 2fe:	e9 68 ff ff ff       	jmp    26b <fib+0x12b>
 303:	8b 5d c4             	mov    -0x3c(%ebp),%ebx
 306:	83 c1 01             	add    $0x1,%ecx
 309:	e9 52 ff ff ff       	jmp    260 <fib+0x120>
 30e:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
 312:	e9 64 ff ff ff       	jmp    27b <fib+0x13b>
 317:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
 31b:	8b 75 cc             	mov    -0x34(%ebp),%esi
 31e:	01 75 d0             	add    %esi,-0x30(%ebp)
   if (n == 0) {
 321:	83 6d b4 02          	subl   $0x2,-0x4c(%ebp)
 325:	0f 85 69 fe ff ff    	jne    194 <fib+0x54>
 32b:	e9 6b ff ff ff       	jmp    29b <fib+0x15b>
 330:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
 334:	8b 75 d0             	mov    -0x30(%ebp),%esi
 337:	01 75 d4             	add    %esi,-0x2c(%ebp)
 33a:	83 6d b8 02          	subl   $0x2,-0x48(%ebp)
 33e:	0f 85 63 ff ff ff    	jne    2a7 <fib+0x167>
 344:	e9 6e ff ff ff       	jmp    2b7 <fib+0x177>
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000350 <worker>:
}

void
worker(void *arg1, void *arg2) {
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 356:	8b 45 0c             	mov    0xc(%ebp),%eax
 359:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 11);
 35b:	8b 45 08             	mov    0x8(%ebp),%eax
 35e:	83 38 0b             	cmpl   $0xb,(%eax)
 361:	75 75                	jne    3d8 <worker+0x88>
   assert(tmp2 == 22);
 363:	83 fa 16             	cmp    $0x16,%edx
 366:	75 2a                	jne    392 <worker+0x42>
   assert(global == 1);
 368:	83 3d 38 12 00 00 01 	cmpl   $0x1,0x1238
 36f:	0f 84 80 00 00 00    	je     3f5 <worker+0xa5>
 375:	6a 40                	push   $0x40
 377:	68 48 0d 00 00       	push   $0xd48
 37c:	68 52 0d 00 00       	push   $0xd52
 381:	6a 01                	push   $0x1
 383:	e8 98 06 00 00       	call   a20 <printf>
 388:	83 c4 0c             	add    $0xc,%esp
 38b:	68 91 0d 00 00       	push   $0xd91
 390:	eb 1b                	jmp    3ad <worker+0x5d>
   assert(tmp2 == 22);
 392:	6a 3f                	push   $0x3f
 394:	68 48 0d 00 00       	push   $0xd48
 399:	68 52 0d 00 00       	push   $0xd52
 39e:	6a 01                	push   $0x1
 3a0:	e8 7b 06 00 00       	call   a20 <printf>
 3a5:	83 c4 0c             	add    $0xc,%esp
 3a8:	68 86 0d 00 00       	push   $0xd86
 3ad:	68 65 0d 00 00       	push   $0xd65
 3b2:	6a 01                	push   $0x1
 3b4:	e8 67 06 00 00       	call   a20 <printf>
 3b9:	58                   	pop    %eax
 3ba:	5a                   	pop    %edx
 3bb:	68 79 0d 00 00       	push   $0xd79
 3c0:	6a 01                	push   $0x1
 3c2:	e8 59 06 00 00       	call   a20 <printf>
 3c7:	59                   	pop    %ecx
 3c8:	ff 35 3c 12 00 00    	push   0x123c
 3ce:	e8 11 05 00 00       	call   8e4 <kill>
 3d3:	e8 dc 04 00 00       	call   8b4 <exit>
   assert(tmp1 == 11);
 3d8:	6a 3e                	push   $0x3e
 3da:	68 48 0d 00 00       	push   $0xd48
 3df:	68 52 0d 00 00       	push   $0xd52
 3e4:	6a 01                	push   $0x1
 3e6:	e8 35 06 00 00       	call   a20 <printf>
 3eb:	83 c4 0c             	add    $0xc,%esp
 3ee:	68 5a 0d 00 00       	push   $0xd5a
 3f3:	eb b8                	jmp    3ad <worker+0x5d>
   assert(fib(2) == 1);
 3f5:	83 ec 0c             	sub    $0xc,%esp
 3f8:	6a 02                	push   $0x2
 3fa:	e8 41 fd ff ff       	call   140 <fib>
 3ff:	83 c4 10             	add    $0x10,%esp
 402:	83 e8 01             	sub    $0x1,%eax
 405:	74 1d                	je     424 <worker+0xd4>
 407:	6a 41                	push   $0x41
 409:	68 48 0d 00 00       	push   $0xd48
 40e:	68 52 0d 00 00       	push   $0xd52
 413:	6a 01                	push   $0x1
 415:	e8 06 06 00 00       	call   a20 <printf>
 41a:	83 c4 0c             	add    $0xc,%esp
 41d:	68 9d 0d 00 00       	push   $0xd9d
 422:	eb 89                	jmp    3ad <worker+0x5d>
   assert(fib(3) == 2);
 424:	83 ec 0c             	sub    $0xc,%esp
 427:	6a 03                	push   $0x3
 429:	e8 12 fd ff ff       	call   140 <fib>
 42e:	83 c4 10             	add    $0x10,%esp
 431:	83 f8 02             	cmp    $0x2,%eax
 434:	74 20                	je     456 <worker+0x106>
 436:	6a 42                	push   $0x42
 438:	68 48 0d 00 00       	push   $0xd48
 43d:	68 52 0d 00 00       	push   $0xd52
 442:	6a 01                	push   $0x1
 444:	e8 d7 05 00 00       	call   a20 <printf>
 449:	83 c4 0c             	add    $0xc,%esp
 44c:	68 a9 0d 00 00       	push   $0xda9
 451:	e9 57 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(9) == 34);
 456:	83 ec 0c             	sub    $0xc,%esp
 459:	6a 09                	push   $0x9
 45b:	e8 e0 fc ff ff       	call   140 <fib>
 460:	83 c4 10             	add    $0x10,%esp
 463:	83 f8 22             	cmp    $0x22,%eax
 466:	74 20                	je     488 <worker+0x138>
 468:	6a 43                	push   $0x43
 46a:	68 48 0d 00 00       	push   $0xd48
 46f:	68 52 0d 00 00       	push   $0xd52
 474:	6a 01                	push   $0x1
 476:	e8 a5 05 00 00       	call   a20 <printf>
 47b:	83 c4 0c             	add    $0xc,%esp
 47e:	68 b5 0d 00 00       	push   $0xdb5
 483:	e9 25 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(15) == 610);
 488:	83 ec 0c             	sub    $0xc,%esp
 48b:	6a 0f                	push   $0xf
 48d:	e8 ae fc ff ff       	call   140 <fib>
 492:	83 c4 10             	add    $0x10,%esp
 495:	3d 62 02 00 00       	cmp    $0x262,%eax
 49a:	74 20                	je     4bc <worker+0x16c>
 49c:	6a 44                	push   $0x44
 49e:	68 48 0d 00 00       	push   $0xd48
 4a3:	68 52 0d 00 00       	push   $0xd52
 4a8:	6a 01                	push   $0x1
 4aa:	e8 71 05 00 00       	call   a20 <printf>
 4af:	83 c4 0c             	add    $0xc,%esp
 4b2:	68 c2 0d 00 00       	push   $0xdc2
 4b7:	e9 f1 fe ff ff       	jmp    3ad <worker+0x5d>
   exit();
 4bc:	e8 f3 03 00 00       	call   8b4 <exit>
 4c1:	66 90                	xchg   %ax,%ax
 4c3:	66 90                	xchg   %ax,%ax
 4c5:	66 90                	xchg   %ax,%ax
 4c7:	66 90                	xchg   %ax,%ax
 4c9:	66 90                	xchg   %ax,%ax
 4cb:	66 90                	xchg   %ax,%ax
 4cd:	66 90                	xchg   %ax,%ax
 4cf:	90                   	nop

000004d0 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 4d0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 4d1:	31 c0                	xor    %eax,%eax
{
 4d3:	89 e5                	mov    %esp,%ebp
 4d5:	53                   	push   %ebx
 4d6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 4d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 4e0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 4e4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 4e7:	83 c0 01             	add    $0x1,%eax
 4ea:	84 d2                	test   %dl,%dl
 4ec:	75 f2                	jne    4e0 <strcpy+0x10>
    ;
  return os;
}
 4ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4f1:	89 c8                	mov    %ecx,%eax
 4f3:	c9                   	leave  
 4f4:	c3                   	ret    
 4f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	53                   	push   %ebx
 504:	8b 55 08             	mov    0x8(%ebp),%edx
 507:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 50a:	0f b6 02             	movzbl (%edx),%eax
 50d:	84 c0                	test   %al,%al
 50f:	75 17                	jne    528 <strcmp+0x28>
 511:	eb 3a                	jmp    54d <strcmp+0x4d>
 513:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 517:	90                   	nop
 518:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 51c:	83 c2 01             	add    $0x1,%edx
 51f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 522:	84 c0                	test   %al,%al
 524:	74 1a                	je     540 <strcmp+0x40>
    p++, q++;
 526:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 528:	0f b6 19             	movzbl (%ecx),%ebx
 52b:	38 c3                	cmp    %al,%bl
 52d:	74 e9                	je     518 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 52f:	29 d8                	sub    %ebx,%eax
}
 531:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 534:	c9                   	leave  
 535:	c3                   	ret    
 536:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 540:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 544:	31 c0                	xor    %eax,%eax
 546:	29 d8                	sub    %ebx,%eax
}
 548:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 54b:	c9                   	leave  
 54c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 54d:	0f b6 19             	movzbl (%ecx),%ebx
 550:	31 c0                	xor    %eax,%eax
 552:	eb db                	jmp    52f <strcmp+0x2f>
 554:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop

00000560 <strlen>:

uint
strlen(const char *s)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 566:	80 3a 00             	cmpb   $0x0,(%edx)
 569:	74 15                	je     580 <strlen+0x20>
 56b:	31 c0                	xor    %eax,%eax
 56d:	8d 76 00             	lea    0x0(%esi),%esi
 570:	83 c0 01             	add    $0x1,%eax
 573:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 577:	89 c1                	mov    %eax,%ecx
 579:	75 f5                	jne    570 <strlen+0x10>
    ;
  return n;
}
 57b:	89 c8                	mov    %ecx,%eax
 57d:	5d                   	pop    %ebp
 57e:	c3                   	ret    
 57f:	90                   	nop
  for(n = 0; s[n]; n++)
 580:	31 c9                	xor    %ecx,%ecx
}
 582:	5d                   	pop    %ebp
 583:	89 c8                	mov    %ecx,%eax
 585:	c3                   	ret    
 586:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58d:	8d 76 00             	lea    0x0(%esi),%esi

00000590 <memset>:

void*
memset(void *dst, int c, uint n)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	57                   	push   %edi
 594:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 597:	8b 4d 10             	mov    0x10(%ebp),%ecx
 59a:	8b 45 0c             	mov    0xc(%ebp),%eax
 59d:	89 d7                	mov    %edx,%edi
 59f:	fc                   	cld    
 5a0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 5a2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 5a5:	89 d0                	mov    %edx,%eax
 5a7:	c9                   	leave  
 5a8:	c3                   	ret    
 5a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000005b0 <strchr>:

char*
strchr(const char *s, char c)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	8b 45 08             	mov    0x8(%ebp),%eax
 5b6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 5ba:	0f b6 10             	movzbl (%eax),%edx
 5bd:	84 d2                	test   %dl,%dl
 5bf:	75 12                	jne    5d3 <strchr+0x23>
 5c1:	eb 1d                	jmp    5e0 <strchr+0x30>
 5c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5c7:	90                   	nop
 5c8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 5cc:	83 c0 01             	add    $0x1,%eax
 5cf:	84 d2                	test   %dl,%dl
 5d1:	74 0d                	je     5e0 <strchr+0x30>
    if(*s == c)
 5d3:	38 d1                	cmp    %dl,%cl
 5d5:	75 f1                	jne    5c8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 5d7:	5d                   	pop    %ebp
 5d8:	c3                   	ret    
 5d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 5e0:	31 c0                	xor    %eax,%eax
}
 5e2:	5d                   	pop    %ebp
 5e3:	c3                   	ret    
 5e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5ef:	90                   	nop

000005f0 <gets>:

char*
gets(char *buf, int max)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 5f5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 5f8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 5f9:	31 db                	xor    %ebx,%ebx
{
 5fb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 5fe:	eb 27                	jmp    627 <gets+0x37>
    cc = read(0, &c, 1);
 600:	83 ec 04             	sub    $0x4,%esp
 603:	6a 01                	push   $0x1
 605:	57                   	push   %edi
 606:	6a 00                	push   $0x0
 608:	e8 bf 02 00 00       	call   8cc <read>
    if(cc < 1)
 60d:	83 c4 10             	add    $0x10,%esp
 610:	85 c0                	test   %eax,%eax
 612:	7e 1d                	jle    631 <gets+0x41>
      break;
    buf[i++] = c;
 614:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 618:	8b 55 08             	mov    0x8(%ebp),%edx
 61b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 61f:	3c 0a                	cmp    $0xa,%al
 621:	74 1d                	je     640 <gets+0x50>
 623:	3c 0d                	cmp    $0xd,%al
 625:	74 19                	je     640 <gets+0x50>
  for(i=0; i+1 < max; ){
 627:	89 de                	mov    %ebx,%esi
 629:	83 c3 01             	add    $0x1,%ebx
 62c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 62f:	7c cf                	jl     600 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 631:	8b 45 08             	mov    0x8(%ebp),%eax
 634:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 638:	8d 65 f4             	lea    -0xc(%ebp),%esp
 63b:	5b                   	pop    %ebx
 63c:	5e                   	pop    %esi
 63d:	5f                   	pop    %edi
 63e:	5d                   	pop    %ebp
 63f:	c3                   	ret    
  buf[i] = '\0';
 640:	8b 45 08             	mov    0x8(%ebp),%eax
 643:	89 de                	mov    %ebx,%esi
 645:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 649:	8d 65 f4             	lea    -0xc(%ebp),%esp
 64c:	5b                   	pop    %ebx
 64d:	5e                   	pop    %esi
 64e:	5f                   	pop    %edi
 64f:	5d                   	pop    %ebp
 650:	c3                   	ret    
 651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop

00000660 <stat>:

int
stat(const char *n, struct stat *st)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	56                   	push   %esi
 664:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 665:	83 ec 08             	sub    $0x8,%esp
 668:	6a 00                	push   $0x0
 66a:	ff 75 08             	push   0x8(%ebp)
 66d:	e8 82 02 00 00       	call   8f4 <open>
  if(fd < 0)
 672:	83 c4 10             	add    $0x10,%esp
 675:	85 c0                	test   %eax,%eax
 677:	78 27                	js     6a0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 679:	83 ec 08             	sub    $0x8,%esp
 67c:	ff 75 0c             	push   0xc(%ebp)
 67f:	89 c3                	mov    %eax,%ebx
 681:	50                   	push   %eax
 682:	e8 85 02 00 00       	call   90c <fstat>
  close(fd);
 687:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 68a:	89 c6                	mov    %eax,%esi
  close(fd);
 68c:	e8 4b 02 00 00       	call   8dc <close>
  return r;
 691:	83 c4 10             	add    $0x10,%esp
}
 694:	8d 65 f8             	lea    -0x8(%ebp),%esp
 697:	89 f0                	mov    %esi,%eax
 699:	5b                   	pop    %ebx
 69a:	5e                   	pop    %esi
 69b:	5d                   	pop    %ebp
 69c:	c3                   	ret    
 69d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 6a0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 6a5:	eb ed                	jmp    694 <stat+0x34>
 6a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ae:	66 90                	xchg   %ax,%ax

000006b0 <atoi>:

int
atoi(const char *s)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	53                   	push   %ebx
 6b4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 6b7:	0f be 02             	movsbl (%edx),%eax
 6ba:	8d 48 d0             	lea    -0x30(%eax),%ecx
 6bd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 6c0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 6c5:	77 1e                	ja     6e5 <atoi+0x35>
 6c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ce:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 6d0:	83 c2 01             	add    $0x1,%edx
 6d3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 6d6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 6da:	0f be 02             	movsbl (%edx),%eax
 6dd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 6e0:	80 fb 09             	cmp    $0x9,%bl
 6e3:	76 eb                	jbe    6d0 <atoi+0x20>
  return n;
}
 6e5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6e8:	89 c8                	mov    %ecx,%eax
 6ea:	c9                   	leave  
 6eb:	c3                   	ret    
 6ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006f0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	57                   	push   %edi
 6f4:	8b 45 10             	mov    0x10(%ebp),%eax
 6f7:	8b 55 08             	mov    0x8(%ebp),%edx
 6fa:	56                   	push   %esi
 6fb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 6fe:	85 c0                	test   %eax,%eax
 700:	7e 13                	jle    715 <memmove+0x25>
 702:	01 d0                	add    %edx,%eax
  dst = vdst;
 704:	89 d7                	mov    %edx,%edi
 706:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 710:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 711:	39 f8                	cmp    %edi,%eax
 713:	75 fb                	jne    710 <memmove+0x20>
  return vdst;
}
 715:	5e                   	pop    %esi
 716:	89 d0                	mov    %edx,%eax
 718:	5f                   	pop    %edi
 719:	5d                   	pop    %ebp
 71a:	c3                   	ret    
 71b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 71f:	90                   	nop

00000720 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 720:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 721:	b8 01 00 00 00       	mov    $0x1,%eax
 726:	89 e5                	mov    %esp,%ebp
 728:	53                   	push   %ebx
 729:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 72c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 733:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 73a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 73f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 742:	39 c2                	cmp    %eax,%edx
 744:	74 24                	je     76a <thread_create+0x4a>
 746:	89 c3                	mov    %eax,%ebx
 748:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 750:	83 ec 04             	sub    $0x4,%esp
 753:	52                   	push   %edx
 754:	68 0c 0e 00 00       	push   $0xe0c
 759:	6a 01                	push   $0x1
 75b:	e8 c0 02 00 00       	call   a20 <printf>
  while(lock->turn != myturn){
 760:	8b 55 f4             	mov    -0xc(%ebp),%edx
 763:	83 c4 10             	add    $0x10,%esp
 766:	39 d3                	cmp    %edx,%ebx
 768:	75 e6                	jne    750 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 76a:	83 ec 0c             	sub    $0xc,%esp
 76d:	68 00 20 00 00       	push   $0x2000
 772:	e8 d9 04 00 00       	call   c50 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 777:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 77b:	83 c4 10             	add    $0x10,%esp
 77e:	89 c2                	mov    %eax,%edx
 780:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 786:	74 07                	je     78f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 788:	29 d0                	sub    %edx,%eax
 78a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 78f:	50                   	push   %eax
 790:	ff 75 10             	push   0x10(%ebp)
 793:	ff 75 0c             	push   0xc(%ebp)
 796:	ff 75 08             	push   0x8(%ebp)
 799:	e8 b6 01 00 00       	call   954 <clone>
}
 79e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 7a1:	c9                   	leave  
 7a2:	c3                   	ret    
 7a3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000007b0 <thread_join>:
int thread_join(){
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	56                   	push   %esi
 7b4:	53                   	push   %ebx
 7b5:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 7b8:	6a 04                	push   $0x4
 7ba:	e8 91 04 00 00       	call   c50 <malloc>
 7bf:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 7c2:	8d 45 ec             	lea    -0x14(%ebp),%eax
 7c5:	89 04 24             	mov    %eax,(%esp)
 7c8:	e8 8f 01 00 00       	call   95c <join>
  lock->ticket = 0;
 7cd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 7d4:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 7d6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 7dd:	b8 01 00 00 00       	mov    $0x1,%eax
 7e2:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 7e7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 7ea:	83 c4 10             	add    $0x10,%esp
 7ed:	39 c2                	cmp    %eax,%edx
 7ef:	74 21                	je     812 <thread_join+0x62>
 7f1:	89 c3                	mov    %eax,%ebx
 7f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7f7:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 7f8:	83 ec 04             	sub    $0x4,%esp
 7fb:	52                   	push   %edx
 7fc:	68 0c 0e 00 00       	push   $0xe0c
 801:	6a 01                	push   $0x1
 803:	e8 18 02 00 00       	call   a20 <printf>
  while(lock->turn != myturn){
 808:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80b:	83 c4 10             	add    $0x10,%esp
 80e:	39 d3                	cmp    %edx,%ebx
 810:	75 e6                	jne    7f8 <thread_join+0x48>
	free(stack);
 812:	83 ec 0c             	sub    $0xc,%esp
 815:	ff 75 ec             	push   -0x14(%ebp)
 818:	e8 a3 03 00 00       	call   bc0 <free>
}
 81d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 820:	89 f0                	mov    %esi,%eax
 822:	5b                   	pop    %ebx
 823:	5e                   	pop    %esi
 824:	5d                   	pop    %ebp
 825:	c3                   	ret    
 826:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 82d:	8d 76 00             	lea    0x0(%esi),%esi

00000830 <lock_init>:
void lock_init(lock_t *lock) {
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 836:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 83c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 843:	5d                   	pop    %ebp
 844:	c3                   	ret    
 845:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000850 <lock_acquire>:
void lock_acquire(lock_t *lock){
 850:	55                   	push   %ebp
 851:	b8 01 00 00 00       	mov    $0x1,%eax
 856:	89 e5                	mov    %esp,%ebp
 858:	56                   	push   %esi
 859:	8b 75 08             	mov    0x8(%ebp),%esi
 85c:	53                   	push   %ebx
 85d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 861:	8b 56 04             	mov    0x4(%esi),%edx
 864:	39 d0                	cmp    %edx,%eax
 866:	74 22                	je     88a <lock_acquire+0x3a>
 868:	89 c3                	mov    %eax,%ebx
 86a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 870:	83 ec 04             	sub    $0x4,%esp
 873:	52                   	push   %edx
 874:	68 0c 0e 00 00       	push   $0xe0c
 879:	6a 01                	push   $0x1
 87b:	e8 a0 01 00 00       	call   a20 <printf>
  while(lock->turn != myturn){
 880:	8b 56 04             	mov    0x4(%esi),%edx
 883:	83 c4 10             	add    $0x10,%esp
 886:	39 da                	cmp    %ebx,%edx
 888:	75 e6                	jne    870 <lock_acquire+0x20>
}
 88a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 88d:	5b                   	pop    %ebx
 88e:	5e                   	pop    %esi
 88f:	5d                   	pop    %ebp
 890:	c3                   	ret    
 891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 898:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89f:	90                   	nop

000008a0 <lock_release>:
void lock_release(lock_t *lock){
 8a0:	55                   	push   %ebp
 8a1:	89 e5                	mov    %esp,%ebp
 8a3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 8a6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 8aa:	5d                   	pop    %ebp
 8ab:	c3                   	ret    

000008ac <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 8ac:	b8 01 00 00 00       	mov    $0x1,%eax
 8b1:	cd 40                	int    $0x40
 8b3:	c3                   	ret    

000008b4 <exit>:
SYSCALL(exit)
 8b4:	b8 02 00 00 00       	mov    $0x2,%eax
 8b9:	cd 40                	int    $0x40
 8bb:	c3                   	ret    

000008bc <wait>:
SYSCALL(wait)
 8bc:	b8 03 00 00 00       	mov    $0x3,%eax
 8c1:	cd 40                	int    $0x40
 8c3:	c3                   	ret    

000008c4 <pipe>:
SYSCALL(pipe)
 8c4:	b8 04 00 00 00       	mov    $0x4,%eax
 8c9:	cd 40                	int    $0x40
 8cb:	c3                   	ret    

000008cc <read>:
SYSCALL(read)
 8cc:	b8 05 00 00 00       	mov    $0x5,%eax
 8d1:	cd 40                	int    $0x40
 8d3:	c3                   	ret    

000008d4 <write>:
SYSCALL(write)
 8d4:	b8 10 00 00 00       	mov    $0x10,%eax
 8d9:	cd 40                	int    $0x40
 8db:	c3                   	ret    

000008dc <close>:
SYSCALL(close)
 8dc:	b8 15 00 00 00       	mov    $0x15,%eax
 8e1:	cd 40                	int    $0x40
 8e3:	c3                   	ret    

000008e4 <kill>:
SYSCALL(kill)
 8e4:	b8 06 00 00 00       	mov    $0x6,%eax
 8e9:	cd 40                	int    $0x40
 8eb:	c3                   	ret    

000008ec <exec>:
SYSCALL(exec)
 8ec:	b8 07 00 00 00       	mov    $0x7,%eax
 8f1:	cd 40                	int    $0x40
 8f3:	c3                   	ret    

000008f4 <open>:
SYSCALL(open)
 8f4:	b8 0f 00 00 00       	mov    $0xf,%eax
 8f9:	cd 40                	int    $0x40
 8fb:	c3                   	ret    

000008fc <mknod>:
SYSCALL(mknod)
 8fc:	b8 11 00 00 00       	mov    $0x11,%eax
 901:	cd 40                	int    $0x40
 903:	c3                   	ret    

00000904 <unlink>:
SYSCALL(unlink)
 904:	b8 12 00 00 00       	mov    $0x12,%eax
 909:	cd 40                	int    $0x40
 90b:	c3                   	ret    

0000090c <fstat>:
SYSCALL(fstat)
 90c:	b8 08 00 00 00       	mov    $0x8,%eax
 911:	cd 40                	int    $0x40
 913:	c3                   	ret    

00000914 <link>:
SYSCALL(link)
 914:	b8 13 00 00 00       	mov    $0x13,%eax
 919:	cd 40                	int    $0x40
 91b:	c3                   	ret    

0000091c <mkdir>:
SYSCALL(mkdir)
 91c:	b8 14 00 00 00       	mov    $0x14,%eax
 921:	cd 40                	int    $0x40
 923:	c3                   	ret    

00000924 <chdir>:
SYSCALL(chdir)
 924:	b8 09 00 00 00       	mov    $0x9,%eax
 929:	cd 40                	int    $0x40
 92b:	c3                   	ret    

0000092c <dup>:
SYSCALL(dup)
 92c:	b8 0a 00 00 00       	mov    $0xa,%eax
 931:	cd 40                	int    $0x40
 933:	c3                   	ret    

00000934 <getpid>:
SYSCALL(getpid)
 934:	b8 0b 00 00 00       	mov    $0xb,%eax
 939:	cd 40                	int    $0x40
 93b:	c3                   	ret    

0000093c <sbrk>:
SYSCALL(sbrk)
 93c:	b8 0c 00 00 00       	mov    $0xc,%eax
 941:	cd 40                	int    $0x40
 943:	c3                   	ret    

00000944 <sleep>:
SYSCALL(sleep)
 944:	b8 0d 00 00 00       	mov    $0xd,%eax
 949:	cd 40                	int    $0x40
 94b:	c3                   	ret    

0000094c <uptime>:
SYSCALL(uptime)
 94c:	b8 0e 00 00 00       	mov    $0xe,%eax
 951:	cd 40                	int    $0x40
 953:	c3                   	ret    

00000954 <clone>:
SYSCALL(clone)
 954:	b8 16 00 00 00       	mov    $0x16,%eax
 959:	cd 40                	int    $0x40
 95b:	c3                   	ret    

0000095c <join>:
SYSCALL(join)
 95c:	b8 17 00 00 00       	mov    $0x17,%eax
 961:	cd 40                	int    $0x40
 963:	c3                   	ret    
 964:	66 90                	xchg   %ax,%ax
 966:	66 90                	xchg   %ax,%ax
 968:	66 90                	xchg   %ax,%ax
 96a:	66 90                	xchg   %ax,%ax
 96c:	66 90                	xchg   %ax,%ax
 96e:	66 90                	xchg   %ax,%ax

00000970 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 970:	55                   	push   %ebp
 971:	89 e5                	mov    %esp,%ebp
 973:	57                   	push   %edi
 974:	56                   	push   %esi
 975:	53                   	push   %ebx
 976:	83 ec 3c             	sub    $0x3c,%esp
 979:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 97c:	89 d1                	mov    %edx,%ecx
{
 97e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 981:	85 d2                	test   %edx,%edx
 983:	0f 89 7f 00 00 00    	jns    a08 <printint+0x98>
 989:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 98d:	74 79                	je     a08 <printint+0x98>
    neg = 1;
 98f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 996:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 998:	31 db                	xor    %ebx,%ebx
 99a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 99d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 9a0:	89 c8                	mov    %ecx,%eax
 9a2:	31 d2                	xor    %edx,%edx
 9a4:	89 cf                	mov    %ecx,%edi
 9a6:	f7 75 c4             	divl   -0x3c(%ebp)
 9a9:	0f b6 92 80 0e 00 00 	movzbl 0xe80(%edx),%edx
 9b0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 9b3:	89 d8                	mov    %ebx,%eax
 9b5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 9b8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 9bb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 9be:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 9c1:	76 dd                	jbe    9a0 <printint+0x30>
  if(neg)
 9c3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 9c6:	85 c9                	test   %ecx,%ecx
 9c8:	74 0c                	je     9d6 <printint+0x66>
    buf[i++] = '-';
 9ca:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 9cf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 9d1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 9d6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 9d9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 9dd:	eb 07                	jmp    9e6 <printint+0x76>
 9df:	90                   	nop
    putc(fd, buf[i]);
 9e0:	0f b6 13             	movzbl (%ebx),%edx
 9e3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 9e6:	83 ec 04             	sub    $0x4,%esp
 9e9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 9ec:	6a 01                	push   $0x1
 9ee:	56                   	push   %esi
 9ef:	57                   	push   %edi
 9f0:	e8 df fe ff ff       	call   8d4 <write>
  while(--i >= 0)
 9f5:	83 c4 10             	add    $0x10,%esp
 9f8:	39 de                	cmp    %ebx,%esi
 9fa:	75 e4                	jne    9e0 <printint+0x70>
}
 9fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9ff:	5b                   	pop    %ebx
 a00:	5e                   	pop    %esi
 a01:	5f                   	pop    %edi
 a02:	5d                   	pop    %ebp
 a03:	c3                   	ret    
 a04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 a08:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 a0f:	eb 87                	jmp    998 <printint+0x28>
 a11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a18:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a1f:	90                   	nop

00000a20 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 a20:	55                   	push   %ebp
 a21:	89 e5                	mov    %esp,%ebp
 a23:	57                   	push   %edi
 a24:	56                   	push   %esi
 a25:	53                   	push   %ebx
 a26:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 a29:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 a2c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 a2f:	0f b6 13             	movzbl (%ebx),%edx
 a32:	84 d2                	test   %dl,%dl
 a34:	74 6a                	je     aa0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 a36:	8d 45 10             	lea    0x10(%ebp),%eax
 a39:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 a3c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 a3f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 a41:	89 45 d0             	mov    %eax,-0x30(%ebp)
 a44:	eb 36                	jmp    a7c <printf+0x5c>
 a46:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a4d:	8d 76 00             	lea    0x0(%esi),%esi
 a50:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 a53:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 a58:	83 f8 25             	cmp    $0x25,%eax
 a5b:	74 15                	je     a72 <printf+0x52>
  write(fd, &c, 1);
 a5d:	83 ec 04             	sub    $0x4,%esp
 a60:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a63:	6a 01                	push   $0x1
 a65:	57                   	push   %edi
 a66:	56                   	push   %esi
 a67:	e8 68 fe ff ff       	call   8d4 <write>
 a6c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 a6f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 a72:	0f b6 13             	movzbl (%ebx),%edx
 a75:	83 c3 01             	add    $0x1,%ebx
 a78:	84 d2                	test   %dl,%dl
 a7a:	74 24                	je     aa0 <printf+0x80>
    c = fmt[i] & 0xff;
 a7c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 a7f:	85 c9                	test   %ecx,%ecx
 a81:	74 cd                	je     a50 <printf+0x30>
      }
    } else if(state == '%'){
 a83:	83 f9 25             	cmp    $0x25,%ecx
 a86:	75 ea                	jne    a72 <printf+0x52>
      if(c == 'd'){
 a88:	83 f8 25             	cmp    $0x25,%eax
 a8b:	0f 84 07 01 00 00    	je     b98 <printf+0x178>
 a91:	83 e8 63             	sub    $0x63,%eax
 a94:	83 f8 15             	cmp    $0x15,%eax
 a97:	77 17                	ja     ab0 <printf+0x90>
 a99:	ff 24 85 28 0e 00 00 	jmp    *0xe28(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 aa0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 aa3:	5b                   	pop    %ebx
 aa4:	5e                   	pop    %esi
 aa5:	5f                   	pop    %edi
 aa6:	5d                   	pop    %ebp
 aa7:	c3                   	ret    
 aa8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 aaf:	90                   	nop
  write(fd, &c, 1);
 ab0:	83 ec 04             	sub    $0x4,%esp
 ab3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 ab6:	6a 01                	push   $0x1
 ab8:	57                   	push   %edi
 ab9:	56                   	push   %esi
 aba:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 abe:	e8 11 fe ff ff       	call   8d4 <write>
        putc(fd, c);
 ac3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 ac7:	83 c4 0c             	add    $0xc,%esp
 aca:	88 55 e7             	mov    %dl,-0x19(%ebp)
 acd:	6a 01                	push   $0x1
 acf:	57                   	push   %edi
 ad0:	56                   	push   %esi
 ad1:	e8 fe fd ff ff       	call   8d4 <write>
        putc(fd, c);
 ad6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 ad9:	31 c9                	xor    %ecx,%ecx
 adb:	eb 95                	jmp    a72 <printf+0x52>
 add:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 ae0:	83 ec 0c             	sub    $0xc,%esp
 ae3:	b9 10 00 00 00       	mov    $0x10,%ecx
 ae8:	6a 00                	push   $0x0
 aea:	8b 45 d0             	mov    -0x30(%ebp),%eax
 aed:	8b 10                	mov    (%eax),%edx
 aef:	89 f0                	mov    %esi,%eax
 af1:	e8 7a fe ff ff       	call   970 <printint>
        ap++;
 af6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 afa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 afd:	31 c9                	xor    %ecx,%ecx
 aff:	e9 6e ff ff ff       	jmp    a72 <printf+0x52>
 b04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 b08:	8b 45 d0             	mov    -0x30(%ebp),%eax
 b0b:	8b 10                	mov    (%eax),%edx
        ap++;
 b0d:	83 c0 04             	add    $0x4,%eax
 b10:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 b13:	85 d2                	test   %edx,%edx
 b15:	0f 84 8d 00 00 00    	je     ba8 <printf+0x188>
        while(*s != 0){
 b1b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 b1e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 b20:	84 c0                	test   %al,%al
 b22:	0f 84 4a ff ff ff    	je     a72 <printf+0x52>
 b28:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 b2b:	89 d3                	mov    %edx,%ebx
 b2d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 b30:	83 ec 04             	sub    $0x4,%esp
          s++;
 b33:	83 c3 01             	add    $0x1,%ebx
 b36:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b39:	6a 01                	push   $0x1
 b3b:	57                   	push   %edi
 b3c:	56                   	push   %esi
 b3d:	e8 92 fd ff ff       	call   8d4 <write>
        while(*s != 0){
 b42:	0f b6 03             	movzbl (%ebx),%eax
 b45:	83 c4 10             	add    $0x10,%esp
 b48:	84 c0                	test   %al,%al
 b4a:	75 e4                	jne    b30 <printf+0x110>
      state = 0;
 b4c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 b4f:	31 c9                	xor    %ecx,%ecx
 b51:	e9 1c ff ff ff       	jmp    a72 <printf+0x52>
 b56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b5d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 b60:	83 ec 0c             	sub    $0xc,%esp
 b63:	b9 0a 00 00 00       	mov    $0xa,%ecx
 b68:	6a 01                	push   $0x1
 b6a:	e9 7b ff ff ff       	jmp    aea <printf+0xca>
 b6f:	90                   	nop
        putc(fd, *ap);
 b70:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 b73:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 b76:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 b78:	6a 01                	push   $0x1
 b7a:	57                   	push   %edi
 b7b:	56                   	push   %esi
        putc(fd, *ap);
 b7c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b7f:	e8 50 fd ff ff       	call   8d4 <write>
        ap++;
 b84:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 b88:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b8b:	31 c9                	xor    %ecx,%ecx
 b8d:	e9 e0 fe ff ff       	jmp    a72 <printf+0x52>
 b92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 b98:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 b9b:	83 ec 04             	sub    $0x4,%esp
 b9e:	e9 2a ff ff ff       	jmp    acd <printf+0xad>
 ba3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 ba7:	90                   	nop
          s = "(null)";
 ba8:	ba 20 0e 00 00       	mov    $0xe20,%edx
        while(*s != 0){
 bad:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 bb0:	b8 28 00 00 00       	mov    $0x28,%eax
 bb5:	89 d3                	mov    %edx,%ebx
 bb7:	e9 74 ff ff ff       	jmp    b30 <printf+0x110>
 bbc:	66 90                	xchg   %ax,%ax
 bbe:	66 90                	xchg   %ax,%ax

00000bc0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 bc0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 bc1:	a1 40 12 00 00       	mov    0x1240,%eax
{
 bc6:	89 e5                	mov    %esp,%ebp
 bc8:	57                   	push   %edi
 bc9:	56                   	push   %esi
 bca:	53                   	push   %ebx
 bcb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 bce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 bd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 bd8:	89 c2                	mov    %eax,%edx
 bda:	8b 00                	mov    (%eax),%eax
 bdc:	39 ca                	cmp    %ecx,%edx
 bde:	73 30                	jae    c10 <free+0x50>
 be0:	39 c1                	cmp    %eax,%ecx
 be2:	72 04                	jb     be8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 be4:	39 c2                	cmp    %eax,%edx
 be6:	72 f0                	jb     bd8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 be8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 beb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 bee:	39 f8                	cmp    %edi,%eax
 bf0:	74 30                	je     c22 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 bf2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 bf5:	8b 42 04             	mov    0x4(%edx),%eax
 bf8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 bfb:	39 f1                	cmp    %esi,%ecx
 bfd:	74 3a                	je     c39 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 bff:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 c01:	5b                   	pop    %ebx
  freep = p;
 c02:	89 15 40 12 00 00    	mov    %edx,0x1240
}
 c08:	5e                   	pop    %esi
 c09:	5f                   	pop    %edi
 c0a:	5d                   	pop    %ebp
 c0b:	c3                   	ret    
 c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c10:	39 c2                	cmp    %eax,%edx
 c12:	72 c4                	jb     bd8 <free+0x18>
 c14:	39 c1                	cmp    %eax,%ecx
 c16:	73 c0                	jae    bd8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 c18:	8b 73 fc             	mov    -0x4(%ebx),%esi
 c1b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 c1e:	39 f8                	cmp    %edi,%eax
 c20:	75 d0                	jne    bf2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 c22:	03 70 04             	add    0x4(%eax),%esi
 c25:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 c28:	8b 02                	mov    (%edx),%eax
 c2a:	8b 00                	mov    (%eax),%eax
 c2c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 c2f:	8b 42 04             	mov    0x4(%edx),%eax
 c32:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 c35:	39 f1                	cmp    %esi,%ecx
 c37:	75 c6                	jne    bff <free+0x3f>
    p->s.size += bp->s.size;
 c39:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 c3c:	89 15 40 12 00 00    	mov    %edx,0x1240
    p->s.size += bp->s.size;
 c42:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 c45:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 c48:	89 0a                	mov    %ecx,(%edx)
}
 c4a:	5b                   	pop    %ebx
 c4b:	5e                   	pop    %esi
 c4c:	5f                   	pop    %edi
 c4d:	5d                   	pop    %ebp
 c4e:	c3                   	ret    
 c4f:	90                   	nop

00000c50 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 c50:	55                   	push   %ebp
 c51:	89 e5                	mov    %esp,%ebp
 c53:	57                   	push   %edi
 c54:	56                   	push   %esi
 c55:	53                   	push   %ebx
 c56:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c59:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 c5c:	8b 3d 40 12 00 00    	mov    0x1240,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c62:	8d 70 07             	lea    0x7(%eax),%esi
 c65:	c1 ee 03             	shr    $0x3,%esi
 c68:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 c6b:	85 ff                	test   %edi,%edi
 c6d:	0f 84 9d 00 00 00    	je     d10 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c73:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 c75:	8b 4a 04             	mov    0x4(%edx),%ecx
 c78:	39 f1                	cmp    %esi,%ecx
 c7a:	73 6a                	jae    ce6 <malloc+0x96>
 c7c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 c81:	39 de                	cmp    %ebx,%esi
 c83:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 c86:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 c8d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 c90:	eb 17                	jmp    ca9 <malloc+0x59>
 c92:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c98:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 c9a:	8b 48 04             	mov    0x4(%eax),%ecx
 c9d:	39 f1                	cmp    %esi,%ecx
 c9f:	73 4f                	jae    cf0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ca1:	8b 3d 40 12 00 00    	mov    0x1240,%edi
 ca7:	89 c2                	mov    %eax,%edx
 ca9:	39 d7                	cmp    %edx,%edi
 cab:	75 eb                	jne    c98 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 cad:	83 ec 0c             	sub    $0xc,%esp
 cb0:	ff 75 e4             	push   -0x1c(%ebp)
 cb3:	e8 84 fc ff ff       	call   93c <sbrk>
  if(p == (char*)-1)
 cb8:	83 c4 10             	add    $0x10,%esp
 cbb:	83 f8 ff             	cmp    $0xffffffff,%eax
 cbe:	74 1c                	je     cdc <malloc+0x8c>
  hp->s.size = nu;
 cc0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 cc3:	83 ec 0c             	sub    $0xc,%esp
 cc6:	83 c0 08             	add    $0x8,%eax
 cc9:	50                   	push   %eax
 cca:	e8 f1 fe ff ff       	call   bc0 <free>
  return freep;
 ccf:	8b 15 40 12 00 00    	mov    0x1240,%edx
      if((p = morecore(nunits)) == 0)
 cd5:	83 c4 10             	add    $0x10,%esp
 cd8:	85 d2                	test   %edx,%edx
 cda:	75 bc                	jne    c98 <malloc+0x48>
        return 0;
  }
}
 cdc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 cdf:	31 c0                	xor    %eax,%eax
}
 ce1:	5b                   	pop    %ebx
 ce2:	5e                   	pop    %esi
 ce3:	5f                   	pop    %edi
 ce4:	5d                   	pop    %ebp
 ce5:	c3                   	ret    
    if(p->s.size >= nunits){
 ce6:	89 d0                	mov    %edx,%eax
 ce8:	89 fa                	mov    %edi,%edx
 cea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 cf0:	39 ce                	cmp    %ecx,%esi
 cf2:	74 4c                	je     d40 <malloc+0xf0>
        p->s.size -= nunits;
 cf4:	29 f1                	sub    %esi,%ecx
 cf6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 cf9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 cfc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 cff:	89 15 40 12 00 00    	mov    %edx,0x1240
}
 d05:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 d08:	83 c0 08             	add    $0x8,%eax
}
 d0b:	5b                   	pop    %ebx
 d0c:	5e                   	pop    %esi
 d0d:	5f                   	pop    %edi
 d0e:	5d                   	pop    %ebp
 d0f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 d10:	c7 05 40 12 00 00 44 	movl   $0x1244,0x1240
 d17:	12 00 00 
    base.s.size = 0;
 d1a:	bf 44 12 00 00       	mov    $0x1244,%edi
    base.s.ptr = freep = prevp = &base;
 d1f:	c7 05 44 12 00 00 44 	movl   $0x1244,0x1244
 d26:	12 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 d29:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 d2b:	c7 05 48 12 00 00 00 	movl   $0x0,0x1248
 d32:	00 00 00 
    if(p->s.size >= nunits){
 d35:	e9 42 ff ff ff       	jmp    c7c <malloc+0x2c>
 d3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 d40:	8b 08                	mov    (%eax),%ecx
 d42:	89 0a                	mov    %ecx,(%edx)
 d44:	eb b9                	jmp    cff <malloc+0xaf>
