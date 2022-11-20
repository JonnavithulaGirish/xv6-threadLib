
_test_15:     file format elf32-i386


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
   ppid = getpid();
   f:	e8 82 05 00 00       	call   596 <getpid>

   lock_init(&lock);
  14:	83 ec 0c             	sub    $0xc,%esp
  17:	68 0c 0e 00 00       	push   $0xe0c
   ppid = getpid();
  1c:	a3 14 0e 00 00       	mov    %eax,0xe14
   lock_init(&lock);
  21:	e8 da 04 00 00       	call   500 <lock_init>

   int i;
   for (i = 0; i < num_threads; i++) {
  26:	a1 08 0e 00 00       	mov    0xe08,%eax
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 8e b4 00 00 00    	jle    ea <main+0xea>
  36:	31 db                	xor    %ebx,%ebx
  38:	eb 12                	jmp    4c <main+0x4c>
  3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40:	a1 08 0e 00 00       	mov    0xe08,%eax
  45:	83 c3 01             	add    $0x1,%ebx
  48:	39 d8                	cmp    %ebx,%eax
  4a:	7e 5e                	jle    aa <main+0xaa>
      int thread_pid = thread_create(worker, 0, 0);
  4c:	83 ec 04             	sub    $0x4,%esp
  4f:	6a 00                	push   $0x0
  51:	6a 00                	push   $0x0
  53:	68 30 01 00 00       	push   $0x130
  58:	e8 73 03 00 00       	call   3d0 <thread_create>
      assert(thread_pid > 0);
  5d:	83 c4 10             	add    $0x10,%esp
  60:	85 c0                	test   %eax,%eax
  62:	7f dc                	jg     40 <main+0x40>
  64:	6a 25                	push   $0x25
  66:	68 a8 09 00 00       	push   $0x9a8
  6b:	68 b2 09 00 00       	push   $0x9b2
  70:	6a 01                	push   $0x1
  72:	e8 09 06 00 00       	call   680 <printf>
  77:	83 c4 0c             	add    $0xc,%esp
  7a:	68 ba 09 00 00       	push   $0x9ba
   }

   for (i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  7f:	68 c9 09 00 00       	push   $0x9c9
  84:	6a 01                	push   $0x1
  86:	e8 f5 05 00 00       	call   680 <printf>
  8b:	5a                   	pop    %edx
  8c:	59                   	pop    %ecx
  8d:	68 dd 09 00 00       	push   $0x9dd
  92:	6a 01                	push   $0x1
  94:	e8 e7 05 00 00       	call   680 <printf>
  99:	5b                   	pop    %ebx
  9a:	ff 35 14 0e 00 00    	push   0xe14
  a0:	e8 a1 04 00 00       	call   546 <kill>
  a5:	e8 6c 04 00 00       	call   516 <exit>
   for (i = 0; i < num_threads; i++) {
  aa:	85 c0                	test   %eax,%eax
  ac:	7e 3c                	jle    ea <main+0xea>
  ae:	31 db                	xor    %ebx,%ebx
  b0:	eb 12                	jmp    c4 <main+0xc4>
  b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  b8:	a1 08 0e 00 00       	mov    0xe08,%eax
  bd:	83 c3 01             	add    $0x1,%ebx
  c0:	39 d8                	cmp    %ebx,%eax
  c2:	7e 26                	jle    ea <main+0xea>
      int join_pid = thread_join();
  c4:	e8 77 03 00 00       	call   440 <thread_join>
      assert(join_pid > 0);
  c9:	85 c0                	test   %eax,%eax
  cb:	7f eb                	jg     b8 <main+0xb8>
  cd:	6a 2a                	push   $0x2a
  cf:	68 a8 09 00 00       	push   $0x9a8
  d4:	68 b2 09 00 00       	push   $0x9b2
  d9:	6a 01                	push   $0x1
  db:	e8 a0 05 00 00       	call   680 <printf>
  e0:	83 c4 0c             	add    $0xc,%esp
  e3:	68 ea 09 00 00       	push   $0x9ea
  e8:	eb 95                	jmp    7f <main+0x7f>
   }

   assert(global == num_threads * loops);
  ea:	0f af 05 04 0e 00 00 	imul   0xe04,%eax
  f1:	3b 05 10 0e 00 00    	cmp    0xe10,%eax
  f7:	74 20                	je     119 <main+0x119>
  f9:	6a 2d                	push   $0x2d
  fb:	68 a8 09 00 00       	push   $0x9a8
 100:	68 b2 09 00 00       	push   $0x9b2
 105:	6a 01                	push   $0x1
 107:	e8 74 05 00 00       	call   680 <printf>
 10c:	83 c4 0c             	add    $0xc,%esp
 10f:	68 f7 09 00 00       	push   $0x9f7
 114:	e9 66 ff ff ff       	jmp    7f <main+0x7f>

   printf(1, "TEST PASSED\n");
 119:	50                   	push   %eax
 11a:	50                   	push   %eax
 11b:	68 15 0a 00 00       	push   $0xa15
 120:	6a 01                	push   $0x1
 122:	e8 59 05 00 00       	call   680 <printf>
   exit();
 127:	e8 ea 03 00 00       	call   516 <exit>
 12c:	66 90                	xchg   %ax,%ax
 12e:	66 90                	xchg   %ax,%ax

00000130 <worker>:
}

