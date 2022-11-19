
_test_16:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
void worker(void *arg1, void *arg2);
void nested_worker(void *arg1, void *arg2);

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
   f:	83 ec 10             	sub    $0x10,%esp
   ppid = getpid();
  12:	e8 0d 07 00 00       	call   724 <getpid>

   int arg1 = 35;
   int arg2 = 42;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 35;
  1a:	c7 45 f0 23 00 00 00 	movl   $0x23,-0x10(%ebp)
   ppid = getpid();
  21:	a3 14 10 00 00       	mov    %eax,0x1014
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 c0 01 00 00       	push   $0x1c0
   int arg2 = 42;
  33:	c7 45 f4 2a 00 00 00 	movl   $0x2a,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 d1 04 00 00       	call   510 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 53 05 00 00       	call   5a0 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d 10 10 00 00 03 	cmpl   $0x3,0x1010
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 24                	push   $0x24
  60:	68 38 0b 00 00       	push   $0xb38
  65:	68 42 0b 00 00       	push   $0xb42
  6a:	6a 01                	push   $0x1
  6c:	e8 9f 07 00 00       	call   810 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 c7 0b 00 00       	push   $0xbc7
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 23                	push   $0x23
  7d:	68 38 0b 00 00       	push   $0xb38
  82:	68 42 0b 00 00       	push   $0xb42
  87:	6a 01                	push   $0x1
  89:	e8 82 07 00 00       	call   810 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 b0 0b 00 00       	push   $0xbb0
  96:	68 59 0b 00 00       	push   $0xb59
  9b:	6a 01                	push   $0x1
  9d:	e8 6e 07 00 00       	call   810 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 6d 0b 00 00       	push   $0xb6d
  a9:	6a 01                	push   $0x1
  ab:	e8 60 07 00 00       	call   810 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 14 10 00 00    	push   0x1014
  b7:	e8 18 06 00 00       	call   6d4 <kill>
  bc:	e8 e3 05 00 00       	call   6a4 <exit>
   assert(thread_pid > 0);
  c1:	6a 20                	push   $0x20
  c3:	68 38 0b 00 00       	push   $0xb38
  c8:	68 42 0b 00 00       	push   $0xb42
  cd:	6a 01                	push   $0x1
  cf:	e8 3c 07 00 00       	call   810 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 a1 0b 00 00       	push   $0xba1
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 d3 0b 00 00       	push   $0xbd3
  e5:	6a 01                	push   $0x1
  e7:	e8 24 07 00 00       	call   810 <printf>
   exit();
  ec:	e8 b3 05 00 00       	call   6a4 <exit>
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <nested_worker>:
}


