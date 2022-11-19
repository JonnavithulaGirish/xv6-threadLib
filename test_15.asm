
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
   f:	e8 d0 05 00 00       	call   5e4 <getpid>

   lock_init(&lock);
  14:	83 ec 0c             	sub    $0xc,%esp
  17:	68 6c 0e 00 00       	push   $0xe6c
   ppid = getpid();
  1c:	a3 78 0e 00 00       	mov    %eax,0xe78
   lock_init(&lock);
  21:	e8 ba 04 00 00       	call   4e0 <lock_init>

   int i;
   for (i = 0; i < num_threads; i++) {
  26:	a1 68 0e 00 00       	mov    0xe68,%eax
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 8e b4 00 00 00    	jle    ea <main+0xea>
  36:	31 db                	xor    %ebx,%ebx
  38:	eb 12                	jmp    4c <main+0x4c>
  3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40:	a1 68 0e 00 00       	mov    0xe68,%eax
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
  66:	68 f8 09 00 00       	push   $0x9f8
  6b:	68 02 0a 00 00       	push   $0xa02
  70:	6a 01                	push   $0x1
  72:	e8 59 06 00 00       	call   6d0 <printf>
  77:	83 c4 0c             	add    $0xc,%esp
  7a:	68 0a 0a 00 00       	push   $0xa0a
   }

   for (i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  7f:	68 19 0a 00 00       	push   $0xa19
  84:	6a 01                	push   $0x1
  86:	e8 45 06 00 00       	call   6d0 <printf>
  8b:	5a                   	pop    %edx
  8c:	59                   	pop    %ecx
  8d:	68 2d 0a 00 00       	push   $0xa2d
  92:	6a 01                	push   $0x1
  94:	e8 37 06 00 00       	call   6d0 <printf>
  99:	5b                   	pop    %ebx
  9a:	ff 35 78 0e 00 00    	push   0xe78
  a0:	e8 ef 04 00 00       	call   594 <kill>
  a5:	e8 ba 04 00 00       	call   564 <exit>
   for (i = 0; i < num_threads; i++) {
  aa:	85 c0                	test   %eax,%eax
  ac:	7e 3c                	jle    ea <main+0xea>
  ae:	31 db                	xor    %ebx,%ebx
  b0:	eb 12                	jmp    c4 <main+0xc4>
  b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  b8:	a1 68 0e 00 00       	mov    0xe68,%eax
  bd:	83 c3 01             	add    $0x1,%ebx
  c0:	39 d8                	cmp    %ebx,%eax
  c2:	7e 26                	jle    ea <main+0xea>
      int join_pid = thread_join();
  c4:	e8 97 03 00 00       	call   460 <thread_join>
      assert(join_pid > 0);
  c9:	85 c0                	test   %eax,%eax
  cb:	7f eb                	jg     b8 <main+0xb8>
  cd:	6a 2a                	push   $0x2a
  cf:	68 f8 09 00 00       	push   $0x9f8
  d4:	68 02 0a 00 00       	push   $0xa02
  d9:	6a 01                	push   $0x1
  db:	e8 f0 05 00 00       	call   6d0 <printf>
  e0:	83 c4 0c             	add    $0xc,%esp
  e3:	68 3a 0a 00 00       	push   $0xa3a
  e8:	eb 95                	jmp    7f <main+0x7f>
   }

   assert(global == num_threads * loops);
  ea:	0f af 05 64 0e 00 00 	imul   0xe64,%eax
  f1:	3b 05 74 0e 00 00    	cmp    0xe74,%eax
  f7:	74 20                	je     119 <main+0x119>
  f9:	6a 2d                	push   $0x2d
  fb:	68 f8 09 00 00       	push   $0x9f8
 100:	68 02 0a 00 00       	push   $0xa02
 105:	6a 01                	push   $0x1
 107:	e8 c4 05 00 00       	call   6d0 <printf>
 10c:	83 c4 0c             	add    $0xc,%esp
 10f:	68 47 0a 00 00       	push   $0xa47
 114:	e9 66 ff ff ff       	jmp    7f <main+0x7f>

   printf(1, "TEST PASSED\n");
 119:	50                   	push   %eax
 11a:	50                   	push   %eax
 11b:	68 65 0a 00 00       	push   $0xa65
 120:	6a 01                	push   $0x1
 122:	e8 a9 05 00 00       	call   6d0 <printf>
   exit();
 127:	e8 38 04 00 00       	call   564 <exit>
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
 137:	a1 64 0e 00 00       	mov    0xe64,%eax
 13c:	85 c0                	test   %eax,%eax
 13e:	7e 36                	jle    176 <worker+0x46>
 140:	31 db                	xor    %ebx,%ebx
 142:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      lock_acquire(&lock);
 148:	83 ec 0c             	sub    $0xc,%esp
   for (i = 0; i < loops; i++) {
 14b:	83 c3 01             	add    $0x1,%ebx
      lock_acquire(&lock);
 14e:	68 6c 0e 00 00       	push   $0xe6c
 153:	e8 a8 03 00 00       	call   500 <lock_acquire>
      tmp = global;
      for(j = 0; j < 50; j++); // take some time
      global = tmp + 1;
      lock_release(&lock);
 158:	c7 04 24 6c 0e 00 00 	movl   $0xe6c,(%esp)
      global = tmp + 1;
 15f:	83 05 74 0e 00 00 01 	addl   $0x1,0xe74
      lock_release(&lock);
 166:	e8 e5 03 00 00       	call   550 <lock_release>
   for (i = 0; i < loops; i++) {
 16b:	83 c4 10             	add    $0x10,%esp
 16e:	39 1d 64 0e 00 00    	cmp    %ebx,0xe64
 174:	7f d2                	jg     148 <worker+0x18>
   }
   exit();
 176:	e8 e9 03 00 00       	call   564 <exit>
 17b:	66 90                	xchg   %ax,%ax
 17d:	66 90                	xchg   %ax,%ax
 17f:	90                   	nop

00000180 <strcpy>:
#include "x86.h"
#include "mmu.h"

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
 2b8:	e8 bf 02 00 00       	call   57c <read>
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
 31d:	e8 82 02 00 00       	call   5a4 <open>
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
 332:	e8 85 02 00 00       	call   5bc <fstat>
  close(fd);
 337:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 33a:	89 c6                	mov    %eax,%esi
  close(fd);
 33c:	e8 4b 02 00 00       	call   58c <close>
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
  asm volatile("lock; xaddl %%eax, %2;" :
 3d1:	b8 01 00 00 00       	mov    $0x1,%eax
 3d6:	89 e5                	mov    %esp,%ebp
 3d8:	53                   	push   %ebx
 3d9:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 3dc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 3e3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 3ea:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 3ef:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3f2:	39 c2                	cmp    %eax,%edx
 3f4:	74 24                	je     41a <thread_create+0x4a>
 3f6:	89 c3                	mov    %eax,%ebx
 3f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 400:	83 ec 04             	sub    $0x4,%esp
 403:	52                   	push   %edx
 404:	68 72 0a 00 00       	push   $0xa72
 409:	6a 01                	push   $0x1
 40b:	e8 c0 02 00 00       	call   6d0 <printf>
  while(lock->turn != myturn){
 410:	8b 55 f4             	mov    -0xc(%ebp),%edx
 413:	83 c4 10             	add    $0x10,%esp
 416:	39 d3                	cmp    %edx,%ebx
 418:	75 e6                	jne    400 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 41a:	83 ec 0c             	sub    $0xc,%esp
 41d:	68 00 20 00 00       	push   $0x2000
 422:	e8 d9 04 00 00       	call   900 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 427:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 42b:	83 c4 10             	add    $0x10,%esp
 42e:	89 c2                	mov    %eax,%edx
 430:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 436:	74 07                	je     43f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 438:	29 d0                	sub    %edx,%eax
 43a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 43f:	50                   	push   %eax
 440:	ff 75 10             	push   0x10(%ebp)
 443:	ff 75 0c             	push   0xc(%ebp)
 446:	ff 75 08             	push   0x8(%ebp)
 449:	e8 b6 01 00 00       	call   604 <clone>
}
 44e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 451:	c9                   	leave  
 452:	c3                   	ret    
 453:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000460 <thread_join>:
int thread_join(){
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	56                   	push   %esi
 464:	53                   	push   %ebx
 465:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 468:	6a 04                	push   $0x4
 46a:	e8 91 04 00 00       	call   900 <malloc>
 46f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 472:	8d 45 ec             	lea    -0x14(%ebp),%eax
 475:	89 04 24             	mov    %eax,(%esp)
 478:	e8 8f 01 00 00       	call   60c <join>
  lock->ticket = 0;
 47d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 484:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 486:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 48d:	b8 01 00 00 00       	mov    $0x1,%eax
 492:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 497:	8b 55 f4             	mov    -0xc(%ebp),%edx
 49a:	83 c4 10             	add    $0x10,%esp
 49d:	39 c2                	cmp    %eax,%edx
 49f:	74 21                	je     4c2 <thread_join+0x62>
 4a1:	89 c3                	mov    %eax,%ebx
 4a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4a7:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 4a8:	83 ec 04             	sub    $0x4,%esp
 4ab:	52                   	push   %edx
 4ac:	68 72 0a 00 00       	push   $0xa72
 4b1:	6a 01                	push   $0x1
 4b3:	e8 18 02 00 00       	call   6d0 <printf>
  while(lock->turn != myturn){
 4b8:	8b 55 f4             	mov    -0xc(%ebp),%edx
 4bb:	83 c4 10             	add    $0x10,%esp
 4be:	39 d3                	cmp    %edx,%ebx
 4c0:	75 e6                	jne    4a8 <thread_join+0x48>
	free(stack);
 4c2:	83 ec 0c             	sub    $0xc,%esp
 4c5:	ff 75 ec             	push   -0x14(%ebp)
 4c8:	e8 a3 03 00 00       	call   870 <free>
}
 4cd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4d0:	89 f0                	mov    %esi,%eax
 4d2:	5b                   	pop    %ebx
 4d3:	5e                   	pop    %esi
 4d4:	5d                   	pop    %ebp
 4d5:	c3                   	ret    
 4d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4dd:	8d 76 00             	lea    0x0(%esi),%esi

000004e0 <lock_init>:
void lock_init(lock_t *lock) {
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 4e6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 4ec:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 4f3:	5d                   	pop    %ebp
 4f4:	c3                   	ret    
 4f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <lock_acquire>:
void lock_acquire(lock_t *lock){
 500:	55                   	push   %ebp
 501:	b8 01 00 00 00       	mov    $0x1,%eax
 506:	89 e5                	mov    %esp,%ebp
 508:	56                   	push   %esi
 509:	8b 75 08             	mov    0x8(%ebp),%esi
 50c:	53                   	push   %ebx
 50d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 511:	8b 56 04             	mov    0x4(%esi),%edx
 514:	39 d0                	cmp    %edx,%eax
 516:	74 22                	je     53a <lock_acquire+0x3a>
 518:	89 c3                	mov    %eax,%ebx
 51a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 520:	83 ec 04             	sub    $0x4,%esp
 523:	52                   	push   %edx
 524:	68 72 0a 00 00       	push   $0xa72
 529:	6a 01                	push   $0x1
 52b:	e8 a0 01 00 00       	call   6d0 <printf>
  while(lock->turn != myturn){
 530:	8b 56 04             	mov    0x4(%esi),%edx
 533:	83 c4 10             	add    $0x10,%esp
 536:	39 da                	cmp    %ebx,%edx
 538:	75 e6                	jne    520 <lock_acquire+0x20>
}
 53a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 53d:	5b                   	pop    %ebx
 53e:	5e                   	pop    %esi
 53f:	5d                   	pop    %ebp
 540:	c3                   	ret    
 541:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 548:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop

00000550 <lock_release>:
void lock_release(lock_t *lock){
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 556:	83 40 04 01          	addl   $0x1,0x4(%eax)
 55a:	5d                   	pop    %ebp
 55b:	c3                   	ret    

0000055c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 55c:	b8 01 00 00 00       	mov    $0x1,%eax
 561:	cd 40                	int    $0x40
 563:	c3                   	ret    

00000564 <exit>:
SYSCALL(exit)
 564:	b8 02 00 00 00       	mov    $0x2,%eax
 569:	cd 40                	int    $0x40
 56b:	c3                   	ret    

0000056c <wait>:
SYSCALL(wait)
 56c:	b8 03 00 00 00       	mov    $0x3,%eax
 571:	cd 40                	int    $0x40
 573:	c3                   	ret    

00000574 <pipe>:
SYSCALL(pipe)
 574:	b8 04 00 00 00       	mov    $0x4,%eax
 579:	cd 40                	int    $0x40
 57b:	c3                   	ret    

0000057c <read>:
SYSCALL(read)
 57c:	b8 05 00 00 00       	mov    $0x5,%eax
 581:	cd 40                	int    $0x40
 583:	c3                   	ret    

00000584 <write>:
SYSCALL(write)
 584:	b8 10 00 00 00       	mov    $0x10,%eax
 589:	cd 40                	int    $0x40
 58b:	c3                   	ret    

0000058c <close>:
SYSCALL(close)
 58c:	b8 15 00 00 00       	mov    $0x15,%eax
 591:	cd 40                	int    $0x40
 593:	c3                   	ret    

00000594 <kill>:
SYSCALL(kill)
 594:	b8 06 00 00 00       	mov    $0x6,%eax
 599:	cd 40                	int    $0x40
 59b:	c3                   	ret    

0000059c <exec>:
SYSCALL(exec)
 59c:	b8 07 00 00 00       	mov    $0x7,%eax
 5a1:	cd 40                	int    $0x40
 5a3:	c3                   	ret    

000005a4 <open>:
SYSCALL(open)
 5a4:	b8 0f 00 00 00       	mov    $0xf,%eax
 5a9:	cd 40                	int    $0x40
 5ab:	c3                   	ret    

000005ac <mknod>:
SYSCALL(mknod)
 5ac:	b8 11 00 00 00       	mov    $0x11,%eax
 5b1:	cd 40                	int    $0x40
 5b3:	c3                   	ret    

000005b4 <unlink>:
SYSCALL(unlink)
 5b4:	b8 12 00 00 00       	mov    $0x12,%eax
 5b9:	cd 40                	int    $0x40
 5bb:	c3                   	ret    

000005bc <fstat>:
SYSCALL(fstat)
 5bc:	b8 08 00 00 00       	mov    $0x8,%eax
 5c1:	cd 40                	int    $0x40
 5c3:	c3                   	ret    

000005c4 <link>:
SYSCALL(link)
 5c4:	b8 13 00 00 00       	mov    $0x13,%eax
 5c9:	cd 40                	int    $0x40
 5cb:	c3                   	ret    

000005cc <mkdir>:
SYSCALL(mkdir)
 5cc:	b8 14 00 00 00       	mov    $0x14,%eax
 5d1:	cd 40                	int    $0x40
 5d3:	c3                   	ret    

000005d4 <chdir>:
SYSCALL(chdir)
 5d4:	b8 09 00 00 00       	mov    $0x9,%eax
 5d9:	cd 40                	int    $0x40
 5db:	c3                   	ret    

000005dc <dup>:
SYSCALL(dup)
 5dc:	b8 0a 00 00 00       	mov    $0xa,%eax
 5e1:	cd 40                	int    $0x40
 5e3:	c3                   	ret    

000005e4 <getpid>:
SYSCALL(getpid)
 5e4:	b8 0b 00 00 00       	mov    $0xb,%eax
 5e9:	cd 40                	int    $0x40
 5eb:	c3                   	ret    

000005ec <sbrk>:
SYSCALL(sbrk)
 5ec:	b8 0c 00 00 00       	mov    $0xc,%eax
 5f1:	cd 40                	int    $0x40
 5f3:	c3                   	ret    

000005f4 <sleep>:
SYSCALL(sleep)
 5f4:	b8 0d 00 00 00       	mov    $0xd,%eax
 5f9:	cd 40                	int    $0x40
 5fb:	c3                   	ret    

000005fc <uptime>:
SYSCALL(uptime)
 5fc:	b8 0e 00 00 00       	mov    $0xe,%eax
 601:	cd 40                	int    $0x40
 603:	c3                   	ret    

00000604 <clone>:
SYSCALL(clone)
 604:	b8 16 00 00 00       	mov    $0x16,%eax
 609:	cd 40                	int    $0x40
 60b:	c3                   	ret    

0000060c <join>:
SYSCALL(join)
 60c:	b8 17 00 00 00       	mov    $0x17,%eax
 611:	cd 40                	int    $0x40
 613:	c3                   	ret    
 614:	66 90                	xchg   %ax,%ax
 616:	66 90                	xchg   %ax,%ax
 618:	66 90                	xchg   %ax,%ax
 61a:	66 90                	xchg   %ax,%ax
 61c:	66 90                	xchg   %ax,%ax
 61e:	66 90                	xchg   %ax,%ax

00000620 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	57                   	push   %edi
 624:	56                   	push   %esi
 625:	53                   	push   %ebx
 626:	83 ec 3c             	sub    $0x3c,%esp
 629:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 62c:	89 d1                	mov    %edx,%ecx
{
 62e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 631:	85 d2                	test   %edx,%edx
 633:	0f 89 7f 00 00 00    	jns    6b8 <printint+0x98>
 639:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 63d:	74 79                	je     6b8 <printint+0x98>
    neg = 1;
 63f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 646:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 648:	31 db                	xor    %ebx,%ebx
 64a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 64d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 650:	89 c8                	mov    %ecx,%eax
 652:	31 d2                	xor    %edx,%edx
 654:	89 cf                	mov    %ecx,%edi
 656:	f7 75 c4             	divl   -0x3c(%ebp)
 659:	0f b6 92 e8 0a 00 00 	movzbl 0xae8(%edx),%edx
 660:	89 45 c0             	mov    %eax,-0x40(%ebp)
 663:	89 d8                	mov    %ebx,%eax
 665:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 668:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 66b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 66e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 671:	76 dd                	jbe    650 <printint+0x30>
  if(neg)
 673:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 676:	85 c9                	test   %ecx,%ecx
 678:	74 0c                	je     686 <printint+0x66>
    buf[i++] = '-';
 67a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 67f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 681:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 686:	8b 7d b8             	mov    -0x48(%ebp),%edi
 689:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 68d:	eb 07                	jmp    696 <printint+0x76>
 68f:	90                   	nop
    putc(fd, buf[i]);
 690:	0f b6 13             	movzbl (%ebx),%edx
 693:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 696:	83 ec 04             	sub    $0x4,%esp
 699:	88 55 d7             	mov    %dl,-0x29(%ebp)
 69c:	6a 01                	push   $0x1
 69e:	56                   	push   %esi
 69f:	57                   	push   %edi
 6a0:	e8 df fe ff ff       	call   584 <write>
  while(--i >= 0)
 6a5:	83 c4 10             	add    $0x10,%esp
 6a8:	39 de                	cmp    %ebx,%esi
 6aa:	75 e4                	jne    690 <printint+0x70>
}
 6ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6af:	5b                   	pop    %ebx
 6b0:	5e                   	pop    %esi
 6b1:	5f                   	pop    %edi
 6b2:	5d                   	pop    %ebp
 6b3:	c3                   	ret    
 6b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6b8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 6bf:	eb 87                	jmp    648 <printint+0x28>
 6c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6cf:	90                   	nop

000006d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	57                   	push   %edi
 6d4:	56                   	push   %esi
 6d5:	53                   	push   %ebx
 6d6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6d9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6dc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6df:	0f b6 13             	movzbl (%ebx),%edx
 6e2:	84 d2                	test   %dl,%dl
 6e4:	74 6a                	je     750 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6e6:	8d 45 10             	lea    0x10(%ebp),%eax
 6e9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6ec:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6ef:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6f4:	eb 36                	jmp    72c <printf+0x5c>
 6f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
 700:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 703:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 708:	83 f8 25             	cmp    $0x25,%eax
 70b:	74 15                	je     722 <printf+0x52>
  write(fd, &c, 1);
 70d:	83 ec 04             	sub    $0x4,%esp
 710:	88 55 e7             	mov    %dl,-0x19(%ebp)
 713:	6a 01                	push   $0x1
 715:	57                   	push   %edi
 716:	56                   	push   %esi
 717:	e8 68 fe ff ff       	call   584 <write>
 71c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 71f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 722:	0f b6 13             	movzbl (%ebx),%edx
 725:	83 c3 01             	add    $0x1,%ebx
 728:	84 d2                	test   %dl,%dl
 72a:	74 24                	je     750 <printf+0x80>
    c = fmt[i] & 0xff;
 72c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 72f:	85 c9                	test   %ecx,%ecx
 731:	74 cd                	je     700 <printf+0x30>
      }
    } else if(state == '%'){
 733:	83 f9 25             	cmp    $0x25,%ecx
 736:	75 ea                	jne    722 <printf+0x52>
      if(c == 'd'){
 738:	83 f8 25             	cmp    $0x25,%eax
 73b:	0f 84 07 01 00 00    	je     848 <printf+0x178>
 741:	83 e8 63             	sub    $0x63,%eax
 744:	83 f8 15             	cmp    $0x15,%eax
 747:	77 17                	ja     760 <printf+0x90>
 749:	ff 24 85 90 0a 00 00 	jmp    *0xa90(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 750:	8d 65 f4             	lea    -0xc(%ebp),%esp
 753:	5b                   	pop    %ebx
 754:	5e                   	pop    %esi
 755:	5f                   	pop    %edi
 756:	5d                   	pop    %ebp
 757:	c3                   	ret    
 758:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75f:	90                   	nop
  write(fd, &c, 1);
 760:	83 ec 04             	sub    $0x4,%esp
 763:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 766:	6a 01                	push   $0x1
 768:	57                   	push   %edi
 769:	56                   	push   %esi
 76a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 76e:	e8 11 fe ff ff       	call   584 <write>
        putc(fd, c);
 773:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 777:	83 c4 0c             	add    $0xc,%esp
 77a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 77d:	6a 01                	push   $0x1
 77f:	57                   	push   %edi
 780:	56                   	push   %esi
 781:	e8 fe fd ff ff       	call   584 <write>
        putc(fd, c);
 786:	83 c4 10             	add    $0x10,%esp
      state = 0;
 789:	31 c9                	xor    %ecx,%ecx
 78b:	eb 95                	jmp    722 <printf+0x52>
 78d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 790:	83 ec 0c             	sub    $0xc,%esp
 793:	b9 10 00 00 00       	mov    $0x10,%ecx
 798:	6a 00                	push   $0x0
 79a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 79d:	8b 10                	mov    (%eax),%edx
 79f:	89 f0                	mov    %esi,%eax
 7a1:	e8 7a fe ff ff       	call   620 <printint>
        ap++;
 7a6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7aa:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7ad:	31 c9                	xor    %ecx,%ecx
 7af:	e9 6e ff ff ff       	jmp    722 <printf+0x52>
 7b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7b8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7bb:	8b 10                	mov    (%eax),%edx
        ap++;
 7bd:	83 c0 04             	add    $0x4,%eax
 7c0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7c3:	85 d2                	test   %edx,%edx
 7c5:	0f 84 8d 00 00 00    	je     858 <printf+0x188>
        while(*s != 0){
 7cb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 7ce:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7d0:	84 c0                	test   %al,%al
 7d2:	0f 84 4a ff ff ff    	je     722 <printf+0x52>
 7d8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7db:	89 d3                	mov    %edx,%ebx
 7dd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7e0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7e3:	83 c3 01             	add    $0x1,%ebx
 7e6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7e9:	6a 01                	push   $0x1
 7eb:	57                   	push   %edi
 7ec:	56                   	push   %esi
 7ed:	e8 92 fd ff ff       	call   584 <write>
        while(*s != 0){
 7f2:	0f b6 03             	movzbl (%ebx),%eax
 7f5:	83 c4 10             	add    $0x10,%esp
 7f8:	84 c0                	test   %al,%al
 7fa:	75 e4                	jne    7e0 <printf+0x110>
      state = 0;
 7fc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7ff:	31 c9                	xor    %ecx,%ecx
 801:	e9 1c ff ff ff       	jmp    722 <printf+0x52>
 806:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 810:	83 ec 0c             	sub    $0xc,%esp
 813:	b9 0a 00 00 00       	mov    $0xa,%ecx
 818:	6a 01                	push   $0x1
 81a:	e9 7b ff ff ff       	jmp    79a <printf+0xca>
 81f:	90                   	nop
        putc(fd, *ap);
 820:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 823:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 826:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 828:	6a 01                	push   $0x1
 82a:	57                   	push   %edi
 82b:	56                   	push   %esi
        putc(fd, *ap);
 82c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 82f:	e8 50 fd ff ff       	call   584 <write>
        ap++;
 834:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 838:	83 c4 10             	add    $0x10,%esp
      state = 0;
 83b:	31 c9                	xor    %ecx,%ecx
 83d:	e9 e0 fe ff ff       	jmp    722 <printf+0x52>
 842:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 848:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 84b:	83 ec 04             	sub    $0x4,%esp
 84e:	e9 2a ff ff ff       	jmp    77d <printf+0xad>
 853:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 857:	90                   	nop
          s = "(null)";
 858:	ba 86 0a 00 00       	mov    $0xa86,%edx
        while(*s != 0){
 85d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 860:	b8 28 00 00 00       	mov    $0x28,%eax
 865:	89 d3                	mov    %edx,%ebx
 867:	e9 74 ff ff ff       	jmp    7e0 <printf+0x110>
 86c:	66 90                	xchg   %ax,%ax
 86e:	66 90                	xchg   %ax,%ax

00000870 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 870:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 871:	a1 7c 0e 00 00       	mov    0xe7c,%eax
{
 876:	89 e5                	mov    %esp,%ebp
 878:	57                   	push   %edi
 879:	56                   	push   %esi
 87a:	53                   	push   %ebx
 87b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 87e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 881:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 888:	89 c2                	mov    %eax,%edx
 88a:	8b 00                	mov    (%eax),%eax
 88c:	39 ca                	cmp    %ecx,%edx
 88e:	73 30                	jae    8c0 <free+0x50>
 890:	39 c1                	cmp    %eax,%ecx
 892:	72 04                	jb     898 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 894:	39 c2                	cmp    %eax,%edx
 896:	72 f0                	jb     888 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 898:	8b 73 fc             	mov    -0x4(%ebx),%esi
 89b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 89e:	39 f8                	cmp    %edi,%eax
 8a0:	74 30                	je     8d2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8a2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8a5:	8b 42 04             	mov    0x4(%edx),%eax
 8a8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8ab:	39 f1                	cmp    %esi,%ecx
 8ad:	74 3a                	je     8e9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8af:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8b1:	5b                   	pop    %ebx
  freep = p;
 8b2:	89 15 7c 0e 00 00    	mov    %edx,0xe7c
}
 8b8:	5e                   	pop    %esi
 8b9:	5f                   	pop    %edi
 8ba:	5d                   	pop    %ebp
 8bb:	c3                   	ret    
 8bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8c0:	39 c2                	cmp    %eax,%edx
 8c2:	72 c4                	jb     888 <free+0x18>
 8c4:	39 c1                	cmp    %eax,%ecx
 8c6:	73 c0                	jae    888 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 8c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ce:	39 f8                	cmp    %edi,%eax
 8d0:	75 d0                	jne    8a2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8d2:	03 70 04             	add    0x4(%eax),%esi
 8d5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8d8:	8b 02                	mov    (%edx),%eax
 8da:	8b 00                	mov    (%eax),%eax
 8dc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8df:	8b 42 04             	mov    0x4(%edx),%eax
 8e2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8e5:	39 f1                	cmp    %esi,%ecx
 8e7:	75 c6                	jne    8af <free+0x3f>
    p->s.size += bp->s.size;
 8e9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8ec:	89 15 7c 0e 00 00    	mov    %edx,0xe7c
    p->s.size += bp->s.size;
 8f2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8f5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8f8:	89 0a                	mov    %ecx,(%edx)
}
 8fa:	5b                   	pop    %ebx
 8fb:	5e                   	pop    %esi
 8fc:	5f                   	pop    %edi
 8fd:	5d                   	pop    %ebp
 8fe:	c3                   	ret    
 8ff:	90                   	nop

00000900 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 900:	55                   	push   %ebp
 901:	89 e5                	mov    %esp,%ebp
 903:	57                   	push   %edi
 904:	56                   	push   %esi
 905:	53                   	push   %ebx
 906:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 909:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 90c:	8b 3d 7c 0e 00 00    	mov    0xe7c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 912:	8d 70 07             	lea    0x7(%eax),%esi
 915:	c1 ee 03             	shr    $0x3,%esi
 918:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 91b:	85 ff                	test   %edi,%edi
 91d:	0f 84 9d 00 00 00    	je     9c0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 923:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 925:	8b 4a 04             	mov    0x4(%edx),%ecx
 928:	39 f1                	cmp    %esi,%ecx
 92a:	73 6a                	jae    996 <malloc+0x96>
 92c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 931:	39 de                	cmp    %ebx,%esi
 933:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 936:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 93d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 940:	eb 17                	jmp    959 <malloc+0x59>
 942:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 948:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 94a:	8b 48 04             	mov    0x4(%eax),%ecx
 94d:	39 f1                	cmp    %esi,%ecx
 94f:	73 4f                	jae    9a0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 951:	8b 3d 7c 0e 00 00    	mov    0xe7c,%edi
 957:	89 c2                	mov    %eax,%edx
 959:	39 d7                	cmp    %edx,%edi
 95b:	75 eb                	jne    948 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 95d:	83 ec 0c             	sub    $0xc,%esp
 960:	ff 75 e4             	push   -0x1c(%ebp)
 963:	e8 84 fc ff ff       	call   5ec <sbrk>
  if(p == (char*)-1)
 968:	83 c4 10             	add    $0x10,%esp
 96b:	83 f8 ff             	cmp    $0xffffffff,%eax
 96e:	74 1c                	je     98c <malloc+0x8c>
  hp->s.size = nu;
 970:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 973:	83 ec 0c             	sub    $0xc,%esp
 976:	83 c0 08             	add    $0x8,%eax
 979:	50                   	push   %eax
 97a:	e8 f1 fe ff ff       	call   870 <free>
  return freep;
 97f:	8b 15 7c 0e 00 00    	mov    0xe7c,%edx
      if((p = morecore(nunits)) == 0)
 985:	83 c4 10             	add    $0x10,%esp
 988:	85 d2                	test   %edx,%edx
 98a:	75 bc                	jne    948 <malloc+0x48>
        return 0;
  }
}
 98c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 98f:	31 c0                	xor    %eax,%eax
}
 991:	5b                   	pop    %ebx
 992:	5e                   	pop    %esi
 993:	5f                   	pop    %edi
 994:	5d                   	pop    %ebp
 995:	c3                   	ret    
    if(p->s.size >= nunits){
 996:	89 d0                	mov    %edx,%eax
 998:	89 fa                	mov    %edi,%edx
 99a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9a0:	39 ce                	cmp    %ecx,%esi
 9a2:	74 4c                	je     9f0 <malloc+0xf0>
        p->s.size -= nunits;
 9a4:	29 f1                	sub    %esi,%ecx
 9a6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9a9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9ac:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 9af:	89 15 7c 0e 00 00    	mov    %edx,0xe7c
}
 9b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9b8:	83 c0 08             	add    $0x8,%eax
}
 9bb:	5b                   	pop    %ebx
 9bc:	5e                   	pop    %esi
 9bd:	5f                   	pop    %edi
 9be:	5d                   	pop    %ebp
 9bf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 9c0:	c7 05 7c 0e 00 00 80 	movl   $0xe80,0xe7c
 9c7:	0e 00 00 
    base.s.size = 0;
 9ca:	bf 80 0e 00 00       	mov    $0xe80,%edi
    base.s.ptr = freep = prevp = &base;
 9cf:	c7 05 80 0e 00 00 80 	movl   $0xe80,0xe80
 9d6:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9db:	c7 05 84 0e 00 00 00 	movl   $0x0,0xe84
 9e2:	00 00 00 
    if(p->s.size >= nunits){
 9e5:	e9 42 ff ff ff       	jmp    92c <malloc+0x2c>
 9ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9f0:	8b 08                	mov    (%eax),%ecx
 9f2:	89 0a                	mov    %ecx,(%edx)
 9f4:	eb b9                	jmp    9af <malloc+0xaf>