void
worker(void *arg1, void *arg2) {
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	53                   	push   %ebx
 134:	83 ec 04             	sub    $0x4,%esp
   int i, j, tmp;
   for (i = 0; i < loops; i++) {
 137:	a1 04 0e 00 00       	mov    0xe04,%eax
 13c:	85 c0                	test   %eax,%eax
 13e:	7e 36                	jle    176 <worker+0x46>
 140:	31 db                	xor    %ebx,%ebx
 142:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      lock_acquire(&lock);
 148:	83 ec 0c             	sub    $0xc,%esp
   for (i = 0; i < loops; i++) {
 14b:	83 c3 01             	add    $0x1,%ebx
      lock_acquire(&lock);
 14e:	68 0c 0e 00 00       	push   $0xe0c
 153:	e8 68 03 00 00       	call   4c0 <lock_acquire>
      tmp = global;
      for(j = 0; j < 50; j++); // take some time
      global = tmp + 1;
      lock_release(&lock);
 158:	c7 04 24 0c 0e 00 00 	movl   $0xe0c,(%esp)
      global = tmp + 1;
 15f:	83 05 10 0e 00 00 01 	addl   $0x1,0xe10
      lock_release(&lock);
 166:	e8 75 03 00 00       	call   4e0 <lock_release>
   for (i = 0; i < loops; i++) {
 16b:	83 c4 10             	add    $0x10,%esp
 16e:	39 1d 04 0e 00 00    	cmp    %ebx,0xe04
 174:	7f d2                	jg     148 <worker+0x18>
   }
   exit();
 176:	e8 9b 03 00 00       	call   516 <exit>
 17b:	66 90                	xchg   %ax,%ax
 17d:	66 90                	xchg   %ax,%ax
 17f:	90                   	nop

00000180 <strcpy>:

lock_t lk_create,lk_join;

char*
strcpy(char *s, const char *t)
{
 180:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 181:	31 c0                	xor    %eax,%eax
{
 183:	89 e5                	mov    %esp,%ebp
 185:	53                   	push   %ebx
 186:	8b 4d 08             	mov    0x8(%ebp),%ecx
 189:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 18c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 190:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 194:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 197:	83 c0 01             	add    $0x1,%eax
 19a:	84 d2                	test   %dl,%dl
 19c:	75 f2                	jne    190 <strcpy+0x10>
    ;
  return os;
}
 19e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1a1:	89 c8                	mov    %ecx,%eax
 1a3:	c9                   	leave  
 1a4:	c3                   	ret    
 1a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	8b 55 08             	mov    0x8(%ebp),%edx
 1b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ba:	0f b6 02             	movzbl (%edx),%eax
 1bd:	84 c0                	test   %al,%al
 1bf:	75 17                	jne    1d8 <strcmp+0x28>
 1c1:	eb 3a                	jmp    1fd <strcmp+0x4d>
 1c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1c7:	90                   	nop
 1c8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 1cc:	83 c2 01             	add    $0x1,%edx
 1cf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1d2:	84 c0                	test   %al,%al
 1d4:	74 1a                	je     1f0 <strcmp+0x40>
    p++, q++;
 1d6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 1d8:	0f b6 19             	movzbl (%ecx),%ebx
 1db:	38 c3                	cmp    %al,%bl
 1dd:	74 e9                	je     1c8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 1df:	29 d8                	sub    %ebx,%eax
}
 1e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1e4:	c9                   	leave  
 1e5:	c3                   	ret    
 1e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ed:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 1f0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 1f4:	31 c0                	xor    %eax,%eax
 1f6:	29 d8                	sub    %ebx,%eax
}
 1f8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1fb:	c9                   	leave  
 1fc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 1fd:	0f b6 19             	movzbl (%ecx),%ebx
 200:	31 c0                	xor    %eax,%eax
 202:	eb db                	jmp    1df <strcmp+0x2f>
 204:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 20b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 20f:	90                   	nop

00000210 <strlen>:

uint
strlen(const char *s)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 216:	80 3a 00             	cmpb   $0x0,(%edx)
 219:	74 15                	je     230 <strlen+0x20>
 21b:	31 c0                	xor    %eax,%eax
 21d:	8d 76 00             	lea    0x0(%esi),%esi
 220:	83 c0 01             	add    $0x1,%eax
 223:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 227:	89 c1                	mov    %eax,%ecx
 229:	75 f5                	jne    220 <strlen+0x10>
    ;
  return n;
}
 22b:	89 c8                	mov    %ecx,%eax
 22d:	5d                   	pop    %ebp
 22e:	c3                   	ret    
 22f:	90                   	nop
  for(n = 0; s[n]; n++)
 230:	31 c9                	xor    %ecx,%ecx
}
 232:	5d                   	pop    %ebp
 233:	89 c8                	mov    %ecx,%eax
 235:	c3                   	ret    
 236:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23d:	8d 76 00             	lea    0x0(%esi),%esi

00000240 <memset>:

void*
memset(void *dst, int c, uint n)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	57                   	push   %edi
 244:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 247:	8b 4d 10             	mov    0x10(%ebp),%ecx
 24a:	8b 45 0c             	mov    0xc(%ebp),%eax
 24d:	89 d7                	mov    %edx,%edi
 24f:	fc                   	cld    
 250:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 252:	8b 7d fc             	mov    -0x4(%ebp),%edi
 255:	89 d0                	mov    %edx,%eax
 257:	c9                   	leave  
 258:	c3                   	ret    
 259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000260 <strchr>:

char*
strchr(const char *s, char c)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	8b 45 08             	mov    0x8(%ebp),%eax
 266:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 26a:	0f b6 10             	movzbl (%eax),%edx
 26d:	84 d2                	test   %dl,%dl
 26f:	75 12                	jne    283 <strchr+0x23>
 271:	eb 1d                	jmp    290 <strchr+0x30>
 273:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 277:	90                   	nop
 278:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 27c:	83 c0 01             	add    $0x1,%eax
 27f:	84 d2                	test   %dl,%dl
 281:	74 0d                	je     290 <strchr+0x30>
    if(*s == c)
 283:	38 d1                	cmp    %dl,%cl
 285:	75 f1                	jne    278 <strchr+0x18>
      return (char*)s;
  return 0;
}
 287:	5d                   	pop    %ebp
 288:	c3                   	ret    
 289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 290:	31 c0                	xor    %eax,%eax
}
 292:	5d                   	pop    %ebp
 293:	c3                   	ret    
 294:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 29f:	90                   	nop

000002a0 <gets>:

char*
gets(char *buf, int max)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	57                   	push   %edi
 2a4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2a5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2a8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2a9:	31 db                	xor    %ebx,%ebx
{
 2ab:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2ae:	eb 27                	jmp    2d7 <gets+0x37>
    cc = read(0, &c, 1);
 2b0:	83 ec 04             	sub    $0x4,%esp
 2b3:	6a 01                	push   $0x1
 2b5:	57                   	push   %edi
 2b6:	6a 00                	push   $0x0
 2b8:	e8 71 02 00 00       	call   52e <read>
    if(cc < 1)
 2bd:	83 c4 10             	add    $0x10,%esp
 2c0:	85 c0                	test   %eax,%eax
 2c2:	7e 1d                	jle    2e1 <gets+0x41>
      break;
    buf[i++] = c;
 2c4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2c8:	8b 55 08             	mov    0x8(%ebp),%edx
 2cb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2cf:	3c 0a                	cmp    $0xa,%al
 2d1:	74 1d                	je     2f0 <gets+0x50>
 2d3:	3c 0d                	cmp    $0xd,%al
 2d5:	74 19                	je     2f0 <gets+0x50>
  for(i=0; i+1 < max; ){
 2d7:	89 de                	mov    %ebx,%esi
 2d9:	83 c3 01             	add    $0x1,%ebx
 2dc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2df:	7c cf                	jl     2b0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 2e1:	8b 45 08             	mov    0x8(%ebp),%eax
 2e4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2eb:	5b                   	pop    %ebx
 2ec:	5e                   	pop    %esi
 2ed:	5f                   	pop    %edi
 2ee:	5d                   	pop    %ebp
 2ef:	c3                   	ret    
  buf[i] = '\0';
 2f0:	8b 45 08             	mov    0x8(%ebp),%eax
 2f3:	89 de                	mov    %ebx,%esi
 2f5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 2f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2fc:	5b                   	pop    %ebx
 2fd:	5e                   	pop    %esi
 2fe:	5f                   	pop    %edi
 2ff:	5d                   	pop    %ebp
 300:	c3                   	ret    
 301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 308:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30f:	90                   	nop

00000310 <stat>:

int
stat(const char *n, struct stat *st)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	56                   	push   %esi
 314:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 315:	83 ec 08             	sub    $0x8,%esp
 318:	6a 00                	push   $0x0
 31a:	ff 75 08             	push   0x8(%ebp)
 31d:	e8 34 02 00 00       	call   556 <open>
  if(fd < 0)
 322:	83 c4 10             	add    $0x10,%esp
 325:	85 c0                	test   %eax,%eax
 327:	78 27                	js     350 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 329:	83 ec 08             	sub    $0x8,%esp
 32c:	ff 75 0c             	push   0xc(%ebp)
 32f:	89 c3                	mov    %eax,%ebx
 331:	50                   	push   %eax
 332:	e8 37 02 00 00       	call   56e <fstat>
  close(fd);
 337:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 33a:	89 c6                	mov    %eax,%esi
  close(fd);
 33c:	e8 fd 01 00 00       	call   53e <close>
  return r;
 341:	83 c4 10             	add    $0x10,%esp
}
 344:	8d 65 f8             	lea    -0x8(%ebp),%esp
 347:	89 f0                	mov    %esi,%eax
 349:	5b                   	pop    %ebx
 34a:	5e                   	pop    %esi
 34b:	5d                   	pop    %ebp
 34c:	c3                   	ret    
 34d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 350:	be ff ff ff ff       	mov    $0xffffffff,%esi
 355:	eb ed                	jmp    344 <stat+0x34>
 357:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35e:	66 90                	xchg   %ax,%ax

00000360 <atoi>:

int
atoi(const char *s)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	53                   	push   %ebx
 364:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 367:	0f be 02             	movsbl (%edx),%eax
 36a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 36d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 370:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 375:	77 1e                	ja     395 <atoi+0x35>
 377:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 380:	83 c2 01             	add    $0x1,%edx
 383:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 386:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 38a:	0f be 02             	movsbl (%edx),%eax
 38d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 390:	80 fb 09             	cmp    $0x9,%bl
 393:	76 eb                	jbe    380 <atoi+0x20>
  return n;
}
 395:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 398:	89 c8                	mov    %ecx,%eax
 39a:	c9                   	leave  
 39b:	c3                   	ret    
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	8b 45 10             	mov    0x10(%ebp),%eax
 3a7:	8b 55 08             	mov    0x8(%ebp),%edx
 3aa:	56                   	push   %esi
 3ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ae:	85 c0                	test   %eax,%eax
 3b0:	7e 13                	jle    3c5 <memmove+0x25>
 3b2:	01 d0                	add    %edx,%eax
  dst = vdst;
 3b4:	89 d7                	mov    %edx,%edi
 3b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 3c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 3c1:	39 f8                	cmp    %edi,%eax
 3c3:	75 fb                	jne    3c0 <memmove+0x20>
  return vdst;
}
 3c5:	5e                   	pop    %esi
 3c6:	89 d0                	mov    %edx,%eax
 3c8:	5f                   	pop    %edi
 3c9:	5d                   	pop    %ebp
 3ca:	c3                   	ret    
 3cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 3d0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 3d1:	ba 01 00 00 00       	mov    $0x1,%edx
 3d6:	89 e5                	mov    %esp,%ebp
 3d8:	83 ec 08             	sub    $0x8,%esp
 3db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3df:	90                   	nop
 3e0:	89 d0                	mov    %edx,%eax
 3e2:	f0 87 05 1c 0e 00 00 	lock xchg %eax,0xe1c
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 3e9:	85 c0                	test   %eax,%eax
 3eb:	75 f3                	jne    3e0 <thread_create+0x10>
    __sync_synchronize();
 3ed:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 3f2:	83 ec 0c             	sub    $0xc,%esp
 3f5:	68 00 20 00 00       	push   $0x2000
 3fa:	e8 b1 04 00 00       	call   8b0 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 3ff:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 404:	c7 05 1c 0e 00 00 00 	movl   $0x0,0xe1c
 40b:	00 00 00 
	if((uint)stack % PGSIZE)
 40e:	89 c2                	mov    %eax,%edx
 410:	83 c4 10             	add    $0x10,%esp
 413:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 419:	74 07                	je     422 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 41b:	29 d0                	sub    %edx,%eax
 41d:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 422:	50                   	push   %eax
 423:	ff 75 10             	push   0x10(%ebp)
 426:	ff 75 0c             	push   0xc(%ebp)
 429:	ff 75 08             	push   0x8(%ebp)
 42c:	e8 85 01 00 00       	call   5b6 <clone>
}
 431:	c9                   	leave  
 432:	c3                   	ret    
 433:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 43a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000440 <thread_join>:
int thread_join(){
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	53                   	push   %ebx
	int result= join(&stack);
 444:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 447:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 44a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 451:	50                   	push   %eax
 452:	e8 67 01 00 00       	call   5be <join>
    while(xchg(&(lock->mutex), 1) != 0);
 457:	83 c4 10             	add    $0x10,%esp
 45a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 45f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 468:	89 d0                	mov    %edx,%eax
 46a:	f0 87 05 18 0e 00 00 	lock xchg %eax,0xe18
 471:	85 c0                	test   %eax,%eax
 473:	75 f3                	jne    468 <thread_join+0x28>
    __sync_synchronize();
 475:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 47a:	83 ec 0c             	sub    $0xc,%esp
 47d:	ff 75 f4             	push   -0xc(%ebp)
 480:	e8 9b 03 00 00       	call   820 <free>
   __sync_synchronize();
 485:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 48a:	c7 05 18 0e 00 00 00 	movl   $0x0,0xe18
 491:	00 00 00 
}
 494:	89 d8                	mov    %ebx,%eax
 496:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 499:	c9                   	leave  
 49a:	c3                   	ret    
 49b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 49f:	90                   	nop

000004a0 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 4a0:	c7 05 1c 0e 00 00 00 	movl   $0x0,0xe1c
 4a7:	00 00 00 
 4aa:	c7 05 18 0e 00 00 00 	movl   $0x0,0xe18
 4b1:	00 00 00 
}
 4b4:	c3                   	ret    
 4b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004c0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 4c0:	55                   	push   %ebp
 4c1:	b9 01 00 00 00       	mov    $0x1,%ecx
 4c6:	89 e5                	mov    %esp,%ebp
 4c8:	8b 55 08             	mov    0x8(%ebp),%edx
 4cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4cf:	90                   	nop
 4d0:	89 c8                	mov    %ecx,%eax
 4d2:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 4d5:	85 c0                	test   %eax,%eax
 4d7:	75 f7                	jne    4d0 <lock_acquire+0x10>
    __sync_synchronize();
 4d9:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 4de:	5d                   	pop    %ebp
 4df:	c3                   	ret    

