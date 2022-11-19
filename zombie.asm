
_zombie:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(void)
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 04             	sub    $0x4,%esp
  if(fork() > 0)
  11:	e8 f6 03 00 00       	call   40c <fork>
  16:	85 c0                	test   %eax,%eax
  18:	7e 0d                	jle    27 <main+0x27>
    sleep(5);  // Let child exit before parent.
  1a:	83 ec 0c             	sub    $0xc,%esp
  1d:	6a 05                	push   $0x5
  1f:	e8 80 04 00 00       	call   4a4 <sleep>
  24:	83 c4 10             	add    $0x10,%esp
  exit();
  27:	e8 e8 03 00 00       	call   414 <exit>
  2c:	66 90                	xchg   %ax,%ax
  2e:	66 90                	xchg   %ax,%ax

00000030 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
  30:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  31:	31 c0                	xor    %eax,%eax
{
  33:	89 e5                	mov    %esp,%ebp
  35:	53                   	push   %ebx
  36:	8b 4d 08             	mov    0x8(%ebp),%ecx
  39:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  40:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  44:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  47:	83 c0 01             	add    $0x1,%eax
  4a:	84 d2                	test   %dl,%dl
  4c:	75 f2                	jne    40 <strcpy+0x10>
    ;
  return os;
}
  4e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  51:	89 c8                	mov    %ecx,%eax
  53:	c9                   	leave  
  54:	c3                   	ret    
  55:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000060 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	53                   	push   %ebx
  64:	8b 55 08             	mov    0x8(%ebp),%edx
  67:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  6a:	0f b6 02             	movzbl (%edx),%eax
  6d:	84 c0                	test   %al,%al
  6f:	75 17                	jne    88 <strcmp+0x28>
  71:	eb 3a                	jmp    ad <strcmp+0x4d>
  73:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  77:	90                   	nop
  78:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  7c:	83 c2 01             	add    $0x1,%edx
  7f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  82:	84 c0                	test   %al,%al
  84:	74 1a                	je     a0 <strcmp+0x40>
    p++, q++;
  86:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
  88:	0f b6 19             	movzbl (%ecx),%ebx
  8b:	38 c3                	cmp    %al,%bl
  8d:	74 e9                	je     78 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
  8f:	29 d8                	sub    %ebx,%eax
}
  91:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  94:	c9                   	leave  
  95:	c3                   	ret    
  96:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  9d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
  a0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  a4:	31 c0                	xor    %eax,%eax
  a6:	29 d8                	sub    %ebx,%eax
}
  a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  ab:	c9                   	leave  
  ac:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
  ad:	0f b6 19             	movzbl (%ecx),%ebx
  b0:	31 c0                	xor    %eax,%eax
  b2:	eb db                	jmp    8f <strcmp+0x2f>
  b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bf:	90                   	nop

000000c0 <strlen>:

uint
strlen(const char *s)
{
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
  c6:	80 3a 00             	cmpb   $0x0,(%edx)
  c9:	74 15                	je     e0 <strlen+0x20>
  cb:	31 c0                	xor    %eax,%eax
  cd:	8d 76 00             	lea    0x0(%esi),%esi
  d0:	83 c0 01             	add    $0x1,%eax
  d3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
  d7:	89 c1                	mov    %eax,%ecx
  d9:	75 f5                	jne    d0 <strlen+0x10>
    ;
  return n;
}
  db:	89 c8                	mov    %ecx,%eax
  dd:	5d                   	pop    %ebp
  de:	c3                   	ret    
  df:	90                   	nop
  for(n = 0; s[n]; n++)
  e0:	31 c9                	xor    %ecx,%ecx
}
  e2:	5d                   	pop    %ebp
  e3:	89 c8                	mov    %ecx,%eax
  e5:	c3                   	ret    
  e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  ed:	8d 76 00             	lea    0x0(%esi),%esi

000000f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
  f0:	55                   	push   %ebp
  f1:	89 e5                	mov    %esp,%ebp
  f3:	57                   	push   %edi
  f4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
  f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
  fa:	8b 45 0c             	mov    0xc(%ebp),%eax
  fd:	89 d7                	mov    %edx,%edi
  ff:	fc                   	cld    
 100:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 102:	8b 7d fc             	mov    -0x4(%ebp),%edi
 105:	89 d0                	mov    %edx,%eax
 107:	c9                   	leave  
 108:	c3                   	ret    
 109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000110 <strchr>:

