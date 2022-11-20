
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
  14:	e8 cd 08 00 00       	call   8e6 <getpid>

   assert(fib(28) == 317811);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	6a 1c                	push   $0x1c
   ppid = getpid();
  1e:	a3 dc 11 00 00       	mov    %eax,0x11dc
   assert(fib(28) == 317811);
  23:	e8 18 01 00 00       	call   140 <fib>
  28:	83 c4 10             	add    $0x10,%esp
  2b:	3d 73 d9 04 00       	cmp    $0x4d973,%eax
  30:	0f 85 92 00 00 00    	jne    c8 <main+0xc8>

   int arg1 = 11, arg2 = 22;

   for (int i = 0; i < num_threads; i++) {
  36:	83 3d d4 11 00 00 00 	cmpl   $0x0,0x11d4
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
  60:	a1 d4 11 00 00       	mov    0x11d4,%eax
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
  84:	68 f8 0c 00 00       	push   $0xcf8
  89:	68 02 0d 00 00       	push   $0xd02
  8e:	6a 01                	push   $0x1
  90:	e8 3b 09 00 00       	call   9d0 <printf>
  95:	83 c4 0c             	add    $0xc,%esp
  98:	68 a0 0d 00 00       	push   $0xda0
  9d:	68 15 0d 00 00       	push   $0xd15
  a2:	6a 01                	push   $0x1
  a4:	e8 27 09 00 00       	call   9d0 <printf>
  a9:	58                   	pop    %eax
  aa:	5a                   	pop    %edx
  ab:	68 29 0d 00 00       	push   $0xd29
  b0:	6a 01                	push   $0x1
  b2:	e8 19 09 00 00       	call   9d0 <printf>
  b7:	59                   	pop    %ecx
  b8:	ff 35 dc 11 00 00    	push   0x11dc
  be:	e8 d3 07 00 00       	call   896 <kill>
  c3:	e8 9e 07 00 00       	call   866 <exit>
   assert(fib(28) == 317811);
  c8:	6a 28                	push   $0x28
  ca:	68 f8 0c 00 00       	push   $0xcf8
  cf:	68 02 0d 00 00       	push   $0xd02
  d4:	6a 01                	push   $0x1
  d6:	e8 f5 08 00 00       	call   9d0 <printf>
  db:	83 c4 0c             	add    $0xc,%esp
  de:	68 81 0d 00 00       	push   $0xd81
  e3:	eb b8                	jmp    9d <main+0x9d>
   }

   for (int i = 0; i < num_threads; i++) {
  e5:	85 c0                	test   %eax,%eax
  e7:	7e 3b                	jle    124 <main+0x124>
  e9:	31 db                	xor    %ebx,%ebx
  eb:	eb 0e                	jmp    fb <main+0xfb>
  ed:	8d 76 00             	lea    0x0(%esi),%esi
  f0:	83 c3 01             	add    $0x1,%ebx
  f3:	39 1d d4 11 00 00    	cmp    %ebx,0x11d4
  f9:	7e 29                	jle    124 <main+0x124>
      int join_pid = thread_join();
  fb:	e8 90 06 00 00       	call   790 <thread_join>
      assert(join_pid > 0);
 100:	85 c0                	test   %eax,%eax
 102:	7f ec                	jg     f0 <main+0xf0>
 104:	6a 33                	push   $0x33
 106:	68 f8 0c 00 00       	push   $0xcf8
 10b:	68 02 0d 00 00       	push   $0xd02
 110:	6a 01                	push   $0x1
 112:	e8 b9 08 00 00       	call   9d0 <printf>
 117:	83 c4 0c             	add    $0xc,%esp
 11a:	68 af 0d 00 00       	push   $0xdaf
 11f:	e9 79 ff ff ff       	jmp    9d <main+0x9d>
   }

   printf(1, "TEST PASSED\n");
 124:	53                   	push   %ebx
 125:	53                   	push   %ebx
 126:	68 93 0d 00 00       	push   $0xd93
 12b:	6a 01                	push   $0x1
 12d:	e8 9e 08 00 00       	call   9d0 <printf>
   exit();
 132:	e8 2f 07 00 00       	call   866 <exit>
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
 368:	83 3d d8 11 00 00 01 	cmpl   $0x1,0x11d8
 36f:	0f 84 80 00 00 00    	je     3f5 <worker+0xa5>
 375:	6a 40                	push   $0x40
 377:	68 f8 0c 00 00       	push   $0xcf8
 37c:	68 02 0d 00 00       	push   $0xd02
 381:	6a 01                	push   $0x1
 383:	e8 48 06 00 00       	call   9d0 <printf>
 388:	83 c4 0c             	add    $0xc,%esp
 38b:	68 41 0d 00 00       	push   $0xd41
 390:	eb 1b                	jmp    3ad <worker+0x5d>
   assert(tmp2 == 22);
 392:	6a 3f                	push   $0x3f
 394:	68 f8 0c 00 00       	push   $0xcf8
 399:	68 02 0d 00 00       	push   $0xd02
 39e:	6a 01                	push   $0x1
 3a0:	e8 2b 06 00 00       	call   9d0 <printf>
 3a5:	83 c4 0c             	add    $0xc,%esp
 3a8:	68 36 0d 00 00       	push   $0xd36
 3ad:	68 15 0d 00 00       	push   $0xd15
 3b2:	6a 01                	push   $0x1
 3b4:	e8 17 06 00 00       	call   9d0 <printf>
 3b9:	58                   	pop    %eax
 3ba:	5a                   	pop    %edx
 3bb:	68 29 0d 00 00       	push   $0xd29
 3c0:	6a 01                	push   $0x1
 3c2:	e8 09 06 00 00       	call   9d0 <printf>
 3c7:	59                   	pop    %ecx
 3c8:	ff 35 dc 11 00 00    	push   0x11dc
 3ce:	e8 c3 04 00 00       	call   896 <kill>
 3d3:	e8 8e 04 00 00       	call   866 <exit>
   assert(tmp1 == 11);
 3d8:	6a 3e                	push   $0x3e
 3da:	68 f8 0c 00 00       	push   $0xcf8
 3df:	68 02 0d 00 00       	push   $0xd02
 3e4:	6a 01                	push   $0x1
 3e6:	e8 e5 05 00 00       	call   9d0 <printf>
 3eb:	83 c4 0c             	add    $0xc,%esp
 3ee:	68 0a 0d 00 00       	push   $0xd0a
 3f3:	eb b8                	jmp    3ad <worker+0x5d>
   assert(fib(2) == 1);
 3f5:	83 ec 0c             	sub    $0xc,%esp
 3f8:	6a 02                	push   $0x2
 3fa:	e8 41 fd ff ff       	call   140 <fib>
 3ff:	83 c4 10             	add    $0x10,%esp
 402:	83 e8 01             	sub    $0x1,%eax
 405:	74 1d                	je     424 <worker+0xd4>
 407:	6a 41                	push   $0x41
 409:	68 f8 0c 00 00       	push   $0xcf8
 40e:	68 02 0d 00 00       	push   $0xd02
 413:	6a 01                	push   $0x1
 415:	e8 b6 05 00 00       	call   9d0 <printf>
 41a:	83 c4 0c             	add    $0xc,%esp
 41d:	68 4d 0d 00 00       	push   $0xd4d
 422:	eb 89                	jmp    3ad <worker+0x5d>
   assert(fib(3) == 2);
 424:	83 ec 0c             	sub    $0xc,%esp
 427:	6a 03                	push   $0x3
 429:	e8 12 fd ff ff       	call   140 <fib>
 42e:	83 c4 10             	add    $0x10,%esp
 431:	83 f8 02             	cmp    $0x2,%eax
 434:	74 20                	je     456 <worker+0x106>
 436:	6a 42                	push   $0x42
 438:	68 f8 0c 00 00       	push   $0xcf8
 43d:	68 02 0d 00 00       	push   $0xd02
 442:	6a 01                	push   $0x1
 444:	e8 87 05 00 00       	call   9d0 <printf>
 449:	83 c4 0c             	add    $0xc,%esp
 44c:	68 59 0d 00 00       	push   $0xd59
 451:	e9 57 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(9) == 34);
 456:	83 ec 0c             	sub    $0xc,%esp
 459:	6a 09                	push   $0x9
 45b:	e8 e0 fc ff ff       	call   140 <fib>
 460:	83 c4 10             	add    $0x10,%esp
 463:	83 f8 22             	cmp    $0x22,%eax
 466:	74 20                	je     488 <worker+0x138>
 468:	6a 43                	push   $0x43
 46a:	68 f8 0c 00 00       	push   $0xcf8
 46f:	68 02 0d 00 00       	push   $0xd02
 474:	6a 01                	push   $0x1
 476:	e8 55 05 00 00       	call   9d0 <printf>
 47b:	83 c4 0c             	add    $0xc,%esp
 47e:	68 65 0d 00 00       	push   $0xd65
 483:	e9 25 ff ff ff       	jmp    3ad <worker+0x5d>
   assert(fib(15) == 610);
 488:	83 ec 0c             	sub    $0xc,%esp
 48b:	6a 0f                	push   $0xf
 48d:	e8 ae fc ff ff       	call   140 <fib>
 492:	83 c4 10             	add    $0x10,%esp
 495:	3d 62 02 00 00       	cmp    $0x262,%eax
 49a:	74 20                	je     4bc <worker+0x16c>
 49c:	6a 44                	push   $0x44
 49e:	68 f8 0c 00 00       	push   $0xcf8
 4a3:	68 02 0d 00 00       	push   $0xd02
 4a8:	6a 01                	push   $0x1
 4aa:	e8 21 05 00 00       	call   9d0 <printf>
 4af:	83 c4 0c             	add    $0xc,%esp
 4b2:	68 72 0d 00 00       	push   $0xd72
 4b7:	e9 f1 fe ff ff       	jmp    3ad <worker+0x5d>
   exit();
 4bc:	e8 a5 03 00 00       	call   866 <exit>
 4c1:	66 90                	xchg   %ax,%ax
 4c3:	66 90                	xchg   %ax,%ax
 4c5:	66 90                	xchg   %ax,%ax
 4c7:	66 90                	xchg   %ax,%ax
 4c9:	66 90                	xchg   %ax,%ax
 4cb:	66 90                	xchg   %ax,%ax
 4cd:	66 90                	xchg   %ax,%ax
 4cf:	90                   	nop

