
_test_10:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:

void worker(void *arg1, void *arg2);

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
  12:	e8 bf 05 00 00       	call   5d6 <getpid>

   int arg1 = 35;
   int arg2 = 42;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 35;
  1a:	c7 45 f0 23 00 00 00 	movl   $0x23,-0x10(%ebp)
   ppid = getpid();
  21:	a3 68 0e 00 00       	mov    %eax,0xe68
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 00 01 00 00       	push   $0x100
   int arg2 = 42;
  33:	c7 45 f4 2a 00 00 00 	movl   $0x2a,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 d1 03 00 00       	call   410 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 33 04 00 00       	call   480 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 2);
  51:	83 3d 64 0e 00 00 02 	cmpl   $0x2,0xe64
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 23                	push   $0x23
  60:	68 e8 09 00 00       	push   $0x9e8
  65:	68 f2 09 00 00       	push   $0x9f2
  6a:	6a 01                	push   $0x1
  6c:	e8 4f 06 00 00       	call   6c0 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 6b 0a 00 00       	push   $0xa6b
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 22                	push   $0x22
  7d:	68 e8 09 00 00       	push   $0x9e8
  82:	68 f2 09 00 00       	push   $0x9f2
  87:	6a 01                	push   $0x1
  89:	e8 32 06 00 00       	call   6c0 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 54 0a 00 00       	push   $0xa54
  96:	68 09 0a 00 00       	push   $0xa09
  9b:	6a 01                	push   $0x1
  9d:	e8 1e 06 00 00       	call   6c0 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 1d 0a 00 00       	push   $0xa1d
  a9:	6a 01                	push   $0x1
  ab:	e8 10 06 00 00       	call   6c0 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 68 0e 00 00    	push   0xe68
  b7:	e8 ca 04 00 00       	call   586 <kill>
  bc:	e8 95 04 00 00       	call   556 <exit>
   assert(thread_pid > 0);
  c1:	6a 1f                	push   $0x1f
  c3:	68 e8 09 00 00       	push   $0x9e8
  c8:	68 f2 09 00 00       	push   $0x9f2
  cd:	6a 01                	push   $0x1
  cf:	e8 ec 05 00 00       	call   6c0 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 45 0a 00 00       	push   $0xa45
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 77 0a 00 00       	push   $0xa77
  e5:	6a 01                	push   $0x1
  e7:	e8 d4 05 00 00       	call   6c0 <printf>
   exit();
  ec:	e8 65 04 00 00       	call   556 <exit>
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <worker>:
}