char*
strchr(const char *s, char c)
{
 110:	55                   	push   %ebp
 111:	89 e5                	mov    %esp,%ebp
 113:	8b 45 08             	mov    0x8(%ebp),%eax
 116:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 11a:	0f b6 10             	movzbl (%eax),%edx
 11d:	84 d2                	test   %dl,%dl
 11f:	75 12                	jne    133 <strchr+0x23>
 121:	eb 1d                	jmp    140 <strchr+0x30>
 123:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 127:	90                   	nop
 128:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 12c:	83 c0 01             	add    $0x1,%eax
 12f:	84 d2                	test   %dl,%dl
 131:	74 0d                	je     140 <strchr+0x30>
    if(*s == c)
 133:	38 d1                	cmp    %dl,%cl
 135:	75 f1                	jne    128 <strchr+0x18>
      return (char*)s;
  return 0;
}
 137:	5d                   	pop    %ebp
 138:	c3                   	ret    
 139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 140:	31 c0                	xor    %eax,%eax
}
 142:	5d                   	pop    %ebp
 143:	c3                   	ret    
 144:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 14b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 14f:	90                   	nop

00000150 <gets>:

char*
gets(char *buf, int max)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	57                   	push   %edi
 154:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 155:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 158:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 159:	31 db                	xor    %ebx,%ebx
{
 15b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 15e:	eb 27                	jmp    187 <gets+0x37>
    cc = read(0, &c, 1);
 160:	83 ec 04             	sub    $0x4,%esp
 163:	6a 01                	push   $0x1
 165:	57                   	push   %edi
 166:	6a 00                	push   $0x0
 168:	e8 bf 02 00 00       	call   42c <read>
    if(cc < 1)
 16d:	83 c4 10             	add    $0x10,%esp
 170:	85 c0                	test   %eax,%eax
 172:	7e 1d                	jle    191 <gets+0x41>
      break;
    buf[i++] = c;
 174:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 178:	8b 55 08             	mov    0x8(%ebp),%edx
 17b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 17f:	3c 0a                	cmp    $0xa,%al
 181:	74 1d                	je     1a0 <gets+0x50>
 183:	3c 0d                	cmp    $0xd,%al
 185:	74 19                	je     1a0 <gets+0x50>
  for(i=0; i+1 < max; ){
 187:	89 de                	mov    %ebx,%esi
 189:	83 c3 01             	add    $0x1,%ebx
 18c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 18f:	7c cf                	jl     160 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 191:	8b 45 08             	mov    0x8(%ebp),%eax
 194:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 198:	8d 65 f4             	lea    -0xc(%ebp),%esp
 19b:	5b                   	pop    %ebx
 19c:	5e                   	pop    %esi
 19d:	5f                   	pop    %edi
 19e:	5d                   	pop    %ebp
 19f:	c3                   	ret    
  buf[i] = '\0';
 1a0:	8b 45 08             	mov    0x8(%ebp),%eax
 1a3:	89 de                	mov    %ebx,%esi
 1a5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 1a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1ac:	5b                   	pop    %ebx
 1ad:	5e                   	pop    %esi
 1ae:	5f                   	pop    %edi
 1af:	5d                   	pop    %ebp
 1b0:	c3                   	ret    
 1b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1bf:	90                   	nop

000001c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	56                   	push   %esi
 1c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 1c5:	83 ec 08             	sub    $0x8,%esp
 1c8:	6a 00                	push   $0x0
 1ca:	ff 75 08             	push   0x8(%ebp)
 1cd:	e8 82 02 00 00       	call   454 <open>
  if(fd < 0)
 1d2:	83 c4 10             	add    $0x10,%esp
 1d5:	85 c0                	test   %eax,%eax
 1d7:	78 27                	js     200 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 1d9:	83 ec 08             	sub    $0x8,%esp
 1dc:	ff 75 0c             	push   0xc(%ebp)
 1df:	89 c3                	mov    %eax,%ebx
 1e1:	50                   	push   %eax
 1e2:	e8 85 02 00 00       	call   46c <fstat>
  close(fd);
 1e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 1ea:	89 c6                	mov    %eax,%esi
  close(fd);
 1ec:	e8 4b 02 00 00       	call   43c <close>
  return r;
 1f1:	83 c4 10             	add    $0x10,%esp
}
 1f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1f7:	89 f0                	mov    %esi,%eax
 1f9:	5b                   	pop    %ebx
 1fa:	5e                   	pop    %esi
 1fb:	5d                   	pop    %ebp
 1fc:	c3                   	ret    
 1fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 200:	be ff ff ff ff       	mov    $0xffffffff,%esi
 205:	eb ed                	jmp    1f4 <stat+0x34>
 207:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 20e:	66 90                	xchg   %ax,%ax

00000210 <atoi>:

int
atoi(const char *s)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	53                   	push   %ebx
 214:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 217:	0f be 02             	movsbl (%edx),%eax
 21a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 21d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 220:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 225:	77 1e                	ja     245 <atoi+0x35>
 227:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 230:	83 c2 01             	add    $0x1,%edx
 233:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 236:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 23a:	0f be 02             	movsbl (%edx),%eax
 23d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 240:	80 fb 09             	cmp    $0x9,%bl
 243:	76 eb                	jbe    230 <atoi+0x20>
  return n;
}
 245:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 248:	89 c8                	mov    %ecx,%eax
 24a:	c9                   	leave  
 24b:	c3                   	ret    
 24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000250 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	8b 45 10             	mov    0x10(%ebp),%eax
 257:	8b 55 08             	mov    0x8(%ebp),%edx
 25a:	56                   	push   %esi
 25b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 25e:	85 c0                	test   %eax,%eax
 260:	7e 13                	jle    275 <memmove+0x25>
 262:	01 d0                	add    %edx,%eax
  dst = vdst;
 264:	89 d7                	mov    %edx,%edi
 266:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 26d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 270:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 271:	39 f8                	cmp    %edi,%eax
 273:	75 fb                	jne    270 <memmove+0x20>
  return vdst;
}
 275:	5e                   	pop    %esi
 276:	89 d0                	mov    %edx,%eax
 278:	5f                   	pop    %edi
 279:	5d                   	pop    %ebp
 27a:	c3                   	ret    
 27b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 27f:	90                   	nop

