
_ln:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
  if(argc != 3){
   a:	83 39 03             	cmpl   $0x3,(%ecx)
{
   d:	55                   	push   %ebp
   e:	89 e5                	mov    %esp,%ebp
  10:	53                   	push   %ebx
  11:	51                   	push   %ecx
  12:	8b 59 04             	mov    0x4(%ecx),%ebx
  if(argc != 3){
  15:	74 13                	je     2a <main+0x2a>
    printf(2, "Usage: ln old new\n");
  17:	52                   	push   %edx
  18:	52                   	push   %edx
  19:	68 d8 08 00 00       	push   $0x8d8
  1e:	6a 02                	push   $0x2
  20:	e8 8b 05 00 00       	call   5b0 <printf>
    exit();
  25:	e8 1a 04 00 00       	call   444 <exit>
  }
  if(link(argv[1], argv[2]) < 0)
  2a:	50                   	push   %eax
  2b:	50                   	push   %eax
  2c:	ff 73 08             	push   0x8(%ebx)
  2f:	ff 73 04             	push   0x4(%ebx)
  32:	e8 6d 04 00 00       	call   4a4 <link>
  37:	83 c4 10             	add    $0x10,%esp
  3a:	85 c0                	test   %eax,%eax
  3c:	78 05                	js     43 <main+0x43>
    printf(2, "link %s %s: failed\n", argv[1], argv[2]);
  exit();
  3e:	e8 01 04 00 00       	call   444 <exit>
    printf(2, "link %s %s: failed\n", argv[1], argv[2]);
  43:	ff 73 08             	push   0x8(%ebx)
  46:	ff 73 04             	push   0x4(%ebx)
  49:	68 eb 08 00 00       	push   $0x8eb
  4e:	6a 02                	push   $0x2
  50:	e8 5b 05 00 00       	call   5b0 <printf>
  55:	83 c4 10             	add    $0x10,%esp
  58:	eb e4                	jmp    3e <main+0x3e>
  5a:	66 90                	xchg   %ax,%ax
  5c:	66 90                	xchg   %ax,%ax
  5e:	66 90                	xchg   %ax,%ax

00000060 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
  60:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  61:	31 c0                	xor    %eax,%eax
{
  63:	89 e5                	mov    %esp,%ebp
  65:	53                   	push   %ebx
  66:	8b 4d 08             	mov    0x8(%ebp),%ecx
  69:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  70:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  74:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  77:	83 c0 01             	add    $0x1,%eax
  7a:	84 d2                	test   %dl,%dl
  7c:	75 f2                	jne    70 <strcpy+0x10>
    ;
  return os;
}
  7e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  81:	89 c8                	mov    %ecx,%eax
  83:	c9                   	leave  
  84:	c3                   	ret    
  85:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000090 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	53                   	push   %ebx
  94:	8b 55 08             	mov    0x8(%ebp),%edx
  97:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  9a:	0f b6 02             	movzbl (%edx),%eax
  9d:	84 c0                	test   %al,%al
  9f:	75 17                	jne    b8 <strcmp+0x28>
  a1:	eb 3a                	jmp    dd <strcmp+0x4d>
  a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  a7:	90                   	nop
  a8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  ac:	83 c2 01             	add    $0x1,%edx
  af:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  b2:	84 c0                	test   %al,%al
  b4:	74 1a                	je     d0 <strcmp+0x40>
    p++, q++;
  b6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
  b8:	0f b6 19             	movzbl (%ecx),%ebx
  bb:	38 c3                	cmp    %al,%bl
  bd:	74 e9                	je     a8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
  bf:	29 d8                	sub    %ebx,%eax
}
  c1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c4:	c9                   	leave  
  c5:	c3                   	ret    
  c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  cd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
  d0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  d4:	31 c0                	xor    %eax,%eax
  d6:	29 d8                	sub    %ebx,%eax
}
  d8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  db:	c9                   	leave  
  dc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
  dd:	0f b6 19             	movzbl (%ecx),%ebx
  e0:	31 c0                	xor    %eax,%eax
  e2:	eb db                	jmp    bf <strcmp+0x2f>
  e4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  ef:	90                   	nop

000000f0 <strlen>:

uint
strlen(const char *s)
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
  f6:	80 3a 00             	cmpb   $0x0,(%edx)
  f9:	74 15                	je     110 <strlen+0x20>
  fb:	31 c0                	xor    %eax,%eax
  fd:	8d 76 00             	lea    0x0(%esi),%esi
 100:	83 c0 01             	add    $0x1,%eax
 103:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 107:	89 c1                	mov    %eax,%ecx
 109:	75 f5                	jne    100 <strlen+0x10>
    ;
  return n;
}
 10b:	89 c8                	mov    %ecx,%eax
 10d:	5d                   	pop    %ebp
 10e:	c3                   	ret    
 10f:	90                   	nop
  for(n = 0; s[n]; n++)
 110:	31 c9                	xor    %ecx,%ecx
}
 112:	5d                   	pop    %ebp
 113:	89 c8                	mov    %ecx,%eax
 115:	c3                   	ret    
 116:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 11d:	8d 76 00             	lea    0x0(%esi),%esi