void nested_worker(void *arg1, void *arg2){
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	83 ec 08             	sub    $0x8,%esp
   int arg1_int = *(int*)arg1;
   int arg2_int = *(int*)arg2;
 106:	8b 45 0c             	mov    0xc(%ebp),%eax
 109:	8b 10                	mov    (%eax),%edx
   assert(arg1_int == 35);
 10b:	8b 45 08             	mov    0x8(%ebp),%eax
 10e:	83 38 23             	cmpl   $0x23,(%eax)
 111:	75 75                	jne    188 <nested_worker+0x88>
   assert(arg2_int == 42);
 113:	83 fa 2a             	cmp    $0x2a,%edx
 116:	75 2a                	jne    142 <nested_worker+0x42>
   assert(global == 2);
 118:	83 3d 10 10 00 00 02 	cmpl   $0x2,0x1010
 11f:	0f 84 80 00 00 00    	je     1a5 <nested_worker+0xa5>
 125:	6a 30                	push   $0x30
 127:	68 38 0b 00 00       	push   $0xb38
 12c:	68 42 0b 00 00       	push   $0xb42
 131:	6a 01                	push   $0x1
 133:	e8 d8 06 00 00       	call   810 <printf>
 138:	83 c4 0c             	add    $0xc,%esp
 13b:	68 89 0b 00 00       	push   $0xb89
 140:	eb 1b                	jmp    15d <nested_worker+0x5d>
   assert(arg2_int == 42);
 142:	6a 2f                	push   $0x2f
 144:	68 38 0b 00 00       	push   $0xb38
 149:	68 42 0b 00 00       	push   $0xb42
 14e:	6a 01                	push   $0x1
 150:	e8 bb 06 00 00       	call   810 <printf>
 155:	83 c4 0c             	add    $0xc,%esp
 158:	68 7a 0b 00 00       	push   $0xb7a
 15d:	68 59 0b 00 00       	push   $0xb59
 162:	6a 01                	push   $0x1
 164:	e8 a7 06 00 00       	call   810 <printf>
 169:	58                   	pop    %eax
 16a:	5a                   	pop    %edx
 16b:	68 6d 0b 00 00       	push   $0xb6d
 170:	6a 01                	push   $0x1
 172:	e8 99 06 00 00       	call   810 <printf>
 177:	59                   	pop    %ecx
 178:	ff 35 14 10 00 00    	push   0x1014
 17e:	e8 51 05 00 00       	call   6d4 <kill>
 183:	e8 1c 05 00 00       	call   6a4 <exit>
   assert(arg1_int == 35);
 188:	6a 2e                	push   $0x2e
 18a:	68 38 0b 00 00       	push   $0xb38
 18f:	68 42 0b 00 00       	push   $0xb42
 194:	6a 01                	push   $0x1
 196:	e8 75 06 00 00       	call   810 <printf>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	68 4a 0b 00 00       	push   $0xb4a
 1a3:	eb b8                	jmp    15d <nested_worker+0x5d>
   global++;
 1a5:	c7 05 10 10 00 00 03 	movl   $0x3,0x1010
 1ac:	00 00 00 
   exit();
 1af:	e8 f0 04 00 00       	call   6a4 <exit>
 1b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1bf:	90                   	nop

000001c0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	53                   	push   %ebx
 1c4:	83 ec 14             	sub    $0x14,%esp
   int arg1_int = *(int*)arg1;
 1c7:	8b 45 08             	mov    0x8(%ebp),%eax
   int arg2_int = *(int*)arg2;
 1ca:	8b 55 0c             	mov    0xc(%ebp),%edx
   int arg1_int = *(int*)arg1;
 1cd:	8b 00                	mov    (%eax),%eax
   int arg2_int = *(int*)arg2;
 1cf:	8b 12                	mov    (%edx),%edx
   int arg1_int = *(int*)arg1;
 1d1:	89 45 f0             	mov    %eax,-0x10(%ebp)
   int arg2_int = *(int*)arg2;
 1d4:	89 55 f4             	mov    %edx,-0xc(%ebp)
   assert(arg1_int == 35);
 1d7:	83 f8 23             	cmp    $0x23,%eax
 1da:	75 75                	jne    251 <worker+0x91>
   assert(arg2_int == 42);
 1dc:	83 fa 2a             	cmp    $0x2a,%edx
 1df:	75 2a                	jne    20b <worker+0x4b>
   assert(global == 1);
 1e1:	83 3d 10 10 00 00 01 	cmpl   $0x1,0x1010
 1e8:	0f 84 80 00 00 00    	je     26e <worker+0xae>
 1ee:	6a 3b                	push   $0x3b
 1f0:	68 38 0b 00 00       	push   $0xb38
 1f5:	68 42 0b 00 00       	push   $0xb42
 1fa:	6a 01                	push   $0x1
 1fc:	e8 0f 06 00 00       	call   810 <printf>
 201:	83 c4 0c             	add    $0xc,%esp
 204:	68 95 0b 00 00       	push   $0xb95
 209:	eb 1b                	jmp    226 <worker+0x66>
   assert(arg2_int == 42);
 20b:	6a 3a                	push   $0x3a
 20d:	68 38 0b 00 00       	push   $0xb38
 212:	68 42 0b 00 00       	push   $0xb42
 217:	6a 01                	push   $0x1
 219:	e8 f2 05 00 00       	call   810 <printf>
 21e:	83 c4 0c             	add    $0xc,%esp
 221:	68 7a 0b 00 00       	push   $0xb7a
 226:	68 59 0b 00 00       	push   $0xb59
 22b:	6a 01                	push   $0x1
 22d:	e8 de 05 00 00       	call   810 <printf>
 232:	5a                   	pop    %edx
 233:	59                   	pop    %ecx
 234:	68 6d 0b 00 00       	push   $0xb6d
 239:	6a 01                	push   $0x1
 23b:	e8 d0 05 00 00       	call   810 <printf>
 240:	5b                   	pop    %ebx
 241:	ff 35 14 10 00 00    	push   0x1014
 247:	e8 88 04 00 00       	call   6d4 <kill>
 24c:	e8 53 04 00 00       	call   6a4 <exit>
   assert(arg1_int == 35);
 251:	6a 39                	push   $0x39
 253:	68 38 0b 00 00       	push   $0xb38
 258:	68 42 0b 00 00       	push   $0xb42
 25d:	6a 01                	push   $0x1
 25f:	e8 ac 05 00 00       	call   810 <printf>
 264:	83 c4 0c             	add    $0xc,%esp
 267:	68 4a 0b 00 00       	push   $0xb4a
 26c:	eb b8                	jmp    226 <worker+0x66>
   global++;
   int nested_thread_pid = thread_create(nested_worker, &arg1_int, &arg2_int);
 26e:	50                   	push   %eax
 26f:	8d 45 f4             	lea    -0xc(%ebp),%eax
 272:	50                   	push   %eax
 273:	8d 45 f0             	lea    -0x10(%ebp),%eax
 276:	50                   	push   %eax
 277:	68 00 01 00 00       	push   $0x100
   global++;
 27c:	c7 05 10 10 00 00 02 	movl   $0x2,0x1010
 283:	00 00 00 
   int nested_thread_pid = thread_create(nested_worker, &arg1_int, &arg2_int);
 286:	e8 85 02 00 00       	call   510 <thread_create>
 28b:	89 c3                	mov    %eax,%ebx
   int nested_join_pid = thread_join();
 28d:	e8 0e 03 00 00       	call   5a0 <thread_join>
   assert(nested_join_pid == nested_thread_pid);
 292:	83 c4 10             	add    $0x10,%esp
 295:	39 c3                	cmp    %eax,%ebx
 297:	74 20                	je     2b9 <worker+0xf9>
 299:	6a 3f                	push   $0x3f
 29b:	68 38 0b 00 00       	push   $0xb38
 2a0:	68 42 0b 00 00       	push   $0xb42
 2a5:	6a 01                	push   $0x1
 2a7:	e8 64 05 00 00       	call   810 <printf>
 2ac:	83 c4 0c             	add    $0xc,%esp
 2af:	68 e0 0b 00 00       	push   $0xbe0
 2b4:	e9 6d ff ff ff       	jmp    226 <worker+0x66>
   exit();
 2b9:	e8 e6 03 00 00       	call   6a4 <exit>
 2be:	66 90                	xchg   %ax,%ax

000002c0 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 2c0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2c1:	31 c0                	xor    %eax,%eax
{
 2c3:	89 e5                	mov    %esp,%ebp
 2c5:	53                   	push   %ebx
 2c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2d0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2d4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2d7:	83 c0 01             	add    $0x1,%eax
 2da:	84 d2                	test   %dl,%dl
 2dc:	75 f2                	jne    2d0 <strcpy+0x10>
    ;
  return os;
}
 2de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2e1:	89 c8                	mov    %ecx,%eax
 2e3:	c9                   	leave  
 2e4:	c3                   	ret    
 2e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
 2f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2fa:	0f b6 02             	movzbl (%edx),%eax
 2fd:	84 c0                	test   %al,%al
 2ff:	75 17                	jne    318 <strcmp+0x28>
 301:	eb 3a                	jmp    33d <strcmp+0x4d>
 303:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 307:	90                   	nop
 308:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 30c:	83 c2 01             	add    $0x1,%edx
 30f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 312:	84 c0                	test   %al,%al
 314:	74 1a                	je     330 <strcmp+0x40>
    p++, q++;
 316:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 318:	0f b6 19             	movzbl (%ecx),%ebx
 31b:	38 c3                	cmp    %al,%bl
 31d:	74 e9                	je     308 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 31f:	29 d8                	sub    %ebx,%eax
}
 321:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 324:	c9                   	leave  
 325:	c3                   	ret    
 326:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 330:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 334:	31 c0                	xor    %eax,%eax
 336:	29 d8                	sub    %ebx,%eax
}
 338:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 33b:	c9                   	leave  
 33c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 33d:	0f b6 19             	movzbl (%ecx),%ebx
 340:	31 c0                	xor    %eax,%eax
 342:	eb db                	jmp    31f <strcmp+0x2f>
 344:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop

00000350 <strlen>:

uint
strlen(const char *s)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 356:	80 3a 00             	cmpb   $0x0,(%edx)
 359:	74 15                	je     370 <strlen+0x20>
 35b:	31 c0                	xor    %eax,%eax
 35d:	8d 76 00             	lea    0x0(%esi),%esi
 360:	83 c0 01             	add    $0x1,%eax
 363:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 367:	89 c1                	mov    %eax,%ecx
 369:	75 f5                	jne    360 <strlen+0x10>
    ;
  return n;
}
 36b:	89 c8                	mov    %ecx,%eax
 36d:	5d                   	pop    %ebp
 36e:	c3                   	ret    
 36f:	90                   	nop
  for(n = 0; s[n]; n++)
 370:	31 c9                	xor    %ecx,%ecx
}
 372:	5d                   	pop    %ebp
 373:	89 c8                	mov    %ecx,%eax
 375:	c3                   	ret    
 376:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37d:	8d 76 00             	lea    0x0(%esi),%esi

00000380 <memset>:

void*
memset(void *dst, int c, uint n)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	57                   	push   %edi
 384:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 387:	8b 4d 10             	mov    0x10(%ebp),%ecx
 38a:	8b 45 0c             	mov    0xc(%ebp),%eax
 38d:	89 d7                	mov    %edx,%edi
 38f:	fc                   	cld    
 390:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 392:	8b 7d fc             	mov    -0x4(%ebp),%edi
 395:	89 d0                	mov    %edx,%eax
 397:	c9                   	leave  
 398:	c3                   	ret    
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003a0 <strchr>:

char*
strchr(const char *s, char c)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 45 08             	mov    0x8(%ebp),%eax
 3a6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3aa:	0f b6 10             	movzbl (%eax),%edx
 3ad:	84 d2                	test   %dl,%dl
 3af:	75 12                	jne    3c3 <strchr+0x23>
 3b1:	eb 1d                	jmp    3d0 <strchr+0x30>
 3b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3b7:	90                   	nop
 3b8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3bc:	83 c0 01             	add    $0x1,%eax
 3bf:	84 d2                	test   %dl,%dl
 3c1:	74 0d                	je     3d0 <strchr+0x30>
    if(*s == c)
 3c3:	38 d1                	cmp    %dl,%cl
 3c5:	75 f1                	jne    3b8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3c7:	5d                   	pop    %ebp
 3c8:	c3                   	ret    
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3d0:	31 c0                	xor    %eax,%eax
}
 3d2:	5d                   	pop    %ebp
 3d3:	c3                   	ret    
 3d4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3df:	90                   	nop

000003e0 <gets>:

char*
gets(char *buf, int max)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3e5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 3e8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 3e9:	31 db                	xor    %ebx,%ebx
{
 3eb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 3ee:	eb 27                	jmp    417 <gets+0x37>
    cc = read(0, &c, 1);
 3f0:	83 ec 04             	sub    $0x4,%esp
 3f3:	6a 01                	push   $0x1
 3f5:	57                   	push   %edi
 3f6:	6a 00                	push   $0x0
 3f8:	e8 bf 02 00 00       	call   6bc <read>
    if(cc < 1)
 3fd:	83 c4 10             	add    $0x10,%esp
 400:	85 c0                	test   %eax,%eax
 402:	7e 1d                	jle    421 <gets+0x41>
      break;
    buf[i++] = c;
 404:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 408:	8b 55 08             	mov    0x8(%ebp),%edx
 40b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 40f:	3c 0a                	cmp    $0xa,%al
 411:	74 1d                	je     430 <gets+0x50>
 413:	3c 0d                	cmp    $0xd,%al
 415:	74 19                	je     430 <gets+0x50>
  for(i=0; i+1 < max; ){
 417:	89 de                	mov    %ebx,%esi
 419:	83 c3 01             	add    $0x1,%ebx
 41c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 41f:	7c cf                	jl     3f0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 421:	8b 45 08             	mov    0x8(%ebp),%eax
 424:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 428:	8d 65 f4             	lea    -0xc(%ebp),%esp
 42b:	5b                   	pop    %ebx
 42c:	5e                   	pop    %esi
 42d:	5f                   	pop    %edi
 42e:	5d                   	pop    %ebp
 42f:	c3                   	ret    
  buf[i] = '\0';
 430:	8b 45 08             	mov    0x8(%ebp),%eax
 433:	89 de                	mov    %ebx,%esi
 435:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 439:	8d 65 f4             	lea    -0xc(%ebp),%esp
 43c:	5b                   	pop    %ebx
 43d:	5e                   	pop    %esi
 43e:	5f                   	pop    %edi
 43f:	5d                   	pop    %ebp
 440:	c3                   	ret    
 441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44f:	90                   	nop

00000450 <stat>:

int
stat(const char *n, struct stat *st)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	56                   	push   %esi
 454:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 455:	83 ec 08             	sub    $0x8,%esp
 458:	6a 00                	push   $0x0
 45a:	ff 75 08             	push   0x8(%ebp)
 45d:	e8 82 02 00 00       	call   6e4 <open>
  if(fd < 0)
 462:	83 c4 10             	add    $0x10,%esp
 465:	85 c0                	test   %eax,%eax
 467:	78 27                	js     490 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 469:	83 ec 08             	sub    $0x8,%esp
 46c:	ff 75 0c             	push   0xc(%ebp)
 46f:	89 c3                	mov    %eax,%ebx
 471:	50                   	push   %eax
 472:	e8 85 02 00 00       	call   6fc <fstat>
  close(fd);
 477:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 47a:	89 c6                	mov    %eax,%esi
  close(fd);
 47c:	e8 4b 02 00 00       	call   6cc <close>
  return r;
 481:	83 c4 10             	add    $0x10,%esp
}
 484:	8d 65 f8             	lea    -0x8(%ebp),%esp
 487:	89 f0                	mov    %esi,%eax
 489:	5b                   	pop    %ebx
 48a:	5e                   	pop    %esi
 48b:	5d                   	pop    %ebp
 48c:	c3                   	ret    
 48d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 490:	be ff ff ff ff       	mov    $0xffffffff,%esi
 495:	eb ed                	jmp    484 <stat+0x34>
 497:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49e:	66 90                	xchg   %ax,%ax

000004a0 <atoi>:

int
atoi(const char *s)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4a7:	0f be 02             	movsbl (%edx),%eax
 4aa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4ad:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4b0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4b5:	77 1e                	ja     4d5 <atoi+0x35>
 4b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4be:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4c0:	83 c2 01             	add    $0x1,%edx
 4c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4ca:	0f be 02             	movsbl (%edx),%eax
 4cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4d0:	80 fb 09             	cmp    $0x9,%bl
 4d3:	76 eb                	jbe    4c0 <atoi+0x20>
  return n;
}
 4d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4d8:	89 c8                	mov    %ecx,%eax
 4da:	c9                   	leave  
 4db:	c3                   	ret    
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	8b 45 10             	mov    0x10(%ebp),%eax
 4e7:	8b 55 08             	mov    0x8(%ebp),%edx
 4ea:	56                   	push   %esi
 4eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4ee:	85 c0                	test   %eax,%eax
 4f0:	7e 13                	jle    505 <memmove+0x25>
 4f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4f4:	89 d7                	mov    %edx,%edi
 4f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 500:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 501:	39 f8                	cmp    %edi,%eax
 503:	75 fb                	jne    500 <memmove+0x20>
  return vdst;
}
 505:	5e                   	pop    %esi
 506:	89 d0                	mov    %edx,%eax
 508:	5f                   	pop    %edi
 509:	5d                   	pop    %ebp
 50a:	c3                   	ret    
 50b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop

00000510 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 510:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 511:	b8 01 00 00 00       	mov    $0x1,%eax
 516:	89 e5                	mov    %esp,%ebp
 518:	53                   	push   %ebx
 519:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 51c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 523:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 52a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 52f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 532:	39 c2                	cmp    %eax,%edx
 534:	74 24                	je     55a <thread_create+0x4a>
 536:	89 c3                	mov    %eax,%ebx
 538:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 540:	83 ec 04             	sub    $0x4,%esp
 543:	52                   	push   %edx
 544:	68 05 0c 00 00       	push   $0xc05
 549:	6a 01                	push   $0x1
 54b:	e8 c0 02 00 00       	call   810 <printf>
  while(lock->turn != myturn){
 550:	8b 55 f4             	mov    -0xc(%ebp),%edx
 553:	83 c4 10             	add    $0x10,%esp
 556:	39 d3                	cmp    %edx,%ebx
 558:	75 e6                	jne    540 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 55a:	83 ec 0c             	sub    $0xc,%esp
 55d:	68 00 20 00 00       	push   $0x2000
 562:	e8 d9 04 00 00       	call   a40 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 567:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 56b:	83 c4 10             	add    $0x10,%esp
 56e:	89 c2                	mov    %eax,%edx
 570:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 576:	74 07                	je     57f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 578:	29 d0                	sub    %edx,%eax
 57a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 57f:	50                   	push   %eax
 580:	ff 75 10             	push   0x10(%ebp)
 583:	ff 75 0c             	push   0xc(%ebp)
 586:	ff 75 08             	push   0x8(%ebp)
 589:	e8 b6 01 00 00       	call   744 <clone>
}
 58e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 591:	c9                   	leave  
 592:	c3                   	ret    
 593:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005a0 <thread_join>:
int thread_join(){
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	56                   	push   %esi
 5a4:	53                   	push   %ebx
 5a5:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 5a8:	6a 04                	push   $0x4
 5aa:	e8 91 04 00 00       	call   a40 <malloc>
 5af:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 5b2:	8d 45 ec             	lea    -0x14(%ebp),%eax
 5b5:	89 04 24             	mov    %eax,(%esp)
 5b8:	e8 8f 01 00 00       	call   74c <join>
  lock->ticket = 0;
 5bd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 5c4:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 5c6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 5cd:	b8 01 00 00 00       	mov    $0x1,%eax
 5d2:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 5d7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5da:	83 c4 10             	add    $0x10,%esp
 5dd:	39 c2                	cmp    %eax,%edx
 5df:	74 21                	je     602 <thread_join+0x62>
 5e1:	89 c3                	mov    %eax,%ebx
 5e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5e7:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 5e8:	83 ec 04             	sub    $0x4,%esp
 5eb:	52                   	push   %edx
 5ec:	68 05 0c 00 00       	push   $0xc05
 5f1:	6a 01                	push   $0x1
 5f3:	e8 18 02 00 00       	call   810 <printf>
  while(lock->turn != myturn){
 5f8:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5fb:	83 c4 10             	add    $0x10,%esp
 5fe:	39 d3                	cmp    %edx,%ebx
 600:	75 e6                	jne    5e8 <thread_join+0x48>
	free(stack);
 602:	83 ec 0c             	sub    $0xc,%esp
 605:	ff 75 ec             	push   -0x14(%ebp)
 608:	e8 a3 03 00 00       	call   9b0 <free>
}
 60d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 610:	89 f0                	mov    %esi,%eax
 612:	5b                   	pop    %ebx
 613:	5e                   	pop    %esi
 614:	5d                   	pop    %ebp
 615:	c3                   	ret    
 616:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61d:	8d 76 00             	lea    0x0(%esi),%esi

00000620 <lock_init>:
void lock_init(lock_t *lock) {
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 626:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 62c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 633:	5d                   	pop    %ebp
 634:	c3                   	ret    
 635:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000640 <lock_acquire>:
void lock_acquire(lock_t *lock){
 640:	55                   	push   %ebp
 641:	b8 01 00 00 00       	mov    $0x1,%eax
 646:	89 e5                	mov    %esp,%ebp
 648:	56                   	push   %esi
 649:	8b 75 08             	mov    0x8(%ebp),%esi
 64c:	53                   	push   %ebx
 64d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 651:	8b 56 04             	mov    0x4(%esi),%edx
 654:	39 d0                	cmp    %edx,%eax
 656:	74 22                	je     67a <lock_acquire+0x3a>
 658:	89 c3                	mov    %eax,%ebx
 65a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 660:	83 ec 04             	sub    $0x4,%esp
 663:	52                   	push   %edx
 664:	68 05 0c 00 00       	push   $0xc05
 669:	6a 01                	push   $0x1
 66b:	e8 a0 01 00 00       	call   810 <printf>
  while(lock->turn != myturn){
 670:	8b 56 04             	mov    0x4(%esi),%edx
 673:	83 c4 10             	add    $0x10,%esp
 676:	39 da                	cmp    %ebx,%edx
 678:	75 e6                	jne    660 <lock_acquire+0x20>
}
 67a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 67d:	5b                   	pop    %ebx
 67e:	5e                   	pop    %esi
 67f:	5d                   	pop    %ebp
 680:	c3                   	ret    
 681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68f:	90                   	nop

00000690 <lock_release>:
void lock_release(lock_t *lock){
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 696:	83 40 04 01          	addl   $0x1,0x4(%eax)
 69a:	5d                   	pop    %ebp
 69b:	c3                   	ret    

0000069c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 69c:	b8 01 00 00 00       	mov    $0x1,%eax
 6a1:	cd 40                	int    $0x40
 6a3:	c3                   	ret    

000006a4 <exit>:
SYSCALL(exit)
 6a4:	b8 02 00 00 00       	mov    $0x2,%eax
 6a9:	cd 40                	int    $0x40
 6ab:	c3                   	ret    

000006ac <wait>:
SYSCALL(wait)
 6ac:	b8 03 00 00 00       	mov    $0x3,%eax
 6b1:	cd 40                	int    $0x40
 6b3:	c3                   	ret    

000006b4 <pipe>:
SYSCALL(pipe)
 6b4:	b8 04 00 00 00       	mov    $0x4,%eax
 6b9:	cd 40                	int    $0x40
 6bb:	c3                   	ret    

000006bc <read>:
SYSCALL(read)
 6bc:	b8 05 00 00 00       	mov    $0x5,%eax
 6c1:	cd 40                	int    $0x40
 6c3:	c3                   	ret    

000006c4 <write>:
SYSCALL(write)
 6c4:	b8 10 00 00 00       	mov    $0x10,%eax
 6c9:	cd 40                	int    $0x40
 6cb:	c3                   	ret    

000006cc <close>:
SYSCALL(close)
 6cc:	b8 15 00 00 00       	mov    $0x15,%eax
 6d1:	cd 40                	int    $0x40
 6d3:	c3                   	ret    

000006d4 <kill>:
SYSCALL(kill)
 6d4:	b8 06 00 00 00       	mov    $0x6,%eax
 6d9:	cd 40                	int    $0x40
 6db:	c3                   	ret    

000006dc <exec>:
SYSCALL(exec)
 6dc:	b8 07 00 00 00       	mov    $0x7,%eax
 6e1:	cd 40                	int    $0x40
 6e3:	c3                   	ret    

000006e4 <open>:
SYSCALL(open)
 6e4:	b8 0f 00 00 00       	mov    $0xf,%eax
 6e9:	cd 40                	int    $0x40
 6eb:	c3                   	ret    

000006ec <mknod>:
SYSCALL(mknod)
 6ec:	b8 11 00 00 00       	mov    $0x11,%eax
 6f1:	cd 40                	int    $0x40
 6f3:	c3                   	ret    

000006f4 <unlink>:
SYSCALL(unlink)
 6f4:	b8 12 00 00 00       	mov    $0x12,%eax
 6f9:	cd 40                	int    $0x40
 6fb:	c3                   	ret    

000006fc <fstat>:
SYSCALL(fstat)
 6fc:	b8 08 00 00 00       	mov    $0x8,%eax
 701:	cd 40                	int    $0x40
 703:	c3                   	ret    

00000704 <link>:
SYSCALL(link)
 704:	b8 13 00 00 00       	mov    $0x13,%eax
 709:	cd 40                	int    $0x40
 70b:	c3                   	ret    

0000070c <mkdir>:
SYSCALL(mkdir)
 70c:	b8 14 00 00 00       	mov    $0x14,%eax
 711:	cd 40                	int    $0x40
 713:	c3                   	ret    

00000714 <chdir>:
SYSCALL(chdir)
 714:	b8 09 00 00 00       	mov    $0x9,%eax
 719:	cd 40                	int    $0x40
 71b:	c3                   	ret    

0000071c <dup>:
SYSCALL(dup)
 71c:	b8 0a 00 00 00       	mov    $0xa,%eax
 721:	cd 40                	int    $0x40
 723:	c3                   	ret    

00000724 <getpid>:
SYSCALL(getpid)
 724:	b8 0b 00 00 00       	mov    $0xb,%eax
 729:	cd 40                	int    $0x40
 72b:	c3                   	ret    

0000072c <sbrk>:
SYSCALL(sbrk)
 72c:	b8 0c 00 00 00       	mov    $0xc,%eax
 731:	cd 40                	int    $0x40
 733:	c3                   	ret    

00000734 <sleep>:
SYSCALL(sleep)
 734:	b8 0d 00 00 00       	mov    $0xd,%eax
 739:	cd 40                	int    $0x40
 73b:	c3                   	ret    

0000073c <uptime>:
SYSCALL(uptime)
 73c:	b8 0e 00 00 00       	mov    $0xe,%eax
 741:	cd 40                	int    $0x40
 743:	c3                   	ret    

00000744 <clone>:
SYSCALL(clone)
 744:	b8 16 00 00 00       	mov    $0x16,%eax
 749:	cd 40                	int    $0x40
 74b:	c3                   	ret    

0000074c <join>:
SYSCALL(join)
 74c:	b8 17 00 00 00       	mov    $0x17,%eax
 751:	cd 40                	int    $0x40
 753:	c3                   	ret    
 754:	66 90                	xchg   %ax,%ax
 756:	66 90                	xchg   %ax,%ax
 758:	66 90                	xchg   %ax,%ax
 75a:	66 90                	xchg   %ax,%ax
 75c:	66 90                	xchg   %ax,%ax
 75e:	66 90                	xchg   %ax,%ax

00000760 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 3c             	sub    $0x3c,%esp
 769:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 76c:	89 d1                	mov    %edx,%ecx
{
 76e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 771:	85 d2                	test   %edx,%edx
 773:	0f 89 7f 00 00 00    	jns    7f8 <printint+0x98>
 779:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 77d:	74 79                	je     7f8 <printint+0x98>
    neg = 1;
 77f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 786:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 788:	31 db                	xor    %ebx,%ebx
 78a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 78d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 790:	89 c8                	mov    %ecx,%eax
 792:	31 d2                	xor    %edx,%edx
 794:	89 cf                	mov    %ecx,%edi
 796:	f7 75 c4             	divl   -0x3c(%ebp)
 799:	0f b6 92 78 0c 00 00 	movzbl 0xc78(%edx),%edx
 7a0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7a3:	89 d8                	mov    %ebx,%eax
 7a5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7a8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7ab:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7ae:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7b1:	76 dd                	jbe    790 <printint+0x30>
  if(neg)
 7b3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7b6:	85 c9                	test   %ecx,%ecx
 7b8:	74 0c                	je     7c6 <printint+0x66>
    buf[i++] = '-';
 7ba:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7bf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7c1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7c6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7c9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7cd:	eb 07                	jmp    7d6 <printint+0x76>
 7cf:	90                   	nop
    putc(fd, buf[i]);
 7d0:	0f b6 13             	movzbl (%ebx),%edx
 7d3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7d6:	83 ec 04             	sub    $0x4,%esp
 7d9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7dc:	6a 01                	push   $0x1
 7de:	56                   	push   %esi
 7df:	57                   	push   %edi
 7e0:	e8 df fe ff ff       	call   6c4 <write>
  while(--i >= 0)
 7e5:	83 c4 10             	add    $0x10,%esp
 7e8:	39 de                	cmp    %ebx,%esi
 7ea:	75 e4                	jne    7d0 <printint+0x70>
}
 7ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7ef:	5b                   	pop    %ebx
 7f0:	5e                   	pop    %esi
 7f1:	5f                   	pop    %edi
 7f2:	5d                   	pop    %ebp
 7f3:	c3                   	ret    
 7f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7f8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7ff:	eb 87                	jmp    788 <printint+0x28>
 801:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80f:	90                   	nop

00000810 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 810:	55                   	push   %ebp
 811:	89 e5                	mov    %esp,%ebp
 813:	57                   	push   %edi
 814:	56                   	push   %esi
 815:	53                   	push   %ebx
 816:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 819:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 81c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 81f:	0f b6 13             	movzbl (%ebx),%edx
 822:	84 d2                	test   %dl,%dl
 824:	74 6a                	je     890 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 826:	8d 45 10             	lea    0x10(%ebp),%eax
 829:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 82c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 82f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 831:	89 45 d0             	mov    %eax,-0x30(%ebp)
 834:	eb 36                	jmp    86c <printf+0x5c>
 836:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 83d:	8d 76 00             	lea    0x0(%esi),%esi
 840:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 843:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 848:	83 f8 25             	cmp    $0x25,%eax
 84b:	74 15                	je     862 <printf+0x52>
  write(fd, &c, 1);
 84d:	83 ec 04             	sub    $0x4,%esp
 850:	88 55 e7             	mov    %dl,-0x19(%ebp)
 853:	6a 01                	push   $0x1
 855:	57                   	push   %edi
 856:	56                   	push   %esi
 857:	e8 68 fe ff ff       	call   6c4 <write>
 85c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 85f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 862:	0f b6 13             	movzbl (%ebx),%edx
 865:	83 c3 01             	add    $0x1,%ebx
 868:	84 d2                	test   %dl,%dl
 86a:	74 24                	je     890 <printf+0x80>
    c = fmt[i] & 0xff;
 86c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 86f:	85 c9                	test   %ecx,%ecx
 871:	74 cd                	je     840 <printf+0x30>
      }
    } else if(state == '%'){
 873:	83 f9 25             	cmp    $0x25,%ecx
 876:	75 ea                	jne    862 <printf+0x52>
      if(c == 'd'){
 878:	83 f8 25             	cmp    $0x25,%eax
 87b:	0f 84 07 01 00 00    	je     988 <printf+0x178>
 881:	83 e8 63             	sub    $0x63,%eax
 884:	83 f8 15             	cmp    $0x15,%eax
 887:	77 17                	ja     8a0 <printf+0x90>
 889:	ff 24 85 20 0c 00 00 	jmp    *0xc20(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 890:	8d 65 f4             	lea    -0xc(%ebp),%esp
 893:	5b                   	pop    %ebx
 894:	5e                   	pop    %esi
 895:	5f                   	pop    %edi
 896:	5d                   	pop    %ebp
 897:	c3                   	ret    
 898:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89f:	90                   	nop
  write(fd, &c, 1);
 8a0:	83 ec 04             	sub    $0x4,%esp
 8a3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8a6:	6a 01                	push   $0x1
 8a8:	57                   	push   %edi
 8a9:	56                   	push   %esi
 8aa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8ae:	e8 11 fe ff ff       	call   6c4 <write>
        putc(fd, c);
 8b3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8b7:	83 c4 0c             	add    $0xc,%esp
 8ba:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8bd:	6a 01                	push   $0x1
 8bf:	57                   	push   %edi
 8c0:	56                   	push   %esi
 8c1:	e8 fe fd ff ff       	call   6c4 <write>
        putc(fd, c);
 8c6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8c9:	31 c9                	xor    %ecx,%ecx
 8cb:	eb 95                	jmp    862 <printf+0x52>
 8cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8d0:	83 ec 0c             	sub    $0xc,%esp
 8d3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8d8:	6a 00                	push   $0x0
 8da:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8dd:	8b 10                	mov    (%eax),%edx
 8df:	89 f0                	mov    %esi,%eax
 8e1:	e8 7a fe ff ff       	call   760 <printint>
        ap++;
 8e6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8ea:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8ed:	31 c9                	xor    %ecx,%ecx
 8ef:	e9 6e ff ff ff       	jmp    862 <printf+0x52>
 8f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8f8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8fb:	8b 10                	mov    (%eax),%edx
        ap++;
 8fd:	83 c0 04             	add    $0x4,%eax
 900:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 903:	85 d2                	test   %edx,%edx
 905:	0f 84 8d 00 00 00    	je     998 <printf+0x188>
        while(*s != 0){
 90b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 90e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 910:	84 c0                	test   %al,%al
 912:	0f 84 4a ff ff ff    	je     862 <printf+0x52>
 918:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 91b:	89 d3                	mov    %edx,%ebx
 91d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 920:	83 ec 04             	sub    $0x4,%esp
          s++;
 923:	83 c3 01             	add    $0x1,%ebx
 926:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 929:	6a 01                	push   $0x1
 92b:	57                   	push   %edi
 92c:	56                   	push   %esi
 92d:	e8 92 fd ff ff       	call   6c4 <write>
        while(*s != 0){
 932:	0f b6 03             	movzbl (%ebx),%eax
 935:	83 c4 10             	add    $0x10,%esp
 938:	84 c0                	test   %al,%al
 93a:	75 e4                	jne    920 <printf+0x110>
      state = 0;
 93c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 93f:	31 c9                	xor    %ecx,%ecx
 941:	e9 1c ff ff ff       	jmp    862 <printf+0x52>
 946:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 94d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 950:	83 ec 0c             	sub    $0xc,%esp
 953:	b9 0a 00 00 00       	mov    $0xa,%ecx
 958:	6a 01                	push   $0x1
 95a:	e9 7b ff ff ff       	jmp    8da <printf+0xca>
 95f:	90                   	nop
        putc(fd, *ap);
 960:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 963:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 966:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 968:	6a 01                	push   $0x1
 96a:	57                   	push   %edi
 96b:	56                   	push   %esi
        putc(fd, *ap);
 96c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 96f:	e8 50 fd ff ff       	call   6c4 <write>
        ap++;
 974:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 978:	83 c4 10             	add    $0x10,%esp
      state = 0;
 97b:	31 c9                	xor    %ecx,%ecx
 97d:	e9 e0 fe ff ff       	jmp    862 <printf+0x52>
 982:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 988:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 98b:	83 ec 04             	sub    $0x4,%esp
 98e:	e9 2a ff ff ff       	jmp    8bd <printf+0xad>
 993:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 997:	90                   	nop
          s = "(null)";
 998:	ba 19 0c 00 00       	mov    $0xc19,%edx
        while(*s != 0){
 99d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9a0:	b8 28 00 00 00       	mov    $0x28,%eax
 9a5:	89 d3                	mov    %edx,%ebx
 9a7:	e9 74 ff ff ff       	jmp    920 <printf+0x110>
 9ac:	66 90                	xchg   %ax,%ax
 9ae:	66 90                	xchg   %ax,%ax

000009b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9b1:	a1 18 10 00 00       	mov    0x1018,%eax
{
 9b6:	89 e5                	mov    %esp,%ebp
 9b8:	57                   	push   %edi
 9b9:	56                   	push   %esi
 9ba:	53                   	push   %ebx
 9bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9c8:	89 c2                	mov    %eax,%edx
 9ca:	8b 00                	mov    (%eax),%eax
 9cc:	39 ca                	cmp    %ecx,%edx
 9ce:	73 30                	jae    a00 <free+0x50>
 9d0:	39 c1                	cmp    %eax,%ecx
 9d2:	72 04                	jb     9d8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9d4:	39 c2                	cmp    %eax,%edx
 9d6:	72 f0                	jb     9c8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9de:	39 f8                	cmp    %edi,%eax
 9e0:	74 30                	je     a12 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9e2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9e5:	8b 42 04             	mov    0x4(%edx),%eax
 9e8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9eb:	39 f1                	cmp    %esi,%ecx
 9ed:	74 3a                	je     a29 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9ef:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9f1:	5b                   	pop    %ebx
  freep = p;
 9f2:	89 15 18 10 00 00    	mov    %edx,0x1018
}
 9f8:	5e                   	pop    %esi
 9f9:	5f                   	pop    %edi
 9fa:	5d                   	pop    %ebp
 9fb:	c3                   	ret    
 9fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a00:	39 c2                	cmp    %eax,%edx
 a02:	72 c4                	jb     9c8 <free+0x18>
 a04:	39 c1                	cmp    %eax,%ecx
 a06:	73 c0                	jae    9c8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a08:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a0b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a0e:	39 f8                	cmp    %edi,%eax
 a10:	75 d0                	jne    9e2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a12:	03 70 04             	add    0x4(%eax),%esi
 a15:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a18:	8b 02                	mov    (%edx),%eax
 a1a:	8b 00                	mov    (%eax),%eax
 a1c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a1f:	8b 42 04             	mov    0x4(%edx),%eax
 a22:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a25:	39 f1                	cmp    %esi,%ecx
 a27:	75 c6                	jne    9ef <free+0x3f>
    p->s.size += bp->s.size;
 a29:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a2c:	89 15 18 10 00 00    	mov    %edx,0x1018
    p->s.size += bp->s.size;
 a32:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a35:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a38:	89 0a                	mov    %ecx,(%edx)
}
 a3a:	5b                   	pop    %ebx
 a3b:	5e                   	pop    %esi
 a3c:	5f                   	pop    %edi
 a3d:	5d                   	pop    %ebp
 a3e:	c3                   	ret    
 a3f:	90                   	nop

00000a40 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a40:	55                   	push   %ebp
 a41:	89 e5                	mov    %esp,%ebp
 a43:	57                   	push   %edi
 a44:	56                   	push   %esi
 a45:	53                   	push   %ebx
 a46:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a49:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a4c:	8b 3d 18 10 00 00    	mov    0x1018,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a52:	8d 70 07             	lea    0x7(%eax),%esi
 a55:	c1 ee 03             	shr    $0x3,%esi
 a58:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a5b:	85 ff                	test   %edi,%edi
 a5d:	0f 84 9d 00 00 00    	je     b00 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a63:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a65:	8b 4a 04             	mov    0x4(%edx),%ecx
 a68:	39 f1                	cmp    %esi,%ecx
 a6a:	73 6a                	jae    ad6 <malloc+0x96>
 a6c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a71:	39 de                	cmp    %ebx,%esi
 a73:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a76:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a7d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a80:	eb 17                	jmp    a99 <malloc+0x59>
 a82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a88:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a8a:	8b 48 04             	mov    0x4(%eax),%ecx
 a8d:	39 f1                	cmp    %esi,%ecx
 a8f:	73 4f                	jae    ae0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a91:	8b 3d 18 10 00 00    	mov    0x1018,%edi
 a97:	89 c2                	mov    %eax,%edx
 a99:	39 d7                	cmp    %edx,%edi
 a9b:	75 eb                	jne    a88 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a9d:	83 ec 0c             	sub    $0xc,%esp
 aa0:	ff 75 e4             	push   -0x1c(%ebp)
 aa3:	e8 84 fc ff ff       	call   72c <sbrk>
  if(p == (char*)-1)
 aa8:	83 c4 10             	add    $0x10,%esp
 aab:	83 f8 ff             	cmp    $0xffffffff,%eax
 aae:	74 1c                	je     acc <malloc+0x8c>
  hp->s.size = nu;
 ab0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ab3:	83 ec 0c             	sub    $0xc,%esp
 ab6:	83 c0 08             	add    $0x8,%eax
 ab9:	50                   	push   %eax
 aba:	e8 f1 fe ff ff       	call   9b0 <free>
  return freep;
 abf:	8b 15 18 10 00 00    	mov    0x1018,%edx
      if((p = morecore(nunits)) == 0)
 ac5:	83 c4 10             	add    $0x10,%esp
 ac8:	85 d2                	test   %edx,%edx
 aca:	75 bc                	jne    a88 <malloc+0x48>
        return 0;
  }
}
 acc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 acf:	31 c0                	xor    %eax,%eax
}
 ad1:	5b                   	pop    %ebx
 ad2:	5e                   	pop    %esi
 ad3:	5f                   	pop    %edi
 ad4:	5d                   	pop    %ebp
 ad5:	c3                   	ret    
    if(p->s.size >= nunits){
 ad6:	89 d0                	mov    %edx,%eax
 ad8:	89 fa                	mov    %edi,%edx
 ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ae0:	39 ce                	cmp    %ecx,%esi
 ae2:	74 4c                	je     b30 <malloc+0xf0>
        p->s.size -= nunits;
 ae4:	29 f1                	sub    %esi,%ecx
 ae6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ae9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 aec:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 aef:	89 15 18 10 00 00    	mov    %edx,0x1018
}
 af5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 af8:	83 c0 08             	add    $0x8,%eax
}
 afb:	5b                   	pop    %ebx
 afc:	5e                   	pop    %esi
 afd:	5f                   	pop    %edi
 afe:	5d                   	pop    %ebp
 aff:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b00:	c7 05 18 10 00 00 1c 	movl   $0x101c,0x1018
 b07:	10 00 00 
    base.s.size = 0;
 b0a:	bf 1c 10 00 00       	mov    $0x101c,%edi
    base.s.ptr = freep = prevp = &base;
 b0f:	c7 05 1c 10 00 00 1c 	movl   $0x101c,0x101c
 b16:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b19:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b1b:	c7 05 20 10 00 00 00 	movl   $0x0,0x1020
 b22:	00 00 00 
    if(p->s.size >= nunits){
 b25:	e9 42 ff ff ff       	jmp    a6c <malloc+0x2c>
 b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b30:	8b 08                	mov    (%eax),%ecx
 b32:	89 0a                	mov    %ecx,(%edx)
 b34:	eb b9                	jmp    aef <malloc+0xaf>
