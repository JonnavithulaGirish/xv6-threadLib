
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
  12:	e8 bf 06 00 00       	call   6d6 <getpid>

   int arg1 = 35;
   int arg2 = 42;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 35;
  1a:	c7 45 f0 23 00 00 00 	movl   $0x23,-0x10(%ebp)
   ppid = getpid();
  21:	a3 b4 0f 00 00       	mov    %eax,0xfb4
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
  48:	e8 33 05 00 00       	call   580 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d b0 0f 00 00 03 	cmpl   $0x3,0xfb0
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 24                	push   $0x24
  60:	68 e8 0a 00 00       	push   $0xae8
  65:	68 f2 0a 00 00       	push   $0xaf2
  6a:	6a 01                	push   $0x1
  6c:	e8 4f 07 00 00       	call   7c0 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 77 0b 00 00       	push   $0xb77
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 23                	push   $0x23
  7d:	68 e8 0a 00 00       	push   $0xae8
  82:	68 f2 0a 00 00       	push   $0xaf2
  87:	6a 01                	push   $0x1
  89:	e8 32 07 00 00       	call   7c0 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 60 0b 00 00       	push   $0xb60
  96:	68 09 0b 00 00       	push   $0xb09
  9b:	6a 01                	push   $0x1
  9d:	e8 1e 07 00 00       	call   7c0 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 1d 0b 00 00       	push   $0xb1d
  a9:	6a 01                	push   $0x1
  ab:	e8 10 07 00 00       	call   7c0 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 b4 0f 00 00    	push   0xfb4
  b7:	e8 ca 05 00 00       	call   686 <kill>
  bc:	e8 95 05 00 00       	call   656 <exit>
   assert(thread_pid > 0);
  c1:	6a 20                	push   $0x20
  c3:	68 e8 0a 00 00       	push   $0xae8
  c8:	68 f2 0a 00 00       	push   $0xaf2
  cd:	6a 01                	push   $0x1
  cf:	e8 ec 06 00 00       	call   7c0 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 51 0b 00 00       	push   $0xb51
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 83 0b 00 00       	push   $0xb83
  e5:	6a 01                	push   $0x1
  e7:	e8 d4 06 00 00       	call   7c0 <printf>
   exit();
  ec:	e8 65 05 00 00       	call   656 <exit>
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
 118:	83 3d b0 0f 00 00 02 	cmpl   $0x2,0xfb0
 11f:	0f 84 80 00 00 00    	je     1a5 <nested_worker+0xa5>
 125:	6a 30                	push   $0x30
 127:	68 e8 0a 00 00       	push   $0xae8
 12c:	68 f2 0a 00 00       	push   $0xaf2
 131:	6a 01                	push   $0x1
 133:	e8 88 06 00 00       	call   7c0 <printf>
 138:	83 c4 0c             	add    $0xc,%esp
 13b:	68 39 0b 00 00       	push   $0xb39
 140:	eb 1b                	jmp    15d <nested_worker+0x5d>
   assert(arg2_int == 42);
 142:	6a 2f                	push   $0x2f
 144:	68 e8 0a 00 00       	push   $0xae8
 149:	68 f2 0a 00 00       	push   $0xaf2
 14e:	6a 01                	push   $0x1
 150:	e8 6b 06 00 00       	call   7c0 <printf>
 155:	83 c4 0c             	add    $0xc,%esp
 158:	68 2a 0b 00 00       	push   $0xb2a
 15d:	68 09 0b 00 00       	push   $0xb09
 162:	6a 01                	push   $0x1
 164:	e8 57 06 00 00       	call   7c0 <printf>
 169:	58                   	pop    %eax
 16a:	5a                   	pop    %edx
 16b:	68 1d 0b 00 00       	push   $0xb1d
 170:	6a 01                	push   $0x1
 172:	e8 49 06 00 00       	call   7c0 <printf>
 177:	59                   	pop    %ecx
 178:	ff 35 b4 0f 00 00    	push   0xfb4
 17e:	e8 03 05 00 00       	call   686 <kill>
 183:	e8 ce 04 00 00       	call   656 <exit>
   assert(arg1_int == 35);
 188:	6a 2e                	push   $0x2e
 18a:	68 e8 0a 00 00       	push   $0xae8
 18f:	68 f2 0a 00 00       	push   $0xaf2
 194:	6a 01                	push   $0x1
 196:	e8 25 06 00 00       	call   7c0 <printf>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	68 fa 0a 00 00       	push   $0xafa
 1a3:	eb b8                	jmp    15d <nested_worker+0x5d>
   global++;
 1a5:	c7 05 b0 0f 00 00 03 	movl   $0x3,0xfb0
 1ac:	00 00 00 
   exit();
 1af:	e8 a2 04 00 00       	call   656 <exit>
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
 1e1:	83 3d b0 0f 00 00 01 	cmpl   $0x1,0xfb0
 1e8:	0f 84 80 00 00 00    	je     26e <worker+0xae>
 1ee:	6a 3b                	push   $0x3b
 1f0:	68 e8 0a 00 00       	push   $0xae8
 1f5:	68 f2 0a 00 00       	push   $0xaf2
 1fa:	6a 01                	push   $0x1
 1fc:	e8 bf 05 00 00       	call   7c0 <printf>
 201:	83 c4 0c             	add    $0xc,%esp
 204:	68 45 0b 00 00       	push   $0xb45
 209:	eb 1b                	jmp    226 <worker+0x66>
   assert(arg2_int == 42);
 20b:	6a 3a                	push   $0x3a
 20d:	68 e8 0a 00 00       	push   $0xae8
 212:	68 f2 0a 00 00       	push   $0xaf2
 217:	6a 01                	push   $0x1
 219:	e8 a2 05 00 00       	call   7c0 <printf>
 21e:	83 c4 0c             	add    $0xc,%esp
 221:	68 2a 0b 00 00       	push   $0xb2a
 226:	68 09 0b 00 00       	push   $0xb09
 22b:	6a 01                	push   $0x1
 22d:	e8 8e 05 00 00       	call   7c0 <printf>
 232:	5a                   	pop    %edx
 233:	59                   	pop    %ecx
 234:	68 1d 0b 00 00       	push   $0xb1d
 239:	6a 01                	push   $0x1
 23b:	e8 80 05 00 00       	call   7c0 <printf>
 240:	5b                   	pop    %ebx
 241:	ff 35 b4 0f 00 00    	push   0xfb4
 247:	e8 3a 04 00 00       	call   686 <kill>
 24c:	e8 05 04 00 00       	call   656 <exit>
   assert(arg1_int == 35);
 251:	6a 39                	push   $0x39
 253:	68 e8 0a 00 00       	push   $0xae8
 258:	68 f2 0a 00 00       	push   $0xaf2
 25d:	6a 01                	push   $0x1
 25f:	e8 5c 05 00 00       	call   7c0 <printf>
 264:	83 c4 0c             	add    $0xc,%esp
 267:	68 fa 0a 00 00       	push   $0xafa
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
 27c:	c7 05 b0 0f 00 00 02 	movl   $0x2,0xfb0
 283:	00 00 00 
   int nested_thread_pid = thread_create(nested_worker, &arg1_int, &arg2_int);
 286:	e8 85 02 00 00       	call   510 <thread_create>
 28b:	89 c3                	mov    %eax,%ebx
   int nested_join_pid = thread_join();
 28d:	e8 ee 02 00 00       	call   580 <thread_join>
   assert(nested_join_pid == nested_thread_pid);
 292:	83 c4 10             	add    $0x10,%esp
 295:	39 c3                	cmp    %eax,%ebx
 297:	74 20                	je     2b9 <worker+0xf9>
 299:	6a 3f                	push   $0x3f
 29b:	68 e8 0a 00 00       	push   $0xae8
 2a0:	68 f2 0a 00 00       	push   $0xaf2
 2a5:	6a 01                	push   $0x1
 2a7:	e8 14 05 00 00       	call   7c0 <printf>
 2ac:	83 c4 0c             	add    $0xc,%esp
 2af:	68 90 0b 00 00       	push   $0xb90
 2b4:	e9 6d ff ff ff       	jmp    226 <worker+0x66>
   exit();
 2b9:	e8 98 03 00 00       	call   656 <exit>
 2be:	66 90                	xchg   %ax,%ax