void
worker(void *arg1, void *arg2) {
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
 111:	75 75                	jne    188 <worker+0x88>
   assert(arg2_int == 42);
 113:	83 fa 2a             	cmp    $0x2a,%edx
 116:	75 2a                	jne    142 <worker+0x42>
   assert(global == 1);
 118:	83 3d 64 0e 00 00 01 	cmpl   $0x1,0xe64
 11f:	0f 84 80 00 00 00    	je     1a5 <worker+0xa5>
 125:	6a 2f                	push   $0x2f
 127:	68 e8 09 00 00       	push   $0x9e8
 12c:	68 f2 09 00 00       	push   $0x9f2
 131:	6a 01                	push   $0x1
 133:	e8 88 05 00 00       	call   6c0 <printf>
 138:	83 c4 0c             	add    $0xc,%esp
 13b:	68 39 0a 00 00       	push   $0xa39
 140:	eb 1b                	jmp    15d <worker+0x5d>
   assert(arg2_int == 42);
 142:	6a 2e                	push   $0x2e
 144:	68 e8 09 00 00       	push   $0x9e8
 149:	68 f2 09 00 00       	push   $0x9f2
 14e:	6a 01                	push   $0x1
 150:	e8 6b 05 00 00       	call   6c0 <printf>
 155:	83 c4 0c             	add    $0xc,%esp
 158:	68 2a 0a 00 00       	push   $0xa2a
 15d:	68 09 0a 00 00       	push   $0xa09
 162:	6a 01                	push   $0x1
 164:	e8 57 05 00 00       	call   6c0 <printf>
 169:	58                   	pop    %eax
 16a:	5a                   	pop    %edx
 16b:	68 1d 0a 00 00       	push   $0xa1d
 170:	6a 01                	push   $0x1
 172:	e8 49 05 00 00       	call   6c0 <printf>
 177:	59                   	pop    %ecx
 178:	ff 35 68 0e 00 00    	push   0xe68
 17e:	e8 03 04 00 00       	call   586 <kill>
 183:	e8 ce 03 00 00       	call   556 <exit>
   assert(arg1_int == 35);
 188:	6a 2d                	push   $0x2d
 18a:	68 e8 09 00 00       	push   $0x9e8
 18f:	68 f2 09 00 00       	push   $0x9f2
 194:	6a 01                	push   $0x1
 196:	e8 25 05 00 00       	call   6c0 <printf>
 19b:	83 c4 0c             	add    $0xc,%esp
 19e:	68 fa 09 00 00       	push   $0x9fa
 1a3:	eb b8                	jmp    15d <worker+0x5d>
   global++;
 1a5:	c7 05 64 0e 00 00 02 	movl   $0x2,0xe64
 1ac:	00 00 00 
   exit();
 1af:	e8 a2 03 00 00       	call   556 <exit>
 1b4:	66 90                	xchg   %ax,%ax
 1b6:	66 90                	xchg   %ax,%ax
 1b8:	66 90                	xchg   %ax,%ax
 1ba:	66 90                	xchg   %ax,%ax
 1bc:	66 90                	xchg   %ax,%ax
 1be:	66 90                	xchg   %ax,%ax

000001c0 <strcpy>:

lock_t lk_create,lk_join;

char*
strcpy(char *s, const char *t)
{
 1c0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1c1:	31 c0                	xor    %eax,%eax
{
 1c3:	89 e5                	mov    %esp,%ebp
 1c5:	53                   	push   %ebx
 1c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 1d0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 1d4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 1d7:	83 c0 01             	add    $0x1,%eax
 1da:	84 d2                	test   %dl,%dl
 1dc:	75 f2                	jne    1d0 <strcpy+0x10>
    ;
  return os;
}
 1de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1e1:	89 c8                	mov    %ecx,%eax
 1e3:	c9                   	leave  
 1e4:	c3                   	ret    
 1e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	53                   	push   %ebx
 1f4:	8b 55 08             	mov    0x8(%ebp),%edx
 1f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1fa:	0f b6 02             	movzbl (%edx),%eax
 1fd:	84 c0                	test   %al,%al
 1ff:	75 17                	jne    218 <strcmp+0x28>
 201:	eb 3a                	jmp    23d <strcmp+0x4d>
 203:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 207:	90                   	nop
 208:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 20c:	83 c2 01             	add    $0x1,%edx
 20f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 212:	84 c0                	test   %al,%al
 214:	74 1a                	je     230 <strcmp+0x40>
    p++, q++;
 216:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 218:	0f b6 19             	movzbl (%ecx),%ebx
 21b:	38 c3                	cmp    %al,%bl
 21d:	74 e9                	je     208 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 21f:	29 d8                	sub    %ebx,%eax
}
 221:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 224:	c9                   	leave  
 225:	c3                   	ret    
 226:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 230:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 234:	31 c0                	xor    %eax,%eax
 236:	29 d8                	sub    %ebx,%eax
}
 238:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 23b:	c9                   	leave  
 23c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 23d:	0f b6 19             	movzbl (%ecx),%ebx
 240:	31 c0                	xor    %eax,%eax
 242:	eb db                	jmp    21f <strcmp+0x2f>
 244:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 24f:	90                   	nop

00000250 <strlen>:

uint
strlen(const char *s)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 256:	80 3a 00             	cmpb   $0x0,(%edx)
 259:	74 15                	je     270 <strlen+0x20>
 25b:	31 c0                	xor    %eax,%eax
 25d:	8d 76 00             	lea    0x0(%esi),%esi
 260:	83 c0 01             	add    $0x1,%eax
 263:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 267:	89 c1                	mov    %eax,%ecx
 269:	75 f5                	jne    260 <strlen+0x10>
    ;
  return n;
}
 26b:	89 c8                	mov    %ecx,%eax
 26d:	5d                   	pop    %ebp
 26e:	c3                   	ret    
 26f:	90                   	nop
  for(n = 0; s[n]; n++)
 270:	31 c9                	xor    %ecx,%ecx
}
 272:	5d                   	pop    %ebp
 273:	89 c8                	mov    %ecx,%eax
 275:	c3                   	ret    
 276:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 27d:	8d 76 00             	lea    0x0(%esi),%esi

00000280 <memset>:

void*
memset(void *dst, int c, uint n)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	57                   	push   %edi
 284:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 287:	8b 4d 10             	mov    0x10(%ebp),%ecx
 28a:	8b 45 0c             	mov    0xc(%ebp),%eax
 28d:	89 d7                	mov    %edx,%edi
 28f:	fc                   	cld    
 290:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 292:	8b 7d fc             	mov    -0x4(%ebp),%edi
 295:	89 d0                	mov    %edx,%eax
 297:	c9                   	leave  
 298:	c3                   	ret    
 299:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002a0 <strchr>:

char*
strchr(const char *s, char c)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	8b 45 08             	mov    0x8(%ebp),%eax
 2a6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2aa:	0f b6 10             	movzbl (%eax),%edx
 2ad:	84 d2                	test   %dl,%dl
 2af:	75 12                	jne    2c3 <strchr+0x23>
 2b1:	eb 1d                	jmp    2d0 <strchr+0x30>
 2b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2b7:	90                   	nop
 2b8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 2bc:	83 c0 01             	add    $0x1,%eax
 2bf:	84 d2                	test   %dl,%dl
 2c1:	74 0d                	je     2d0 <strchr+0x30>
    if(*s == c)
 2c3:	38 d1                	cmp    %dl,%cl
 2c5:	75 f1                	jne    2b8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 2c7:	5d                   	pop    %ebp
 2c8:	c3                   	ret    
 2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2d0:	31 c0                	xor    %eax,%eax
}
 2d2:	5d                   	pop    %ebp
 2d3:	c3                   	ret    
 2d4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2df:	90                   	nop

