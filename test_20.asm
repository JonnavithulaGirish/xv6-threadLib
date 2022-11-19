
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
  11:	e8 ae 07 00 00       	call   7c4 <getpid>

   int arg1 = 11, arg2 = 22;

   size = (unsigned int)sbrk(0);
  16:	83 ec 0c             	sub    $0xc,%esp
   int arg1 = 11, arg2 = 22;
  19:	c7 45 f0 0b 00 00 00 	movl   $0xb,-0x10(%ebp)
   size = (unsigned int)sbrk(0);
  20:	6a 00                	push   $0x0
   ppid = getpid();
  22:	a3 94 10 00 00       	mov    %eax,0x1094
   int arg1 = 11, arg2 = 22;
  27:	c7 45 f4 16 00 00 00 	movl   $0x16,-0xc(%ebp)
   size = (unsigned int)sbrk(0);
  2e:	e8 99 07 00 00       	call   7cc <sbrk>

   int thread_pid = thread_create(worker, &arg1, &arg2);
  33:	83 c4 0c             	add    $0xc,%esp
   size = (unsigned int)sbrk(0);
  36:	a3 8c 10 00 00       	mov    %eax,0x108c
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
  54:	e8 e7 05 00 00       	call   640 <thread_join>
   assert(join_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	7e 13                	jle    70 <main+0x70>
   

   printf(1, "TEST PASSED\n");
  5d:	50                   	push   %eax
  5e:	50                   	push   %eax
  5f:	68 61 0c 00 00       	push   $0xc61
  64:	6a 01                	push   $0x1
  66:	e8 45 08 00 00       	call   8b0 <printf>
   exit();
  6b:	e8 d4 06 00 00       	call   744 <exit>
   assert(join_pid > 0);
  70:	6a 27                	push   $0x27
  72:	68 d8 0b 00 00       	push   $0xbd8
  77:	68 e2 0b 00 00       	push   $0xbe2
  7c:	6a 01                	push   $0x1
  7e:	e8 2d 08 00 00       	call   8b0 <printf>
  83:	83 c4 0c             	add    $0xc,%esp
  86:	68 45 0c 00 00       	push   $0xc45
  8b:	68 08 0c 00 00       	push   $0xc08
  90:	6a 01                	push   $0x1
  92:	e8 19 08 00 00       	call   8b0 <printf>
  97:	5a                   	pop    %edx
  98:	59                   	pop    %ecx
  99:	68 1c 0c 00 00       	push   $0xc1c
  9e:	6a 01                	push   $0x1
  a0:	e8 0b 08 00 00       	call   8b0 <printf>
  a5:	58                   	pop    %eax
  a6:	ff 35 94 10 00 00    	push   0x1094
  ac:	e8 c3 06 00 00       	call   774 <kill>
  b1:	e8 8e 06 00 00       	call   744 <exit>
   assert(thread_pid > 0);
  b6:	6a 24                	push   $0x24
  b8:	68 d8 0b 00 00       	push   $0xbd8
  bd:	68 e2 0b 00 00       	push   $0xbe2
  c2:	6a 01                	push   $0x1
  c4:	e8 e7 07 00 00       	call   8b0 <printf>
  c9:	83 c4 0c             	add    $0xc,%esp
  cc:	68 52 0c 00 00       	push   $0xc52
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
  e6:	68 84 10 00 00       	push   $0x1084
  eb:	e8 f0 05 00 00       	call   6e0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
  f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f7:	e8 d0 06 00 00       	call   7cc <sbrk>
  fc:	83 c4 10             	add    $0x10,%esp
  ff:	3b 05 8c 10 00 00    	cmp    0x108c,%eax
 105:	74 46                	je     14d <worker2+0x6d>
 107:	6a 31                	push   $0x31
   global++;
   lock_release(&lock);

   
   lock_acquire(&lock2);
   assert((unsigned int)sbrk(0) == size);
 109:	68 d8 0b 00 00       	push   $0xbd8
 10e:	68 e2 0b 00 00       	push   $0xbe2
 113:	6a 01                	push   $0x1
 115:	e8 96 07 00 00       	call   8b0 <printf>
 11a:	83 c4 0c             	add    $0xc,%esp
 11d:	68 ea 0b 00 00       	push   $0xbea
 122:	68 08 0c 00 00       	push   $0xc08
 127:	6a 01                	push   $0x1
 129:	e8 82 07 00 00       	call   8b0 <printf>
 12e:	58                   	pop    %eax
 12f:	5a                   	pop    %edx
 130:	68 1c 0c 00 00       	push   $0xc1c
 135:	6a 01                	push   $0x1
 137:	e8 74 07 00 00       	call   8b0 <printf>
 13c:	59                   	pop    %ecx
 13d:	ff 35 94 10 00 00    	push   0x1094
 143:	e8 2c 06 00 00       	call   774 <kill>
 148:	e8 f7 05 00 00       	call   744 <exit>
   lock_release(&lock);
 14d:	83 ec 0c             	sub    $0xc,%esp
   global++;
 150:	83 05 90 10 00 00 01 	addl   $0x1,0x1090
   lock_release(&lock);
 157:	68 84 10 00 00       	push   $0x1084
 15c:	e8 cf 05 00 00       	call   730 <lock_release>
   lock_acquire(&lock2);
 161:	c7 04 24 7c 10 00 00 	movl   $0x107c,(%esp)
 168:	e8 73 05 00 00       	call   6e0 <lock_acquire>
   assert((unsigned int)sbrk(0) == size);
 16d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 174:	e8 53 06 00 00       	call   7cc <sbrk>
 179:	83 c4 10             	add    $0x10,%esp
 17c:	3b 05 8c 10 00 00    	cmp    0x108c,%eax
 182:	74 04                	je     188 <worker2+0xa8>
 184:	6a 37                	push   $0x37
 186:	eb 81                	jmp    109 <worker2+0x29>
   global++;
   lock_release(&lock2);
 188:	83 ec 0c             	sub    $0xc,%esp
   global++;
 18b:	83 05 90 10 00 00 01 	addl   $0x1,0x1090
   lock_release(&lock2);
 192:	68 7c 10 00 00       	push   $0x107c
 197:	e8 94 05 00 00       	call   730 <lock_release>

   
   exit();
 19c:	e8 a3 05 00 00       	call   744 <exit>
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
 1b6:	68 84 10 00 00       	push   $0x1084
 1bb:	e8 00 05 00 00       	call   6c0 <lock_init>
   lock_init(&lock2);
 1c0:	c7 04 24 7c 10 00 00 	movl   $0x107c,(%esp)
 1c7:	e8 f4 04 00 00       	call   6c0 <lock_init>
   lock_acquire(&lock);
 1cc:	c7 04 24 84 10 00 00 	movl   $0x1084,(%esp)
 1d3:	e8 08 05 00 00       	call   6e0 <lock_acquire>
   lock_acquire(&lock2);
 1d8:	c7 04 24 7c 10 00 00 	movl   $0x107c,(%esp)
 1df:	e8 fc 04 00 00       	call   6e0 <lock_acquire>

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
 205:	e8 c2 05 00 00       	call   7cc <sbrk>

   while (global < num_threads) {
 20a:	83 c4 10             	add    $0x10,%esp
   size = (unsigned int)sbrk(0);
 20d:	a3 8c 10 00 00       	mov    %eax,0x108c
   while (global < num_threads) {
 212:	a1 78 10 00 00       	mov    0x1078,%eax
 217:	39 05 90 10 00 00    	cmp    %eax,0x1090
 21d:	7d 36                	jge    255 <worker+0xa5>
 21f:	90                   	nop
      lock_release(&lock);
 220:	83 ec 0c             	sub    $0xc,%esp
 223:	68 84 10 00 00       	push   $0x1084
 228:	e8 03 05 00 00       	call   730 <lock_release>
      sleep(100);
 22d:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 234:	e8 9b 05 00 00       	call   7d4 <sleep>
      lock_acquire(&lock);
 239:	c7 04 24 84 10 00 00 	movl   $0x1084,(%esp)
 240:	e8 9b 04 00 00       	call   6e0 <lock_acquire>
   while (global < num_threads) {
 245:	a1 78 10 00 00       	mov    0x1078,%eax
 24a:	83 c4 10             	add    $0x10,%esp
 24d:	39 05 90 10 00 00    	cmp    %eax,0x1090
 253:	7c cb                	jl     220 <worker+0x70>
   }

   global = 0;
 255:	c7 05 90 10 00 00 00 	movl   $0x0,0x1090
 25c:	00 00 00 
   sbrk(10000);
 25f:	83 ec 0c             	sub    $0xc,%esp
 262:	68 10 27 00 00       	push   $0x2710
 267:	e8 60 05 00 00       	call   7cc <sbrk>
   size = (unsigned int)sbrk(0);
 26c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 273:	e8 54 05 00 00       	call   7cc <sbrk>
   lock_release(&lock);
 278:	c7 04 24 84 10 00 00 	movl   $0x1084,(%esp)
   size = (unsigned int)sbrk(0);
 27f:	a3 8c 10 00 00       	mov    %eax,0x108c
   lock_release(&lock);
 284:	e8 a7 04 00 00       	call   730 <lock_release>

   while (global < num_threads) {
 289:	a1 78 10 00 00       	mov    0x1078,%eax
 28e:	83 c4 10             	add    $0x10,%esp
 291:	39 05 90 10 00 00    	cmp    %eax,0x1090
 297:	7d 3c                	jge    2d5 <worker+0x125>
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      lock_release(&lock2);
 2a0:	83 ec 0c             	sub    $0xc,%esp
 2a3:	68 7c 10 00 00       	push   $0x107c
 2a8:	e8 83 04 00 00       	call   730 <lock_release>
      sleep(100);
 2ad:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 2b4:	e8 1b 05 00 00       	call   7d4 <sleep>
      lock_acquire(&lock2);
 2b9:	c7 04 24 7c 10 00 00 	movl   $0x107c,(%esp)
 2c0:	e8 1b 04 00 00       	call   6e0 <lock_acquire>
   while (global < num_threads) {
 2c5:	a1 78 10 00 00       	mov    0x1078,%eax
 2ca:	83 c4 10             	add    $0x10,%esp
 2cd:	39 05 90 10 00 00    	cmp    %eax,0x1090
 2d3:	7c cb                	jl     2a0 <worker+0xf0>
   }
   lock_release(&lock2);
 2d5:	83 ec 0c             	sub    $0xc,%esp
 2d8:	68 7c 10 00 00       	push   $0x107c
 2dd:	e8 4e 04 00 00       	call   730 <lock_release>

   int nested_join_pid = thread_join();
 2e2:	e8 59 03 00 00       	call   640 <thread_join>
   assert(nested_join_pid > 0);
 2e7:	83 c4 10             	add    $0x10,%esp
 2ea:	85 c0                	test   %eax,%eax
 2ec:	7e 05                	jle    2f3 <worker+0x143>




   exit();
 2ee:	e8 51 04 00 00       	call   744 <exit>
   assert(nested_join_pid > 0);
 2f3:	6a 5d                	push   $0x5d
 2f5:	68 d8 0b 00 00       	push   $0xbd8
 2fa:	68 e2 0b 00 00       	push   $0xbe2
 2ff:	6a 01                	push   $0x1
 301:	e8 aa 05 00 00       	call   8b0 <printf>
 306:	83 c4 0c             	add    $0xc,%esp
 309:	68 3e 0c 00 00       	push   $0xc3e
 30e:	68 08 0c 00 00       	push   $0xc08
 313:	6a 01                	push   $0x1
 315:	e8 96 05 00 00       	call   8b0 <printf>
 31a:	58                   	pop    %eax
 31b:	5a                   	pop    %edx
 31c:	68 1c 0c 00 00       	push   $0xc1c
 321:	6a 01                	push   $0x1
 323:	e8 88 05 00 00       	call   8b0 <printf>
 328:	59                   	pop    %ecx
 329:	ff 35 94 10 00 00    	push   0x1094
 32f:	e8 40 04 00 00       	call   774 <kill>
 334:	e8 0b 04 00 00       	call   744 <exit>
    assert(nested_thread_id > 0);
 339:	6a 47                	push   $0x47
 33b:	68 d8 0b 00 00       	push   $0xbd8
 340:	68 e2 0b 00 00       	push   $0xbe2
 345:	6a 01                	push   $0x1
 347:	e8 64 05 00 00       	call   8b0 <printf>
 34c:	83 c4 0c             	add    $0xc,%esp
 34f:	68 29 0c 00 00       	push   $0xc29
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
 498:	e8 bf 02 00 00       	call   75c <read>
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
 4fd:	e8 82 02 00 00       	call   784 <open>
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
 512:	e8 85 02 00 00       	call   79c <fstat>
  close(fd);
 517:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 51a:	89 c6                	mov    %eax,%esi
  close(fd);
 51c:	e8 4b 02 00 00       	call   76c <close>
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
  asm volatile("lock; xaddl %%eax, %2;" :
 5b1:	b8 01 00 00 00       	mov    $0x1,%eax
 5b6:	89 e5                	mov    %esp,%ebp
 5b8:	53                   	push   %ebx
 5b9:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 5bc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 5c3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 5ca:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 5cf:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5d2:	39 c2                	cmp    %eax,%edx
 5d4:	74 24                	je     5fa <thread_create+0x4a>
 5d6:	89 c3                	mov    %eax,%ebx
 5d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 5e0:	83 ec 04             	sub    $0x4,%esp
 5e3:	52                   	push   %edx
 5e4:	68 6e 0c 00 00       	push   $0xc6e
 5e9:	6a 01                	push   $0x1
 5eb:	e8 c0 02 00 00       	call   8b0 <printf>
  while(lock->turn != myturn){
 5f0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5f3:	83 c4 10             	add    $0x10,%esp
 5f6:	39 d3                	cmp    %edx,%ebx
 5f8:	75 e6                	jne    5e0 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 5fa:	83 ec 0c             	sub    $0xc,%esp
 5fd:	68 00 20 00 00       	push   $0x2000
 602:	e8 d9 04 00 00       	call   ae0 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 607:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 60b:	83 c4 10             	add    $0x10,%esp
 60e:	89 c2                	mov    %eax,%edx
 610:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 616:	74 07                	je     61f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 618:	29 d0                	sub    %edx,%eax
 61a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 61f:	50                   	push   %eax
 620:	ff 75 10             	push   0x10(%ebp)
 623:	ff 75 0c             	push   0xc(%ebp)
 626:	ff 75 08             	push   0x8(%ebp)
 629:	e8 b6 01 00 00       	call   7e4 <clone>
}
 62e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 631:	c9                   	leave  
 632:	c3                   	ret    
 633:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000640 <thread_join>:
int thread_join(){
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	56                   	push   %esi
 644:	53                   	push   %ebx
 645:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 648:	6a 04                	push   $0x4
 64a:	e8 91 04 00 00       	call   ae0 <malloc>
 64f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 652:	8d 45 ec             	lea    -0x14(%ebp),%eax
 655:	89 04 24             	mov    %eax,(%esp)
 658:	e8 8f 01 00 00       	call   7ec <join>
  lock->ticket = 0;
 65d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 664:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 666:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 66d:	b8 01 00 00 00       	mov    $0x1,%eax
 672:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 677:	8b 55 f4             	mov    -0xc(%ebp),%edx
 67a:	83 c4 10             	add    $0x10,%esp
 67d:	39 c2                	cmp    %eax,%edx
 67f:	74 21                	je     6a2 <thread_join+0x62>
 681:	89 c3                	mov    %eax,%ebx
 683:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 687:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 688:	83 ec 04             	sub    $0x4,%esp
 68b:	52                   	push   %edx
 68c:	68 6e 0c 00 00       	push   $0xc6e
 691:	6a 01                	push   $0x1
 693:	e8 18 02 00 00       	call   8b0 <printf>
  while(lock->turn != myturn){
 698:	8b 55 f4             	mov    -0xc(%ebp),%edx
 69b:	83 c4 10             	add    $0x10,%esp
 69e:	39 d3                	cmp    %edx,%ebx
 6a0:	75 e6                	jne    688 <thread_join+0x48>
	free(stack);
 6a2:	83 ec 0c             	sub    $0xc,%esp
 6a5:	ff 75 ec             	push   -0x14(%ebp)
 6a8:	e8 a3 03 00 00       	call   a50 <free>
}
 6ad:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6b0:	89 f0                	mov    %esi,%eax
 6b2:	5b                   	pop    %ebx
 6b3:	5e                   	pop    %esi
 6b4:	5d                   	pop    %ebp
 6b5:	c3                   	ret    
 6b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bd:	8d 76 00             	lea    0x0(%esi),%esi

000006c0 <lock_init>:
void lock_init(lock_t *lock) {
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 6c6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 6cc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 6d3:	5d                   	pop    %ebp
 6d4:	c3                   	ret    
 6d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006e0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 6e0:	55                   	push   %ebp
 6e1:	b8 01 00 00 00       	mov    $0x1,%eax
 6e6:	89 e5                	mov    %esp,%ebp
 6e8:	56                   	push   %esi
 6e9:	8b 75 08             	mov    0x8(%ebp),%esi
 6ec:	53                   	push   %ebx
 6ed:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 6f1:	8b 56 04             	mov    0x4(%esi),%edx
 6f4:	39 d0                	cmp    %edx,%eax
 6f6:	74 22                	je     71a <lock_acquire+0x3a>
 6f8:	89 c3                	mov    %eax,%ebx
 6fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 700:	83 ec 04             	sub    $0x4,%esp
 703:	52                   	push   %edx
 704:	68 6e 0c 00 00       	push   $0xc6e
 709:	6a 01                	push   $0x1
 70b:	e8 a0 01 00 00       	call   8b0 <printf>
  while(lock->turn != myturn){
 710:	8b 56 04             	mov    0x4(%esi),%edx
 713:	83 c4 10             	add    $0x10,%esp
 716:	39 da                	cmp    %ebx,%edx
 718:	75 e6                	jne    700 <lock_acquire+0x20>
}
 71a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 71d:	5b                   	pop    %ebx
 71e:	5e                   	pop    %esi
 71f:	5d                   	pop    %ebp
 720:	c3                   	ret    
 721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 728:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72f:	90                   	nop

00000730 <lock_release>:
void lock_release(lock_t *lock){
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 736:	83 40 04 01          	addl   $0x1,0x4(%eax)
 73a:	5d                   	pop    %ebp
 73b:	c3                   	ret    

0000073c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 73c:	b8 01 00 00 00       	mov    $0x1,%eax
 741:	cd 40                	int    $0x40
 743:	c3                   	ret    

00000744 <exit>:
SYSCALL(exit)
 744:	b8 02 00 00 00       	mov    $0x2,%eax
 749:	cd 40                	int    $0x40
 74b:	c3                   	ret    

0000074c <wait>:
SYSCALL(wait)
 74c:	b8 03 00 00 00       	mov    $0x3,%eax
 751:	cd 40                	int    $0x40
 753:	c3                   	ret    

00000754 <pipe>:
SYSCALL(pipe)
 754:	b8 04 00 00 00       	mov    $0x4,%eax
 759:	cd 40                	int    $0x40
 75b:	c3                   	ret    

0000075c <read>:
SYSCALL(read)
 75c:	b8 05 00 00 00       	mov    $0x5,%eax
 761:	cd 40                	int    $0x40
 763:	c3                   	ret    

00000764 <write>:
SYSCALL(write)
 764:	b8 10 00 00 00       	mov    $0x10,%eax
 769:	cd 40                	int    $0x40
 76b:	c3                   	ret    

0000076c <close>:
SYSCALL(close)
 76c:	b8 15 00 00 00       	mov    $0x15,%eax
 771:	cd 40                	int    $0x40
 773:	c3                   	ret    

00000774 <kill>:
SYSCALL(kill)
 774:	b8 06 00 00 00       	mov    $0x6,%eax
 779:	cd 40                	int    $0x40
 77b:	c3                   	ret    

0000077c <exec>:
SYSCALL(exec)
 77c:	b8 07 00 00 00       	mov    $0x7,%eax
 781:	cd 40                	int    $0x40
 783:	c3                   	ret    

00000784 <open>:
SYSCALL(open)
 784:	b8 0f 00 00 00       	mov    $0xf,%eax
 789:	cd 40                	int    $0x40
 78b:	c3                   	ret    

0000078c <mknod>:
SYSCALL(mknod)
 78c:	b8 11 00 00 00       	mov    $0x11,%eax
 791:	cd 40                	int    $0x40
 793:	c3                   	ret    

00000794 <unlink>:
SYSCALL(unlink)
 794:	b8 12 00 00 00       	mov    $0x12,%eax
 799:	cd 40                	int    $0x40
 79b:	c3                   	ret    

0000079c <fstat>:
SYSCALL(fstat)
 79c:	b8 08 00 00 00       	mov    $0x8,%eax
 7a1:	cd 40                	int    $0x40
 7a3:	c3                   	ret    

000007a4 <link>:
SYSCALL(link)
 7a4:	b8 13 00 00 00       	mov    $0x13,%eax
 7a9:	cd 40                	int    $0x40
 7ab:	c3                   	ret    

000007ac <mkdir>:
SYSCALL(mkdir)
 7ac:	b8 14 00 00 00       	mov    $0x14,%eax
 7b1:	cd 40                	int    $0x40
 7b3:	c3                   	ret    

000007b4 <chdir>:
SYSCALL(chdir)
 7b4:	b8 09 00 00 00       	mov    $0x9,%eax
 7b9:	cd 40                	int    $0x40
 7bb:	c3                   	ret    

000007bc <dup>:
SYSCALL(dup)
 7bc:	b8 0a 00 00 00       	mov    $0xa,%eax
 7c1:	cd 40                	int    $0x40
 7c3:	c3                   	ret    

000007c4 <getpid>:
SYSCALL(getpid)
 7c4:	b8 0b 00 00 00       	mov    $0xb,%eax
 7c9:	cd 40                	int    $0x40
 7cb:	c3                   	ret    

000007cc <sbrk>:
SYSCALL(sbrk)
 7cc:	b8 0c 00 00 00       	mov    $0xc,%eax
 7d1:	cd 40                	int    $0x40
 7d3:	c3                   	ret    

000007d4 <sleep>:
SYSCALL(sleep)
 7d4:	b8 0d 00 00 00       	mov    $0xd,%eax
 7d9:	cd 40                	int    $0x40
 7db:	c3                   	ret    

000007dc <uptime>:
SYSCALL(uptime)
 7dc:	b8 0e 00 00 00       	mov    $0xe,%eax
 7e1:	cd 40                	int    $0x40
 7e3:	c3                   	ret    

000007e4 <clone>:
SYSCALL(clone)
 7e4:	b8 16 00 00 00       	mov    $0x16,%eax
 7e9:	cd 40                	int    $0x40
 7eb:	c3                   	ret    

000007ec <join>:
SYSCALL(join)
 7ec:	b8 17 00 00 00       	mov    $0x17,%eax
 7f1:	cd 40                	int    $0x40
 7f3:	c3                   	ret    
 7f4:	66 90                	xchg   %ax,%ax
 7f6:	66 90                	xchg   %ax,%ax
 7f8:	66 90                	xchg   %ax,%ax
 7fa:	66 90                	xchg   %ax,%ax
 7fc:	66 90                	xchg   %ax,%ax
 7fe:	66 90                	xchg   %ax,%ax

00000800 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 800:	55                   	push   %ebp
 801:	89 e5                	mov    %esp,%ebp
 803:	57                   	push   %edi
 804:	56                   	push   %esi
 805:	53                   	push   %ebx
 806:	83 ec 3c             	sub    $0x3c,%esp
 809:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 80c:	89 d1                	mov    %edx,%ecx
{
 80e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 811:	85 d2                	test   %edx,%edx
 813:	0f 89 7f 00 00 00    	jns    898 <printint+0x98>
 819:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 81d:	74 79                	je     898 <printint+0x98>
    neg = 1;
 81f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 826:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 828:	31 db                	xor    %ebx,%ebx
 82a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 82d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 830:	89 c8                	mov    %ecx,%eax
 832:	31 d2                	xor    %edx,%edx
 834:	89 cf                	mov    %ecx,%edi
 836:	f7 75 c4             	divl   -0x3c(%ebp)
 839:	0f b6 92 e4 0c 00 00 	movzbl 0xce4(%edx),%edx
 840:	89 45 c0             	mov    %eax,-0x40(%ebp)
 843:	89 d8                	mov    %ebx,%eax
 845:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 848:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 84b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 84e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 851:	76 dd                	jbe    830 <printint+0x30>
  if(neg)
 853:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 856:	85 c9                	test   %ecx,%ecx
 858:	74 0c                	je     866 <printint+0x66>
    buf[i++] = '-';
 85a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 85f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 861:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 866:	8b 7d b8             	mov    -0x48(%ebp),%edi
 869:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 86d:	eb 07                	jmp    876 <printint+0x76>
 86f:	90                   	nop
    putc(fd, buf[i]);
 870:	0f b6 13             	movzbl (%ebx),%edx
 873:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 876:	83 ec 04             	sub    $0x4,%esp
 879:	88 55 d7             	mov    %dl,-0x29(%ebp)
 87c:	6a 01                	push   $0x1
 87e:	56                   	push   %esi
 87f:	57                   	push   %edi
 880:	e8 df fe ff ff       	call   764 <write>
  while(--i >= 0)
 885:	83 c4 10             	add    $0x10,%esp
 888:	39 de                	cmp    %ebx,%esi
 88a:	75 e4                	jne    870 <printint+0x70>
}
 88c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 88f:	5b                   	pop    %ebx
 890:	5e                   	pop    %esi
 891:	5f                   	pop    %edi
 892:	5d                   	pop    %ebp
 893:	c3                   	ret    
 894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 898:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 89f:	eb 87                	jmp    828 <printint+0x28>
 8a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8af:	90                   	nop

000008b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 8b0:	55                   	push   %ebp
 8b1:	89 e5                	mov    %esp,%ebp
 8b3:	57                   	push   %edi
 8b4:	56                   	push   %esi
 8b5:	53                   	push   %ebx
 8b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 8b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 8bc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 8bf:	0f b6 13             	movzbl (%ebx),%edx
 8c2:	84 d2                	test   %dl,%dl
 8c4:	74 6a                	je     930 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 8c6:	8d 45 10             	lea    0x10(%ebp),%eax
 8c9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 8cc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 8cf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 8d1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8d4:	eb 36                	jmp    90c <printf+0x5c>
 8d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8dd:	8d 76 00             	lea    0x0(%esi),%esi
 8e0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 8e3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 8e8:	83 f8 25             	cmp    $0x25,%eax
 8eb:	74 15                	je     902 <printf+0x52>
  write(fd, &c, 1);
 8ed:	83 ec 04             	sub    $0x4,%esp
 8f0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8f3:	6a 01                	push   $0x1
 8f5:	57                   	push   %edi
 8f6:	56                   	push   %esi
 8f7:	e8 68 fe ff ff       	call   764 <write>
 8fc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 8ff:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 902:	0f b6 13             	movzbl (%ebx),%edx
 905:	83 c3 01             	add    $0x1,%ebx
 908:	84 d2                	test   %dl,%dl
 90a:	74 24                	je     930 <printf+0x80>
    c = fmt[i] & 0xff;
 90c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 90f:	85 c9                	test   %ecx,%ecx
 911:	74 cd                	je     8e0 <printf+0x30>
      }
    } else if(state == '%'){
 913:	83 f9 25             	cmp    $0x25,%ecx
 916:	75 ea                	jne    902 <printf+0x52>
      if(c == 'd'){
 918:	83 f8 25             	cmp    $0x25,%eax
 91b:	0f 84 07 01 00 00    	je     a28 <printf+0x178>
 921:	83 e8 63             	sub    $0x63,%eax
 924:	83 f8 15             	cmp    $0x15,%eax
 927:	77 17                	ja     940 <printf+0x90>
 929:	ff 24 85 8c 0c 00 00 	jmp    *0xc8c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 930:	8d 65 f4             	lea    -0xc(%ebp),%esp
 933:	5b                   	pop    %ebx
 934:	5e                   	pop    %esi
 935:	5f                   	pop    %edi
 936:	5d                   	pop    %ebp
 937:	c3                   	ret    
 938:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 93f:	90                   	nop
  write(fd, &c, 1);
 940:	83 ec 04             	sub    $0x4,%esp
 943:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 946:	6a 01                	push   $0x1
 948:	57                   	push   %edi
 949:	56                   	push   %esi
 94a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 94e:	e8 11 fe ff ff       	call   764 <write>
        putc(fd, c);
 953:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 957:	83 c4 0c             	add    $0xc,%esp
 95a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 95d:	6a 01                	push   $0x1
 95f:	57                   	push   %edi
 960:	56                   	push   %esi
 961:	e8 fe fd ff ff       	call   764 <write>
        putc(fd, c);
 966:	83 c4 10             	add    $0x10,%esp
      state = 0;
 969:	31 c9                	xor    %ecx,%ecx
 96b:	eb 95                	jmp    902 <printf+0x52>
 96d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 970:	83 ec 0c             	sub    $0xc,%esp
 973:	b9 10 00 00 00       	mov    $0x10,%ecx
 978:	6a 00                	push   $0x0
 97a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 97d:	8b 10                	mov    (%eax),%edx
 97f:	89 f0                	mov    %esi,%eax
 981:	e8 7a fe ff ff       	call   800 <printint>
        ap++;
 986:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 98a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 98d:	31 c9                	xor    %ecx,%ecx
 98f:	e9 6e ff ff ff       	jmp    902 <printf+0x52>
 994:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 998:	8b 45 d0             	mov    -0x30(%ebp),%eax
 99b:	8b 10                	mov    (%eax),%edx
        ap++;
 99d:	83 c0 04             	add    $0x4,%eax
 9a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 9a3:	85 d2                	test   %edx,%edx
 9a5:	0f 84 8d 00 00 00    	je     a38 <printf+0x188>
        while(*s != 0){
 9ab:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 9ae:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 9b0:	84 c0                	test   %al,%al
 9b2:	0f 84 4a ff ff ff    	je     902 <printf+0x52>
 9b8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9bb:	89 d3                	mov    %edx,%ebx
 9bd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 9c0:	83 ec 04             	sub    $0x4,%esp
          s++;
 9c3:	83 c3 01             	add    $0x1,%ebx
 9c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9c9:	6a 01                	push   $0x1
 9cb:	57                   	push   %edi
 9cc:	56                   	push   %esi
 9cd:	e8 92 fd ff ff       	call   764 <write>
        while(*s != 0){
 9d2:	0f b6 03             	movzbl (%ebx),%eax
 9d5:	83 c4 10             	add    $0x10,%esp
 9d8:	84 c0                	test   %al,%al
 9da:	75 e4                	jne    9c0 <printf+0x110>
      state = 0;
 9dc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 9df:	31 c9                	xor    %ecx,%ecx
 9e1:	e9 1c ff ff ff       	jmp    902 <printf+0x52>
 9e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 9f0:	83 ec 0c             	sub    $0xc,%esp
 9f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9f8:	6a 01                	push   $0x1
 9fa:	e9 7b ff ff ff       	jmp    97a <printf+0xca>
 9ff:	90                   	nop
        putc(fd, *ap);
 a00:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 a03:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 a06:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 a08:	6a 01                	push   $0x1
 a0a:	57                   	push   %edi
 a0b:	56                   	push   %esi
        putc(fd, *ap);
 a0c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 a0f:	e8 50 fd ff ff       	call   764 <write>
        ap++;
 a14:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 a18:	83 c4 10             	add    $0x10,%esp
      state = 0;
 a1b:	31 c9                	xor    %ecx,%ecx
 a1d:	e9 e0 fe ff ff       	jmp    902 <printf+0x52>
 a22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 a28:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 a2b:	83 ec 04             	sub    $0x4,%esp
 a2e:	e9 2a ff ff ff       	jmp    95d <printf+0xad>
 a33:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a37:	90                   	nop
          s = "(null)";
 a38:	ba 82 0c 00 00       	mov    $0xc82,%edx
        while(*s != 0){
 a3d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a40:	b8 28 00 00 00       	mov    $0x28,%eax
 a45:	89 d3                	mov    %edx,%ebx
 a47:	e9 74 ff ff ff       	jmp    9c0 <printf+0x110>
 a4c:	66 90                	xchg   %ax,%ax
 a4e:	66 90                	xchg   %ax,%ax

00000a50 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a50:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a51:	a1 98 10 00 00       	mov    0x1098,%eax
{
 a56:	89 e5                	mov    %esp,%ebp
 a58:	57                   	push   %edi
 a59:	56                   	push   %esi
 a5a:	53                   	push   %ebx
 a5b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a5e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a68:	89 c2                	mov    %eax,%edx
 a6a:	8b 00                	mov    (%eax),%eax
 a6c:	39 ca                	cmp    %ecx,%edx
 a6e:	73 30                	jae    aa0 <free+0x50>
 a70:	39 c1                	cmp    %eax,%ecx
 a72:	72 04                	jb     a78 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a74:	39 c2                	cmp    %eax,%edx
 a76:	72 f0                	jb     a68 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a78:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a7b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a7e:	39 f8                	cmp    %edi,%eax
 a80:	74 30                	je     ab2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a82:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a85:	8b 42 04             	mov    0x4(%edx),%eax
 a88:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a8b:	39 f1                	cmp    %esi,%ecx
 a8d:	74 3a                	je     ac9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a8f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a91:	5b                   	pop    %ebx
  freep = p;
 a92:	89 15 98 10 00 00    	mov    %edx,0x1098
}
 a98:	5e                   	pop    %esi
 a99:	5f                   	pop    %edi
 a9a:	5d                   	pop    %ebp
 a9b:	c3                   	ret    
 a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 aa0:	39 c2                	cmp    %eax,%edx
 aa2:	72 c4                	jb     a68 <free+0x18>
 aa4:	39 c1                	cmp    %eax,%ecx
 aa6:	73 c0                	jae    a68 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 aa8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 aab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 aae:	39 f8                	cmp    %edi,%eax
 ab0:	75 d0                	jne    a82 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 ab2:	03 70 04             	add    0x4(%eax),%esi
 ab5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 ab8:	8b 02                	mov    (%edx),%eax
 aba:	8b 00                	mov    (%eax),%eax
 abc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 abf:	8b 42 04             	mov    0x4(%edx),%eax
 ac2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 ac5:	39 f1                	cmp    %esi,%ecx
 ac7:	75 c6                	jne    a8f <free+0x3f>
    p->s.size += bp->s.size;
 ac9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 acc:	89 15 98 10 00 00    	mov    %edx,0x1098
    p->s.size += bp->s.size;
 ad2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 ad5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 ad8:	89 0a                	mov    %ecx,(%edx)
}
 ada:	5b                   	pop    %ebx
 adb:	5e                   	pop    %esi
 adc:	5f                   	pop    %edi
 add:	5d                   	pop    %ebp
 ade:	c3                   	ret    
 adf:	90                   	nop

00000ae0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 ae0:	55                   	push   %ebp
 ae1:	89 e5                	mov    %esp,%ebp
 ae3:	57                   	push   %edi
 ae4:	56                   	push   %esi
 ae5:	53                   	push   %ebx
 ae6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ae9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 aec:	8b 3d 98 10 00 00    	mov    0x1098,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 af2:	8d 70 07             	lea    0x7(%eax),%esi
 af5:	c1 ee 03             	shr    $0x3,%esi
 af8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 afb:	85 ff                	test   %edi,%edi
 afd:	0f 84 9d 00 00 00    	je     ba0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b03:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 b05:	8b 4a 04             	mov    0x4(%edx),%ecx
 b08:	39 f1                	cmp    %esi,%ecx
 b0a:	73 6a                	jae    b76 <malloc+0x96>
 b0c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 b11:	39 de                	cmp    %ebx,%esi
 b13:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 b16:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 b1d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 b20:	eb 17                	jmp    b39 <malloc+0x59>
 b22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b28:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b2a:	8b 48 04             	mov    0x4(%eax),%ecx
 b2d:	39 f1                	cmp    %esi,%ecx
 b2f:	73 4f                	jae    b80 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b31:	8b 3d 98 10 00 00    	mov    0x1098,%edi
 b37:	89 c2                	mov    %eax,%edx
 b39:	39 d7                	cmp    %edx,%edi
 b3b:	75 eb                	jne    b28 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 b3d:	83 ec 0c             	sub    $0xc,%esp
 b40:	ff 75 e4             	push   -0x1c(%ebp)
 b43:	e8 84 fc ff ff       	call   7cc <sbrk>
  if(p == (char*)-1)
 b48:	83 c4 10             	add    $0x10,%esp
 b4b:	83 f8 ff             	cmp    $0xffffffff,%eax
 b4e:	74 1c                	je     b6c <malloc+0x8c>
  hp->s.size = nu;
 b50:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b53:	83 ec 0c             	sub    $0xc,%esp
 b56:	83 c0 08             	add    $0x8,%eax
 b59:	50                   	push   %eax
 b5a:	e8 f1 fe ff ff       	call   a50 <free>
  return freep;
 b5f:	8b 15 98 10 00 00    	mov    0x1098,%edx
      if((p = morecore(nunits)) == 0)
 b65:	83 c4 10             	add    $0x10,%esp
 b68:	85 d2                	test   %edx,%edx
 b6a:	75 bc                	jne    b28 <malloc+0x48>
        return 0;
  }
}
 b6c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b6f:	31 c0                	xor    %eax,%eax
}
 b71:	5b                   	pop    %ebx
 b72:	5e                   	pop    %esi
 b73:	5f                   	pop    %edi
 b74:	5d                   	pop    %ebp
 b75:	c3                   	ret    
    if(p->s.size >= nunits){
 b76:	89 d0                	mov    %edx,%eax
 b78:	89 fa                	mov    %edi,%edx
 b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b80:	39 ce                	cmp    %ecx,%esi
 b82:	74 4c                	je     bd0 <malloc+0xf0>
        p->s.size -= nunits;
 b84:	29 f1                	sub    %esi,%ecx
 b86:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b89:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b8c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b8f:	89 15 98 10 00 00    	mov    %edx,0x1098
}
 b95:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b98:	83 c0 08             	add    $0x8,%eax
}
 b9b:	5b                   	pop    %ebx
 b9c:	5e                   	pop    %esi
 b9d:	5f                   	pop    %edi
 b9e:	5d                   	pop    %ebp
 b9f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 ba0:	c7 05 98 10 00 00 9c 	movl   $0x109c,0x1098
 ba7:	10 00 00 
    base.s.size = 0;
 baa:	bf 9c 10 00 00       	mov    $0x109c,%edi
    base.s.ptr = freep = prevp = &base;
 baf:	c7 05 9c 10 00 00 9c 	movl   $0x109c,0x109c
 bb6:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 bb9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 bbb:	c7 05 a0 10 00 00 00 	movl   $0x0,0x10a0
 bc2:	00 00 00 
    if(p->s.size >= nunits){
 bc5:	e9 42 ff ff ff       	jmp    b0c <malloc+0x2c>
 bca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 bd0:	8b 08                	mov    (%eax),%ecx
 bd2:	89 0a                	mov    %ecx,(%edx)
 bd4:	eb b9                	jmp    b8f <malloc+0xaf>