000004e0 <lock_release>:
void lock_release(lock_t *lock){
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 4e6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 4eb:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 4f1:	5d                   	pop    %ebp
 4f2:	c3                   	ret    
 4f3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000500 <lock_init>:
void lock_init(lock_t *lock) {
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 503:	8b 45 08             	mov    0x8(%ebp),%eax
 506:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 50c:	5d                   	pop    %ebp
 50d:	c3                   	ret    

0000050e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 50e:	b8 01 00 00 00       	mov    $0x1,%eax
 513:	cd 40                	int    $0x40
 515:	c3                   	ret    

00000516 <exit>:
SYSCALL(exit)
 516:	b8 02 00 00 00       	mov    $0x2,%eax
 51b:	cd 40                	int    $0x40
 51d:	c3                   	ret    

0000051e <wait>:
SYSCALL(wait)
 51e:	b8 03 00 00 00       	mov    $0x3,%eax
 523:	cd 40                	int    $0x40
 525:	c3                   	ret    

00000526 <pipe>:
SYSCALL(pipe)
 526:	b8 04 00 00 00       	mov    $0x4,%eax
 52b:	cd 40                	int    $0x40
 52d:	c3                   	ret    

0000052e <read>:
SYSCALL(read)
 52e:	b8 05 00 00 00       	mov    $0x5,%eax
 533:	cd 40                	int    $0x40
 535:	c3                   	ret    

00000536 <write>:
SYSCALL(write)
 536:	b8 10 00 00 00       	mov    $0x10,%eax
 53b:	cd 40                	int    $0x40
 53d:	c3                   	ret    

0000053e <close>:
SYSCALL(close)
 53e:	b8 15 00 00 00       	mov    $0x15,%eax
 543:	cd 40                	int    $0x40
 545:	c3                   	ret    

00000546 <kill>:
SYSCALL(kill)
 546:	b8 06 00 00 00       	mov    $0x6,%eax
 54b:	cd 40                	int    $0x40
 54d:	c3                   	ret    

0000054e <exec>:
SYSCALL(exec)
 54e:	b8 07 00 00 00       	mov    $0x7,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    

00000556 <open>:
SYSCALL(open)
 556:	b8 0f 00 00 00       	mov    $0xf,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    

0000055e <mknod>:
SYSCALL(mknod)
 55e:	b8 11 00 00 00       	mov    $0x11,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    

00000566 <unlink>:
SYSCALL(unlink)
 566:	b8 12 00 00 00       	mov    $0x12,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    

0000056e <fstat>:
SYSCALL(fstat)
 56e:	b8 08 00 00 00       	mov    $0x8,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    

00000576 <link>:
SYSCALL(link)
 576:	b8 13 00 00 00       	mov    $0x13,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    

0000057e <mkdir>:
SYSCALL(mkdir)
 57e:	b8 14 00 00 00       	mov    $0x14,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    

00000586 <chdir>:
SYSCALL(chdir)
 586:	b8 09 00 00 00       	mov    $0x9,%eax
 58b:	cd 40                	int    $0x40
 58d:	c3                   	ret    

0000058e <dup>:
SYSCALL(dup)
 58e:	b8 0a 00 00 00       	mov    $0xa,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    

00000596 <getpid>:
SYSCALL(getpid)
 596:	b8 0b 00 00 00       	mov    $0xb,%eax
 59b:	cd 40                	int    $0x40
 59d:	c3                   	ret    

0000059e <sbrk>:
SYSCALL(sbrk)
 59e:	b8 0c 00 00 00       	mov    $0xc,%eax
 5a3:	cd 40                	int    $0x40
 5a5:	c3                   	ret    

000005a6 <sleep>:
SYSCALL(sleep)
 5a6:	b8 0d 00 00 00       	mov    $0xd,%eax
 5ab:	cd 40                	int    $0x40
 5ad:	c3                   	ret    

000005ae <uptime>:
SYSCALL(uptime)
 5ae:	b8 0e 00 00 00       	mov    $0xe,%eax
 5b3:	cd 40                	int    $0x40
 5b5:	c3                   	ret    

000005b6 <clone>:
SYSCALL(clone)
 5b6:	b8 16 00 00 00       	mov    $0x16,%eax
 5bb:	cd 40                	int    $0x40
 5bd:	c3                   	ret    

000005be <join>:
SYSCALL(join)
 5be:	b8 17 00 00 00       	mov    $0x17,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    
 5c6:	66 90                	xchg   %ax,%ax
 5c8:	66 90                	xchg   %ax,%ax
 5ca:	66 90                	xchg   %ax,%ax
 5cc:	66 90                	xchg   %ax,%ax
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 3c             	sub    $0x3c,%esp
 5d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5dc:	89 d1                	mov    %edx,%ecx
{
 5de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5e1:	85 d2                	test   %edx,%edx
 5e3:	0f 89 7f 00 00 00    	jns    668 <printint+0x98>
 5e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5ed:	74 79                	je     668 <printint+0x98>
    neg = 1;
 5ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5f8:	31 db                	xor    %ebx,%ebx
 5fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 600:	89 c8                	mov    %ecx,%eax
 602:	31 d2                	xor    %edx,%edx
 604:	89 cf                	mov    %ecx,%edi
 606:	f7 75 c4             	divl   -0x3c(%ebp)
 609:	0f b6 92 84 0a 00 00 	movzbl 0xa84(%edx),%edx
 610:	89 45 c0             	mov    %eax,-0x40(%ebp)
 613:	89 d8                	mov    %ebx,%eax
 615:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 618:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 61b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 61e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 621:	76 dd                	jbe    600 <printint+0x30>
  if(neg)
 623:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 626:	85 c9                	test   %ecx,%ecx
 628:	74 0c                	je     636 <printint+0x66>
    buf[i++] = '-';
 62a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 62f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 631:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 636:	8b 7d b8             	mov    -0x48(%ebp),%edi
 639:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 63d:	eb 07                	jmp    646 <printint+0x76>
 63f:	90                   	nop
    putc(fd, buf[i]);
 640:	0f b6 13             	movzbl (%ebx),%edx
 643:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 646:	83 ec 04             	sub    $0x4,%esp
 649:	88 55 d7             	mov    %dl,-0x29(%ebp)
 64c:	6a 01                	push   $0x1
 64e:	56                   	push   %esi
 64f:	57                   	push   %edi
 650:	e8 e1 fe ff ff       	call   536 <write>
  while(--i >= 0)
 655:	83 c4 10             	add    $0x10,%esp
 658:	39 de                	cmp    %ebx,%esi
 65a:	75 e4                	jne    640 <printint+0x70>
}
 65c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 65f:	5b                   	pop    %ebx
 660:	5e                   	pop    %esi
 661:	5f                   	pop    %edi
 662:	5d                   	pop    %ebp
 663:	c3                   	ret    
 664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 668:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 66f:	eb 87                	jmp    5f8 <printint+0x28>
 671:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 678:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67f:	90                   	nop

00000680 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	53                   	push   %ebx
 686:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 689:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 68c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 68f:	0f b6 13             	movzbl (%ebx),%edx
 692:	84 d2                	test   %dl,%dl
 694:	74 6a                	je     700 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 696:	8d 45 10             	lea    0x10(%ebp),%eax
 699:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 69c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 69f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6a1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6a4:	eb 36                	jmp    6dc <printf+0x5c>
 6a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
 6b0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6b3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6b8:	83 f8 25             	cmp    $0x25,%eax
 6bb:	74 15                	je     6d2 <printf+0x52>
  write(fd, &c, 1);
 6bd:	83 ec 04             	sub    $0x4,%esp
 6c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6c3:	6a 01                	push   $0x1
 6c5:	57                   	push   %edi
 6c6:	56                   	push   %esi
 6c7:	e8 6a fe ff ff       	call   536 <write>
 6cc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6cf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6d2:	0f b6 13             	movzbl (%ebx),%edx
 6d5:	83 c3 01             	add    $0x1,%ebx
 6d8:	84 d2                	test   %dl,%dl
 6da:	74 24                	je     700 <printf+0x80>
    c = fmt[i] & 0xff;
 6dc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6df:	85 c9                	test   %ecx,%ecx
 6e1:	74 cd                	je     6b0 <printf+0x30>
      }
    } else if(state == '%'){
 6e3:	83 f9 25             	cmp    $0x25,%ecx
 6e6:	75 ea                	jne    6d2 <printf+0x52>
      if(c == 'd'){
 6e8:	83 f8 25             	cmp    $0x25,%eax
 6eb:	0f 84 07 01 00 00    	je     7f8 <printf+0x178>
 6f1:	83 e8 63             	sub    $0x63,%eax
 6f4:	83 f8 15             	cmp    $0x15,%eax
 6f7:	77 17                	ja     710 <printf+0x90>
 6f9:	ff 24 85 2c 0a 00 00 	jmp    *0xa2c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 700:	8d 65 f4             	lea    -0xc(%ebp),%esp
 703:	5b                   	pop    %ebx
 704:	5e                   	pop    %esi
 705:	5f                   	pop    %edi
 706:	5d                   	pop    %ebp
 707:	c3                   	ret    
 708:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70f:	90                   	nop
  write(fd, &c, 1);
 710:	83 ec 04             	sub    $0x4,%esp
 713:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 716:	6a 01                	push   $0x1
 718:	57                   	push   %edi
 719:	56                   	push   %esi
 71a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 71e:	e8 13 fe ff ff       	call   536 <write>
        putc(fd, c);
 723:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 727:	83 c4 0c             	add    $0xc,%esp
 72a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 72d:	6a 01                	push   $0x1
 72f:	57                   	push   %edi
 730:	56                   	push   %esi
 731:	e8 00 fe ff ff       	call   536 <write>
        putc(fd, c);
 736:	83 c4 10             	add    $0x10,%esp
      state = 0;
 739:	31 c9                	xor    %ecx,%ecx
 73b:	eb 95                	jmp    6d2 <printf+0x52>
 73d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 740:	83 ec 0c             	sub    $0xc,%esp
 743:	b9 10 00 00 00       	mov    $0x10,%ecx
 748:	6a 00                	push   $0x0
 74a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 74d:	8b 10                	mov    (%eax),%edx
 74f:	89 f0                	mov    %esi,%eax
 751:	e8 7a fe ff ff       	call   5d0 <printint>
        ap++;
 756:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 75a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 75d:	31 c9                	xor    %ecx,%ecx
 75f:	e9 6e ff ff ff       	jmp    6d2 <printf+0x52>
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 768:	8b 45 d0             	mov    -0x30(%ebp),%eax
 76b:	8b 10                	mov    (%eax),%edx
        ap++;
 76d:	83 c0 04             	add    $0x4,%eax
 770:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 773:	85 d2                	test   %edx,%edx
 775:	0f 84 8d 00 00 00    	je     808 <printf+0x188>
        while(*s != 0){
 77b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 77e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 780:	84 c0                	test   %al,%al
 782:	0f 84 4a ff ff ff    	je     6d2 <printf+0x52>
 788:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 78b:	89 d3                	mov    %edx,%ebx
 78d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 790:	83 ec 04             	sub    $0x4,%esp
          s++;
 793:	83 c3 01             	add    $0x1,%ebx
 796:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 799:	6a 01                	push   $0x1
 79b:	57                   	push   %edi
 79c:	56                   	push   %esi
 79d:	e8 94 fd ff ff       	call   536 <write>
        while(*s != 0){
 7a2:	0f b6 03             	movzbl (%ebx),%eax
 7a5:	83 c4 10             	add    $0x10,%esp
 7a8:	84 c0                	test   %al,%al
 7aa:	75 e4                	jne    790 <printf+0x110>
      state = 0;
 7ac:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7af:	31 c9                	xor    %ecx,%ecx
 7b1:	e9 1c ff ff ff       	jmp    6d2 <printf+0x52>
 7b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7c0:	83 ec 0c             	sub    $0xc,%esp
 7c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7c8:	6a 01                	push   $0x1
 7ca:	e9 7b ff ff ff       	jmp    74a <printf+0xca>
 7cf:	90                   	nop
        putc(fd, *ap);
 7d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7d6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7d8:	6a 01                	push   $0x1
 7da:	57                   	push   %edi
 7db:	56                   	push   %esi
        putc(fd, *ap);
 7dc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7df:	e8 52 fd ff ff       	call   536 <write>
        ap++;
 7e4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7eb:	31 c9                	xor    %ecx,%ecx
 7ed:	e9 e0 fe ff ff       	jmp    6d2 <printf+0x52>
 7f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7f8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7fb:	83 ec 04             	sub    $0x4,%esp
 7fe:	e9 2a ff ff ff       	jmp    72d <printf+0xad>
 803:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 807:	90                   	nop
          s = "(null)";
 808:	ba 22 0a 00 00       	mov    $0xa22,%edx
        while(*s != 0){
 80d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 810:	b8 28 00 00 00       	mov    $0x28,%eax
 815:	89 d3                	mov    %edx,%ebx
 817:	e9 74 ff ff ff       	jmp    790 <printf+0x110>
 81c:	66 90                	xchg   %ax,%ax
 81e:	66 90                	xchg   %ax,%ax

00000820 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 820:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 821:	a1 20 0e 00 00       	mov    0xe20,%eax
{
 826:	89 e5                	mov    %esp,%ebp
 828:	57                   	push   %edi
 829:	56                   	push   %esi
 82a:	53                   	push   %ebx
 82b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 82e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 838:	89 c2                	mov    %eax,%edx
 83a:	8b 00                	mov    (%eax),%eax
 83c:	39 ca                	cmp    %ecx,%edx
 83e:	73 30                	jae    870 <free+0x50>
 840:	39 c1                	cmp    %eax,%ecx
 842:	72 04                	jb     848 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 844:	39 c2                	cmp    %eax,%edx
 846:	72 f0                	jb     838 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 848:	8b 73 fc             	mov    -0x4(%ebx),%esi
 84b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 84e:	39 f8                	cmp    %edi,%eax
 850:	74 30                	je     882 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 852:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 855:	8b 42 04             	mov    0x4(%edx),%eax
 858:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 85b:	39 f1                	cmp    %esi,%ecx
 85d:	74 3a                	je     899 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 85f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 861:	5b                   	pop    %ebx
  freep = p;
 862:	89 15 20 0e 00 00    	mov    %edx,0xe20
}
 868:	5e                   	pop    %esi
 869:	5f                   	pop    %edi
 86a:	5d                   	pop    %ebp
 86b:	c3                   	ret    
 86c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 870:	39 c2                	cmp    %eax,%edx
 872:	72 c4                	jb     838 <free+0x18>
 874:	39 c1                	cmp    %eax,%ecx
 876:	73 c0                	jae    838 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 878:	8b 73 fc             	mov    -0x4(%ebx),%esi
 87b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 87e:	39 f8                	cmp    %edi,%eax
 880:	75 d0                	jne    852 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 882:	03 70 04             	add    0x4(%eax),%esi
 885:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 888:	8b 02                	mov    (%edx),%eax
 88a:	8b 00                	mov    (%eax),%eax
 88c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 88f:	8b 42 04             	mov    0x4(%edx),%eax
 892:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 895:	39 f1                	cmp    %esi,%ecx
 897:	75 c6                	jne    85f <free+0x3f>
    p->s.size += bp->s.size;
 899:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 89c:	89 15 20 0e 00 00    	mov    %edx,0xe20
    p->s.size += bp->s.size;
 8a2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8a5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8a8:	89 0a                	mov    %ecx,(%edx)
}
 8aa:	5b                   	pop    %ebx
 8ab:	5e                   	pop    %esi
 8ac:	5f                   	pop    %edi
 8ad:	5d                   	pop    %ebp
 8ae:	c3                   	ret    
 8af:	90                   	nop

000008b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8b0:	55                   	push   %ebp
 8b1:	89 e5                	mov    %esp,%ebp
 8b3:	57                   	push   %edi
 8b4:	56                   	push   %esi
 8b5:	53                   	push   %ebx
 8b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8bc:	8b 3d 20 0e 00 00    	mov    0xe20,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8c2:	8d 70 07             	lea    0x7(%eax),%esi
 8c5:	c1 ee 03             	shr    $0x3,%esi
 8c8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8cb:	85 ff                	test   %edi,%edi
 8cd:	0f 84 9d 00 00 00    	je     970 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8d5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8d8:	39 f1                	cmp    %esi,%ecx
 8da:	73 6a                	jae    946 <malloc+0x96>
 8dc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8e1:	39 de                	cmp    %ebx,%esi
 8e3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8e6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8f0:	eb 17                	jmp    909 <malloc+0x59>
 8f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8fa:	8b 48 04             	mov    0x4(%eax),%ecx
 8fd:	39 f1                	cmp    %esi,%ecx
 8ff:	73 4f                	jae    950 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 901:	8b 3d 20 0e 00 00    	mov    0xe20,%edi
 907:	89 c2                	mov    %eax,%edx
 909:	39 d7                	cmp    %edx,%edi
 90b:	75 eb                	jne    8f8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 90d:	83 ec 0c             	sub    $0xc,%esp
 910:	ff 75 e4             	push   -0x1c(%ebp)
 913:	e8 86 fc ff ff       	call   59e <sbrk>
  if(p == (char*)-1)
 918:	83 c4 10             	add    $0x10,%esp
 91b:	83 f8 ff             	cmp    $0xffffffff,%eax
 91e:	74 1c                	je     93c <malloc+0x8c>
  hp->s.size = nu;
 920:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 923:	83 ec 0c             	sub    $0xc,%esp
 926:	83 c0 08             	add    $0x8,%eax
 929:	50                   	push   %eax
 92a:	e8 f1 fe ff ff       	call   820 <free>
  return freep;
 92f:	8b 15 20 0e 00 00    	mov    0xe20,%edx
      if((p = morecore(nunits)) == 0)
 935:	83 c4 10             	add    $0x10,%esp
 938:	85 d2                	test   %edx,%edx
 93a:	75 bc                	jne    8f8 <malloc+0x48>
        return 0;
  }
}
 93c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 93f:	31 c0                	xor    %eax,%eax
}
 941:	5b                   	pop    %ebx
 942:	5e                   	pop    %esi
 943:	5f                   	pop    %edi
 944:	5d                   	pop    %ebp
 945:	c3                   	ret    
    if(p->s.size >= nunits){
 946:	89 d0                	mov    %edx,%eax
 948:	89 fa                	mov    %edi,%edx
 94a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 950:	39 ce                	cmp    %ecx,%esi
 952:	74 4c                	je     9a0 <malloc+0xf0>
        p->s.size -= nunits;
 954:	29 f1                	sub    %esi,%ecx
 956:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 959:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 95c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 95f:	89 15 20 0e 00 00    	mov    %edx,0xe20
}
 965:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 968:	83 c0 08             	add    $0x8,%eax
}
 96b:	5b                   	pop    %ebx
 96c:	5e                   	pop    %esi
 96d:	5f                   	pop    %edi
 96e:	5d                   	pop    %ebp
 96f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 970:	c7 05 20 0e 00 00 24 	movl   $0xe24,0xe20
 977:	0e 00 00 
    base.s.size = 0;
 97a:	bf 24 0e 00 00       	mov    $0xe24,%edi
    base.s.ptr = freep = prevp = &base;
 97f:	c7 05 24 0e 00 00 24 	movl   $0xe24,0xe24
 986:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 989:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 98b:	c7 05 28 0e 00 00 00 	movl   $0x0,0xe28
 992:	00 00 00 
    if(p->s.size >= nunits){
 995:	e9 42 ff ff ff       	jmp    8dc <malloc+0x2c>
 99a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9a0:	8b 08                	mov    (%eax),%ecx
 9a2:	89 0a                	mov    %ecx,(%edx)
 9a4:	eb b9                	jmp    95f <malloc+0xaf>