000002e0 <gets>:

char*
gets(char *buf, int max)
{
 2e0:	55                   	push   %ebp
 2e1:	89 e5                	mov    %esp,%ebp
 2e3:	57                   	push   %edi
 2e4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2e5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2e8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2e9:	31 db                	xor    %ebx,%ebx
{
 2eb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2ee:	eb 27                	jmp    317 <gets+0x37>
    cc = read(0, &c, 1);
 2f0:	83 ec 04             	sub    $0x4,%esp
 2f3:	6a 01                	push   $0x1
 2f5:	57                   	push   %edi
 2f6:	6a 00                	push   $0x0
 2f8:	e8 71 02 00 00       	call   56e <read>
    if(cc < 1)
 2fd:	83 c4 10             	add    $0x10,%esp
 300:	85 c0                	test   %eax,%eax
 302:	7e 1d                	jle    321 <gets+0x41>
      break;
    buf[i++] = c;
 304:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 308:	8b 55 08             	mov    0x8(%ebp),%edx
 30b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 30f:	3c 0a                	cmp    $0xa,%al
 311:	74 1d                	je     330 <gets+0x50>
 313:	3c 0d                	cmp    $0xd,%al
 315:	74 19                	je     330 <gets+0x50>
  for(i=0; i+1 < max; ){
 317:	89 de                	mov    %ebx,%esi
 319:	83 c3 01             	add    $0x1,%ebx
 31c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 31f:	7c cf                	jl     2f0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 321:	8b 45 08             	mov    0x8(%ebp),%eax
 324:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 328:	8d 65 f4             	lea    -0xc(%ebp),%esp
 32b:	5b                   	pop    %ebx
 32c:	5e                   	pop    %esi
 32d:	5f                   	pop    %edi
 32e:	5d                   	pop    %ebp
 32f:	c3                   	ret    
  buf[i] = '\0';
 330:	8b 45 08             	mov    0x8(%ebp),%eax
 333:	89 de                	mov    %ebx,%esi
 335:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 339:	8d 65 f4             	lea    -0xc(%ebp),%esp
 33c:	5b                   	pop    %ebx
 33d:	5e                   	pop    %esi
 33e:	5f                   	pop    %edi
 33f:	5d                   	pop    %ebp
 340:	c3                   	ret    
 341:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 348:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop

00000350 <stat>:

int
stat(const char *n, struct stat *st)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	56                   	push   %esi
 354:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 355:	83 ec 08             	sub    $0x8,%esp
 358:	6a 00                	push   $0x0
 35a:	ff 75 08             	push   0x8(%ebp)
 35d:	e8 34 02 00 00       	call   596 <open>
  if(fd < 0)
 362:	83 c4 10             	add    $0x10,%esp
 365:	85 c0                	test   %eax,%eax
 367:	78 27                	js     390 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 369:	83 ec 08             	sub    $0x8,%esp
 36c:	ff 75 0c             	push   0xc(%ebp)
 36f:	89 c3                	mov    %eax,%ebx
 371:	50                   	push   %eax
 372:	e8 37 02 00 00       	call   5ae <fstat>
  close(fd);
 377:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 37a:	89 c6                	mov    %eax,%esi
  close(fd);
 37c:	e8 fd 01 00 00       	call   57e <close>
  return r;
 381:	83 c4 10             	add    $0x10,%esp
}
 384:	8d 65 f8             	lea    -0x8(%ebp),%esp
 387:	89 f0                	mov    %esi,%eax
 389:	5b                   	pop    %ebx
 38a:	5e                   	pop    %esi
 38b:	5d                   	pop    %ebp
 38c:	c3                   	ret    
 38d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 390:	be ff ff ff ff       	mov    $0xffffffff,%esi
 395:	eb ed                	jmp    384 <stat+0x34>
 397:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39e:	66 90                	xchg   %ax,%ax

000003a0 <atoi>:

int
atoi(const char *s)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	53                   	push   %ebx
 3a4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3a7:	0f be 02             	movsbl (%edx),%eax
 3aa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3ad:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 3b0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 3b5:	77 1e                	ja     3d5 <atoi+0x35>
 3b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3be:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3c0:	83 c2 01             	add    $0x1,%edx
 3c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3ca:	0f be 02             	movsbl (%edx),%eax
 3cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 3d0:	80 fb 09             	cmp    $0x9,%bl
 3d3:	76 eb                	jbe    3c0 <atoi+0x20>
  return n;
}
 3d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3d8:	89 c8                	mov    %ecx,%eax
 3da:	c9                   	leave  
 3db:	c3                   	ret    
 3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	8b 45 10             	mov    0x10(%ebp),%eax
 3e7:	8b 55 08             	mov    0x8(%ebp),%edx
 3ea:	56                   	push   %esi
 3eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ee:	85 c0                	test   %eax,%eax
 3f0:	7e 13                	jle    405 <memmove+0x25>
 3f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 3f4:	89 d7                	mov    %edx,%edi
 3f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 400:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 401:	39 f8                	cmp    %edi,%eax
 403:	75 fb                	jne    400 <memmove+0x20>
  return vdst;
}
 405:	5e                   	pop    %esi
 406:	89 d0                	mov    %edx,%eax
 408:	5f                   	pop    %edi
 409:	5d                   	pop    %ebp
 40a:	c3                   	ret    
 40b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 40f:	90                   	nop