00000280 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 280:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 281:	b8 01 00 00 00       	mov    $0x1,%eax
 286:	89 e5                	mov    %esp,%ebp
 288:	53                   	push   %ebx
 289:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 28c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 293:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 29a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 29f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 2a2:	39 c2                	cmp    %eax,%edx
 2a4:	74 24                	je     2ca <thread_create+0x4a>
 2a6:	89 c3                	mov    %eax,%ebx
 2a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 2b0:	83 ec 04             	sub    $0x4,%esp
 2b3:	52                   	push   %edx
 2b4:	68 a8 08 00 00       	push   $0x8a8
 2b9:	6a 01                	push   $0x1
 2bb:	e8 c0 02 00 00       	call   580 <printf>
  while(lock->turn != myturn){
 2c0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 2c3:	83 c4 10             	add    $0x10,%esp
 2c6:	39 d3                	cmp    %edx,%ebx
 2c8:	75 e6                	jne    2b0 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 2ca:	83 ec 0c             	sub    $0xc,%esp
 2cd:	68 00 20 00 00       	push   $0x2000
 2d2:	e8 d9 04 00 00       	call   7b0 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 2d7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 2db:	83 c4 10             	add    $0x10,%esp
 2de:	89 c2                	mov    %eax,%edx
 2e0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 2e6:	74 07                	je     2ef <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 2e8:	29 d0                	sub    %edx,%eax
 2ea:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 2ef:	50                   	push   %eax
 2f0:	ff 75 10             	push   0x10(%ebp)
 2f3:	ff 75 0c             	push   0xc(%ebp)
 2f6:	ff 75 08             	push   0x8(%ebp)
 2f9:	e8 b6 01 00 00       	call   4b4 <clone>
}
 2fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 301:	c9                   	leave  
 302:	c3                   	ret    
 303:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000310 <thread_join>:
int thread_join(){
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	56                   	push   %esi
 314:	53                   	push   %ebx
 315:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 318:	6a 04                	push   $0x4
 31a:	e8 91 04 00 00       	call   7b0 <malloc>
 31f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 322:	8d 45 ec             	lea    -0x14(%ebp),%eax
 325:	89 04 24             	mov    %eax,(%esp)
 328:	e8 8f 01 00 00       	call   4bc <join>
  lock->ticket = 0;
 32d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 334:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 336:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 33d:	b8 01 00 00 00       	mov    $0x1,%eax
 342:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 347:	8b 55 f4             	mov    -0xc(%ebp),%edx
 34a:	83 c4 10             	add    $0x10,%esp
 34d:	39 c2                	cmp    %eax,%edx
 34f:	74 21                	je     372 <thread_join+0x62>
 351:	89 c3                	mov    %eax,%ebx
 353:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 357:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 358:	83 ec 04             	sub    $0x4,%esp
 35b:	52                   	push   %edx
 35c:	68 a8 08 00 00       	push   $0x8a8
 361:	6a 01                	push   $0x1
 363:	e8 18 02 00 00       	call   580 <printf>
  while(lock->turn != myturn){
 368:	8b 55 f4             	mov    -0xc(%ebp),%edx
 36b:	83 c4 10             	add    $0x10,%esp
 36e:	39 d3                	cmp    %edx,%ebx
 370:	75 e6                	jne    358 <thread_join+0x48>
	free(stack);
 372:	83 ec 0c             	sub    $0xc,%esp
 375:	ff 75 ec             	push   -0x14(%ebp)
 378:	e8 a3 03 00 00       	call   720 <free>
}
 37d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 380:	89 f0                	mov    %esi,%eax
 382:	5b                   	pop    %ebx
 383:	5e                   	pop    %esi
 384:	5d                   	pop    %ebp
 385:	c3                   	ret    
 386:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38d:	8d 76 00             	lea    0x0(%esi),%esi

00000390 <lock_init>:
void lock_init(lock_t *lock) {
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 396:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 39c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 3a3:	5d                   	pop    %ebp
 3a4:	c3                   	ret    
 3a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003b0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 3b0:	55                   	push   %ebp
 3b1:	b8 01 00 00 00       	mov    $0x1,%eax
 3b6:	89 e5                	mov    %esp,%ebp
 3b8:	56                   	push   %esi
 3b9:	8b 75 08             	mov    0x8(%ebp),%esi
 3bc:	53                   	push   %ebx
 3bd:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 3c1:	8b 56 04             	mov    0x4(%esi),%edx
 3c4:	39 d0                	cmp    %edx,%eax
 3c6:	74 22                	je     3ea <lock_acquire+0x3a>
 3c8:	89 c3                	mov    %eax,%ebx
 3ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 3d0:	83 ec 04             	sub    $0x4,%esp
 3d3:	52                   	push   %edx
 3d4:	68 a8 08 00 00       	push   $0x8a8
 3d9:	6a 01                	push   $0x1
 3db:	e8 a0 01 00 00       	call   580 <printf>
  while(lock->turn != myturn){
 3e0:	8b 56 04             	mov    0x4(%esi),%edx
 3e3:	83 c4 10             	add    $0x10,%esp
 3e6:	39 da                	cmp    %ebx,%edx
 3e8:	75 e6                	jne    3d0 <lock_acquire+0x20>
}
 3ea:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3ed:	5b                   	pop    %ebx
 3ee:	5e                   	pop    %esi
 3ef:	5d                   	pop    %ebp
 3f0:	c3                   	ret    
 3f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <lock_release>:
void lock_release(lock_t *lock){
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 406:	83 40 04 01          	addl   $0x1,0x4(%eax)
 40a:	5d                   	pop    %ebp
 40b:	c3                   	ret    

0000040c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 40c:	b8 01 00 00 00       	mov    $0x1,%eax
 411:	cd 40                	int    $0x40
 413:	c3                   	ret    

00000414 <exit>:
SYSCALL(exit)
 414:	b8 02 00 00 00       	mov    $0x2,%eax
 419:	cd 40                	int    $0x40
 41b:	c3                   	ret    

0000041c <wait>:
SYSCALL(wait)
 41c:	b8 03 00 00 00       	mov    $0x3,%eax
 421:	cd 40                	int    $0x40
 423:	c3                   	ret    

00000424 <pipe>:
SYSCALL(pipe)
 424:	b8 04 00 00 00       	mov    $0x4,%eax
 429:	cd 40                	int    $0x40
 42b:	c3                   	ret    

0000042c <read>:
SYSCALL(read)
 42c:	b8 05 00 00 00       	mov    $0x5,%eax
 431:	cd 40                	int    $0x40
 433:	c3                   	ret    

00000434 <write>:
SYSCALL(write)
 434:	b8 10 00 00 00       	mov    $0x10,%eax
 439:	cd 40                	int    $0x40
 43b:	c3                   	ret    

0000043c <close>:
SYSCALL(close)
 43c:	b8 15 00 00 00       	mov    $0x15,%eax
 441:	cd 40                	int    $0x40
 443:	c3                   	ret    

00000444 <kill>:
SYSCALL(kill)
 444:	b8 06 00 00 00       	mov    $0x6,%eax
 449:	cd 40                	int    $0x40
 44b:	c3                   	ret    

0000044c <exec>:
SYSCALL(exec)
 44c:	b8 07 00 00 00       	mov    $0x7,%eax
 451:	cd 40                	int    $0x40
 453:	c3                   	ret    

00000454 <open>:
SYSCALL(open)
 454:	b8 0f 00 00 00       	mov    $0xf,%eax
 459:	cd 40                	int    $0x40
 45b:	c3                   	ret    

0000045c <mknod>:
SYSCALL(mknod)
 45c:	b8 11 00 00 00       	mov    $0x11,%eax
 461:	cd 40                	int    $0x40
 463:	c3                   	ret    

00000464 <unlink>:
SYSCALL(unlink)
 464:	b8 12 00 00 00       	mov    $0x12,%eax
 469:	cd 40                	int    $0x40
 46b:	c3                   	ret    

0000046c <fstat>:
SYSCALL(fstat)
 46c:	b8 08 00 00 00       	mov    $0x8,%eax
 471:	cd 40                	int    $0x40
 473:	c3                   	ret    

00000474 <link>:
SYSCALL(link)
 474:	b8 13 00 00 00       	mov    $0x13,%eax
 479:	cd 40                	int    $0x40
 47b:	c3                   	ret    

0000047c <mkdir>:
SYSCALL(mkdir)
 47c:	b8 14 00 00 00       	mov    $0x14,%eax
 481:	cd 40                	int    $0x40
 483:	c3                   	ret    

00000484 <chdir>:
SYSCALL(chdir)
 484:	b8 09 00 00 00       	mov    $0x9,%eax
 489:	cd 40                	int    $0x40
 48b:	c3                   	ret    

0000048c <dup>:
SYSCALL(dup)
 48c:	b8 0a 00 00 00       	mov    $0xa,%eax
 491:	cd 40                	int    $0x40
 493:	c3                   	ret    

00000494 <getpid>:
SYSCALL(getpid)
 494:	b8 0b 00 00 00       	mov    $0xb,%eax
 499:	cd 40                	int    $0x40
 49b:	c3                   	ret    

0000049c <sbrk>:
SYSCALL(sbrk)
 49c:	b8 0c 00 00 00       	mov    $0xc,%eax
 4a1:	cd 40                	int    $0x40
 4a3:	c3                   	ret    

000004a4 <sleep>:
SYSCALL(sleep)
 4a4:	b8 0d 00 00 00       	mov    $0xd,%eax
 4a9:	cd 40                	int    $0x40
 4ab:	c3                   	ret    

000004ac <uptime>:
SYSCALL(uptime)
 4ac:	b8 0e 00 00 00       	mov    $0xe,%eax
 4b1:	cd 40                	int    $0x40
 4b3:	c3                   	ret    

000004b4 <clone>:
SYSCALL(clone)
 4b4:	b8 16 00 00 00       	mov    $0x16,%eax
 4b9:	cd 40                	int    $0x40
 4bb:	c3                   	ret    

000004bc <join>:
SYSCALL(join)
 4bc:	b8 17 00 00 00       	mov    $0x17,%eax
 4c1:	cd 40                	int    $0x40
 4c3:	c3                   	ret    
 4c4:	66 90                	xchg   %ax,%ax
 4c6:	66 90                	xchg   %ax,%ax
 4c8:	66 90                	xchg   %ax,%ax
 4ca:	66 90                	xchg   %ax,%ax
 4cc:	66 90                	xchg   %ax,%ax
 4ce:	66 90                	xchg   %ax,%ax

000004d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	56                   	push   %esi
 4d5:	53                   	push   %ebx
 4d6:	83 ec 3c             	sub    $0x3c,%esp
 4d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 4dc:	89 d1                	mov    %edx,%ecx
{
 4de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 4e1:	85 d2                	test   %edx,%edx
 4e3:	0f 89 7f 00 00 00    	jns    568 <printint+0x98>
 4e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 4ed:	74 79                	je     568 <printint+0x98>
    neg = 1;
 4ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 4f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 4f8:	31 db                	xor    %ebx,%ebx
 4fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 4fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 500:	89 c8                	mov    %ecx,%eax
 502:	31 d2                	xor    %edx,%edx
 504:	89 cf                	mov    %ecx,%edi
 506:	f7 75 c4             	divl   -0x3c(%ebp)
 509:	0f b6 92 1c 09 00 00 	movzbl 0x91c(%edx),%edx
 510:	89 45 c0             	mov    %eax,-0x40(%ebp)
 513:	89 d8                	mov    %ebx,%eax
 515:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 518:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 51b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 51e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 521:	76 dd                	jbe    500 <printint+0x30>
  if(neg)
 523:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 526:	85 c9                	test   %ecx,%ecx
 528:	74 0c                	je     536 <printint+0x66>
    buf[i++] = '-';
 52a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 52f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 531:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 536:	8b 7d b8             	mov    -0x48(%ebp),%edi
 539:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 53d:	eb 07                	jmp    546 <printint+0x76>
 53f:	90                   	nop
    putc(fd, buf[i]);
 540:	0f b6 13             	movzbl (%ebx),%edx
 543:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 546:	83 ec 04             	sub    $0x4,%esp
 549:	88 55 d7             	mov    %dl,-0x29(%ebp)
 54c:	6a 01                	push   $0x1
 54e:	56                   	push   %esi
 54f:	57                   	push   %edi
 550:	e8 df fe ff ff       	call   434 <write>
  while(--i >= 0)
 555:	83 c4 10             	add    $0x10,%esp
 558:	39 de                	cmp    %ebx,%esi
 55a:	75 e4                	jne    540 <printint+0x70>
}
 55c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 55f:	5b                   	pop    %ebx
 560:	5e                   	pop    %esi
 561:	5f                   	pop    %edi
 562:	5d                   	pop    %ebp
 563:	c3                   	ret    
 564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 568:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 56f:	eb 87                	jmp    4f8 <printint+0x28>
 571:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 578:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57f:	90                   	nop

00000580 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	57                   	push   %edi
 584:	56                   	push   %esi
 585:	53                   	push   %ebx
 586:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 589:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 58c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 58f:	0f b6 13             	movzbl (%ebx),%edx
 592:	84 d2                	test   %dl,%dl
 594:	74 6a                	je     600 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 596:	8d 45 10             	lea    0x10(%ebp),%eax
 599:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 59c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 59f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 5a1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5a4:	eb 36                	jmp    5dc <printf+0x5c>
 5a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
 5b0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 5b3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 5b8:	83 f8 25             	cmp    $0x25,%eax
 5bb:	74 15                	je     5d2 <printf+0x52>
  write(fd, &c, 1);
 5bd:	83 ec 04             	sub    $0x4,%esp
 5c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5c3:	6a 01                	push   $0x1
 5c5:	57                   	push   %edi
 5c6:	56                   	push   %esi
 5c7:	e8 68 fe ff ff       	call   434 <write>
 5cc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 5cf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 5d2:	0f b6 13             	movzbl (%ebx),%edx
 5d5:	83 c3 01             	add    $0x1,%ebx
 5d8:	84 d2                	test   %dl,%dl
 5da:	74 24                	je     600 <printf+0x80>
    c = fmt[i] & 0xff;
 5dc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 5df:	85 c9                	test   %ecx,%ecx
 5e1:	74 cd                	je     5b0 <printf+0x30>
      }
    } else if(state == '%'){
 5e3:	83 f9 25             	cmp    $0x25,%ecx
 5e6:	75 ea                	jne    5d2 <printf+0x52>
      if(c == 'd'){
 5e8:	83 f8 25             	cmp    $0x25,%eax
 5eb:	0f 84 07 01 00 00    	je     6f8 <printf+0x178>
 5f1:	83 e8 63             	sub    $0x63,%eax
 5f4:	83 f8 15             	cmp    $0x15,%eax
 5f7:	77 17                	ja     610 <printf+0x90>
 5f9:	ff 24 85 c4 08 00 00 	jmp    *0x8c4(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 600:	8d 65 f4             	lea    -0xc(%ebp),%esp
 603:	5b                   	pop    %ebx
 604:	5e                   	pop    %esi
 605:	5f                   	pop    %edi
 606:	5d                   	pop    %ebp
 607:	c3                   	ret    
 608:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60f:	90                   	nop
  write(fd, &c, 1);
 610:	83 ec 04             	sub    $0x4,%esp
 613:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 616:	6a 01                	push   $0x1
 618:	57                   	push   %edi
 619:	56                   	push   %esi
 61a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 61e:	e8 11 fe ff ff       	call   434 <write>
        putc(fd, c);
 623:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 627:	83 c4 0c             	add    $0xc,%esp
 62a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 62d:	6a 01                	push   $0x1
 62f:	57                   	push   %edi
 630:	56                   	push   %esi
 631:	e8 fe fd ff ff       	call   434 <write>
        putc(fd, c);
 636:	83 c4 10             	add    $0x10,%esp
      state = 0;
 639:	31 c9                	xor    %ecx,%ecx
 63b:	eb 95                	jmp    5d2 <printf+0x52>
 63d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 640:	83 ec 0c             	sub    $0xc,%esp
 643:	b9 10 00 00 00       	mov    $0x10,%ecx
 648:	6a 00                	push   $0x0
 64a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 64d:	8b 10                	mov    (%eax),%edx
 64f:	89 f0                	mov    %esi,%eax
 651:	e8 7a fe ff ff       	call   4d0 <printint>
        ap++;
 656:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 65a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 65d:	31 c9                	xor    %ecx,%ecx
 65f:	e9 6e ff ff ff       	jmp    5d2 <printf+0x52>
 664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 668:	8b 45 d0             	mov    -0x30(%ebp),%eax
 66b:	8b 10                	mov    (%eax),%edx
        ap++;
 66d:	83 c0 04             	add    $0x4,%eax
 670:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 673:	85 d2                	test   %edx,%edx
 675:	0f 84 8d 00 00 00    	je     708 <printf+0x188>
        while(*s != 0){
 67b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 67e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 680:	84 c0                	test   %al,%al
 682:	0f 84 4a ff ff ff    	je     5d2 <printf+0x52>
 688:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 68b:	89 d3                	mov    %edx,%ebx
 68d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 690:	83 ec 04             	sub    $0x4,%esp
          s++;
 693:	83 c3 01             	add    $0x1,%ebx
 696:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 699:	6a 01                	push   $0x1
 69b:	57                   	push   %edi
 69c:	56                   	push   %esi
 69d:	e8 92 fd ff ff       	call   434 <write>
        while(*s != 0){
 6a2:	0f b6 03             	movzbl (%ebx),%eax
 6a5:	83 c4 10             	add    $0x10,%esp
 6a8:	84 c0                	test   %al,%al
 6aa:	75 e4                	jne    690 <printf+0x110>
      state = 0;
 6ac:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 6af:	31 c9                	xor    %ecx,%ecx
 6b1:	e9 1c ff ff ff       	jmp    5d2 <printf+0x52>
 6b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 6c0:	83 ec 0c             	sub    $0xc,%esp
 6c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6c8:	6a 01                	push   $0x1
 6ca:	e9 7b ff ff ff       	jmp    64a <printf+0xca>
 6cf:	90                   	nop
        putc(fd, *ap);
 6d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 6d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 6d6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 6d8:	6a 01                	push   $0x1
 6da:	57                   	push   %edi
 6db:	56                   	push   %esi
        putc(fd, *ap);
 6dc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6df:	e8 50 fd ff ff       	call   434 <write>
        ap++;
 6e4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6eb:	31 c9                	xor    %ecx,%ecx
 6ed:	e9 e0 fe ff ff       	jmp    5d2 <printf+0x52>
 6f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 6f8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 6fb:	83 ec 04             	sub    $0x4,%esp
 6fe:	e9 2a ff ff ff       	jmp    62d <printf+0xad>
 703:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 707:	90                   	nop
          s = "(null)";
 708:	ba bc 08 00 00       	mov    $0x8bc,%edx
        while(*s != 0){
 70d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 710:	b8 28 00 00 00       	mov    $0x28,%eax
 715:	89 d3                	mov    %edx,%ebx
 717:	e9 74 ff ff ff       	jmp    690 <printf+0x110>
 71c:	66 90                	xchg   %ax,%ax
 71e:	66 90                	xchg   %ax,%ax

00000720 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 720:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 721:	a1 78 0c 00 00       	mov    0xc78,%eax
{
 726:	89 e5                	mov    %esp,%ebp
 728:	57                   	push   %edi
 729:	56                   	push   %esi
 72a:	53                   	push   %ebx
 72b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 72e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 731:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 738:	89 c2                	mov    %eax,%edx
 73a:	8b 00                	mov    (%eax),%eax
 73c:	39 ca                	cmp    %ecx,%edx
 73e:	73 30                	jae    770 <free+0x50>
 740:	39 c1                	cmp    %eax,%ecx
 742:	72 04                	jb     748 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 744:	39 c2                	cmp    %eax,%edx
 746:	72 f0                	jb     738 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 748:	8b 73 fc             	mov    -0x4(%ebx),%esi
 74b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 74e:	39 f8                	cmp    %edi,%eax
 750:	74 30                	je     782 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 752:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 755:	8b 42 04             	mov    0x4(%edx),%eax
 758:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 75b:	39 f1                	cmp    %esi,%ecx
 75d:	74 3a                	je     799 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 75f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 761:	5b                   	pop    %ebx
  freep = p;
 762:	89 15 78 0c 00 00    	mov    %edx,0xc78
}
 768:	5e                   	pop    %esi
 769:	5f                   	pop    %edi
 76a:	5d                   	pop    %ebp
 76b:	c3                   	ret    
 76c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 770:	39 c2                	cmp    %eax,%edx
 772:	72 c4                	jb     738 <free+0x18>
 774:	39 c1                	cmp    %eax,%ecx
 776:	73 c0                	jae    738 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 778:	8b 73 fc             	mov    -0x4(%ebx),%esi
 77b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 77e:	39 f8                	cmp    %edi,%eax
 780:	75 d0                	jne    752 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 782:	03 70 04             	add    0x4(%eax),%esi
 785:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 788:	8b 02                	mov    (%edx),%eax
 78a:	8b 00                	mov    (%eax),%eax
 78c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 78f:	8b 42 04             	mov    0x4(%edx),%eax
 792:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 795:	39 f1                	cmp    %esi,%ecx
 797:	75 c6                	jne    75f <free+0x3f>
    p->s.size += bp->s.size;
 799:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 79c:	89 15 78 0c 00 00    	mov    %edx,0xc78
    p->s.size += bp->s.size;
 7a2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 7a5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 7a8:	89 0a                	mov    %ecx,(%edx)
}
 7aa:	5b                   	pop    %ebx
 7ab:	5e                   	pop    %esi
 7ac:	5f                   	pop    %edi
 7ad:	5d                   	pop    %ebp
 7ae:	c3                   	ret    
 7af:	90                   	nop

000007b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7b0:	55                   	push   %ebp
 7b1:	89 e5                	mov    %esp,%ebp
 7b3:	57                   	push   %edi
 7b4:	56                   	push   %esi
 7b5:	53                   	push   %ebx
 7b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7bc:	8b 3d 78 0c 00 00    	mov    0xc78,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7c2:	8d 70 07             	lea    0x7(%eax),%esi
 7c5:	c1 ee 03             	shr    $0x3,%esi
 7c8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 7cb:	85 ff                	test   %edi,%edi
 7cd:	0f 84 9d 00 00 00    	je     870 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7d3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 7d5:	8b 4a 04             	mov    0x4(%edx),%ecx
 7d8:	39 f1                	cmp    %esi,%ecx
 7da:	73 6a                	jae    846 <malloc+0x96>
 7dc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7e1:	39 de                	cmp    %ebx,%esi
 7e3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 7e6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 7f0:	eb 17                	jmp    809 <malloc+0x59>
 7f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7fa:	8b 48 04             	mov    0x4(%eax),%ecx
 7fd:	39 f1                	cmp    %esi,%ecx
 7ff:	73 4f                	jae    850 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 801:	8b 3d 78 0c 00 00    	mov    0xc78,%edi
 807:	89 c2                	mov    %eax,%edx
 809:	39 d7                	cmp    %edx,%edi
 80b:	75 eb                	jne    7f8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 80d:	83 ec 0c             	sub    $0xc,%esp
 810:	ff 75 e4             	push   -0x1c(%ebp)
 813:	e8 84 fc ff ff       	call   49c <sbrk>
  if(p == (char*)-1)
 818:	83 c4 10             	add    $0x10,%esp
 81b:	83 f8 ff             	cmp    $0xffffffff,%eax
 81e:	74 1c                	je     83c <malloc+0x8c>
  hp->s.size = nu;
 820:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 823:	83 ec 0c             	sub    $0xc,%esp
 826:	83 c0 08             	add    $0x8,%eax
 829:	50                   	push   %eax
 82a:	e8 f1 fe ff ff       	call   720 <free>
  return freep;
 82f:	8b 15 78 0c 00 00    	mov    0xc78,%edx
      if((p = morecore(nunits)) == 0)
 835:	83 c4 10             	add    $0x10,%esp
 838:	85 d2                	test   %edx,%edx
 83a:	75 bc                	jne    7f8 <malloc+0x48>
        return 0;
  }
}
 83c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 83f:	31 c0                	xor    %eax,%eax
}
 841:	5b                   	pop    %ebx
 842:	5e                   	pop    %esi
 843:	5f                   	pop    %edi
 844:	5d                   	pop    %ebp
 845:	c3                   	ret    
    if(p->s.size >= nunits){
 846:	89 d0                	mov    %edx,%eax
 848:	89 fa                	mov    %edi,%edx
 84a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 850:	39 ce                	cmp    %ecx,%esi
 852:	74 4c                	je     8a0 <malloc+0xf0>
        p->s.size -= nunits;
 854:	29 f1                	sub    %esi,%ecx
 856:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 859:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 85c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 85f:	89 15 78 0c 00 00    	mov    %edx,0xc78
}
 865:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 868:	83 c0 08             	add    $0x8,%eax
}
 86b:	5b                   	pop    %ebx
 86c:	5e                   	pop    %esi
 86d:	5f                   	pop    %edi
 86e:	5d                   	pop    %ebp
 86f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 870:	c7 05 78 0c 00 00 7c 	movl   $0xc7c,0xc78
 877:	0c 00 00 
    base.s.size = 0;
 87a:	bf 7c 0c 00 00       	mov    $0xc7c,%edi
    base.s.ptr = freep = prevp = &base;
 87f:	c7 05 7c 0c 00 00 7c 	movl   $0xc7c,0xc7c
 886:	0c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 889:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 88b:	c7 05 80 0c 00 00 00 	movl   $0x0,0xc80
 892:	00 00 00 
    if(p->s.size >= nunits){
 895:	e9 42 ff ff ff       	jmp    7dc <malloc+0x2c>
 89a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 8a0:	8b 08                	mov    (%eax),%ecx
 8a2:	89 0a                	mov    %ecx,(%edx)
 8a4:	eb b9                	jmp    85f <malloc+0xaf>