000004d0 <strcpy>:

lock_t lk_create,lk_join;

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
 608:	e8 71 02 00 00       	call   87e <read>
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
 66d:	e8 34 02 00 00       	call   8a6 <open>
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
 682:	e8 37 02 00 00       	call   8be <fstat>
  close(fd);
 687:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 68a:	89 c6                	mov    %eax,%esi
  close(fd);
 68c:	e8 fd 01 00 00       	call   88e <close>
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
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 721:	ba 01 00 00 00       	mov    $0x1,%edx
 726:	89 e5                	mov    %esp,%ebp
 728:	83 ec 08             	sub    $0x8,%esp
 72b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 72f:	90                   	nop
 730:	89 d0                	mov    %edx,%eax
 732:	f0 87 05 e4 11 00 00 	lock xchg %eax,0x11e4
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 739:	85 c0                	test   %eax,%eax
 73b:	75 f3                	jne    730 <thread_create+0x10>
    __sync_synchronize();
 73d:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 742:	83 ec 0c             	sub    $0xc,%esp
 745:	68 00 20 00 00       	push   $0x2000
 74a:	e8 b1 04 00 00       	call   c00 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 74f:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 754:	c7 05 e4 11 00 00 00 	movl   $0x0,0x11e4
 75b:	00 00 00 
	if((uint)stack % PGSIZE)
 75e:	89 c2                	mov    %eax,%edx
 760:	83 c4 10             	add    $0x10,%esp
 763:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 769:	74 07                	je     772 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 76b:	29 d0                	sub    %edx,%eax
 76d:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 772:	50                   	push   %eax
 773:	ff 75 10             	push   0x10(%ebp)
 776:	ff 75 0c             	push   0xc(%ebp)
 779:	ff 75 08             	push   0x8(%ebp)
 77c:	e8 85 01 00 00       	call   906 <clone>
}
 781:	c9                   	leave  
 782:	c3                   	ret    
 783:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000790 <thread_join>:
int thread_join(){
 790:	55                   	push   %ebp
 791:	89 e5                	mov    %esp,%ebp
 793:	53                   	push   %ebx
	int result= join(&stack);
 794:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 797:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 79a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 7a1:	50                   	push   %eax
 7a2:	e8 67 01 00 00       	call   90e <join>
    while(xchg(&(lock->mutex), 1) != 0);
 7a7:	83 c4 10             	add    $0x10,%esp
 7aa:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 7af:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7b8:	89 d0                	mov    %edx,%eax
 7ba:	f0 87 05 e0 11 00 00 	lock xchg %eax,0x11e0
 7c1:	85 c0                	test   %eax,%eax
 7c3:	75 f3                	jne    7b8 <thread_join+0x28>
    __sync_synchronize();
 7c5:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 7ca:	83 ec 0c             	sub    $0xc,%esp
 7cd:	ff 75 f4             	push   -0xc(%ebp)
 7d0:	e8 9b 03 00 00       	call   b70 <free>
   __sync_synchronize();
 7d5:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 7da:	c7 05 e0 11 00 00 00 	movl   $0x0,0x11e0
 7e1:	00 00 00 
}
 7e4:	89 d8                	mov    %ebx,%eax
 7e6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 7e9:	c9                   	leave  
 7ea:	c3                   	ret    
 7eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7ef:	90                   	nop

