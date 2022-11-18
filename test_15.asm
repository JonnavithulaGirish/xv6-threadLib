
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
   f:	e8 f0 04 00 00       	call   504 <getpid>

   lock_init(&lock);
  14:	83 ec 0c             	sub    $0xc,%esp
  17:	68 68 0d 00 00       	push   $0xd68
   ppid = getpid();
  1c:	a3 74 0d 00 00       	mov    %eax,0xd74
   lock_init(&lock);
  21:	e8 0a 04 00 00       	call   430 <lock_init>

   int i;
   for (i = 0; i < num_threads; i++) {
  26:	a1 64 0d 00 00       	mov    0xd64,%eax
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 8e b4 00 00 00    	jle    ea <main+0xea>
  36:	31 db                	xor    %ebx,%ebx
  38:	eb 12                	jmp    4c <main+0x4c>
  3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  40:	a1 64 0d 00 00       	mov    0xd64,%eax
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
  66:	68 18 09 00 00       	push   $0x918
  6b:	68 22 09 00 00       	push   $0x922
  70:	6a 01                	push   $0x1
  72:	e8 79 05 00 00       	call   5f0 <printf>
  77:	83 c4 0c             	add    $0xc,%esp
  7a:	68 2a 09 00 00       	push   $0x92a
   }

   for (i = 0; i < num_threads; i++) {
      int join_pid = thread_join();
      assert(join_pid > 0);
  7f:	68 39 09 00 00       	push   $0x939
  84:	6a 01                	push   $0x1
  86:	e8 65 05 00 00       	call   5f0 <printf>
  8b:	5a                   	pop    %edx
  8c:	59                   	pop    %ecx
  8d:	68 4d 09 00 00       	push   $0x94d
  92:	6a 01                	push   $0x1
  94:	e8 57 05 00 00       	call   5f0 <printf>
  99:	5b                   	pop    %ebx
  9a:	ff 35 74 0d 00 00    	push   0xd74
  a0:	e8 0f 04 00 00       	call   4b4 <kill>
  a5:	e8 da 03 00 00       	call   484 <exit>
   for (i = 0; i < num_threads; i++) {
  aa:	85 c0                	test   %eax,%eax
  ac:	7e 3c                	jle    ea <main+0xea>
  ae:	31 db                	xor    %ebx,%ebx
  b0:	eb 12                	jmp    c4 <main+0xc4>
  b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  b8:	a1 64 0d 00 00       	mov    0xd64,%eax
  bd:	83 c3 01             	add    $0x1,%ebx
  c0:	39 d8                	cmp    %ebx,%eax
  c2:	7e 26                	jle    ea <main+0xea>
      int join_pid = thread_join();
  c4:	e8 37 03 00 00       	call   400 <thread_join>
      assert(join_pid > 0);
  c9:	85 c0                	test   %eax,%eax
  cb:	7f eb                	jg     b8 <main+0xb8>
  cd:	6a 2a                	push   $0x2a
  cf:	68 18 09 00 00       	push   $0x918
  d4:	68 22 09 00 00       	push   $0x922
  d9:	6a 01                	push   $0x1
  db:	e8 10 05 00 00       	call   5f0 <printf>
  e0:	83 c4 0c             	add    $0xc,%esp
  e3:	68 5a 09 00 00       	push   $0x95a
  e8:	eb 95                	jmp    7f <main+0x7f>
   }

   assert(global == num_threads * loops);
  ea:	0f af 05 60 0d 00 00 	imul   0xd60,%eax
  f1:	3b 05 70 0d 00 00    	cmp    0xd70,%eax
  f7:	74 20                	je     119 <main+0x119>
  f9:	6a 2d                	push   $0x2d
  fb:	68 18 09 00 00       	push   $0x918
 100:	68 22 09 00 00       	push   $0x922
 105:	6a 01                	push   $0x1
 107:	e8 e4 04 00 00       	call   5f0 <printf>
 10c:	83 c4 0c             	add    $0xc,%esp
 10f:	68 67 09 00 00       	push   $0x967
 114:	e9 66 ff ff ff       	jmp    7f <main+0x7f>

   printf(1, "TEST PASSED\n");
 119:	50                   	push   %eax
 11a:	50                   	push   %eax
 11b:	68 85 09 00 00       	push   $0x985
 120:	6a 01                	push   $0x1
 122:	e8 c9 04 00 00       	call   5f0 <printf>
   exit();
 127:	e8 58 03 00 00       	call   484 <exit>
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
 137:	a1 60 0d 00 00       	mov    0xd60,%eax
 13c:	85 c0                	test   %eax,%eax
 13e:	7e 36                	jle    176 <worker+0x46>
 140:	31 db                	xor    %ebx,%ebx
 142:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      lock_acquire(&lock);
 148:	83 ec 0c             	sub    $0xc,%esp
   for (i = 0; i < loops; i++) {
 14b:	83 c3 01             	add    $0x1,%ebx
      lock_acquire(&lock);
 14e:	68 68 0d 00 00       	push   $0xd68
 153:	e8 f8 02 00 00       	call   450 <lock_acquire>
      tmp = global;
      for(j = 0; j < 50; j++); // take some time
      global = tmp + 1;
      lock_release(&lock);
 158:	c7 04 24 68 0d 00 00 	movl   $0xd68,(%esp)
      global = tmp + 1;
 15f:	83 05 70 0d 00 00 01 	addl   $0x1,0xd70
      lock_release(&lock);
 166:	e8 05 03 00 00       	call   470 <lock_release>
   for (i = 0; i < loops; i++) {
 16b:	83 c4 10             	add    $0x10,%esp
 16e:	39 1d 60 0d 00 00    	cmp    %ebx,0xd60
 174:	7f d2                	jg     148 <worker+0x18>
   }
   exit();
 176:	e8 09 03 00 00       	call   484 <exit>
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
 2b8:	e8 df 01 00 00       	call   49c <read>
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
 31d:	e8 a2 01 00 00       	call   4c4 <open>
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
 332:	e8 a5 01 00 00       	call   4dc <fstat>
  close(fd);
 337:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 33a:	89 c6                	mov    %eax,%esi
  close(fd);
 33c:	e8 6b 01 00 00       	call   4ac <close>
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


int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	83 ec 14             	sub    $0x14,%esp
   void *stack = malloc(PGSIZE);
 3d6:	68 00 10 00 00       	push   $0x1000
 3db:	e8 40 04 00 00       	call   820 <malloc>
   return clone(start_routine, arg1, arg2, stack);
 3e0:	50                   	push   %eax
 3e1:	ff 75 10             	push   0x10(%ebp)
 3e4:	ff 75 0c             	push   0xc(%ebp)
 3e7:	ff 75 08             	push   0x8(%ebp)
 3ea:	e8 35 01 00 00       	call   524 <clone>
}
 3ef:	c9                   	leave  
 3f0:	c3                   	ret    
 3f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <thread_join>:

int thread_join(){
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
  void *stack;
  int pid= join(&stack);
 404:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 407:	83 ec 20             	sub    $0x20,%esp
  int pid= join(&stack);
 40a:	50                   	push   %eax
 40b:	e8 1c 01 00 00       	call   52c <join>
  if(pid >0 ){
 410:	83 c4 10             	add    $0x10,%esp
  int pid= join(&stack);
 413:	89 c2                	mov    %eax,%edx
  if(pid >0 ){
 415:	85 c0                	test   %eax,%eax
 417:	7e 0d                	jle    426 <thread_join+0x26>
 419:	8b 7d f4             	mov    -0xc(%ebp),%edi
 41c:	b9 00 10 00 00       	mov    $0x1000,%ecx
 421:	31 c0                	xor    %eax,%eax
 423:	fc                   	cld    
 424:	f3 aa                	rep stos %al,%es:(%edi)
    memset(stack,0,PGSIZE);
  }
  return pid;
}
 426:	8b 7d fc             	mov    -0x4(%ebp),%edi
 429:	89 d0                	mov    %edx,%eax
 42b:	c9                   	leave  
 42c:	c3                   	ret    
 42d:	8d 76 00             	lea    0x0(%esi),%esi

00000430 <lock_init>:

void lock_init(lock_t *lock) {
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 436:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 43c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 443:	5d                   	pop    %ebp
 444:	c3                   	ret    
 445:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000450 <lock_acquire>:

void lock_acquire(lock_t *lock){
 450:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 451:	b8 01 00 00 00       	mov    $0x1,%eax
 456:	89 e5                	mov    %esp,%ebp
 458:	8b 55 08             	mov    0x8(%ebp),%edx
 45b:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn);
 45f:	8b 52 04             	mov    0x4(%edx),%edx
 462:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 468:	39 c2                	cmp    %eax,%edx
 46a:	75 fc                	jne    468 <lock_acquire+0x18>
}
 46c:	5d                   	pop    %ebp
 46d:	c3                   	ret    
 46e:	66 90                	xchg   %ax,%ax

00000470 <lock_release>:

void lock_release(lock_t *lock){
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 476:	83 40 04 01          	addl   $0x1,0x4(%eax)
 47a:	5d                   	pop    %ebp
 47b:	c3                   	ret    

0000047c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 47c:	b8 01 00 00 00       	mov    $0x1,%eax
 481:	cd 40                	int    $0x40
 483:	c3                   	ret    

00000484 <exit>:
SYSCALL(exit)
 484:	b8 02 00 00 00       	mov    $0x2,%eax
 489:	cd 40                	int    $0x40
 48b:	c3                   	ret    

0000048c <wait>:
SYSCALL(wait)
 48c:	b8 03 00 00 00       	mov    $0x3,%eax
 491:	cd 40                	int    $0x40
 493:	c3                   	ret    

00000494 <pipe>:
SYSCALL(pipe)
 494:	b8 04 00 00 00       	mov    $0x4,%eax
 499:	cd 40                	int    $0x40
 49b:	c3                   	ret    

0000049c <read>:
SYSCALL(read)
 49c:	b8 05 00 00 00       	mov    $0x5,%eax
 4a1:	cd 40                	int    $0x40
 4a3:	c3                   	ret    

000004a4 <write>:
SYSCALL(write)
 4a4:	b8 10 00 00 00       	mov    $0x10,%eax
 4a9:	cd 40                	int    $0x40
 4ab:	c3                   	ret    

000004ac <close>:
SYSCALL(close)
 4ac:	b8 15 00 00 00       	mov    $0x15,%eax
 4b1:	cd 40                	int    $0x40
 4b3:	c3                   	ret    

000004b4 <kill>:
SYSCALL(kill)
 4b4:	b8 06 00 00 00       	mov    $0x6,%eax
 4b9:	cd 40                	int    $0x40
 4bb:	c3                   	ret    

000004bc <exec>:
SYSCALL(exec)
 4bc:	b8 07 00 00 00       	mov    $0x7,%eax
 4c1:	cd 40                	int    $0x40
 4c3:	c3                   	ret    

000004c4 <open>:
SYSCALL(open)
 4c4:	b8 0f 00 00 00       	mov    $0xf,%eax
 4c9:	cd 40                	int    $0x40
 4cb:	c3                   	ret    

000004cc <mknod>:
SYSCALL(mknod)
 4cc:	b8 11 00 00 00       	mov    $0x11,%eax
 4d1:	cd 40                	int    $0x40
 4d3:	c3                   	ret    

000004d4 <unlink>:
SYSCALL(unlink)
 4d4:	b8 12 00 00 00       	mov    $0x12,%eax
 4d9:	cd 40                	int    $0x40
 4db:	c3                   	ret    

000004dc <fstat>:
SYSCALL(fstat)
 4dc:	b8 08 00 00 00       	mov    $0x8,%eax
 4e1:	cd 40                	int    $0x40
 4e3:	c3                   	ret    

000004e4 <link>:
SYSCALL(link)
 4e4:	b8 13 00 00 00       	mov    $0x13,%eax
 4e9:	cd 40                	int    $0x40
 4eb:	c3                   	ret    

000004ec <mkdir>:
SYSCALL(mkdir)
 4ec:	b8 14 00 00 00       	mov    $0x14,%eax
 4f1:	cd 40                	int    $0x40
 4f3:	c3                   	ret    

000004f4 <chdir>:
SYSCALL(chdir)
 4f4:	b8 09 00 00 00       	mov    $0x9,%eax
 4f9:	cd 40                	int    $0x40
 4fb:	c3                   	ret    

000004fc <dup>:
SYSCALL(dup)
 4fc:	b8 0a 00 00 00       	mov    $0xa,%eax
 501:	cd 40                	int    $0x40
 503:	c3                   	ret    

00000504 <getpid>:
SYSCALL(getpid)
 504:	b8 0b 00 00 00       	mov    $0xb,%eax
 509:	cd 40                	int    $0x40
 50b:	c3                   	ret    

0000050c <sbrk>:
SYSCALL(sbrk)
 50c:	b8 0c 00 00 00       	mov    $0xc,%eax
 511:	cd 40                	int    $0x40
 513:	c3                   	ret    

00000514 <sleep>:
SYSCALL(sleep)
 514:	b8 0d 00 00 00       	mov    $0xd,%eax
 519:	cd 40                	int    $0x40
 51b:	c3                   	ret    

0000051c <uptime>:
SYSCALL(uptime)
 51c:	b8 0e 00 00 00       	mov    $0xe,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    

00000524 <clone>:
SYSCALL(clone)
 524:	b8 16 00 00 00       	mov    $0x16,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    

0000052c <join>:
SYSCALL(join)
 52c:	b8 17 00 00 00       	mov    $0x17,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    
 534:	66 90                	xchg   %ax,%ax
 536:	66 90                	xchg   %ax,%ax
 538:	66 90                	xchg   %ax,%ax
 53a:	66 90                	xchg   %ax,%ax
 53c:	66 90                	xchg   %ax,%ax
 53e:	66 90                	xchg   %ax,%ax

00000540 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	57                   	push   %edi
 544:	56                   	push   %esi
 545:	53                   	push   %ebx
 546:	83 ec 3c             	sub    $0x3c,%esp
 549:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 54c:	89 d1                	mov    %edx,%ecx
{
 54e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 551:	85 d2                	test   %edx,%edx
 553:	0f 89 7f 00 00 00    	jns    5d8 <printint+0x98>
 559:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 55d:	74 79                	je     5d8 <printint+0x98>
    neg = 1;
 55f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 566:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 568:	31 db                	xor    %ebx,%ebx
 56a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 56d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 570:	89 c8                	mov    %ecx,%eax
 572:	31 d2                	xor    %edx,%edx
 574:	89 cf                	mov    %ecx,%edi
 576:	f7 75 c4             	divl   -0x3c(%ebp)
 579:	0f b6 92 f4 09 00 00 	movzbl 0x9f4(%edx),%edx
 580:	89 45 c0             	mov    %eax,-0x40(%ebp)
 583:	89 d8                	mov    %ebx,%eax
 585:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 588:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 58b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 58e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 591:	76 dd                	jbe    570 <printint+0x30>
  if(neg)
 593:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 596:	85 c9                	test   %ecx,%ecx
 598:	74 0c                	je     5a6 <printint+0x66>
    buf[i++] = '-';
 59a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 59f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 5a1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 5a6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 5a9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 5ad:	eb 07                	jmp    5b6 <printint+0x76>
 5af:	90                   	nop
    putc(fd, buf[i]);
 5b0:	0f b6 13             	movzbl (%ebx),%edx
 5b3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 5b6:	83 ec 04             	sub    $0x4,%esp
 5b9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 5bc:	6a 01                	push   $0x1
 5be:	56                   	push   %esi
 5bf:	57                   	push   %edi
 5c0:	e8 df fe ff ff       	call   4a4 <write>
  while(--i >= 0)
 5c5:	83 c4 10             	add    $0x10,%esp
 5c8:	39 de                	cmp    %ebx,%esi
 5ca:	75 e4                	jne    5b0 <printint+0x70>
}
 5cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5cf:	5b                   	pop    %ebx
 5d0:	5e                   	pop    %esi
 5d1:	5f                   	pop    %edi
 5d2:	5d                   	pop    %ebp
 5d3:	c3                   	ret    
 5d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5d8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 5df:	eb 87                	jmp    568 <printint+0x28>
 5e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ef:	90                   	nop

000005f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
 5f5:	53                   	push   %ebx
 5f6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 5fc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 5ff:	0f b6 13             	movzbl (%ebx),%edx
 602:	84 d2                	test   %dl,%dl
 604:	74 6a                	je     670 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 606:	8d 45 10             	lea    0x10(%ebp),%eax
 609:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 60c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 60f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 611:	89 45 d0             	mov    %eax,-0x30(%ebp)
 614:	eb 36                	jmp    64c <printf+0x5c>
 616:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61d:	8d 76 00             	lea    0x0(%esi),%esi
 620:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 623:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 628:	83 f8 25             	cmp    $0x25,%eax
 62b:	74 15                	je     642 <printf+0x52>
  write(fd, &c, 1);
 62d:	83 ec 04             	sub    $0x4,%esp
 630:	88 55 e7             	mov    %dl,-0x19(%ebp)
 633:	6a 01                	push   $0x1
 635:	57                   	push   %edi
 636:	56                   	push   %esi
 637:	e8 68 fe ff ff       	call   4a4 <write>
 63c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 63f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 642:	0f b6 13             	movzbl (%ebx),%edx
 645:	83 c3 01             	add    $0x1,%ebx
 648:	84 d2                	test   %dl,%dl
 64a:	74 24                	je     670 <printf+0x80>
    c = fmt[i] & 0xff;
 64c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 64f:	85 c9                	test   %ecx,%ecx
 651:	74 cd                	je     620 <printf+0x30>
      }
    } else if(state == '%'){
 653:	83 f9 25             	cmp    $0x25,%ecx
 656:	75 ea                	jne    642 <printf+0x52>
      if(c == 'd'){
 658:	83 f8 25             	cmp    $0x25,%eax
 65b:	0f 84 07 01 00 00    	je     768 <printf+0x178>
 661:	83 e8 63             	sub    $0x63,%eax
 664:	83 f8 15             	cmp    $0x15,%eax
 667:	77 17                	ja     680 <printf+0x90>
 669:	ff 24 85 9c 09 00 00 	jmp    *0x99c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 670:	8d 65 f4             	lea    -0xc(%ebp),%esp
 673:	5b                   	pop    %ebx
 674:	5e                   	pop    %esi
 675:	5f                   	pop    %edi
 676:	5d                   	pop    %ebp
 677:	c3                   	ret    
 678:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67f:	90                   	nop
  write(fd, &c, 1);
 680:	83 ec 04             	sub    $0x4,%esp
 683:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 686:	6a 01                	push   $0x1
 688:	57                   	push   %edi
 689:	56                   	push   %esi
 68a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 68e:	e8 11 fe ff ff       	call   4a4 <write>
        putc(fd, c);
 693:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 697:	83 c4 0c             	add    $0xc,%esp
 69a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 69d:	6a 01                	push   $0x1
 69f:	57                   	push   %edi
 6a0:	56                   	push   %esi
 6a1:	e8 fe fd ff ff       	call   4a4 <write>
        putc(fd, c);
 6a6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6a9:	31 c9                	xor    %ecx,%ecx
 6ab:	eb 95                	jmp    642 <printf+0x52>
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6b0:	83 ec 0c             	sub    $0xc,%esp
 6b3:	b9 10 00 00 00       	mov    $0x10,%ecx
 6b8:	6a 00                	push   $0x0
 6ba:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6bd:	8b 10                	mov    (%eax),%edx
 6bf:	89 f0                	mov    %esi,%eax
 6c1:	e8 7a fe ff ff       	call   540 <printint>
        ap++;
 6c6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6ca:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6cd:	31 c9                	xor    %ecx,%ecx
 6cf:	e9 6e ff ff ff       	jmp    642 <printf+0x52>
 6d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6d8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6db:	8b 10                	mov    (%eax),%edx
        ap++;
 6dd:	83 c0 04             	add    $0x4,%eax
 6e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 6e3:	85 d2                	test   %edx,%edx
 6e5:	0f 84 8d 00 00 00    	je     778 <printf+0x188>
        while(*s != 0){
 6eb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 6ee:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 6f0:	84 c0                	test   %al,%al
 6f2:	0f 84 4a ff ff ff    	je     642 <printf+0x52>
 6f8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6fb:	89 d3                	mov    %edx,%ebx
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 700:	83 ec 04             	sub    $0x4,%esp
          s++;
 703:	83 c3 01             	add    $0x1,%ebx
 706:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 709:	6a 01                	push   $0x1
 70b:	57                   	push   %edi
 70c:	56                   	push   %esi
 70d:	e8 92 fd ff ff       	call   4a4 <write>
        while(*s != 0){
 712:	0f b6 03             	movzbl (%ebx),%eax
 715:	83 c4 10             	add    $0x10,%esp
 718:	84 c0                	test   %al,%al
 71a:	75 e4                	jne    700 <printf+0x110>
      state = 0;
 71c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 71f:	31 c9                	xor    %ecx,%ecx
 721:	e9 1c ff ff ff       	jmp    642 <printf+0x52>
 726:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 730:	83 ec 0c             	sub    $0xc,%esp
 733:	b9 0a 00 00 00       	mov    $0xa,%ecx
 738:	6a 01                	push   $0x1
 73a:	e9 7b ff ff ff       	jmp    6ba <printf+0xca>
 73f:	90                   	nop
        putc(fd, *ap);
 740:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 743:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 746:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 748:	6a 01                	push   $0x1
 74a:	57                   	push   %edi
 74b:	56                   	push   %esi
        putc(fd, *ap);
 74c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 74f:	e8 50 fd ff ff       	call   4a4 <write>
        ap++;
 754:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 758:	83 c4 10             	add    $0x10,%esp
      state = 0;
 75b:	31 c9                	xor    %ecx,%ecx
 75d:	e9 e0 fe ff ff       	jmp    642 <printf+0x52>
 762:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 768:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 76b:	83 ec 04             	sub    $0x4,%esp
 76e:	e9 2a ff ff ff       	jmp    69d <printf+0xad>
 773:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 777:	90                   	nop
          s = "(null)";
 778:	ba 92 09 00 00       	mov    $0x992,%edx
        while(*s != 0){
 77d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 780:	b8 28 00 00 00       	mov    $0x28,%eax
 785:	89 d3                	mov    %edx,%ebx
 787:	e9 74 ff ff ff       	jmp    700 <printf+0x110>
 78c:	66 90                	xchg   %ax,%ax
 78e:	66 90                	xchg   %ax,%ax

00000790 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 790:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 791:	a1 78 0d 00 00       	mov    0xd78,%eax
{
 796:	89 e5                	mov    %esp,%ebp
 798:	57                   	push   %edi
 799:	56                   	push   %esi
 79a:	53                   	push   %ebx
 79b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 79e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7a8:	89 c2                	mov    %eax,%edx
 7aa:	8b 00                	mov    (%eax),%eax
 7ac:	39 ca                	cmp    %ecx,%edx
 7ae:	73 30                	jae    7e0 <free+0x50>
 7b0:	39 c1                	cmp    %eax,%ecx
 7b2:	72 04                	jb     7b8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7b4:	39 c2                	cmp    %eax,%edx
 7b6:	72 f0                	jb     7a8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7be:	39 f8                	cmp    %edi,%eax
 7c0:	74 30                	je     7f2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 7c2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7c5:	8b 42 04             	mov    0x4(%edx),%eax
 7c8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7cb:	39 f1                	cmp    %esi,%ecx
 7cd:	74 3a                	je     809 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 7cf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7d1:	5b                   	pop    %ebx
  freep = p;
 7d2:	89 15 78 0d 00 00    	mov    %edx,0xd78
}
 7d8:	5e                   	pop    %esi
 7d9:	5f                   	pop    %edi
 7da:	5d                   	pop    %ebp
 7db:	c3                   	ret    
 7dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7e0:	39 c2                	cmp    %eax,%edx
 7e2:	72 c4                	jb     7a8 <free+0x18>
 7e4:	39 c1                	cmp    %eax,%ecx
 7e6:	73 c0                	jae    7a8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 7e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7ee:	39 f8                	cmp    %edi,%eax
 7f0:	75 d0                	jne    7c2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 7f2:	03 70 04             	add    0x4(%eax),%esi
 7f5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7f8:	8b 02                	mov    (%edx),%eax
 7fa:	8b 00                	mov    (%eax),%eax
 7fc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 7ff:	8b 42 04             	mov    0x4(%edx),%eax
 802:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 805:	39 f1                	cmp    %esi,%ecx
 807:	75 c6                	jne    7cf <free+0x3f>
    p->s.size += bp->s.size;
 809:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 80c:	89 15 78 0d 00 00    	mov    %edx,0xd78
    p->s.size += bp->s.size;
 812:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 815:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 818:	89 0a                	mov    %ecx,(%edx)
}
 81a:	5b                   	pop    %ebx
 81b:	5e                   	pop    %esi
 81c:	5f                   	pop    %edi
 81d:	5d                   	pop    %ebp
 81e:	c3                   	ret    
 81f:	90                   	nop

00000820 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 820:	55                   	push   %ebp
 821:	89 e5                	mov    %esp,%ebp
 823:	57                   	push   %edi
 824:	56                   	push   %esi
 825:	53                   	push   %ebx
 826:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 829:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 82c:	8b 3d 78 0d 00 00    	mov    0xd78,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 832:	8d 70 07             	lea    0x7(%eax),%esi
 835:	c1 ee 03             	shr    $0x3,%esi
 838:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 83b:	85 ff                	test   %edi,%edi
 83d:	0f 84 9d 00 00 00    	je     8e0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 843:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 845:	8b 4a 04             	mov    0x4(%edx),%ecx
 848:	39 f1                	cmp    %esi,%ecx
 84a:	73 6a                	jae    8b6 <malloc+0x96>
 84c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 851:	39 de                	cmp    %ebx,%esi
 853:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 856:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 85d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 860:	eb 17                	jmp    879 <malloc+0x59>
 862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 868:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 86a:	8b 48 04             	mov    0x4(%eax),%ecx
 86d:	39 f1                	cmp    %esi,%ecx
 86f:	73 4f                	jae    8c0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 871:	8b 3d 78 0d 00 00    	mov    0xd78,%edi
 877:	89 c2                	mov    %eax,%edx
 879:	39 d7                	cmp    %edx,%edi
 87b:	75 eb                	jne    868 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 87d:	83 ec 0c             	sub    $0xc,%esp
 880:	ff 75 e4             	push   -0x1c(%ebp)
 883:	e8 84 fc ff ff       	call   50c <sbrk>
  if(p == (char*)-1)
 888:	83 c4 10             	add    $0x10,%esp
 88b:	83 f8 ff             	cmp    $0xffffffff,%eax
 88e:	74 1c                	je     8ac <malloc+0x8c>
  hp->s.size = nu;
 890:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 893:	83 ec 0c             	sub    $0xc,%esp
 896:	83 c0 08             	add    $0x8,%eax
 899:	50                   	push   %eax
 89a:	e8 f1 fe ff ff       	call   790 <free>
  return freep;
 89f:	8b 15 78 0d 00 00    	mov    0xd78,%edx
      if((p = morecore(nunits)) == 0)
 8a5:	83 c4 10             	add    $0x10,%esp
 8a8:	85 d2                	test   %edx,%edx
 8aa:	75 bc                	jne    868 <malloc+0x48>
        return 0;
  }
}
 8ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8af:	31 c0                	xor    %eax,%eax
}
 8b1:	5b                   	pop    %ebx
 8b2:	5e                   	pop    %esi
 8b3:	5f                   	pop    %edi
 8b4:	5d                   	pop    %ebp
 8b5:	c3                   	ret    
    if(p->s.size >= nunits){
 8b6:	89 d0                	mov    %edx,%eax
 8b8:	89 fa                	mov    %edi,%edx
 8ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8c0:	39 ce                	cmp    %ecx,%esi
 8c2:	74 4c                	je     910 <malloc+0xf0>
        p->s.size -= nunits;
 8c4:	29 f1                	sub    %esi,%ecx
 8c6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8c9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8cc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 8cf:	89 15 78 0d 00 00    	mov    %edx,0xd78
}
 8d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8d8:	83 c0 08             	add    $0x8,%eax
}
 8db:	5b                   	pop    %ebx
 8dc:	5e                   	pop    %esi
 8dd:	5f                   	pop    %edi
 8de:	5d                   	pop    %ebp
 8df:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 8e0:	c7 05 78 0d 00 00 7c 	movl   $0xd7c,0xd78
 8e7:	0d 00 00 
    base.s.size = 0;
 8ea:	bf 7c 0d 00 00       	mov    $0xd7c,%edi
    base.s.ptr = freep = prevp = &base;
 8ef:	c7 05 7c 0d 00 00 7c 	movl   $0xd7c,0xd7c
 8f6:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8f9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 8fb:	c7 05 80 0d 00 00 00 	movl   $0x0,0xd80
 902:	00 00 00 
    if(p->s.size >= nunits){
 905:	e9 42 ff ff ff       	jmp    84c <malloc+0x2c>
 90a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 910:	8b 08                	mov    (%eax),%ecx
 912:	89 0a                	mov    %ecx,(%edx)
 914:	eb b9                	jmp    8cf <malloc+0xaf>