00000120 <memset>:

void*
memset(void *dst, int c, uint n)
{
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	57                   	push   %edi
 124:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 127:	8b 4d 10             	mov    0x10(%ebp),%ecx
 12a:	8b 45 0c             	mov    0xc(%ebp),%eax
 12d:	89 d7                	mov    %edx,%edi
 12f:	fc                   	cld    
 130:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 132:	8b 7d fc             	mov    -0x4(%ebp),%edi
 135:	89 d0                	mov    %edx,%eax
 137:	c9                   	leave  
 138:	c3                   	ret    
 139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000140 <strchr>:

char*
strchr(const char *s, char c)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	8b 45 08             	mov    0x8(%ebp),%eax
 146:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 14a:	0f b6 10             	movzbl (%eax),%edx
 14d:	84 d2                	test   %dl,%dl
 14f:	75 12                	jne    163 <strchr+0x23>
 151:	eb 1d                	jmp    170 <strchr+0x30>
 153:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 157:	90                   	nop
 158:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 15c:	83 c0 01             	add    $0x1,%eax
 15f:	84 d2                	test   %dl,%dl
 161:	74 0d                	je     170 <strchr+0x30>
    if(*s == c)
 163:	38 d1                	cmp    %dl,%cl
 165:	75 f1                	jne    158 <strchr+0x18>
      return (char*)s;
  return 0;
}
 167:	5d                   	pop    %ebp
 168:	c3                   	ret    
 169:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 170:	31 c0                	xor    %eax,%eax
}
 172:	5d                   	pop    %ebp
 173:	c3                   	ret    
 174:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 17b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 17f:	90                   	nop

00000180 <gets>:

char*
gets(char *buf, int max)
{
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	57                   	push   %edi
 184:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 185:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 188:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 189:	31 db                	xor    %ebx,%ebx
{
 18b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 18e:	eb 27                	jmp    1b7 <gets+0x37>
    cc = read(0, &c, 1);
 190:	83 ec 04             	sub    $0x4,%esp
 193:	6a 01                	push   $0x1
 195:	57                   	push   %edi
 196:	6a 00                	push   $0x0
 198:	e8 bf 02 00 00       	call   45c <read>
    if(cc < 1)
 19d:	83 c4 10             	add    $0x10,%esp
 1a0:	85 c0                	test   %eax,%eax
 1a2:	7e 1d                	jle    1c1 <gets+0x41>
      break;
    buf[i++] = c;
 1a4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1a8:	8b 55 08             	mov    0x8(%ebp),%edx
 1ab:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1af:	3c 0a                	cmp    $0xa,%al
 1b1:	74 1d                	je     1d0 <gets+0x50>
 1b3:	3c 0d                	cmp    $0xd,%al
 1b5:	74 19                	je     1d0 <gets+0x50>
  for(i=0; i+1 < max; ){
 1b7:	89 de                	mov    %ebx,%esi
 1b9:	83 c3 01             	add    $0x1,%ebx
 1bc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1bf:	7c cf                	jl     190 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 1c1:	8b 45 08             	mov    0x8(%ebp),%eax
 1c4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 1c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1cb:	5b                   	pop    %ebx
 1cc:	5e                   	pop    %esi
 1cd:	5f                   	pop    %edi
 1ce:	5d                   	pop    %ebp
 1cf:	c3                   	ret    
  buf[i] = '\0';
 1d0:	8b 45 08             	mov    0x8(%ebp),%eax
 1d3:	89 de                	mov    %ebx,%esi
 1d5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 1d9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1dc:	5b                   	pop    %ebx
 1dd:	5e                   	pop    %esi
 1de:	5f                   	pop    %edi
 1df:	5d                   	pop    %ebp
 1e0:	c3                   	ret    
 1e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ef:	90                   	nop

000001f0 <stat>:

int
stat(const char *n, struct stat *st)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	56                   	push   %esi
 1f4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 1f5:	83 ec 08             	sub    $0x8,%esp
 1f8:	6a 00                	push   $0x0
 1fa:	ff 75 08             	push   0x8(%ebp)
 1fd:	e8 82 02 00 00       	call   484 <open>
  if(fd < 0)
 202:	83 c4 10             	add    $0x10,%esp
 205:	85 c0                	test   %eax,%eax
 207:	78 27                	js     230 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 209:	83 ec 08             	sub    $0x8,%esp
 20c:	ff 75 0c             	push   0xc(%ebp)
 20f:	89 c3                	mov    %eax,%ebx
 211:	50                   	push   %eax
 212:	e8 85 02 00 00       	call   49c <fstat>
  close(fd);
 217:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 21a:	89 c6                	mov    %eax,%esi
  close(fd);
 21c:	e8 4b 02 00 00       	call   46c <close>
  return r;
 221:	83 c4 10             	add    $0x10,%esp
}
 224:	8d 65 f8             	lea    -0x8(%ebp),%esp
 227:	89 f0                	mov    %esi,%eax
 229:	5b                   	pop    %ebx
 22a:	5e                   	pop    %esi
 22b:	5d                   	pop    %ebp
 22c:	c3                   	ret    
 22d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 230:	be ff ff ff ff       	mov    $0xffffffff,%esi
 235:	eb ed                	jmp    224 <stat+0x34>
 237:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23e:	66 90                	xchg   %ax,%ax

00000240 <atoi>:

int
atoi(const char *s)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	53                   	push   %ebx
 244:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 247:	0f be 02             	movsbl (%edx),%eax
 24a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 24d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 250:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 255:	77 1e                	ja     275 <atoi+0x35>
 257:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 260:	83 c2 01             	add    $0x1,%edx
 263:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 266:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 26a:	0f be 02             	movsbl (%edx),%eax
 26d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 270:	80 fb 09             	cmp    $0x9,%bl
 273:	76 eb                	jbe    260 <atoi+0x20>
  return n;
}
 275:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 278:	89 c8                	mov    %ecx,%eax
 27a:	c9                   	leave  
 27b:	c3                   	ret    
 27c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000280 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	57                   	push   %edi
 284:	8b 45 10             	mov    0x10(%ebp),%eax
 287:	8b 55 08             	mov    0x8(%ebp),%edx
 28a:	56                   	push   %esi
 28b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 28e:	85 c0                	test   %eax,%eax
 290:	7e 13                	jle    2a5 <memmove+0x25>
 292:	01 d0                	add    %edx,%eax
  dst = vdst;
 294:	89 d7                	mov    %edx,%edi
 296:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 2a0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 2a1:	39 f8                	cmp    %edi,%eax
 2a3:	75 fb                	jne    2a0 <memmove+0x20>
  return vdst;
}
 2a5:	5e                   	pop    %esi
 2a6:	89 d0                	mov    %edx,%eax
 2a8:	5f                   	pop    %edi
 2a9:	5d                   	pop    %ebp
 2aa:	c3                   	ret    
 2ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop

000002b0 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 2b0:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 2b1:	b8 01 00 00 00       	mov    $0x1,%eax
 2b6:	89 e5                	mov    %esp,%ebp
 2b8:	53                   	push   %ebx
 2b9:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 2bc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 2c3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 2ca:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 2cf:	8b 55 f4             	mov    -0xc(%ebp),%edx
 2d2:	39 c2                	cmp    %eax,%edx
 2d4:	74 24                	je     2fa <thread_create+0x4a>
 2d6:	89 c3                	mov    %eax,%ebx
 2d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2df:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 2e0:	83 ec 04             	sub    $0x4,%esp
 2e3:	52                   	push   %edx
 2e4:	68 ff 08 00 00       	push   $0x8ff
 2e9:	6a 01                	push   $0x1
 2eb:	e8 c0 02 00 00       	call   5b0 <printf>
  while(lock->turn != myturn){
 2f0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 2f3:	83 c4 10             	add    $0x10,%esp
 2f6:	39 d3                	cmp    %edx,%ebx
 2f8:	75 e6                	jne    2e0 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 2fa:	83 ec 0c             	sub    $0xc,%esp
 2fd:	68 00 20 00 00       	push   $0x2000
 302:	e8 d9 04 00 00       	call   7e0 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 307:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 30b:	83 c4 10             	add    $0x10,%esp
 30e:	89 c2                	mov    %eax,%edx
 310:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 316:	74 07                	je     31f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 318:	29 d0                	sub    %edx,%eax
 31a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 31f:	50                   	push   %eax
 320:	ff 75 10             	push   0x10(%ebp)
 323:	ff 75 0c             	push   0xc(%ebp)
 326:	ff 75 08             	push   0x8(%ebp)
 329:	e8 b6 01 00 00       	call   4e4 <clone>
}
 32e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 331:	c9                   	leave  
 332:	c3                   	ret    
 333:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 33a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000340 <thread_join>:
int thread_join(){
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	56                   	push   %esi
 344:	53                   	push   %ebx
 345:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 348:	6a 04                	push   $0x4
 34a:	e8 91 04 00 00       	call   7e0 <malloc>
 34f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 352:	8d 45 ec             	lea    -0x14(%ebp),%eax
 355:	89 04 24             	mov    %eax,(%esp)
 358:	e8 8f 01 00 00       	call   4ec <join>
  lock->ticket = 0;
 35d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 364:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 366:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 36d:	b8 01 00 00 00       	mov    $0x1,%eax
 372:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 377:	8b 55 f4             	mov    -0xc(%ebp),%edx
 37a:	83 c4 10             	add    $0x10,%esp
 37d:	39 c2                	cmp    %eax,%edx
 37f:	74 21                	je     3a2 <thread_join+0x62>
 381:	89 c3                	mov    %eax,%ebx
 383:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 387:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 388:	83 ec 04             	sub    $0x4,%esp
 38b:	52                   	push   %edx
 38c:	68 ff 08 00 00       	push   $0x8ff
 391:	6a 01                	push   $0x1
 393:	e8 18 02 00 00       	call   5b0 <printf>
  while(lock->turn != myturn){
 398:	8b 55 f4             	mov    -0xc(%ebp),%edx
 39b:	83 c4 10             	add    $0x10,%esp
 39e:	39 d3                	cmp    %edx,%ebx
 3a0:	75 e6                	jne    388 <thread_join+0x48>
	free(stack);
 3a2:	83 ec 0c             	sub    $0xc,%esp
 3a5:	ff 75 ec             	push   -0x14(%ebp)
 3a8:	e8 a3 03 00 00       	call   750 <free>
}
 3ad:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3b0:	89 f0                	mov    %esi,%eax
 3b2:	5b                   	pop    %ebx
 3b3:	5e                   	pop    %esi
 3b4:	5d                   	pop    %ebp
 3b5:	c3                   	ret    
 3b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bd:	8d 76 00             	lea    0x0(%esi),%esi

000003c0 <lock_init>:
void lock_init(lock_t *lock) {
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 3c6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 3cc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 3d3:	5d                   	pop    %ebp
 3d4:	c3                   	ret    
 3d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003e0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 3e0:	55                   	push   %ebp
 3e1:	b8 01 00 00 00       	mov    $0x1,%eax
 3e6:	89 e5                	mov    %esp,%ebp
 3e8:	56                   	push   %esi
 3e9:	8b 75 08             	mov    0x8(%ebp),%esi
 3ec:	53                   	push   %ebx
 3ed:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 3f1:	8b 56 04             	mov    0x4(%esi),%edx
 3f4:	39 d0                	cmp    %edx,%eax
 3f6:	74 22                	je     41a <lock_acquire+0x3a>
 3f8:	89 c3                	mov    %eax,%ebx
 3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 400:	83 ec 04             	sub    $0x4,%esp
 403:	52                   	push   %edx
 404:	68 ff 08 00 00       	push   $0x8ff
 409:	6a 01                	push   $0x1
 40b:	e8 a0 01 00 00       	call   5b0 <printf>
  while(lock->turn != myturn){
 410:	8b 56 04             	mov    0x4(%esi),%edx
 413:	83 c4 10             	add    $0x10,%esp
 416:	39 da                	cmp    %ebx,%edx
 418:	75 e6                	jne    400 <lock_acquire+0x20>
}
 41a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 41d:	5b                   	pop    %ebx
 41e:	5e                   	pop    %esi
 41f:	5d                   	pop    %ebp
 420:	c3                   	ret    
 421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 428:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42f:	90                   	nop

00000430 <lock_release>:
void lock_release(lock_t *lock){
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 436:	83 40 04 01          	addl   $0x1,0x4(%eax)
 43a:	5d                   	pop    %ebp
 43b:	c3                   	ret    

0000043c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 43c:	b8 01 00 00 00       	mov    $0x1,%eax
 441:	cd 40                	int    $0x40
 443:	c3                   	ret    

00000444 <exit>:
SYSCALL(exit)
 444:	b8 02 00 00 00       	mov    $0x2,%eax
 449:	cd 40                	int    $0x40
 44b:	c3                   	ret    

0000044c <wait>:
SYSCALL(wait)
 44c:	b8 03 00 00 00       	mov    $0x3,%eax
 451:	cd 40                	int    $0x40
 453:	c3                   	ret    

00000454 <pipe>:
SYSCALL(pipe)
 454:	b8 04 00 00 00       	mov    $0x4,%eax
 459:	cd 40                	int    $0x40
 45b:	c3                   	ret    

0000045c <read>:
SYSCALL(read)
 45c:	b8 05 00 00 00       	mov    $0x5,%eax
 461:	cd 40                	int    $0x40
 463:	c3                   	ret    

00000464 <write>:
SYSCALL(write)
 464:	b8 10 00 00 00       	mov    $0x10,%eax
 469:	cd 40                	int    $0x40
 46b:	c3                   	ret    

0000046c <close>:
SYSCALL(close)
 46c:	b8 15 00 00 00       	mov    $0x15,%eax
 471:	cd 40                	int    $0x40
 473:	c3                   	ret    

00000474 <kill>:
SYSCALL(kill)
 474:	b8 06 00 00 00       	mov    $0x6,%eax
 479:	cd 40                	int    $0x40
 47b:	c3                   	ret    

0000047c <exec>:
SYSCALL(exec)
 47c:	b8 07 00 00 00       	mov    $0x7,%eax
 481:	cd 40                	int    $0x40
 483:	c3                   	ret    

00000484 <open>:
SYSCALL(open)
 484:	b8 0f 00 00 00       	mov    $0xf,%eax
 489:	cd 40                	int    $0x40
 48b:	c3                   	ret    

0000048c <mknod>:
SYSCALL(mknod)
 48c:	b8 11 00 00 00       	mov    $0x11,%eax
 491:	cd 40                	int    $0x40
 493:	c3                   	ret    

00000494 <unlink>:
SYSCALL(unlink)
 494:	b8 12 00 00 00       	mov    $0x12,%eax
 499:	cd 40                	int    $0x40
 49b:	c3                   	ret    

0000049c <fstat>:
SYSCALL(fstat)
 49c:	b8 08 00 00 00       	mov    $0x8,%eax
 4a1:	cd 40                	int    $0x40
 4a3:	c3                   	ret    

000004a4 <link>:
SYSCALL(link)
 4a4:	b8 13 00 00 00       	mov    $0x13,%eax
 4a9:	cd 40                	int    $0x40
 4ab:	c3                   	ret    

000004ac <mkdir>:
SYSCALL(mkdir)
 4ac:	b8 14 00 00 00       	mov    $0x14,%eax
 4b1:	cd 40                	int    $0x40
 4b3:	c3                   	ret    

000004b4 <chdir>:
SYSCALL(chdir)
 4b4:	b8 09 00 00 00       	mov    $0x9,%eax
 4b9:	cd 40                	int    $0x40
 4bb:	c3                   	ret    

000004bc <dup>:
SYSCALL(dup)
 4bc:	b8 0a 00 00 00       	mov    $0xa,%eax
 4c1:	cd 40                	int    $0x40
 4c3:	c3                   	ret    

000004c4 <getpid>:
SYSCALL(getpid)
 4c4:	b8 0b 00 00 00       	mov    $0xb,%eax
 4c9:	cd 40                	int    $0x40
 4cb:	c3                   	ret    

000004cc <sbrk>:
SYSCALL(sbrk)
 4cc:	b8 0c 00 00 00       	mov    $0xc,%eax
 4d1:	cd 40                	int    $0x40
 4d3:	c3                   	ret    

000004d4 <sleep>:
SYSCALL(sleep)
 4d4:	b8 0d 00 00 00       	mov    $0xd,%eax
 4d9:	cd 40                	int    $0x40
 4db:	c3                   	ret    

000004dc <uptime>:
SYSCALL(uptime)
 4dc:	b8 0e 00 00 00       	mov    $0xe,%eax
 4e1:	cd 40                	int    $0x40
 4e3:	c3                   	ret    

000004e4 <clone>:
SYSCALL(clone)
 4e4:	b8 16 00 00 00       	mov    $0x16,%eax
 4e9:	cd 40                	int    $0x40
 4eb:	c3                   	ret    

000004ec <join>:
SYSCALL(join)
 4ec:	b8 17 00 00 00       	mov    $0x17,%eax
 4f1:	cd 40                	int    $0x40
 4f3:	c3                   	ret    
 4f4:	66 90                	xchg   %ax,%ax
 4f6:	66 90                	xchg   %ax,%ax
 4f8:	66 90                	xchg   %ax,%ax
 4fa:	66 90                	xchg   %ax,%ax
 4fc:	66 90                	xchg   %ax,%ax
 4fe:	66 90                	xchg   %ax,%ax

00000500 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	56                   	push   %esi
 505:	53                   	push   %ebx
 506:	83 ec 3c             	sub    $0x3c,%esp
 509:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 50c:	89 d1                	mov    %edx,%ecx
{
 50e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 511:	85 d2                	test   %edx,%edx
 513:	0f 89 7f 00 00 00    	jns    598 <printint+0x98>
 519:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 51d:	74 79                	je     598 <printint+0x98>
    neg = 1;
 51f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 526:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 528:	31 db                	xor    %ebx,%ebx
 52a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 52d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 530:	89 c8                	mov    %ecx,%eax
 532:	31 d2                	xor    %edx,%edx
 534:	89 cf                	mov    %ecx,%edi
 536:	f7 75 c4             	divl   -0x3c(%ebp)
 539:	0f b6 92 74 09 00 00 	movzbl 0x974(%edx),%edx
 540:	89 45 c0             	mov    %eax,-0x40(%ebp)
 543:	89 d8                	mov    %ebx,%eax
 545:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 548:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 54b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 54e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 551:	76 dd                	jbe    530 <printint+0x30>
  if(neg)
 553:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 556:	85 c9                	test   %ecx,%ecx
 558:	74 0c                	je     566 <printint+0x66>
    buf[i++] = '-';
 55a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 55f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 561:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 566:	8b 7d b8             	mov    -0x48(%ebp),%edi
 569:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 56d:	eb 07                	jmp    576 <printint+0x76>
 56f:	90                   	nop
    putc(fd, buf[i]);
 570:	0f b6 13             	movzbl (%ebx),%edx
 573:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 576:	83 ec 04             	sub    $0x4,%esp
 579:	88 55 d7             	mov    %dl,-0x29(%ebp)
 57c:	6a 01                	push   $0x1
 57e:	56                   	push   %esi
 57f:	57                   	push   %edi
 580:	e8 df fe ff ff       	call   464 <write>
  while(--i >= 0)
 585:	83 c4 10             	add    $0x10,%esp
 588:	39 de                	cmp    %ebx,%esi
 58a:	75 e4                	jne    570 <printint+0x70>
}
 58c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 58f:	5b                   	pop    %ebx
 590:	5e                   	pop    %esi
 591:	5f                   	pop    %edi
 592:	5d                   	pop    %ebp
 593:	c3                   	ret    
 594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 598:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 59f:	eb 87                	jmp    528 <printint+0x28>
 5a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5af:	90                   	nop

000005b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	56                   	push   %esi
 5b5:	53                   	push   %ebx
 5b6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5b9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 5bc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 5bf:	0f b6 13             	movzbl (%ebx),%edx
 5c2:	84 d2                	test   %dl,%dl
 5c4:	74 6a                	je     630 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 5c6:	8d 45 10             	lea    0x10(%ebp),%eax
 5c9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 5cc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 5cf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 5d1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5d4:	eb 36                	jmp    60c <printf+0x5c>
 5d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5dd:	8d 76 00             	lea    0x0(%esi),%esi
 5e0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 5e3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 5e8:	83 f8 25             	cmp    $0x25,%eax
 5eb:	74 15                	je     602 <printf+0x52>
  write(fd, &c, 1);
 5ed:	83 ec 04             	sub    $0x4,%esp
 5f0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5f3:	6a 01                	push   $0x1
 5f5:	57                   	push   %edi
 5f6:	56                   	push   %esi
 5f7:	e8 68 fe ff ff       	call   464 <write>
 5fc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 5ff:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 602:	0f b6 13             	movzbl (%ebx),%edx
 605:	83 c3 01             	add    $0x1,%ebx
 608:	84 d2                	test   %dl,%dl
 60a:	74 24                	je     630 <printf+0x80>
    c = fmt[i] & 0xff;
 60c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 60f:	85 c9                	test   %ecx,%ecx
 611:	74 cd                	je     5e0 <printf+0x30>
      }
    } else if(state == '%'){
 613:	83 f9 25             	cmp    $0x25,%ecx
 616:	75 ea                	jne    602 <printf+0x52>
      if(c == 'd'){
 618:	83 f8 25             	cmp    $0x25,%eax
 61b:	0f 84 07 01 00 00    	je     728 <printf+0x178>
 621:	83 e8 63             	sub    $0x63,%eax
 624:	83 f8 15             	cmp    $0x15,%eax
 627:	77 17                	ja     640 <printf+0x90>
 629:	ff 24 85 1c 09 00 00 	jmp    *0x91c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 630:	8d 65 f4             	lea    -0xc(%ebp),%esp
 633:	5b                   	pop    %ebx
 634:	5e                   	pop    %esi
 635:	5f                   	pop    %edi
 636:	5d                   	pop    %ebp
 637:	c3                   	ret    
 638:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63f:	90                   	nop
  write(fd, &c, 1);
 640:	83 ec 04             	sub    $0x4,%esp
 643:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 646:	6a 01                	push   $0x1
 648:	57                   	push   %edi
 649:	56                   	push   %esi
 64a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 64e:	e8 11 fe ff ff       	call   464 <write>
        putc(fd, c);
 653:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 657:	83 c4 0c             	add    $0xc,%esp
 65a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 65d:	6a 01                	push   $0x1
 65f:	57                   	push   %edi
 660:	56                   	push   %esi
 661:	e8 fe fd ff ff       	call   464 <write>
        putc(fd, c);
 666:	83 c4 10             	add    $0x10,%esp
      state = 0;
 669:	31 c9                	xor    %ecx,%ecx
 66b:	eb 95                	jmp    602 <printf+0x52>
 66d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 670:	83 ec 0c             	sub    $0xc,%esp
 673:	b9 10 00 00 00       	mov    $0x10,%ecx
 678:	6a 00                	push   $0x0
 67a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 67d:	8b 10                	mov    (%eax),%edx
 67f:	89 f0                	mov    %esi,%eax
 681:	e8 7a fe ff ff       	call   500 <printint>
        ap++;
 686:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 68a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 68d:	31 c9                	xor    %ecx,%ecx
 68f:	e9 6e ff ff ff       	jmp    602 <printf+0x52>
 694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 698:	8b 45 d0             	mov    -0x30(%ebp),%eax
 69b:	8b 10                	mov    (%eax),%edx
        ap++;
 69d:	83 c0 04             	add    $0x4,%eax
 6a0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 6a3:	85 d2                	test   %edx,%edx
 6a5:	0f 84 8d 00 00 00    	je     738 <printf+0x188>
        while(*s != 0){
 6ab:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 6ae:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 6b0:	84 c0                	test   %al,%al
 6b2:	0f 84 4a ff ff ff    	je     602 <printf+0x52>
 6b8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6bb:	89 d3                	mov    %edx,%ebx
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 6c0:	83 ec 04             	sub    $0x4,%esp
          s++;
 6c3:	83 c3 01             	add    $0x1,%ebx
 6c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6c9:	6a 01                	push   $0x1
 6cb:	57                   	push   %edi
 6cc:	56                   	push   %esi
 6cd:	e8 92 fd ff ff       	call   464 <write>
        while(*s != 0){
 6d2:	0f b6 03             	movzbl (%ebx),%eax
 6d5:	83 c4 10             	add    $0x10,%esp
 6d8:	84 c0                	test   %al,%al
 6da:	75 e4                	jne    6c0 <printf+0x110>
      state = 0;
 6dc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 6df:	31 c9                	xor    %ecx,%ecx
 6e1:	e9 1c ff ff ff       	jmp    602 <printf+0x52>
 6e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 6f0:	83 ec 0c             	sub    $0xc,%esp
 6f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6f8:	6a 01                	push   $0x1
 6fa:	e9 7b ff ff ff       	jmp    67a <printf+0xca>
 6ff:	90                   	nop
        putc(fd, *ap);
 700:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 703:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 706:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 708:	6a 01                	push   $0x1
 70a:	57                   	push   %edi
 70b:	56                   	push   %esi
        putc(fd, *ap);
 70c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 70f:	e8 50 fd ff ff       	call   464 <write>
        ap++;
 714:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 718:	83 c4 10             	add    $0x10,%esp
      state = 0;
 71b:	31 c9                	xor    %ecx,%ecx
 71d:	e9 e0 fe ff ff       	jmp    602 <printf+0x52>
 722:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 728:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 72b:	83 ec 04             	sub    $0x4,%esp
 72e:	e9 2a ff ff ff       	jmp    65d <printf+0xad>
 733:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 737:	90                   	nop
          s = "(null)";
 738:	ba 13 09 00 00       	mov    $0x913,%edx
        while(*s != 0){
 73d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 740:	b8 28 00 00 00       	mov    $0x28,%eax
 745:	89 d3                	mov    %edx,%ebx
 747:	e9 74 ff ff ff       	jmp    6c0 <printf+0x110>
 74c:	66 90                	xchg   %ax,%ax
 74e:	66 90                	xchg   %ax,%ax

00000750 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 750:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 751:	a1 d4 0c 00 00       	mov    0xcd4,%eax
{
 756:	89 e5                	mov    %esp,%ebp
 758:	57                   	push   %edi
 759:	56                   	push   %esi
 75a:	53                   	push   %ebx
 75b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 75e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 761:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 768:	89 c2                	mov    %eax,%edx
 76a:	8b 00                	mov    (%eax),%eax
 76c:	39 ca                	cmp    %ecx,%edx
 76e:	73 30                	jae    7a0 <free+0x50>
 770:	39 c1                	cmp    %eax,%ecx
 772:	72 04                	jb     778 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 774:	39 c2                	cmp    %eax,%edx
 776:	72 f0                	jb     768 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 778:	8b 73 fc             	mov    -0x4(%ebx),%esi
 77b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 77e:	39 f8                	cmp    %edi,%eax
 780:	74 30                	je     7b2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 782:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 785:	8b 42 04             	mov    0x4(%edx),%eax
 788:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 78b:	39 f1                	cmp    %esi,%ecx
 78d:	74 3a                	je     7c9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 78f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 791:	5b                   	pop    %ebx
  freep = p;
 792:	89 15 d4 0c 00 00    	mov    %edx,0xcd4
}
 798:	5e                   	pop    %esi
 799:	5f                   	pop    %edi
 79a:	5d                   	pop    %ebp
 79b:	c3                   	ret    
 79c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7a0:	39 c2                	cmp    %eax,%edx
 7a2:	72 c4                	jb     768 <free+0x18>
 7a4:	39 c1                	cmp    %eax,%ecx
 7a6:	73 c0                	jae    768 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 7a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7ae:	39 f8                	cmp    %edi,%eax
 7b0:	75 d0                	jne    782 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 7b2:	03 70 04             	add    0x4(%eax),%esi
 7b5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7b8:	8b 02                	mov    (%edx),%eax
 7ba:	8b 00                	mov    (%eax),%eax
 7bc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 7bf:	8b 42 04             	mov    0x4(%edx),%eax
 7c2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7c5:	39 f1                	cmp    %esi,%ecx
 7c7:	75 c6                	jne    78f <free+0x3f>
    p->s.size += bp->s.size;
 7c9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 7cc:	89 15 d4 0c 00 00    	mov    %edx,0xcd4
    p->s.size += bp->s.size;
 7d2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 7d5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 7d8:	89 0a                	mov    %ecx,(%edx)
}
 7da:	5b                   	pop    %ebx
 7db:	5e                   	pop    %esi
 7dc:	5f                   	pop    %edi
 7dd:	5d                   	pop    %ebp
 7de:	c3                   	ret    
 7df:	90                   	nop

000007e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7e0:	55                   	push   %ebp
 7e1:	89 e5                	mov    %esp,%ebp
 7e3:	57                   	push   %edi
 7e4:	56                   	push   %esi
 7e5:	53                   	push   %ebx
 7e6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7e9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7ec:	8b 3d d4 0c 00 00    	mov    0xcd4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7f2:	8d 70 07             	lea    0x7(%eax),%esi
 7f5:	c1 ee 03             	shr    $0x3,%esi
 7f8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 7fb:	85 ff                	test   %edi,%edi
 7fd:	0f 84 9d 00 00 00    	je     8a0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 803:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 805:	8b 4a 04             	mov    0x4(%edx),%ecx
 808:	39 f1                	cmp    %esi,%ecx
 80a:	73 6a                	jae    876 <malloc+0x96>
 80c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 811:	39 de                	cmp    %ebx,%esi
 813:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 816:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 81d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 820:	eb 17                	jmp    839 <malloc+0x59>
 822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 828:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 82a:	8b 48 04             	mov    0x4(%eax),%ecx
 82d:	39 f1                	cmp    %esi,%ecx
 82f:	73 4f                	jae    880 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 831:	8b 3d d4 0c 00 00    	mov    0xcd4,%edi
 837:	89 c2                	mov    %eax,%edx
 839:	39 d7                	cmp    %edx,%edi
 83b:	75 eb                	jne    828 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 83d:	83 ec 0c             	sub    $0xc,%esp
 840:	ff 75 e4             	push   -0x1c(%ebp)
 843:	e8 84 fc ff ff       	call   4cc <sbrk>
  if(p == (char*)-1)
 848:	83 c4 10             	add    $0x10,%esp
 84b:	83 f8 ff             	cmp    $0xffffffff,%eax
 84e:	74 1c                	je     86c <malloc+0x8c>
  hp->s.size = nu;
 850:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 853:	83 ec 0c             	sub    $0xc,%esp
 856:	83 c0 08             	add    $0x8,%eax
 859:	50                   	push   %eax
 85a:	e8 f1 fe ff ff       	call   750 <free>
  return freep;
 85f:	8b 15 d4 0c 00 00    	mov    0xcd4,%edx
      if((p = morecore(nunits)) == 0)
 865:	83 c4 10             	add    $0x10,%esp
 868:	85 d2                	test   %edx,%edx
 86a:	75 bc                	jne    828 <malloc+0x48>
        return 0;
  }
}
 86c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 86f:	31 c0                	xor    %eax,%eax
}
 871:	5b                   	pop    %ebx
 872:	5e                   	pop    %esi
 873:	5f                   	pop    %edi
 874:	5d                   	pop    %ebp
 875:	c3                   	ret    
    if(p->s.size >= nunits){
 876:	89 d0                	mov    %edx,%eax
 878:	89 fa                	mov    %edi,%edx
 87a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 880:	39 ce                	cmp    %ecx,%esi
 882:	74 4c                	je     8d0 <malloc+0xf0>
        p->s.size -= nunits;
 884:	29 f1                	sub    %esi,%ecx
 886:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 889:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 88c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 88f:	89 15 d4 0c 00 00    	mov    %edx,0xcd4
}
 895:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 898:	83 c0 08             	add    $0x8,%eax
}
 89b:	5b                   	pop    %ebx
 89c:	5e                   	pop    %esi
 89d:	5f                   	pop    %edi
 89e:	5d                   	pop    %ebp
 89f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 8a0:	c7 05 d4 0c 00 00 d8 	movl   $0xcd8,0xcd4
 8a7:	0c 00 00 
    base.s.size = 0;
 8aa:	bf d8 0c 00 00       	mov    $0xcd8,%edi
    base.s.ptr = freep = prevp = &base;
 8af:	c7 05 d8 0c 00 00 d8 	movl   $0xcd8,0xcd8
 8b6:	0c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8b9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 8bb:	c7 05 dc 0c 00 00 00 	movl   $0x0,0xcdc
 8c2:	00 00 00 
    if(p->s.size >= nunits){
 8c5:	e9 42 ff ff ff       	jmp    80c <malloc+0x2c>
 8ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 8d0:	8b 08                	mov    (%eax),%ecx
 8d2:	89 0a                	mov    %ecx,(%edx)
 8d4:	eb b9                	jmp    88f <malloc+0xaf>