000002c0 <strcpy>:

lock_t lk_create,lk_join;

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
 3f8:	e8 71 02 00 00       	call   66e <read>
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
 45d:	e8 34 02 00 00       	call   696 <open>
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
 472:	e8 37 02 00 00       	call   6ae <fstat>
  close(fd);
 477:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 47a:	89 c6                	mov    %eax,%esi
  close(fd);
 47c:	e8 fd 01 00 00       	call   67e <close>
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
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 511:	ba 01 00 00 00       	mov    $0x1,%edx
 516:	89 e5                	mov    %esp,%ebp
 518:	83 ec 08             	sub    $0x8,%esp
 51b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 51f:	90                   	nop
 520:	89 d0                	mov    %edx,%eax
 522:	f0 87 05 bc 0f 00 00 	lock xchg %eax,0xfbc
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 529:	85 c0                	test   %eax,%eax
 52b:	75 f3                	jne    520 <thread_create+0x10>
    __sync_synchronize();
 52d:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 532:	83 ec 0c             	sub    $0xc,%esp
 535:	68 00 20 00 00       	push   $0x2000
 53a:	e8 b1 04 00 00       	call   9f0 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 53f:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 544:	c7 05 bc 0f 00 00 00 	movl   $0x0,0xfbc
 54b:	00 00 00 
	if((uint)stack % PGSIZE)
 54e:	89 c2                	mov    %eax,%edx
 550:	83 c4 10             	add    $0x10,%esp
 553:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 559:	74 07                	je     562 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 55b:	29 d0                	sub    %edx,%eax
 55d:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 562:	50                   	push   %eax
 563:	ff 75 10             	push   0x10(%ebp)
 566:	ff 75 0c             	push   0xc(%ebp)
 569:	ff 75 08             	push   0x8(%ebp)
 56c:	e8 85 01 00 00       	call   6f6 <clone>
}
 571:	c9                   	leave  
 572:	c3                   	ret    
 573:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000580 <thread_join>:
int thread_join(){
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	53                   	push   %ebx
	int result= join(&stack);
 584:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 587:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 58a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 591:	50                   	push   %eax
 592:	e8 67 01 00 00       	call   6fe <join>
    while(xchg(&(lock->mutex), 1) != 0);
 597:	83 c4 10             	add    $0x10,%esp
 59a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 59f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 5a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5a8:	89 d0                	mov    %edx,%eax
 5aa:	f0 87 05 b8 0f 00 00 	lock xchg %eax,0xfb8
 5b1:	85 c0                	test   %eax,%eax
 5b3:	75 f3                	jne    5a8 <thread_join+0x28>
    __sync_synchronize();
 5b5:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 5ba:	83 ec 0c             	sub    $0xc,%esp
 5bd:	ff 75 f4             	push   -0xc(%ebp)
 5c0:	e8 9b 03 00 00       	call   960 <free>
   __sync_synchronize();
 5c5:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 5ca:	c7 05 b8 0f 00 00 00 	movl   $0x0,0xfb8
 5d1:	00 00 00 
}
 5d4:	89 d8                	mov    %ebx,%eax
 5d6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5d9:	c9                   	leave  
 5da:	c3                   	ret    
 5db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop

000005e0 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 5e0:	c7 05 bc 0f 00 00 00 	movl   $0x0,0xfbc
 5e7:	00 00 00 
 5ea:	c7 05 b8 0f 00 00 00 	movl   $0x0,0xfb8
 5f1:	00 00 00 
}
 5f4:	c3                   	ret    
 5f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000600 <lock_acquire>:
void lock_acquire(lock_t *lock){
 600:	55                   	push   %ebp
 601:	b9 01 00 00 00       	mov    $0x1,%ecx
 606:	89 e5                	mov    %esp,%ebp
 608:	8b 55 08             	mov    0x8(%ebp),%edx
 60b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 60f:	90                   	nop
 610:	89 c8                	mov    %ecx,%eax
 612:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 615:	85 c0                	test   %eax,%eax
 617:	75 f7                	jne    610 <lock_acquire+0x10>
    __sync_synchronize();
 619:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 61e:	5d                   	pop    %ebp
 61f:	c3                   	ret    

00000620 <lock_release>:
void lock_release(lock_t *lock){
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 626:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 62b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 631:	5d                   	pop    %ebp
 632:	c3                   	ret    
 633:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000640 <lock_init>:
void lock_init(lock_t *lock) {
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 643:	8b 45 08             	mov    0x8(%ebp),%eax
 646:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 64c:	5d                   	pop    %ebp
 64d:	c3                   	ret    

0000064e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 64e:	b8 01 00 00 00       	mov    $0x1,%eax
 653:	cd 40                	int    $0x40
 655:	c3                   	ret    

00000656 <exit>:
SYSCALL(exit)
 656:	b8 02 00 00 00       	mov    $0x2,%eax
 65b:	cd 40                	int    $0x40
 65d:	c3                   	ret    

0000065e <wait>:
SYSCALL(wait)
 65e:	b8 03 00 00 00       	mov    $0x3,%eax
 663:	cd 40                	int    $0x40
 665:	c3                   	ret    

00000666 <pipe>:
SYSCALL(pipe)
 666:	b8 04 00 00 00       	mov    $0x4,%eax
 66b:	cd 40                	int    $0x40
 66d:	c3                   	ret    

0000066e <read>:
SYSCALL(read)
 66e:	b8 05 00 00 00       	mov    $0x5,%eax
 673:	cd 40                	int    $0x40
 675:	c3                   	ret    

00000676 <write>:
SYSCALL(write)
 676:	b8 10 00 00 00       	mov    $0x10,%eax
 67b:	cd 40                	int    $0x40
 67d:	c3                   	ret    

0000067e <close>:
SYSCALL(close)
 67e:	b8 15 00 00 00       	mov    $0x15,%eax
 683:	cd 40                	int    $0x40
 685:	c3                   	ret    

00000686 <kill>:
SYSCALL(kill)
 686:	b8 06 00 00 00       	mov    $0x6,%eax
 68b:	cd 40                	int    $0x40
 68d:	c3                   	ret    

0000068e <exec>:
SYSCALL(exec)
 68e:	b8 07 00 00 00       	mov    $0x7,%eax
 693:	cd 40                	int    $0x40
 695:	c3                   	ret    

00000696 <open>:
SYSCALL(open)
 696:	b8 0f 00 00 00       	mov    $0xf,%eax
 69b:	cd 40                	int    $0x40
 69d:	c3                   	ret    

0000069e <mknod>:
SYSCALL(mknod)
 69e:	b8 11 00 00 00       	mov    $0x11,%eax
 6a3:	cd 40                	int    $0x40
 6a5:	c3                   	ret    

000006a6 <unlink>:
SYSCALL(unlink)
 6a6:	b8 12 00 00 00       	mov    $0x12,%eax
 6ab:	cd 40                	int    $0x40
 6ad:	c3                   	ret    

000006ae <fstat>:
SYSCALL(fstat)
 6ae:	b8 08 00 00 00       	mov    $0x8,%eax
 6b3:	cd 40                	int    $0x40
 6b5:	c3                   	ret    

000006b6 <link>:
SYSCALL(link)
 6b6:	b8 13 00 00 00       	mov    $0x13,%eax
 6bb:	cd 40                	int    $0x40
 6bd:	c3                   	ret    

000006be <mkdir>:
SYSCALL(mkdir)
 6be:	b8 14 00 00 00       	mov    $0x14,%eax
 6c3:	cd 40                	int    $0x40
 6c5:	c3                   	ret    

000006c6 <chdir>:
SYSCALL(chdir)
 6c6:	b8 09 00 00 00       	mov    $0x9,%eax
 6cb:	cd 40                	int    $0x40
 6cd:	c3                   	ret    

000006ce <dup>:
SYSCALL(dup)
 6ce:	b8 0a 00 00 00       	mov    $0xa,%eax
 6d3:	cd 40                	int    $0x40
 6d5:	c3                   	ret    

000006d6 <getpid>:
SYSCALL(getpid)
 6d6:	b8 0b 00 00 00       	mov    $0xb,%eax
 6db:	cd 40                	int    $0x40
 6dd:	c3                   	ret    

000006de <sbrk>:
SYSCALL(sbrk)
 6de:	b8 0c 00 00 00       	mov    $0xc,%eax
 6e3:	cd 40                	int    $0x40
 6e5:	c3                   	ret    

000006e6 <sleep>:
SYSCALL(sleep)
 6e6:	b8 0d 00 00 00       	mov    $0xd,%eax
 6eb:	cd 40                	int    $0x40
 6ed:	c3                   	ret    

000006ee <uptime>:
SYSCALL(uptime)
 6ee:	b8 0e 00 00 00       	mov    $0xe,%eax
 6f3:	cd 40                	int    $0x40
 6f5:	c3                   	ret    

000006f6 <clone>:
SYSCALL(clone)
 6f6:	b8 16 00 00 00       	mov    $0x16,%eax
 6fb:	cd 40                	int    $0x40
 6fd:	c3                   	ret    

000006fe <join>:
SYSCALL(join)
 6fe:	b8 17 00 00 00       	mov    $0x17,%eax
 703:	cd 40                	int    $0x40
 705:	c3                   	ret    
 706:	66 90                	xchg   %ax,%ax
 708:	66 90                	xchg   %ax,%ax
 70a:	66 90                	xchg   %ax,%ax
 70c:	66 90                	xchg   %ax,%ax
 70e:	66 90                	xchg   %ax,%ax

00000710 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	57                   	push   %edi
 714:	56                   	push   %esi
 715:	53                   	push   %ebx
 716:	83 ec 3c             	sub    $0x3c,%esp
 719:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 71c:	89 d1                	mov    %edx,%ecx
{
 71e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 721:	85 d2                	test   %edx,%edx
 723:	0f 89 7f 00 00 00    	jns    7a8 <printint+0x98>
 729:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 72d:	74 79                	je     7a8 <printint+0x98>
    neg = 1;
 72f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 736:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 738:	31 db                	xor    %ebx,%ebx
 73a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 73d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 740:	89 c8                	mov    %ecx,%eax
 742:	31 d2                	xor    %edx,%edx
 744:	89 cf                	mov    %ecx,%edi
 746:	f7 75 c4             	divl   -0x3c(%ebp)
 749:	0f b6 92 14 0c 00 00 	movzbl 0xc14(%edx),%edx
 750:	89 45 c0             	mov    %eax,-0x40(%ebp)
 753:	89 d8                	mov    %ebx,%eax
 755:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 758:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 75b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 75e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 761:	76 dd                	jbe    740 <printint+0x30>
  if(neg)
 763:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 766:	85 c9                	test   %ecx,%ecx
 768:	74 0c                	je     776 <printint+0x66>
    buf[i++] = '-';
 76a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 76f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 771:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 776:	8b 7d b8             	mov    -0x48(%ebp),%edi
 779:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 77d:	eb 07                	jmp    786 <printint+0x76>
 77f:	90                   	nop
    putc(fd, buf[i]);
 780:	0f b6 13             	movzbl (%ebx),%edx
 783:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 786:	83 ec 04             	sub    $0x4,%esp
 789:	88 55 d7             	mov    %dl,-0x29(%ebp)
 78c:	6a 01                	push   $0x1
 78e:	56                   	push   %esi
 78f:	57                   	push   %edi
 790:	e8 e1 fe ff ff       	call   676 <write>
  while(--i >= 0)
 795:	83 c4 10             	add    $0x10,%esp
 798:	39 de                	cmp    %ebx,%esi
 79a:	75 e4                	jne    780 <printint+0x70>
}
 79c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 79f:	5b                   	pop    %ebx
 7a0:	5e                   	pop    %esi
 7a1:	5f                   	pop    %edi
 7a2:	5d                   	pop    %ebp
 7a3:	c3                   	ret    
 7a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7af:	eb 87                	jmp    738 <printint+0x28>
 7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bf:	90                   	nop

000007c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 7c0:	55                   	push   %ebp
 7c1:	89 e5                	mov    %esp,%ebp
 7c3:	57                   	push   %edi
 7c4:	56                   	push   %esi
 7c5:	53                   	push   %ebx
 7c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 7c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 7cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 7cf:	0f b6 13             	movzbl (%ebx),%edx
 7d2:	84 d2                	test   %dl,%dl
 7d4:	74 6a                	je     840 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7d6:	8d 45 10             	lea    0x10(%ebp),%eax
 7d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7e4:	eb 36                	jmp    81c <printf+0x5c>
 7e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
 7f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7f8:	83 f8 25             	cmp    $0x25,%eax
 7fb:	74 15                	je     812 <printf+0x52>
  write(fd, &c, 1);
 7fd:	83 ec 04             	sub    $0x4,%esp
 800:	88 55 e7             	mov    %dl,-0x19(%ebp)
 803:	6a 01                	push   $0x1
 805:	57                   	push   %edi
 806:	56                   	push   %esi
 807:	e8 6a fe ff ff       	call   676 <write>
 80c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 80f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 812:	0f b6 13             	movzbl (%ebx),%edx
 815:	83 c3 01             	add    $0x1,%ebx
 818:	84 d2                	test   %dl,%dl
 81a:	74 24                	je     840 <printf+0x80>
    c = fmt[i] & 0xff;
 81c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 81f:	85 c9                	test   %ecx,%ecx
 821:	74 cd                	je     7f0 <printf+0x30>
      }
    } else if(state == '%'){
 823:	83 f9 25             	cmp    $0x25,%ecx
 826:	75 ea                	jne    812 <printf+0x52>
      if(c == 'd'){
 828:	83 f8 25             	cmp    $0x25,%eax
 82b:	0f 84 07 01 00 00    	je     938 <printf+0x178>
 831:	83 e8 63             	sub    $0x63,%eax
 834:	83 f8 15             	cmp    $0x15,%eax
 837:	77 17                	ja     850 <printf+0x90>
 839:	ff 24 85 bc 0b 00 00 	jmp    *0xbbc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 840:	8d 65 f4             	lea    -0xc(%ebp),%esp
 843:	5b                   	pop    %ebx
 844:	5e                   	pop    %esi
 845:	5f                   	pop    %edi
 846:	5d                   	pop    %ebp
 847:	c3                   	ret    
 848:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84f:	90                   	nop
  write(fd, &c, 1);
 850:	83 ec 04             	sub    $0x4,%esp
 853:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 856:	6a 01                	push   $0x1
 858:	57                   	push   %edi
 859:	56                   	push   %esi
 85a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 85e:	e8 13 fe ff ff       	call   676 <write>
        putc(fd, c);
 863:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 867:	83 c4 0c             	add    $0xc,%esp
 86a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 86d:	6a 01                	push   $0x1
 86f:	57                   	push   %edi
 870:	56                   	push   %esi
 871:	e8 00 fe ff ff       	call   676 <write>
        putc(fd, c);
 876:	83 c4 10             	add    $0x10,%esp
      state = 0;
 879:	31 c9                	xor    %ecx,%ecx
 87b:	eb 95                	jmp    812 <printf+0x52>
 87d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 880:	83 ec 0c             	sub    $0xc,%esp
 883:	b9 10 00 00 00       	mov    $0x10,%ecx
 888:	6a 00                	push   $0x0
 88a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 88d:	8b 10                	mov    (%eax),%edx
 88f:	89 f0                	mov    %esi,%eax
 891:	e8 7a fe ff ff       	call   710 <printint>
        ap++;
 896:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 89a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 89d:	31 c9                	xor    %ecx,%ecx
 89f:	e9 6e ff ff ff       	jmp    812 <printf+0x52>
 8a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8ab:	8b 10                	mov    (%eax),%edx
        ap++;
 8ad:	83 c0 04             	add    $0x4,%eax
 8b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8b3:	85 d2                	test   %edx,%edx
 8b5:	0f 84 8d 00 00 00    	je     948 <printf+0x188>
        while(*s != 0){
 8bb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8be:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 8c0:	84 c0                	test   %al,%al
 8c2:	0f 84 4a ff ff ff    	je     812 <printf+0x52>
 8c8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8cb:	89 d3                	mov    %edx,%ebx
 8cd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8d0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8d3:	83 c3 01             	add    $0x1,%ebx
 8d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8d9:	6a 01                	push   $0x1
 8db:	57                   	push   %edi
 8dc:	56                   	push   %esi
 8dd:	e8 94 fd ff ff       	call   676 <write>
        while(*s != 0){
 8e2:	0f b6 03             	movzbl (%ebx),%eax
 8e5:	83 c4 10             	add    $0x10,%esp
 8e8:	84 c0                	test   %al,%al
 8ea:	75 e4                	jne    8d0 <printf+0x110>
      state = 0;
 8ec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8ef:	31 c9                	xor    %ecx,%ecx
 8f1:	e9 1c ff ff ff       	jmp    812 <printf+0x52>
 8f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 900:	83 ec 0c             	sub    $0xc,%esp
 903:	b9 0a 00 00 00       	mov    $0xa,%ecx
 908:	6a 01                	push   $0x1
 90a:	e9 7b ff ff ff       	jmp    88a <printf+0xca>
 90f:	90                   	nop
        putc(fd, *ap);
 910:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 913:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 916:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 918:	6a 01                	push   $0x1
 91a:	57                   	push   %edi
 91b:	56                   	push   %esi
        putc(fd, *ap);
 91c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 91f:	e8 52 fd ff ff       	call   676 <write>
        ap++;
 924:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 928:	83 c4 10             	add    $0x10,%esp
      state = 0;
 92b:	31 c9                	xor    %ecx,%ecx
 92d:	e9 e0 fe ff ff       	jmp    812 <printf+0x52>
 932:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 938:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 93b:	83 ec 04             	sub    $0x4,%esp
 93e:	e9 2a ff ff ff       	jmp    86d <printf+0xad>
 943:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 947:	90                   	nop
          s = "(null)";
 948:	ba b5 0b 00 00       	mov    $0xbb5,%edx
        while(*s != 0){
 94d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 950:	b8 28 00 00 00       	mov    $0x28,%eax
 955:	89 d3                	mov    %edx,%ebx
 957:	e9 74 ff ff ff       	jmp    8d0 <printf+0x110>
 95c:	66 90                	xchg   %ax,%ax
 95e:	66 90                	xchg   %ax,%ax

00000960 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 960:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 961:	a1 c0 0f 00 00       	mov    0xfc0,%eax
{
 966:	89 e5                	mov    %esp,%ebp
 968:	57                   	push   %edi
 969:	56                   	push   %esi
 96a:	53                   	push   %ebx
 96b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 96e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 971:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 978:	89 c2                	mov    %eax,%edx
 97a:	8b 00                	mov    (%eax),%eax
 97c:	39 ca                	cmp    %ecx,%edx
 97e:	73 30                	jae    9b0 <free+0x50>
 980:	39 c1                	cmp    %eax,%ecx
 982:	72 04                	jb     988 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 984:	39 c2                	cmp    %eax,%edx
 986:	72 f0                	jb     978 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 988:	8b 73 fc             	mov    -0x4(%ebx),%esi
 98b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 98e:	39 f8                	cmp    %edi,%eax
 990:	74 30                	je     9c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 992:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 995:	8b 42 04             	mov    0x4(%edx),%eax
 998:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 99b:	39 f1                	cmp    %esi,%ecx
 99d:	74 3a                	je     9d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 99f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9a1:	5b                   	pop    %ebx
  freep = p;
 9a2:	89 15 c0 0f 00 00    	mov    %edx,0xfc0
}
 9a8:	5e                   	pop    %esi
 9a9:	5f                   	pop    %edi
 9aa:	5d                   	pop    %ebp
 9ab:	c3                   	ret    
 9ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9b0:	39 c2                	cmp    %eax,%edx
 9b2:	72 c4                	jb     978 <free+0x18>
 9b4:	39 c1                	cmp    %eax,%ecx
 9b6:	73 c0                	jae    978 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9be:	39 f8                	cmp    %edi,%eax
 9c0:	75 d0                	jne    992 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 9c2:	03 70 04             	add    0x4(%eax),%esi
 9c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 9c8:	8b 02                	mov    (%edx),%eax
 9ca:	8b 00                	mov    (%eax),%eax
 9cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 9cf:	8b 42 04             	mov    0x4(%edx),%eax
 9d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9d5:	39 f1                	cmp    %esi,%ecx
 9d7:	75 c6                	jne    99f <free+0x3f>
    p->s.size += bp->s.size;
 9d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9dc:	89 15 c0 0f 00 00    	mov    %edx,0xfc0
    p->s.size += bp->s.size;
 9e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9e8:	89 0a                	mov    %ecx,(%edx)
}
 9ea:	5b                   	pop    %ebx
 9eb:	5e                   	pop    %esi
 9ec:	5f                   	pop    %edi
 9ed:	5d                   	pop    %ebp
 9ee:	c3                   	ret    
 9ef:	90                   	nop

000009f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9f0:	55                   	push   %ebp
 9f1:	89 e5                	mov    %esp,%ebp
 9f3:	57                   	push   %edi
 9f4:	56                   	push   %esi
 9f5:	53                   	push   %ebx
 9f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9fc:	8b 3d c0 0f 00 00    	mov    0xfc0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a02:	8d 70 07             	lea    0x7(%eax),%esi
 a05:	c1 ee 03             	shr    $0x3,%esi
 a08:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a0b:	85 ff                	test   %edi,%edi
 a0d:	0f 84 9d 00 00 00    	je     ab0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a13:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a15:	8b 4a 04             	mov    0x4(%edx),%ecx
 a18:	39 f1                	cmp    %esi,%ecx
 a1a:	73 6a                	jae    a86 <malloc+0x96>
 a1c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a21:	39 de                	cmp    %ebx,%esi
 a23:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a26:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a2d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a30:	eb 17                	jmp    a49 <malloc+0x59>
 a32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a38:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a3a:	8b 48 04             	mov    0x4(%eax),%ecx
 a3d:	39 f1                	cmp    %esi,%ecx
 a3f:	73 4f                	jae    a90 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a41:	8b 3d c0 0f 00 00    	mov    0xfc0,%edi
 a47:	89 c2                	mov    %eax,%edx
 a49:	39 d7                	cmp    %edx,%edi
 a4b:	75 eb                	jne    a38 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a4d:	83 ec 0c             	sub    $0xc,%esp
 a50:	ff 75 e4             	push   -0x1c(%ebp)
 a53:	e8 86 fc ff ff       	call   6de <sbrk>
  if(p == (char*)-1)
 a58:	83 c4 10             	add    $0x10,%esp
 a5b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a5e:	74 1c                	je     a7c <malloc+0x8c>
  hp->s.size = nu;
 a60:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a63:	83 ec 0c             	sub    $0xc,%esp
 a66:	83 c0 08             	add    $0x8,%eax
 a69:	50                   	push   %eax
 a6a:	e8 f1 fe ff ff       	call   960 <free>
  return freep;
 a6f:	8b 15 c0 0f 00 00    	mov    0xfc0,%edx
      if((p = morecore(nunits)) == 0)
 a75:	83 c4 10             	add    $0x10,%esp
 a78:	85 d2                	test   %edx,%edx
 a7a:	75 bc                	jne    a38 <malloc+0x48>
        return 0;
  }
}
 a7c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a7f:	31 c0                	xor    %eax,%eax
}
 a81:	5b                   	pop    %ebx
 a82:	5e                   	pop    %esi
 a83:	5f                   	pop    %edi
 a84:	5d                   	pop    %ebp
 a85:	c3                   	ret    
    if(p->s.size >= nunits){
 a86:	89 d0                	mov    %edx,%eax
 a88:	89 fa                	mov    %edi,%edx
 a8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a90:	39 ce                	cmp    %ecx,%esi
 a92:	74 4c                	je     ae0 <malloc+0xf0>
        p->s.size -= nunits;
 a94:	29 f1                	sub    %esi,%ecx
 a96:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a99:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a9c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a9f:	89 15 c0 0f 00 00    	mov    %edx,0xfc0
}
 aa5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 aa8:	83 c0 08             	add    $0x8,%eax
}
 aab:	5b                   	pop    %ebx
 aac:	5e                   	pop    %esi
 aad:	5f                   	pop    %edi
 aae:	5d                   	pop    %ebp
 aaf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 ab0:	c7 05 c0 0f 00 00 c4 	movl   $0xfc4,0xfc0
 ab7:	0f 00 00 
    base.s.size = 0;
 aba:	bf c4 0f 00 00       	mov    $0xfc4,%edi
    base.s.ptr = freep = prevp = &base;
 abf:	c7 05 c4 0f 00 00 c4 	movl   $0xfc4,0xfc4
 ac6:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 acb:	c7 05 c8 0f 00 00 00 	movl   $0x0,0xfc8
 ad2:	00 00 00 
    if(p->s.size >= nunits){
 ad5:	e9 42 ff ff ff       	jmp    a1c <malloc+0x2c>
 ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 ae0:	8b 08                	mov    (%eax),%ecx
 ae2:	89 0a                	mov    %ecx,(%edx)
 ae4:	eb b9                	jmp    a9f <malloc+0xaf>