00000410 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 410:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 411:	ba 01 00 00 00       	mov    $0x1,%edx
 416:	89 e5                	mov    %esp,%ebp
 418:	83 ec 08             	sub    $0x8,%esp
 41b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop
 420:	89 d0                	mov    %edx,%eax
 422:	f0 87 05 70 0e 00 00 	lock xchg %eax,0xe70
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 429:	85 c0                	test   %eax,%eax
 42b:	75 f3                	jne    420 <thread_create+0x10>
    __sync_synchronize();
 42d:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 432:	83 ec 0c             	sub    $0xc,%esp
 435:	68 00 20 00 00       	push   $0x2000
 43a:	e8 b1 04 00 00       	call   8f0 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 43f:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 444:	c7 05 70 0e 00 00 00 	movl   $0x0,0xe70
 44b:	00 00 00 
	if((uint)stack % PGSIZE)
 44e:	89 c2                	mov    %eax,%edx
 450:	83 c4 10             	add    $0x10,%esp
 453:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 459:	74 07                	je     462 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 45b:	29 d0                	sub    %edx,%eax
 45d:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 462:	50                   	push   %eax
 463:	ff 75 10             	push   0x10(%ebp)
 466:	ff 75 0c             	push   0xc(%ebp)
 469:	ff 75 08             	push   0x8(%ebp)
 46c:	e8 85 01 00 00       	call   5f6 <clone>
}
 471:	c9                   	leave  
 472:	c3                   	ret    
 473:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000480 <thread_join>:
int thread_join(){
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	53                   	push   %ebx
	int result= join(&stack);
 484:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 487:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 48a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 491:	50                   	push   %eax
 492:	e8 67 01 00 00       	call   5fe <join>
    while(xchg(&(lock->mutex), 1) != 0);
 497:	83 c4 10             	add    $0x10,%esp
 49a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 49f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 4a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4a8:	89 d0                	mov    %edx,%eax
 4aa:	f0 87 05 6c 0e 00 00 	lock xchg %eax,0xe6c
 4b1:	85 c0                	test   %eax,%eax
 4b3:	75 f3                	jne    4a8 <thread_join+0x28>
    __sync_synchronize();
 4b5:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 4ba:	83 ec 0c             	sub    $0xc,%esp
 4bd:	ff 75 f4             	push   -0xc(%ebp)
 4c0:	e8 9b 03 00 00       	call   860 <free>
   __sync_synchronize();
 4c5:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 4ca:	c7 05 6c 0e 00 00 00 	movl   $0x0,0xe6c
 4d1:	00 00 00 
}
 4d4:	89 d8                	mov    %ebx,%eax
 4d6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4d9:	c9                   	leave  
 4da:	c3                   	ret    
 4db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop

000004e0 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 4e0:	c7 05 70 0e 00 00 00 	movl   $0x0,0xe70
 4e7:	00 00 00 
 4ea:	c7 05 6c 0e 00 00 00 	movl   $0x0,0xe6c
 4f1:	00 00 00 
}
 4f4:	c3                   	ret    
 4f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <lock_acquire>:
void lock_acquire(lock_t *lock){
 500:	55                   	push   %ebp
 501:	b9 01 00 00 00       	mov    $0x1,%ecx
 506:	89 e5                	mov    %esp,%ebp
 508:	8b 55 08             	mov    0x8(%ebp),%edx
 50b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop
 510:	89 c8                	mov    %ecx,%eax
 512:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 515:	85 c0                	test   %eax,%eax
 517:	75 f7                	jne    510 <lock_acquire+0x10>
    __sync_synchronize();
 519:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 51e:	5d                   	pop    %ebp
 51f:	c3                   	ret    

00000520 <lock_release>:
void lock_release(lock_t *lock){
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 526:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 52b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 531:	5d                   	pop    %ebp
 532:	c3                   	ret    
 533:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000540 <lock_init>:
void lock_init(lock_t *lock) {
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 543:	8b 45 08             	mov    0x8(%ebp),%eax
 546:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 54c:	5d                   	pop    %ebp
 54d:	c3                   	ret    

0000054e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 54e:	b8 01 00 00 00       	mov    $0x1,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    

00000556 <exit>:
SYSCALL(exit)
 556:	b8 02 00 00 00       	mov    $0x2,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    

0000055e <wait>:
SYSCALL(wait)
 55e:	b8 03 00 00 00       	mov    $0x3,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    

00000566 <pipe>:
SYSCALL(pipe)
 566:	b8 04 00 00 00       	mov    $0x4,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    

0000056e <read>:
SYSCALL(read)
 56e:	b8 05 00 00 00       	mov    $0x5,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    

00000576 <write>:
SYSCALL(write)
 576:	b8 10 00 00 00       	mov    $0x10,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    

0000057e <close>:
SYSCALL(close)
 57e:	b8 15 00 00 00       	mov    $0x15,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    

00000586 <kill>:
SYSCALL(kill)
 586:	b8 06 00 00 00       	mov    $0x6,%eax
 58b:	cd 40                	int    $0x40
 58d:	c3                   	ret    

0000058e <exec>:
SYSCALL(exec)
 58e:	b8 07 00 00 00       	mov    $0x7,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    

00000596 <open>:
SYSCALL(open)
 596:	b8 0f 00 00 00       	mov    $0xf,%eax
 59b:	cd 40                	int    $0x40
 59d:	c3                   	ret    

0000059e <mknod>:
SYSCALL(mknod)
 59e:	b8 11 00 00 00       	mov    $0x11,%eax
 5a3:	cd 40                	int    $0x40
 5a5:	c3                   	ret    

000005a6 <unlink>:
SYSCALL(unlink)
 5a6:	b8 12 00 00 00       	mov    $0x12,%eax
 5ab:	cd 40                	int    $0x40
 5ad:	c3                   	ret    

000005ae <fstat>:
SYSCALL(fstat)
 5ae:	b8 08 00 00 00       	mov    $0x8,%eax
 5b3:	cd 40                	int    $0x40
 5b5:	c3                   	ret    

000005b6 <link>:
SYSCALL(link)
 5b6:	b8 13 00 00 00       	mov    $0x13,%eax
 5bb:	cd 40                	int    $0x40
 5bd:	c3                   	ret    

000005be <mkdir>:
SYSCALL(mkdir)
 5be:	b8 14 00 00 00       	mov    $0x14,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    

000005c6 <chdir>:
SYSCALL(chdir)
 5c6:	b8 09 00 00 00       	mov    $0x9,%eax
 5cb:	cd 40                	int    $0x40
 5cd:	c3                   	ret    

000005ce <dup>:
SYSCALL(dup)
 5ce:	b8 0a 00 00 00       	mov    $0xa,%eax
 5d3:	cd 40                	int    $0x40
 5d5:	c3                   	ret    

000005d6 <getpid>:
SYSCALL(getpid)
 5d6:	b8 0b 00 00 00       	mov    $0xb,%eax
 5db:	cd 40                	int    $0x40
 5dd:	c3                   	ret    

000005de <sbrk>:
SYSCALL(sbrk)
 5de:	b8 0c 00 00 00       	mov    $0xc,%eax
 5e3:	cd 40                	int    $0x40
 5e5:	c3                   	ret    

000005e6 <sleep>:
SYSCALL(sleep)
 5e6:	b8 0d 00 00 00       	mov    $0xd,%eax
 5eb:	cd 40                	int    $0x40
 5ed:	c3                   	ret    

000005ee <uptime>:
SYSCALL(uptime)
 5ee:	b8 0e 00 00 00       	mov    $0xe,%eax
 5f3:	cd 40                	int    $0x40
 5f5:	c3                   	ret    

000005f6 <clone>:
SYSCALL(clone)
 5f6:	b8 16 00 00 00       	mov    $0x16,%eax
 5fb:	cd 40                	int    $0x40
 5fd:	c3                   	ret    

000005fe <join>:
SYSCALL(join)
 5fe:	b8 17 00 00 00       	mov    $0x17,%eax
 603:	cd 40                	int    $0x40
 605:	c3                   	ret    
 606:	66 90                	xchg   %ax,%ax
 608:	66 90                	xchg   %ax,%ax
 60a:	66 90                	xchg   %ax,%ax
 60c:	66 90                	xchg   %ax,%ax
 60e:	66 90                	xchg   %ax,%ax

00000610 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	57                   	push   %edi
 614:	56                   	push   %esi
 615:	53                   	push   %ebx
 616:	83 ec 3c             	sub    $0x3c,%esp
 619:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 61c:	89 d1                	mov    %edx,%ecx
{
 61e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 621:	85 d2                	test   %edx,%edx
 623:	0f 89 7f 00 00 00    	jns    6a8 <printint+0x98>
 629:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 62d:	74 79                	je     6a8 <printint+0x98>
    neg = 1;
 62f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 636:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 638:	31 db                	xor    %ebx,%ebx
 63a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 63d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 640:	89 c8                	mov    %ecx,%eax
 642:	31 d2                	xor    %edx,%edx
 644:	89 cf                	mov    %ecx,%edi
 646:	f7 75 c4             	divl   -0x3c(%ebp)
 649:	0f b6 92 e4 0a 00 00 	movzbl 0xae4(%edx),%edx
 650:	89 45 c0             	mov    %eax,-0x40(%ebp)
 653:	89 d8                	mov    %ebx,%eax
 655:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 658:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 65b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 65e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 661:	76 dd                	jbe    640 <printint+0x30>
  if(neg)
 663:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 666:	85 c9                	test   %ecx,%ecx
 668:	74 0c                	je     676 <printint+0x66>
    buf[i++] = '-';
 66a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 66f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 671:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 676:	8b 7d b8             	mov    -0x48(%ebp),%edi
 679:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 67d:	eb 07                	jmp    686 <printint+0x76>
 67f:	90                   	nop
    putc(fd, buf[i]);
 680:	0f b6 13             	movzbl (%ebx),%edx
 683:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 686:	83 ec 04             	sub    $0x4,%esp
 689:	88 55 d7             	mov    %dl,-0x29(%ebp)
 68c:	6a 01                	push   $0x1
 68e:	56                   	push   %esi
 68f:	57                   	push   %edi
 690:	e8 e1 fe ff ff       	call   576 <write>
  while(--i >= 0)
 695:	83 c4 10             	add    $0x10,%esp
 698:	39 de                	cmp    %ebx,%esi
 69a:	75 e4                	jne    680 <printint+0x70>
}
 69c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 69f:	5b                   	pop    %ebx
 6a0:	5e                   	pop    %esi
 6a1:	5f                   	pop    %edi
 6a2:	5d                   	pop    %ebp
 6a3:	c3                   	ret    
 6a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 6af:	eb 87                	jmp    638 <printint+0x28>
 6b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bf:	90                   	nop

000006c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
 6c3:	57                   	push   %edi
 6c4:	56                   	push   %esi
 6c5:	53                   	push   %ebx
 6c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6cf:	0f b6 13             	movzbl (%ebx),%edx
 6d2:	84 d2                	test   %dl,%dl
 6d4:	74 6a                	je     740 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6d6:	8d 45 10             	lea    0x10(%ebp),%eax
 6d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6e4:	eb 36                	jmp    71c <printf+0x5c>
 6e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
 6f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6f8:	83 f8 25             	cmp    $0x25,%eax
 6fb:	74 15                	je     712 <printf+0x52>
  write(fd, &c, 1);
 6fd:	83 ec 04             	sub    $0x4,%esp
 700:	88 55 e7             	mov    %dl,-0x19(%ebp)
 703:	6a 01                	push   $0x1
 705:	57                   	push   %edi
 706:	56                   	push   %esi
 707:	e8 6a fe ff ff       	call   576 <write>
 70c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 70f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 712:	0f b6 13             	movzbl (%ebx),%edx
 715:	83 c3 01             	add    $0x1,%ebx
 718:	84 d2                	test   %dl,%dl
 71a:	74 24                	je     740 <printf+0x80>
    c = fmt[i] & 0xff;
 71c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 71f:	85 c9                	test   %ecx,%ecx
 721:	74 cd                	je     6f0 <printf+0x30>
      }
    } else if(state == '%'){
 723:	83 f9 25             	cmp    $0x25,%ecx
 726:	75 ea                	jne    712 <printf+0x52>
      if(c == 'd'){
 728:	83 f8 25             	cmp    $0x25,%eax
 72b:	0f 84 07 01 00 00    	je     838 <printf+0x178>
 731:	83 e8 63             	sub    $0x63,%eax
 734:	83 f8 15             	cmp    $0x15,%eax
 737:	77 17                	ja     750 <printf+0x90>
 739:	ff 24 85 8c 0a 00 00 	jmp    *0xa8c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 740:	8d 65 f4             	lea    -0xc(%ebp),%esp
 743:	5b                   	pop    %ebx
 744:	5e                   	pop    %esi
 745:	5f                   	pop    %edi
 746:	5d                   	pop    %ebp
 747:	c3                   	ret    
 748:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74f:	90                   	nop
  write(fd, &c, 1);
 750:	83 ec 04             	sub    $0x4,%esp
 753:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 756:	6a 01                	push   $0x1
 758:	57                   	push   %edi
 759:	56                   	push   %esi
 75a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 75e:	e8 13 fe ff ff       	call   576 <write>
        putc(fd, c);
 763:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 767:	83 c4 0c             	add    $0xc,%esp
 76a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 76d:	6a 01                	push   $0x1
 76f:	57                   	push   %edi
 770:	56                   	push   %esi
 771:	e8 00 fe ff ff       	call   576 <write>
        putc(fd, c);
 776:	83 c4 10             	add    $0x10,%esp
      state = 0;
 779:	31 c9                	xor    %ecx,%ecx
 77b:	eb 95                	jmp    712 <printf+0x52>
 77d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 780:	83 ec 0c             	sub    $0xc,%esp
 783:	b9 10 00 00 00       	mov    $0x10,%ecx
 788:	6a 00                	push   $0x0
 78a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 78d:	8b 10                	mov    (%eax),%edx
 78f:	89 f0                	mov    %esi,%eax
 791:	e8 7a fe ff ff       	call   610 <printint>
        ap++;
 796:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 79a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 79d:	31 c9                	xor    %ecx,%ecx
 79f:	e9 6e ff ff ff       	jmp    712 <printf+0x52>
 7a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7ab:	8b 10                	mov    (%eax),%edx
        ap++;
 7ad:	83 c0 04             	add    $0x4,%eax
 7b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7b3:	85 d2                	test   %edx,%edx
 7b5:	0f 84 8d 00 00 00    	je     848 <printf+0x188>
        while(*s != 0){
 7bb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 7be:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7c0:	84 c0                	test   %al,%al
 7c2:	0f 84 4a ff ff ff    	je     712 <printf+0x52>
 7c8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7cb:	89 d3                	mov    %edx,%ebx
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7d0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7d3:	83 c3 01             	add    $0x1,%ebx
 7d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7d9:	6a 01                	push   $0x1
 7db:	57                   	push   %edi
 7dc:	56                   	push   %esi
 7dd:	e8 94 fd ff ff       	call   576 <write>
        while(*s != 0){
 7e2:	0f b6 03             	movzbl (%ebx),%eax
 7e5:	83 c4 10             	add    $0x10,%esp
 7e8:	84 c0                	test   %al,%al
 7ea:	75 e4                	jne    7d0 <printf+0x110>
      state = 0;
 7ec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7ef:	31 c9                	xor    %ecx,%ecx
 7f1:	e9 1c ff ff ff       	jmp    712 <printf+0x52>
 7f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 800:	83 ec 0c             	sub    $0xc,%esp
 803:	b9 0a 00 00 00       	mov    $0xa,%ecx
 808:	6a 01                	push   $0x1
 80a:	e9 7b ff ff ff       	jmp    78a <printf+0xca>
 80f:	90                   	nop
        putc(fd, *ap);
 810:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 813:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 816:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 818:	6a 01                	push   $0x1
 81a:	57                   	push   %edi
 81b:	56                   	push   %esi
        putc(fd, *ap);
 81c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 81f:	e8 52 fd ff ff       	call   576 <write>
        ap++;
 824:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 828:	83 c4 10             	add    $0x10,%esp
      state = 0;
 82b:	31 c9                	xor    %ecx,%ecx
 82d:	e9 e0 fe ff ff       	jmp    712 <printf+0x52>
 832:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 838:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 83b:	83 ec 04             	sub    $0x4,%esp
 83e:	e9 2a ff ff ff       	jmp    76d <printf+0xad>
 843:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 847:	90                   	nop
          s = "(null)";
 848:	ba 84 0a 00 00       	mov    $0xa84,%edx
        while(*s != 0){
 84d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 850:	b8 28 00 00 00       	mov    $0x28,%eax
 855:	89 d3                	mov    %edx,%ebx
 857:	e9 74 ff ff ff       	jmp    7d0 <printf+0x110>
 85c:	66 90                	xchg   %ax,%ax
 85e:	66 90                	xchg   %ax,%ax

00000860 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 860:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 861:	a1 74 0e 00 00       	mov    0xe74,%eax
{
 866:	89 e5                	mov    %esp,%ebp
 868:	57                   	push   %edi
 869:	56                   	push   %esi
 86a:	53                   	push   %ebx
 86b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 86e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 871:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 878:	89 c2                	mov    %eax,%edx
 87a:	8b 00                	mov    (%eax),%eax
 87c:	39 ca                	cmp    %ecx,%edx
 87e:	73 30                	jae    8b0 <free+0x50>
 880:	39 c1                	cmp    %eax,%ecx
 882:	72 04                	jb     888 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 884:	39 c2                	cmp    %eax,%edx
 886:	72 f0                	jb     878 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 888:	8b 73 fc             	mov    -0x4(%ebx),%esi
 88b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 88e:	39 f8                	cmp    %edi,%eax
 890:	74 30                	je     8c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 892:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 895:	8b 42 04             	mov    0x4(%edx),%eax
 898:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 89b:	39 f1                	cmp    %esi,%ecx
 89d:	74 3a                	je     8d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 89f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8a1:	5b                   	pop    %ebx
  freep = p;
 8a2:	89 15 74 0e 00 00    	mov    %edx,0xe74
}
 8a8:	5e                   	pop    %esi
 8a9:	5f                   	pop    %edi
 8aa:	5d                   	pop    %ebp
 8ab:	c3                   	ret    
 8ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8b0:	39 c2                	cmp    %eax,%edx
 8b2:	72 c4                	jb     878 <free+0x18>
 8b4:	39 c1                	cmp    %eax,%ecx
 8b6:	73 c0                	jae    878 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 8b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8be:	39 f8                	cmp    %edi,%eax
 8c0:	75 d0                	jne    892 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8c2:	03 70 04             	add    0x4(%eax),%esi
 8c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8c8:	8b 02                	mov    (%edx),%eax
 8ca:	8b 00                	mov    (%eax),%eax
 8cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8cf:	8b 42 04             	mov    0x4(%edx),%eax
 8d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8d5:	39 f1                	cmp    %esi,%ecx
 8d7:	75 c6                	jne    89f <free+0x3f>
    p->s.size += bp->s.size;
 8d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8dc:	89 15 74 0e 00 00    	mov    %edx,0xe74
    p->s.size += bp->s.size;
 8e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8e8:	89 0a                	mov    %ecx,(%edx)
}
 8ea:	5b                   	pop    %ebx
 8eb:	5e                   	pop    %esi
 8ec:	5f                   	pop    %edi
 8ed:	5d                   	pop    %ebp
 8ee:	c3                   	ret    
 8ef:	90                   	nop

000008f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8f0:	55                   	push   %ebp
 8f1:	89 e5                	mov    %esp,%ebp
 8f3:	57                   	push   %edi
 8f4:	56                   	push   %esi
 8f5:	53                   	push   %ebx
 8f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8fc:	8b 3d 74 0e 00 00    	mov    0xe74,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 902:	8d 70 07             	lea    0x7(%eax),%esi
 905:	c1 ee 03             	shr    $0x3,%esi
 908:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 90b:	85 ff                	test   %edi,%edi
 90d:	0f 84 9d 00 00 00    	je     9b0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 913:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 915:	8b 4a 04             	mov    0x4(%edx),%ecx
 918:	39 f1                	cmp    %esi,%ecx
 91a:	73 6a                	jae    986 <malloc+0x96>
 91c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 921:	39 de                	cmp    %ebx,%esi
 923:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 926:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 92d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 930:	eb 17                	jmp    949 <malloc+0x59>
 932:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 938:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 93a:	8b 48 04             	mov    0x4(%eax),%ecx
 93d:	39 f1                	cmp    %esi,%ecx
 93f:	73 4f                	jae    990 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 941:	8b 3d 74 0e 00 00    	mov    0xe74,%edi
 947:	89 c2                	mov    %eax,%edx
 949:	39 d7                	cmp    %edx,%edi
 94b:	75 eb                	jne    938 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 94d:	83 ec 0c             	sub    $0xc,%esp
 950:	ff 75 e4             	push   -0x1c(%ebp)
 953:	e8 86 fc ff ff       	call   5de <sbrk>
  if(p == (char*)-1)
 958:	83 c4 10             	add    $0x10,%esp
 95b:	83 f8 ff             	cmp    $0xffffffff,%eax
 95e:	74 1c                	je     97c <malloc+0x8c>
  hp->s.size = nu;
 960:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 963:	83 ec 0c             	sub    $0xc,%esp
 966:	83 c0 08             	add    $0x8,%eax
 969:	50                   	push   %eax
 96a:	e8 f1 fe ff ff       	call   860 <free>
  return freep;
 96f:	8b 15 74 0e 00 00    	mov    0xe74,%edx
      if((p = morecore(nunits)) == 0)
 975:	83 c4 10             	add    $0x10,%esp
 978:	85 d2                	test   %edx,%edx
 97a:	75 bc                	jne    938 <malloc+0x48>
        return 0;
  }
}
 97c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 97f:	31 c0                	xor    %eax,%eax
}
 981:	5b                   	pop    %ebx
 982:	5e                   	pop    %esi
 983:	5f                   	pop    %edi
 984:	5d                   	pop    %ebp
 985:	c3                   	ret    
    if(p->s.size >= nunits){
 986:	89 d0                	mov    %edx,%eax
 988:	89 fa                	mov    %edi,%edx
 98a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 990:	39 ce                	cmp    %ecx,%esi
 992:	74 4c                	je     9e0 <malloc+0xf0>
        p->s.size -= nunits;
 994:	29 f1                	sub    %esi,%ecx
 996:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 999:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 99c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 99f:	89 15 74 0e 00 00    	mov    %edx,0xe74
}
 9a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9a8:	83 c0 08             	add    $0x8,%eax
}
 9ab:	5b                   	pop    %ebx
 9ac:	5e                   	pop    %esi
 9ad:	5f                   	pop    %edi
 9ae:	5d                   	pop    %ebp
 9af:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 9b0:	c7 05 74 0e 00 00 78 	movl   $0xe78,0xe74
 9b7:	0e 00 00 
    base.s.size = 0;
 9ba:	bf 78 0e 00 00       	mov    $0xe78,%edi
    base.s.ptr = freep = prevp = &base;
 9bf:	c7 05 78 0e 00 00 78 	movl   $0xe78,0xe78
 9c6:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9c9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9cb:	c7 05 7c 0e 00 00 00 	movl   $0x0,0xe7c
 9d2:	00 00 00 
    if(p->s.size >= nunits){
 9d5:	e9 42 ff ff ff       	jmp    91c <malloc+0x2c>
 9da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9e0:	8b 08                	mov    (%eax),%ecx
 9e2:	89 0a                	mov    %ecx,(%edx)
 9e4:	eb b9                	jmp    99f <malloc+0xaf>