000007f0 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 7f0:	c7 05 e4 11 00 00 00 	movl   $0x0,0x11e4
 7f7:	00 00 00 
 7fa:	c7 05 e0 11 00 00 00 	movl   $0x0,0x11e0
 801:	00 00 00 
}
 804:	c3                   	ret    
 805:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000810 <lock_acquire>:
void lock_acquire(lock_t *lock){
 810:	55                   	push   %ebp
 811:	b9 01 00 00 00       	mov    $0x1,%ecx
 816:	89 e5                	mov    %esp,%ebp
 818:	8b 55 08             	mov    0x8(%ebp),%edx
 81b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 81f:	90                   	nop
 820:	89 c8                	mov    %ecx,%eax
 822:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 825:	85 c0                	test   %eax,%eax
 827:	75 f7                	jne    820 <lock_acquire+0x10>
    __sync_synchronize();
 829:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 82e:	5d                   	pop    %ebp
 82f:	c3                   	ret    

00000830 <lock_release>:
void lock_release(lock_t *lock){
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 836:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 83b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 841:	5d                   	pop    %ebp
 842:	c3                   	ret    
 843:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000850 <lock_init>:
void lock_init(lock_t *lock) {
 850:	55                   	push   %ebp
 851:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 853:	8b 45 08             	mov    0x8(%ebp),%eax
 856:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 85c:	5d                   	pop    %ebp
 85d:	c3                   	ret    

0000085e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 85e:	b8 01 00 00 00       	mov    $0x1,%eax
 863:	cd 40                	int    $0x40
 865:	c3                   	ret    

00000866 <exit>:
SYSCALL(exit)
 866:	b8 02 00 00 00       	mov    $0x2,%eax
 86b:	cd 40                	int    $0x40
 86d:	c3                   	ret    

0000086e <wait>:
SYSCALL(wait)
 86e:	b8 03 00 00 00       	mov    $0x3,%eax
 873:	cd 40                	int    $0x40
 875:	c3                   	ret    

00000876 <pipe>:
SYSCALL(pipe)
 876:	b8 04 00 00 00       	mov    $0x4,%eax
 87b:	cd 40                	int    $0x40
 87d:	c3                   	ret    

0000087e <read>:
SYSCALL(read)
 87e:	b8 05 00 00 00       	mov    $0x5,%eax
 883:	cd 40                	int    $0x40
 885:	c3                   	ret    

00000886 <write>:
SYSCALL(write)
 886:	b8 10 00 00 00       	mov    $0x10,%eax
 88b:	cd 40                	int    $0x40
 88d:	c3                   	ret    

0000088e <close>:
SYSCALL(close)
 88e:	b8 15 00 00 00       	mov    $0x15,%eax
 893:	cd 40                	int    $0x40
 895:	c3                   	ret    

00000896 <kill>:
SYSCALL(kill)
 896:	b8 06 00 00 00       	mov    $0x6,%eax
 89b:	cd 40                	int    $0x40
 89d:	c3                   	ret    

0000089e <exec>:
SYSCALL(exec)
 89e:	b8 07 00 00 00       	mov    $0x7,%eax
 8a3:	cd 40                	int    $0x40
 8a5:	c3                   	ret    

000008a6 <open>:
SYSCALL(open)
 8a6:	b8 0f 00 00 00       	mov    $0xf,%eax
 8ab:	cd 40                	int    $0x40
 8ad:	c3                   	ret    

000008ae <mknod>:
SYSCALL(mknod)
 8ae:	b8 11 00 00 00       	mov    $0x11,%eax
 8b3:	cd 40                	int    $0x40
 8b5:	c3                   	ret    

000008b6 <unlink>:
SYSCALL(unlink)
 8b6:	b8 12 00 00 00       	mov    $0x12,%eax
 8bb:	cd 40                	int    $0x40
 8bd:	c3                   	ret    

000008be <fstat>:
SYSCALL(fstat)
 8be:	b8 08 00 00 00       	mov    $0x8,%eax
 8c3:	cd 40                	int    $0x40
 8c5:	c3                   	ret    

000008c6 <link>:
SYSCALL(link)
 8c6:	b8 13 00 00 00       	mov    $0x13,%eax
 8cb:	cd 40                	int    $0x40
 8cd:	c3                   	ret    

000008ce <mkdir>:
SYSCALL(mkdir)
 8ce:	b8 14 00 00 00       	mov    $0x14,%eax
 8d3:	cd 40                	int    $0x40
 8d5:	c3                   	ret    

000008d6 <chdir>:
SYSCALL(chdir)
 8d6:	b8 09 00 00 00       	mov    $0x9,%eax
 8db:	cd 40                	int    $0x40
 8dd:	c3                   	ret    

000008de <dup>:
SYSCALL(dup)
 8de:	b8 0a 00 00 00       	mov    $0xa,%eax
 8e3:	cd 40                	int    $0x40
 8e5:	c3                   	ret    

000008e6 <getpid>:
SYSCALL(getpid)
 8e6:	b8 0b 00 00 00       	mov    $0xb,%eax
 8eb:	cd 40                	int    $0x40
 8ed:	c3                   	ret    

000008ee <sbrk>:
SYSCALL(sbrk)
 8ee:	b8 0c 00 00 00       	mov    $0xc,%eax
 8f3:	cd 40                	int    $0x40
 8f5:	c3                   	ret    

000008f6 <sleep>:
SYSCALL(sleep)
 8f6:	b8 0d 00 00 00       	mov    $0xd,%eax
 8fb:	cd 40                	int    $0x40
 8fd:	c3                   	ret    

000008fe <uptime>:
SYSCALL(uptime)
 8fe:	b8 0e 00 00 00       	mov    $0xe,%eax
 903:	cd 40                	int    $0x40
 905:	c3                   	ret    

00000906 <clone>:
SYSCALL(clone)
 906:	b8 16 00 00 00       	mov    $0x16,%eax
 90b:	cd 40                	int    $0x40
 90d:	c3                   	ret    

0000090e <join>:
SYSCALL(join)
 90e:	b8 17 00 00 00       	mov    $0x17,%eax
 913:	cd 40                	int    $0x40
 915:	c3                   	ret    
 916:	66 90                	xchg   %ax,%ax
 918:	66 90                	xchg   %ax,%ax
 91a:	66 90                	xchg   %ax,%ax
 91c:	66 90                	xchg   %ax,%ax
 91e:	66 90                	xchg   %ax,%ax

00000920 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 920:	55                   	push   %ebp
 921:	89 e5                	mov    %esp,%ebp
 923:	57                   	push   %edi
 924:	56                   	push   %esi
 925:	53                   	push   %ebx
 926:	83 ec 3c             	sub    $0x3c,%esp
 929:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 92c:	89 d1                	mov    %edx,%ecx
{
 92e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 931:	85 d2                	test   %edx,%edx
 933:	0f 89 7f 00 00 00    	jns    9b8 <printint+0x98>
 939:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 93d:	74 79                	je     9b8 <printint+0x98>
    neg = 1;
 93f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 946:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 948:	31 db                	xor    %ebx,%ebx
 94a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 94d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 950:	89 c8                	mov    %ecx,%eax
 952:	31 d2                	xor    %edx,%edx
 954:	89 cf                	mov    %ecx,%edi
 956:	f7 75 c4             	divl   -0x3c(%ebp)
 959:	0f b6 92 1c 0e 00 00 	movzbl 0xe1c(%edx),%edx
 960:	89 45 c0             	mov    %eax,-0x40(%ebp)
 963:	89 d8                	mov    %ebx,%eax
 965:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 968:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 96b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 96e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 971:	76 dd                	jbe    950 <printint+0x30>
  if(neg)
 973:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 976:	85 c9                	test   %ecx,%ecx
 978:	74 0c                	je     986 <printint+0x66>
    buf[i++] = '-';
 97a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 97f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 981:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 986:	8b 7d b8             	mov    -0x48(%ebp),%edi
 989:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 98d:	eb 07                	jmp    996 <printint+0x76>
 98f:	90                   	nop
    putc(fd, buf[i]);
 990:	0f b6 13             	movzbl (%ebx),%edx
 993:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 996:	83 ec 04             	sub    $0x4,%esp
 999:	88 55 d7             	mov    %dl,-0x29(%ebp)
 99c:	6a 01                	push   $0x1
 99e:	56                   	push   %esi
 99f:	57                   	push   %edi
 9a0:	e8 e1 fe ff ff       	call   886 <write>
  while(--i >= 0)
 9a5:	83 c4 10             	add    $0x10,%esp
 9a8:	39 de                	cmp    %ebx,%esi
 9aa:	75 e4                	jne    990 <printint+0x70>
}
 9ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 9af:	5b                   	pop    %ebx
 9b0:	5e                   	pop    %esi
 9b1:	5f                   	pop    %edi
 9b2:	5d                   	pop    %ebp
 9b3:	c3                   	ret    
 9b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 9b8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 9bf:	eb 87                	jmp    948 <printint+0x28>
 9c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9cf:	90                   	nop

000009d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 9d0:	55                   	push   %ebp
 9d1:	89 e5                	mov    %esp,%ebp
 9d3:	57                   	push   %edi
 9d4:	56                   	push   %esi
 9d5:	53                   	push   %ebx
 9d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 9d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 9dc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 9df:	0f b6 13             	movzbl (%ebx),%edx
 9e2:	84 d2                	test   %dl,%dl
 9e4:	74 6a                	je     a50 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 9e6:	8d 45 10             	lea    0x10(%ebp),%eax
 9e9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 9ec:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 9ef:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 9f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 9f4:	eb 36                	jmp    a2c <printf+0x5c>
 9f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9fd:	8d 76 00             	lea    0x0(%esi),%esi
 a00:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 a03:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 a08:	83 f8 25             	cmp    $0x25,%eax
 a0b:	74 15                	je     a22 <printf+0x52>
  write(fd, &c, 1);
 a0d:	83 ec 04             	sub    $0x4,%esp
 a10:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a13:	6a 01                	push   $0x1
 a15:	57                   	push   %edi
 a16:	56                   	push   %esi
 a17:	e8 6a fe ff ff       	call   886 <write>
 a1c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 a1f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 a22:	0f b6 13             	movzbl (%ebx),%edx
 a25:	83 c3 01             	add    $0x1,%ebx
 a28:	84 d2                	test   %dl,%dl
 a2a:	74 24                	je     a50 <printf+0x80>
    c = fmt[i] & 0xff;
 a2c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 a2f:	85 c9                	test   %ecx,%ecx
 a31:	74 cd                	je     a00 <printf+0x30>
      }
    } else if(state == '%'){
 a33:	83 f9 25             	cmp    $0x25,%ecx
 a36:	75 ea                	jne    a22 <printf+0x52>
      if(c == 'd'){
 a38:	83 f8 25             	cmp    $0x25,%eax
 a3b:	0f 84 07 01 00 00    	je     b48 <printf+0x178>
 a41:	83 e8 63             	sub    $0x63,%eax
 a44:	83 f8 15             	cmp    $0x15,%eax
 a47:	77 17                	ja     a60 <printf+0x90>
 a49:	ff 24 85 c4 0d 00 00 	jmp    *0xdc4(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 a50:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a53:	5b                   	pop    %ebx
 a54:	5e                   	pop    %esi
 a55:	5f                   	pop    %edi
 a56:	5d                   	pop    %ebp
 a57:	c3                   	ret    
 a58:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a5f:	90                   	nop
  write(fd, &c, 1);
 a60:	83 ec 04             	sub    $0x4,%esp
 a63:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 a66:	6a 01                	push   $0x1
 a68:	57                   	push   %edi
 a69:	56                   	push   %esi
 a6a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 a6e:	e8 13 fe ff ff       	call   886 <write>
        putc(fd, c);
 a73:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 a77:	83 c4 0c             	add    $0xc,%esp
 a7a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a7d:	6a 01                	push   $0x1
 a7f:	57                   	push   %edi
 a80:	56                   	push   %esi
 a81:	e8 00 fe ff ff       	call   886 <write>
        putc(fd, c);
 a86:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a89:	31 c9                	xor    %ecx,%ecx
 a8b:	eb 95                	jmp    a22 <printf+0x52>
 a8d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 a90:	83 ec 0c             	sub    $0xc,%esp
 a93:	b9 10 00 00 00       	mov    $0x10,%ecx
 a98:	6a 00                	push   $0x0
 a9a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 a9d:	8b 10                	mov    (%eax),%edx
 a9f:	89 f0                	mov    %esi,%eax
 aa1:	e8 7a fe ff ff       	call   920 <printint>
        ap++;
 aa6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 aaa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 aad:	31 c9                	xor    %ecx,%ecx
 aaf:	e9 6e ff ff ff       	jmp    a22 <printf+0x52>
 ab4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 ab8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 abb:	8b 10                	mov    (%eax),%edx
        ap++;
 abd:	83 c0 04             	add    $0x4,%eax
 ac0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 ac3:	85 d2                	test   %edx,%edx
 ac5:	0f 84 8d 00 00 00    	je     b58 <printf+0x188>
        while(*s != 0){
 acb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 ace:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 ad0:	84 c0                	test   %al,%al
 ad2:	0f 84 4a ff ff ff    	je     a22 <printf+0x52>
 ad8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 adb:	89 d3                	mov    %edx,%ebx
 add:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 ae0:	83 ec 04             	sub    $0x4,%esp
          s++;
 ae3:	83 c3 01             	add    $0x1,%ebx
 ae6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 ae9:	6a 01                	push   $0x1
 aeb:	57                   	push   %edi
 aec:	56                   	push   %esi
 aed:	e8 94 fd ff ff       	call   886 <write>
        while(*s != 0){
 af2:	0f b6 03             	movzbl (%ebx),%eax
 af5:	83 c4 10             	add    $0x10,%esp
 af8:	84 c0                	test   %al,%al
 afa:	75 e4                	jne    ae0 <printf+0x110>
      state = 0;
 afc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 aff:	31 c9                	xor    %ecx,%ecx
 b01:	e9 1c ff ff ff       	jmp    a22 <printf+0x52>
 b06:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b0d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 b10:	83 ec 0c             	sub    $0xc,%esp
 b13:	b9 0a 00 00 00       	mov    $0xa,%ecx
 b18:	6a 01                	push   $0x1
 b1a:	e9 7b ff ff ff       	jmp    a9a <printf+0xca>
 b1f:	90                   	nop
        putc(fd, *ap);
 b20:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 b23:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 b26:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 b28:	6a 01                	push   $0x1
 b2a:	57                   	push   %edi
 b2b:	56                   	push   %esi
        putc(fd, *ap);
 b2c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b2f:	e8 52 fd ff ff       	call   886 <write>
        ap++;
 b34:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 b38:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b3b:	31 c9                	xor    %ecx,%ecx
 b3d:	e9 e0 fe ff ff       	jmp    a22 <printf+0x52>
 b42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 b48:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 b4b:	83 ec 04             	sub    $0x4,%esp
 b4e:	e9 2a ff ff ff       	jmp    a7d <printf+0xad>
 b53:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 b57:	90                   	nop
          s = "(null)";
 b58:	ba bc 0d 00 00       	mov    $0xdbc,%edx
        while(*s != 0){
 b5d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 b60:	b8 28 00 00 00       	mov    $0x28,%eax
 b65:	89 d3                	mov    %edx,%ebx
 b67:	e9 74 ff ff ff       	jmp    ae0 <printf+0x110>
 b6c:	66 90                	xchg   %ax,%ax
 b6e:	66 90                	xchg   %ax,%ax

00000b70 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 b70:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b71:	a1 e8 11 00 00       	mov    0x11e8,%eax
{
 b76:	89 e5                	mov    %esp,%ebp
 b78:	57                   	push   %edi
 b79:	56                   	push   %esi
 b7a:	53                   	push   %ebx
 b7b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 b7e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 b81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b88:	89 c2                	mov    %eax,%edx
 b8a:	8b 00                	mov    (%eax),%eax
 b8c:	39 ca                	cmp    %ecx,%edx
 b8e:	73 30                	jae    bc0 <free+0x50>
 b90:	39 c1                	cmp    %eax,%ecx
 b92:	72 04                	jb     b98 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 b94:	39 c2                	cmp    %eax,%edx
 b96:	72 f0                	jb     b88 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 b98:	8b 73 fc             	mov    -0x4(%ebx),%esi
 b9b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 b9e:	39 f8                	cmp    %edi,%eax
 ba0:	74 30                	je     bd2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 ba2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 ba5:	8b 42 04             	mov    0x4(%edx),%eax
 ba8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 bab:	39 f1                	cmp    %esi,%ecx
 bad:	74 3a                	je     be9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 baf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 bb1:	5b                   	pop    %ebx
  freep = p;
 bb2:	89 15 e8 11 00 00    	mov    %edx,0x11e8
}
 bb8:	5e                   	pop    %esi
 bb9:	5f                   	pop    %edi
 bba:	5d                   	pop    %ebp
 bbb:	c3                   	ret    
 bbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 bc0:	39 c2                	cmp    %eax,%edx
 bc2:	72 c4                	jb     b88 <free+0x18>
 bc4:	39 c1                	cmp    %eax,%ecx
 bc6:	73 c0                	jae    b88 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 bc8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 bcb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 bce:	39 f8                	cmp    %edi,%eax
 bd0:	75 d0                	jne    ba2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 bd2:	03 70 04             	add    0x4(%eax),%esi
 bd5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 bd8:	8b 02                	mov    (%edx),%eax
 bda:	8b 00                	mov    (%eax),%eax
 bdc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 bdf:	8b 42 04             	mov    0x4(%edx),%eax
 be2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 be5:	39 f1                	cmp    %esi,%ecx
 be7:	75 c6                	jne    baf <free+0x3f>
    p->s.size += bp->s.size;
 be9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 bec:	89 15 e8 11 00 00    	mov    %edx,0x11e8
    p->s.size += bp->s.size;
 bf2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 bf5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 bf8:	89 0a                	mov    %ecx,(%edx)
}
 bfa:	5b                   	pop    %ebx
 bfb:	5e                   	pop    %esi
 bfc:	5f                   	pop    %edi
 bfd:	5d                   	pop    %ebp
 bfe:	c3                   	ret    
 bff:	90                   	nop

00000c00 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 c00:	55                   	push   %ebp
 c01:	89 e5                	mov    %esp,%ebp
 c03:	57                   	push   %edi
 c04:	56                   	push   %esi
 c05:	53                   	push   %ebx
 c06:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c09:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 c0c:	8b 3d e8 11 00 00    	mov    0x11e8,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c12:	8d 70 07             	lea    0x7(%eax),%esi
 c15:	c1 ee 03             	shr    $0x3,%esi
 c18:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 c1b:	85 ff                	test   %edi,%edi
 c1d:	0f 84 9d 00 00 00    	je     cc0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c23:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 c25:	8b 4a 04             	mov    0x4(%edx),%ecx
 c28:	39 f1                	cmp    %esi,%ecx
 c2a:	73 6a                	jae    c96 <malloc+0x96>
 c2c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 c31:	39 de                	cmp    %ebx,%esi
 c33:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 c36:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 c3d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 c40:	eb 17                	jmp    c59 <malloc+0x59>
 c42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c48:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 c4a:	8b 48 04             	mov    0x4(%eax),%ecx
 c4d:	39 f1                	cmp    %esi,%ecx
 c4f:	73 4f                	jae    ca0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 c51:	8b 3d e8 11 00 00    	mov    0x11e8,%edi
 c57:	89 c2                	mov    %eax,%edx
 c59:	39 d7                	cmp    %edx,%edi
 c5b:	75 eb                	jne    c48 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 c5d:	83 ec 0c             	sub    $0xc,%esp
 c60:	ff 75 e4             	push   -0x1c(%ebp)
 c63:	e8 86 fc ff ff       	call   8ee <sbrk>
  if(p == (char*)-1)
 c68:	83 c4 10             	add    $0x10,%esp
 c6b:	83 f8 ff             	cmp    $0xffffffff,%eax
 c6e:	74 1c                	je     c8c <malloc+0x8c>
  hp->s.size = nu;
 c70:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 c73:	83 ec 0c             	sub    $0xc,%esp
 c76:	83 c0 08             	add    $0x8,%eax
 c79:	50                   	push   %eax
 c7a:	e8 f1 fe ff ff       	call   b70 <free>
  return freep;
 c7f:	8b 15 e8 11 00 00    	mov    0x11e8,%edx
      if((p = morecore(nunits)) == 0)
 c85:	83 c4 10             	add    $0x10,%esp
 c88:	85 d2                	test   %edx,%edx
 c8a:	75 bc                	jne    c48 <malloc+0x48>
        return 0;
  }
}
 c8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 c8f:	31 c0                	xor    %eax,%eax
}
 c91:	5b                   	pop    %ebx
 c92:	5e                   	pop    %esi
 c93:	5f                   	pop    %edi
 c94:	5d                   	pop    %ebp
 c95:	c3                   	ret    
    if(p->s.size >= nunits){
 c96:	89 d0                	mov    %edx,%eax
 c98:	89 fa                	mov    %edi,%edx
 c9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ca0:	39 ce                	cmp    %ecx,%esi
 ca2:	74 4c                	je     cf0 <malloc+0xf0>
        p->s.size -= nunits;
 ca4:	29 f1                	sub    %esi,%ecx
 ca6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ca9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 cac:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 caf:	89 15 e8 11 00 00    	mov    %edx,0x11e8
}
 cb5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 cb8:	83 c0 08             	add    $0x8,%eax
}
 cbb:	5b                   	pop    %ebx
 cbc:	5e                   	pop    %esi
 cbd:	5f                   	pop    %edi
 cbe:	5d                   	pop    %ebp
 cbf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 cc0:	c7 05 e8 11 00 00 ec 	movl   $0x11ec,0x11e8
 cc7:	11 00 00 
    base.s.size = 0;
 cca:	bf ec 11 00 00       	mov    $0x11ec,%edi
    base.s.ptr = freep = prevp = &base;
 ccf:	c7 05 ec 11 00 00 ec 	movl   $0x11ec,0x11ec
 cd6:	11 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 cd9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 cdb:	c7 05 f0 11 00 00 00 	movl   $0x0,0x11f0
 ce2:	00 00 00 
    if(p->s.size >= nunits){
 ce5:	e9 42 ff ff ff       	jmp    c2c <malloc+0x2c>
 cea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 cf0:	8b 08                	mov    (%eax),%ecx
 cf2:	89 0a                	mov    %ecx,(%edx)
 cf4:	eb b9                	jmp    caf <malloc+0xaf>
