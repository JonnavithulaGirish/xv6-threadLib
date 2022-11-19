
_echo:     file format elf32-i386


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
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 08             	sub    $0x8,%esp
  14:	8b 31                	mov    (%ecx),%esi
  16:	8b 79 04             	mov    0x4(%ecx),%edi
  int i;

  for(i = 1; i < argc; i++)
  19:	83 fe 01             	cmp    $0x1,%esi
  1c:	7e 47                	jle    65 <main+0x65>
  1e:	bb 01 00 00 00       	mov    $0x1,%ebx
    printf(1, "%s%s", argv[i], i+1 < argc ? " " : "\n");
  23:	83 c3 01             	add    $0x1,%ebx
  26:	8b 44 9f fc          	mov    -0x4(%edi,%ebx,4),%eax
  2a:	39 f3                	cmp    %esi,%ebx
  2c:	74 22                	je     50 <main+0x50>
  2e:	66 90                	xchg   %ax,%ax
  30:	68 e8 08 00 00       	push   $0x8e8
  35:	83 c3 01             	add    $0x1,%ebx
  38:	50                   	push   %eax
  39:	68 ea 08 00 00       	push   $0x8ea
  3e:	6a 01                	push   $0x1
  40:	e8 7b 05 00 00       	call   5c0 <printf>
  45:	8b 44 9f fc          	mov    -0x4(%edi,%ebx,4),%eax
  49:	83 c4 10             	add    $0x10,%esp
  4c:	39 f3                	cmp    %esi,%ebx
  4e:	75 e0                	jne    30 <main+0x30>
  50:	68 01 09 00 00       	push   $0x901
  55:	50                   	push   %eax
  56:	68 ea 08 00 00       	push   $0x8ea
  5b:	6a 01                	push   $0x1
  5d:	e8 5e 05 00 00       	call   5c0 <printf>
  62:	83 c4 10             	add    $0x10,%esp
  exit();
  65:	e8 ea 03 00 00       	call   454 <exit>
  6a:	66 90                	xchg   %ax,%ax
  6c:	66 90                	xchg   %ax,%ax
  6e:	66 90                	xchg   %ax,%ax

00000070 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
  70:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  71:	31 c0                	xor    %eax,%eax
{
  73:	89 e5                	mov    %esp,%ebp
  75:	53                   	push   %ebx
  76:	8b 4d 08             	mov    0x8(%ebp),%ecx
  79:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  80:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  84:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  87:	83 c0 01             	add    $0x1,%eax
  8a:	84 d2                	test   %dl,%dl
  8c:	75 f2                	jne    80 <strcpy+0x10>
    ;
  return os;
}
  8e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  91:	89 c8                	mov    %ecx,%eax
  93:	c9                   	leave  
  94:	c3                   	ret    
  95:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000000a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  a0:	55                   	push   %ebp
  a1:	89 e5                	mov    %esp,%ebp
  a3:	53                   	push   %ebx
  a4:	8b 55 08             	mov    0x8(%ebp),%edx
  a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  aa:	0f b6 02             	movzbl (%edx),%eax
  ad:	84 c0                	test   %al,%al
  af:	75 17                	jne    c8 <strcmp+0x28>
  b1:	eb 3a                	jmp    ed <strcmp+0x4d>
  b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  b7:	90                   	nop
  b8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  bc:	83 c2 01             	add    $0x1,%edx
  bf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  c2:	84 c0                	test   %al,%al
  c4:	74 1a                	je     e0 <strcmp+0x40>
    p++, q++;
  c6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
  c8:	0f b6 19             	movzbl (%ecx),%ebx
  cb:	38 c3                	cmp    %al,%bl
  cd:	74 e9                	je     b8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
  cf:	29 d8                	sub    %ebx,%eax
}
  d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  d4:	c9                   	leave  
  d5:	c3                   	ret    
  d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  dd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
  e0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  e4:	31 c0                	xor    %eax,%eax
  e6:	29 d8                	sub    %ebx,%eax
}
  e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  eb:	c9                   	leave  
  ec:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
  ed:	0f b6 19             	movzbl (%ecx),%ebx
  f0:	31 c0                	xor    %eax,%eax
  f2:	eb db                	jmp    cf <strcmp+0x2f>
  f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  ff:	90                   	nop

00000100 <strlen>:

uint
strlen(const char *s)
{
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 106:	80 3a 00             	cmpb   $0x0,(%edx)
 109:	74 15                	je     120 <strlen+0x20>
 10b:	31 c0                	xor    %eax,%eax
 10d:	8d 76 00             	lea    0x0(%esi),%esi
 110:	83 c0 01             	add    $0x1,%eax
 113:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 117:	89 c1                	mov    %eax,%ecx
 119:	75 f5                	jne    110 <strlen+0x10>
    ;
  return n;
}
 11b:	89 c8                	mov    %ecx,%eax
 11d:	5d                   	pop    %ebp
 11e:	c3                   	ret    
 11f:	90                   	nop
  for(n = 0; s[n]; n++)
 120:	31 c9                	xor    %ecx,%ecx
}
 122:	5d                   	pop    %ebp
 123:	89 c8                	mov    %ecx,%eax
 125:	c3                   	ret    
 126:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 12d:	8d 76 00             	lea    0x0(%esi),%esi

00000130 <memset>:

void*
memset(void *dst, int c, uint n)
{
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	57                   	push   %edi
 134:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 137:	8b 4d 10             	mov    0x10(%ebp),%ecx
 13a:	8b 45 0c             	mov    0xc(%ebp),%eax
 13d:	89 d7                	mov    %edx,%edi
 13f:	fc                   	cld    
 140:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 142:	8b 7d fc             	mov    -0x4(%ebp),%edi
 145:	89 d0                	mov    %edx,%eax
 147:	c9                   	leave  
 148:	c3                   	ret    
 149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000150 <strchr>:

char*
strchr(const char *s, char c)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	8b 45 08             	mov    0x8(%ebp),%eax
 156:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 15a:	0f b6 10             	movzbl (%eax),%edx
 15d:	84 d2                	test   %dl,%dl
 15f:	75 12                	jne    173 <strchr+0x23>
 161:	eb 1d                	jmp    180 <strchr+0x30>
 163:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 167:	90                   	nop
 168:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 16c:	83 c0 01             	add    $0x1,%eax
 16f:	84 d2                	test   %dl,%dl
 171:	74 0d                	je     180 <strchr+0x30>
    if(*s == c)
 173:	38 d1                	cmp    %dl,%cl
 175:	75 f1                	jne    168 <strchr+0x18>
      return (char*)s;
  return 0;
}
 177:	5d                   	pop    %ebp
 178:	c3                   	ret    
 179:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 180:	31 c0                	xor    %eax,%eax
}
 182:	5d                   	pop    %ebp
 183:	c3                   	ret    
 184:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 18b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 18f:	90                   	nop

00000190 <gets>:

char*
gets(char *buf, int max)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	57                   	push   %edi
 194:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 195:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 198:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 199:	31 db                	xor    %ebx,%ebx
{
 19b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 19e:	eb 27                	jmp    1c7 <gets+0x37>
    cc = read(0, &c, 1);
 1a0:	83 ec 04             	sub    $0x4,%esp
 1a3:	6a 01                	push   $0x1
 1a5:	57                   	push   %edi
 1a6:	6a 00                	push   $0x0
 1a8:	e8 bf 02 00 00       	call   46c <read>
    if(cc < 1)
 1ad:	83 c4 10             	add    $0x10,%esp
 1b0:	85 c0                	test   %eax,%eax
 1b2:	7e 1d                	jle    1d1 <gets+0x41>
      break;
    buf[i++] = c;
 1b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 1b8:	8b 55 08             	mov    0x8(%ebp),%edx
 1bb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 1bf:	3c 0a                	cmp    $0xa,%al
 1c1:	74 1d                	je     1e0 <gets+0x50>
 1c3:	3c 0d                	cmp    $0xd,%al
 1c5:	74 19                	je     1e0 <gets+0x50>
  for(i=0; i+1 < max; ){
 1c7:	89 de                	mov    %ebx,%esi
 1c9:	83 c3 01             	add    $0x1,%ebx
 1cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 1cf:	7c cf                	jl     1a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 1d1:	8b 45 08             	mov    0x8(%ebp),%eax
 1d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 1d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1db:	5b                   	pop    %ebx
 1dc:	5e                   	pop    %esi
 1dd:	5f                   	pop    %edi
 1de:	5d                   	pop    %ebp
 1df:	c3                   	ret    
  buf[i] = '\0';
 1e0:	8b 45 08             	mov    0x8(%ebp),%eax
 1e3:	89 de                	mov    %ebx,%esi
 1e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 1e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 1ec:	5b                   	pop    %ebx
 1ed:	5e                   	pop    %esi
 1ee:	5f                   	pop    %edi
 1ef:	5d                   	pop    %ebp
 1f0:	c3                   	ret    
 1f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ff:	90                   	nop

00000200 <stat>:

int
stat(const char *n, struct stat *st)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	56                   	push   %esi
 204:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 205:	83 ec 08             	sub    $0x8,%esp
 208:	6a 00                	push   $0x0
 20a:	ff 75 08             	push   0x8(%ebp)
 20d:	e8 82 02 00 00       	call   494 <open>
  if(fd < 0)
 212:	83 c4 10             	add    $0x10,%esp
 215:	85 c0                	test   %eax,%eax
 217:	78 27                	js     240 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 219:	83 ec 08             	sub    $0x8,%esp
 21c:	ff 75 0c             	push   0xc(%ebp)
 21f:	89 c3                	mov    %eax,%ebx
 221:	50                   	push   %eax
 222:	e8 85 02 00 00       	call   4ac <fstat>
  close(fd);
 227:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 22a:	89 c6                	mov    %eax,%esi
  close(fd);
 22c:	e8 4b 02 00 00       	call   47c <close>
  return r;
 231:	83 c4 10             	add    $0x10,%esp
}
 234:	8d 65 f8             	lea    -0x8(%ebp),%esp
 237:	89 f0                	mov    %esi,%eax
 239:	5b                   	pop    %ebx
 23a:	5e                   	pop    %esi
 23b:	5d                   	pop    %ebp
 23c:	c3                   	ret    
 23d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 240:	be ff ff ff ff       	mov    $0xffffffff,%esi
 245:	eb ed                	jmp    234 <stat+0x34>
 247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24e:	66 90                	xchg   %ax,%ax

00000250 <atoi>:

int
atoi(const char *s)
{
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	53                   	push   %ebx
 254:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 257:	0f be 02             	movsbl (%edx),%eax
 25a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 25d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 260:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 265:	77 1e                	ja     285 <atoi+0x35>
 267:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 26e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 270:	83 c2 01             	add    $0x1,%edx
 273:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 276:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 27a:	0f be 02             	movsbl (%edx),%eax
 27d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 280:	80 fb 09             	cmp    $0x9,%bl
 283:	76 eb                	jbe    270 <atoi+0x20>
  return n;
}
 285:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 288:	89 c8                	mov    %ecx,%eax
 28a:	c9                   	leave  
 28b:	c3                   	ret    
 28c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000290 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 290:	55                   	push   %ebp
 291:	89 e5                	mov    %esp,%ebp
 293:	57                   	push   %edi
 294:	8b 45 10             	mov    0x10(%ebp),%eax
 297:	8b 55 08             	mov    0x8(%ebp),%edx
 29a:	56                   	push   %esi
 29b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 29e:	85 c0                	test   %eax,%eax
 2a0:	7e 13                	jle    2b5 <memmove+0x25>
 2a2:	01 d0                	add    %edx,%eax
  dst = vdst;
 2a4:	89 d7                	mov    %edx,%edi
 2a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 2b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 2b1:	39 f8                	cmp    %edi,%eax
 2b3:	75 fb                	jne    2b0 <memmove+0x20>
  return vdst;
}
 2b5:	5e                   	pop    %esi
 2b6:	89 d0                	mov    %edx,%eax
 2b8:	5f                   	pop    %edi
 2b9:	5d                   	pop    %ebp
 2ba:	c3                   	ret    
 2bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2bf:	90                   	nop

000002c0 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 2c0:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 2c1:	b8 01 00 00 00       	mov    $0x1,%eax
 2c6:	89 e5                	mov    %esp,%ebp
 2c8:	53                   	push   %ebx
 2c9:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 2cc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 2d3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 2da:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 2df:	8b 55 f4             	mov    -0xc(%ebp),%edx
 2e2:	39 c2                	cmp    %eax,%edx
 2e4:	74 24                	je     30a <thread_create+0x4a>
 2e6:	89 c3                	mov    %eax,%ebx
 2e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ef:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 2f0:	83 ec 04             	sub    $0x4,%esp
 2f3:	52                   	push   %edx
 2f4:	68 ef 08 00 00       	push   $0x8ef
 2f9:	6a 01                	push   $0x1
 2fb:	e8 c0 02 00 00       	call   5c0 <printf>
  while(lock->turn != myturn){
 300:	8b 55 f4             	mov    -0xc(%ebp),%edx
 303:	83 c4 10             	add    $0x10,%esp
 306:	39 d3                	cmp    %edx,%ebx
 308:	75 e6                	jne    2f0 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 30a:	83 ec 0c             	sub    $0xc,%esp
 30d:	68 00 20 00 00       	push   $0x2000
 312:	e8 d9 04 00 00       	call   7f0 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 317:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 31b:	83 c4 10             	add    $0x10,%esp
 31e:	89 c2                	mov    %eax,%edx
 320:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 326:	74 07                	je     32f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 328:	29 d0                	sub    %edx,%eax
 32a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 32f:	50                   	push   %eax
 330:	ff 75 10             	push   0x10(%ebp)
 333:	ff 75 0c             	push   0xc(%ebp)
 336:	ff 75 08             	push   0x8(%ebp)
 339:	e8 b6 01 00 00       	call   4f4 <clone>
}
 33e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 341:	c9                   	leave  
 342:	c3                   	ret    
 343:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000350 <thread_join>:
int thread_join(){
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	56                   	push   %esi
 354:	53                   	push   %ebx
 355:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 358:	6a 04                	push   $0x4
 35a:	e8 91 04 00 00       	call   7f0 <malloc>
 35f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 362:	8d 45 ec             	lea    -0x14(%ebp),%eax
 365:	89 04 24             	mov    %eax,(%esp)
 368:	e8 8f 01 00 00       	call   4fc <join>
  lock->ticket = 0;
 36d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 374:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 376:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 37d:	b8 01 00 00 00       	mov    $0x1,%eax
 382:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 387:	8b 55 f4             	mov    -0xc(%ebp),%edx
 38a:	83 c4 10             	add    $0x10,%esp
 38d:	39 c2                	cmp    %eax,%edx
 38f:	74 21                	je     3b2 <thread_join+0x62>
 391:	89 c3                	mov    %eax,%ebx
 393:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 397:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 398:	83 ec 04             	sub    $0x4,%esp
 39b:	52                   	push   %edx
 39c:	68 ef 08 00 00       	push   $0x8ef
 3a1:	6a 01                	push   $0x1
 3a3:	e8 18 02 00 00       	call   5c0 <printf>
  while(lock->turn != myturn){
 3a8:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3ab:	83 c4 10             	add    $0x10,%esp
 3ae:	39 d3                	cmp    %edx,%ebx
 3b0:	75 e6                	jne    398 <thread_join+0x48>
	free(stack);
 3b2:	83 ec 0c             	sub    $0xc,%esp
 3b5:	ff 75 ec             	push   -0x14(%ebp)
 3b8:	e8 a3 03 00 00       	call   760 <free>
}
 3bd:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3c0:	89 f0                	mov    %esi,%eax
 3c2:	5b                   	pop    %ebx
 3c3:	5e                   	pop    %esi
 3c4:	5d                   	pop    %ebp
 3c5:	c3                   	ret    
 3c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cd:	8d 76 00             	lea    0x0(%esi),%esi

000003d0 <lock_init>:
void lock_init(lock_t *lock) {
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 3d6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 3dc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 3e3:	5d                   	pop    %ebp
 3e4:	c3                   	ret    
 3e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003f0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 3f0:	55                   	push   %ebp
 3f1:	b8 01 00 00 00       	mov    $0x1,%eax
 3f6:	89 e5                	mov    %esp,%ebp
 3f8:	56                   	push   %esi
 3f9:	8b 75 08             	mov    0x8(%ebp),%esi
 3fc:	53                   	push   %ebx
 3fd:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 401:	8b 56 04             	mov    0x4(%esi),%edx
 404:	39 d0                	cmp    %edx,%eax
 406:	74 22                	je     42a <lock_acquire+0x3a>
 408:	89 c3                	mov    %eax,%ebx
 40a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 410:	83 ec 04             	sub    $0x4,%esp
 413:	52                   	push   %edx
 414:	68 ef 08 00 00       	push   $0x8ef
 419:	6a 01                	push   $0x1
 41b:	e8 a0 01 00 00       	call   5c0 <printf>
  while(lock->turn != myturn){
 420:	8b 56 04             	mov    0x4(%esi),%edx
 423:	83 c4 10             	add    $0x10,%esp
 426:	39 da                	cmp    %ebx,%edx
 428:	75 e6                	jne    410 <lock_acquire+0x20>
}
 42a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 42d:	5b                   	pop    %ebx
 42e:	5e                   	pop    %esi
 42f:	5d                   	pop    %ebp
 430:	c3                   	ret    
 431:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 438:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 43f:	90                   	nop

00000440 <lock_release>:
void lock_release(lock_t *lock){
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 446:	83 40 04 01          	addl   $0x1,0x4(%eax)
 44a:	5d                   	pop    %ebp
 44b:	c3                   	ret    

0000044c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 44c:	b8 01 00 00 00       	mov    $0x1,%eax
 451:	cd 40                	int    $0x40
 453:	c3                   	ret    

00000454 <exit>:
SYSCALL(exit)
 454:	b8 02 00 00 00       	mov    $0x2,%eax
 459:	cd 40                	int    $0x40
 45b:	c3                   	ret    

0000045c <wait>:
SYSCALL(wait)
 45c:	b8 03 00 00 00       	mov    $0x3,%eax
 461:	cd 40                	int    $0x40
 463:	c3                   	ret    

00000464 <pipe>:
SYSCALL(pipe)
 464:	b8 04 00 00 00       	mov    $0x4,%eax
 469:	cd 40                	int    $0x40
 46b:	c3                   	ret    

0000046c <read>:
SYSCALL(read)
 46c:	b8 05 00 00 00       	mov    $0x5,%eax
 471:	cd 40                	int    $0x40
 473:	c3                   	ret    

00000474 <write>:
SYSCALL(write)
 474:	b8 10 00 00 00       	mov    $0x10,%eax
 479:	cd 40                	int    $0x40
 47b:	c3                   	ret    

0000047c <close>:
SYSCALL(close)
 47c:	b8 15 00 00 00       	mov    $0x15,%eax
 481:	cd 40                	int    $0x40
 483:	c3                   	ret    

00000484 <kill>:
SYSCALL(kill)
 484:	b8 06 00 00 00       	mov    $0x6,%eax
 489:	cd 40                	int    $0x40
 48b:	c3                   	ret    

0000048c <exec>:
SYSCALL(exec)
 48c:	b8 07 00 00 00       	mov    $0x7,%eax
 491:	cd 40                	int    $0x40
 493:	c3                   	ret    

00000494 <open>:
SYSCALL(open)
 494:	b8 0f 00 00 00       	mov    $0xf,%eax
 499:	cd 40                	int    $0x40
 49b:	c3                   	ret    

0000049c <mknod>:
SYSCALL(mknod)
 49c:	b8 11 00 00 00       	mov    $0x11,%eax
 4a1:	cd 40                	int    $0x40
 4a3:	c3                   	ret    

000004a4 <unlink>:
SYSCALL(unlink)
 4a4:	b8 12 00 00 00       	mov    $0x12,%eax
 4a9:	cd 40                	int    $0x40
 4ab:	c3                   	ret    

000004ac <fstat>:
SYSCALL(fstat)
 4ac:	b8 08 00 00 00       	mov    $0x8,%eax
 4b1:	cd 40                	int    $0x40
 4b3:	c3                   	ret    

000004b4 <link>:
SYSCALL(link)
 4b4:	b8 13 00 00 00       	mov    $0x13,%eax
 4b9:	cd 40                	int    $0x40
 4bb:	c3                   	ret    

000004bc <mkdir>:
SYSCALL(mkdir)
 4bc:	b8 14 00 00 00       	mov    $0x14,%eax
 4c1:	cd 40                	int    $0x40
 4c3:	c3                   	ret    

000004c4 <chdir>:
SYSCALL(chdir)
 4c4:	b8 09 00 00 00       	mov    $0x9,%eax
 4c9:	cd 40                	int    $0x40
 4cb:	c3                   	ret    

000004cc <dup>:
SYSCALL(dup)
 4cc:	b8 0a 00 00 00       	mov    $0xa,%eax
 4d1:	cd 40                	int    $0x40
 4d3:	c3                   	ret    

000004d4 <getpid>:
SYSCALL(getpid)
 4d4:	b8 0b 00 00 00       	mov    $0xb,%eax
 4d9:	cd 40                	int    $0x40
 4db:	c3                   	ret    

000004dc <sbrk>:
SYSCALL(sbrk)
 4dc:	b8 0c 00 00 00       	mov    $0xc,%eax
 4e1:	cd 40                	int    $0x40
 4e3:	c3                   	ret    

000004e4 <sleep>:
SYSCALL(sleep)
 4e4:	b8 0d 00 00 00       	mov    $0xd,%eax
 4e9:	cd 40                	int    $0x40
 4eb:	c3                   	ret    

000004ec <uptime>:
SYSCALL(uptime)
 4ec:	b8 0e 00 00 00       	mov    $0xe,%eax
 4f1:	cd 40                	int    $0x40
 4f3:	c3                   	ret    

000004f4 <clone>:
SYSCALL(clone)
 4f4:	b8 16 00 00 00       	mov    $0x16,%eax
 4f9:	cd 40                	int    $0x40
 4fb:	c3                   	ret    

000004fc <join>:
SYSCALL(join)
 4fc:	b8 17 00 00 00       	mov    $0x17,%eax
 501:	cd 40                	int    $0x40
 503:	c3                   	ret    
 504:	66 90                	xchg   %ax,%ax
 506:	66 90                	xchg   %ax,%ax
 508:	66 90                	xchg   %ax,%ax
 50a:	66 90                	xchg   %ax,%ax
 50c:	66 90                	xchg   %ax,%ax
 50e:	66 90                	xchg   %ax,%ax

00000510 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	57                   	push   %edi
 514:	56                   	push   %esi
 515:	53                   	push   %ebx
 516:	83 ec 3c             	sub    $0x3c,%esp
 519:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 51c:	89 d1                	mov    %edx,%ecx
{
 51e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 521:	85 d2                	test   %edx,%edx
 523:	0f 89 7f 00 00 00    	jns    5a8 <printint+0x98>
 529:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 52d:	74 79                	je     5a8 <printint+0x98>
    neg = 1;
 52f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 536:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 538:	31 db                	xor    %ebx,%ebx
 53a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 53d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 540:	89 c8                	mov    %ecx,%eax
 542:	31 d2                	xor    %edx,%edx
 544:	89 cf                	mov    %ecx,%edi
 546:	f7 75 c4             	divl   -0x3c(%ebp)
 549:	0f b6 92 64 09 00 00 	movzbl 0x964(%edx),%edx
 550:	89 45 c0             	mov    %eax,-0x40(%ebp)
 553:	89 d8                	mov    %ebx,%eax
 555:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 558:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 55b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 55e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 561:	76 dd                	jbe    540 <printint+0x30>
  if(neg)
 563:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 566:	85 c9                	test   %ecx,%ecx
 568:	74 0c                	je     576 <printint+0x66>
    buf[i++] = '-';
 56a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 56f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 571:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 576:	8b 7d b8             	mov    -0x48(%ebp),%edi
 579:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 57d:	eb 07                	jmp    586 <printint+0x76>
 57f:	90                   	nop
    putc(fd, buf[i]);
 580:	0f b6 13             	movzbl (%ebx),%edx
 583:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 586:	83 ec 04             	sub    $0x4,%esp
 589:	88 55 d7             	mov    %dl,-0x29(%ebp)
 58c:	6a 01                	push   $0x1
 58e:	56                   	push   %esi
 58f:	57                   	push   %edi
 590:	e8 df fe ff ff       	call   474 <write>
  while(--i >= 0)
 595:	83 c4 10             	add    $0x10,%esp
 598:	39 de                	cmp    %ebx,%esi
 59a:	75 e4                	jne    580 <printint+0x70>
}
 59c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 59f:	5b                   	pop    %ebx
 5a0:	5e                   	pop    %esi
 5a1:	5f                   	pop    %edi
 5a2:	5d                   	pop    %ebp
 5a3:	c3                   	ret    
 5a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 5af:	eb 87                	jmp    538 <printint+0x28>
 5b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop

000005c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	56                   	push   %esi
 5c5:	53                   	push   %ebx
 5c6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 5cc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 5cf:	0f b6 13             	movzbl (%ebx),%edx
 5d2:	84 d2                	test   %dl,%dl
 5d4:	74 6a                	je     640 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 5d6:	8d 45 10             	lea    0x10(%ebp),%eax
 5d9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 5dc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 5df:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 5e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5e4:	eb 36                	jmp    61c <printf+0x5c>
 5e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ed:	8d 76 00             	lea    0x0(%esi),%esi
 5f0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 5f3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 5f8:	83 f8 25             	cmp    $0x25,%eax
 5fb:	74 15                	je     612 <printf+0x52>
  write(fd, &c, 1);
 5fd:	83 ec 04             	sub    $0x4,%esp
 600:	88 55 e7             	mov    %dl,-0x19(%ebp)
 603:	6a 01                	push   $0x1
 605:	57                   	push   %edi
 606:	56                   	push   %esi
 607:	e8 68 fe ff ff       	call   474 <write>
 60c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 60f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 612:	0f b6 13             	movzbl (%ebx),%edx
 615:	83 c3 01             	add    $0x1,%ebx
 618:	84 d2                	test   %dl,%dl
 61a:	74 24                	je     640 <printf+0x80>
    c = fmt[i] & 0xff;
 61c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 61f:	85 c9                	test   %ecx,%ecx
 621:	74 cd                	je     5f0 <printf+0x30>
      }
    } else if(state == '%'){
 623:	83 f9 25             	cmp    $0x25,%ecx
 626:	75 ea                	jne    612 <printf+0x52>
      if(c == 'd'){
 628:	83 f8 25             	cmp    $0x25,%eax
 62b:	0f 84 07 01 00 00    	je     738 <printf+0x178>
 631:	83 e8 63             	sub    $0x63,%eax
 634:	83 f8 15             	cmp    $0x15,%eax
 637:	77 17                	ja     650 <printf+0x90>
 639:	ff 24 85 0c 09 00 00 	jmp    *0x90c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 640:	8d 65 f4             	lea    -0xc(%ebp),%esp
 643:	5b                   	pop    %ebx
 644:	5e                   	pop    %esi
 645:	5f                   	pop    %edi
 646:	5d                   	pop    %ebp
 647:	c3                   	ret    
 648:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 64f:	90                   	nop
  write(fd, &c, 1);
 650:	83 ec 04             	sub    $0x4,%esp
 653:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 656:	6a 01                	push   $0x1
 658:	57                   	push   %edi
 659:	56                   	push   %esi
 65a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 65e:	e8 11 fe ff ff       	call   474 <write>
        putc(fd, c);
 663:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 667:	83 c4 0c             	add    $0xc,%esp
 66a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 66d:	6a 01                	push   $0x1
 66f:	57                   	push   %edi
 670:	56                   	push   %esi
 671:	e8 fe fd ff ff       	call   474 <write>
        putc(fd, c);
 676:	83 c4 10             	add    $0x10,%esp
      state = 0;
 679:	31 c9                	xor    %ecx,%ecx
 67b:	eb 95                	jmp    612 <printf+0x52>
 67d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 680:	83 ec 0c             	sub    $0xc,%esp
 683:	b9 10 00 00 00       	mov    $0x10,%ecx
 688:	6a 00                	push   $0x0
 68a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 68d:	8b 10                	mov    (%eax),%edx
 68f:	89 f0                	mov    %esi,%eax
 691:	e8 7a fe ff ff       	call   510 <printint>
        ap++;
 696:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 69a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 69d:	31 c9                	xor    %ecx,%ecx
 69f:	e9 6e ff ff ff       	jmp    612 <printf+0x52>
 6a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6a8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6ab:	8b 10                	mov    (%eax),%edx
        ap++;
 6ad:	83 c0 04             	add    $0x4,%eax
 6b0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 6b3:	85 d2                	test   %edx,%edx
 6b5:	0f 84 8d 00 00 00    	je     748 <printf+0x188>
        while(*s != 0){
 6bb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 6be:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 6c0:	84 c0                	test   %al,%al
 6c2:	0f 84 4a ff ff ff    	je     612 <printf+0x52>
 6c8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 6cb:	89 d3                	mov    %edx,%ebx
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 6d0:	83 ec 04             	sub    $0x4,%esp
          s++;
 6d3:	83 c3 01             	add    $0x1,%ebx
 6d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6d9:	6a 01                	push   $0x1
 6db:	57                   	push   %edi
 6dc:	56                   	push   %esi
 6dd:	e8 92 fd ff ff       	call   474 <write>
        while(*s != 0){
 6e2:	0f b6 03             	movzbl (%ebx),%eax
 6e5:	83 c4 10             	add    $0x10,%esp
 6e8:	84 c0                	test   %al,%al
 6ea:	75 e4                	jne    6d0 <printf+0x110>
      state = 0;
 6ec:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 6ef:	31 c9                	xor    %ecx,%ecx
 6f1:	e9 1c ff ff ff       	jmp    612 <printf+0x52>
 6f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 700:	83 ec 0c             	sub    $0xc,%esp
 703:	b9 0a 00 00 00       	mov    $0xa,%ecx
 708:	6a 01                	push   $0x1
 70a:	e9 7b ff ff ff       	jmp    68a <printf+0xca>
 70f:	90                   	nop
        putc(fd, *ap);
 710:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 713:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 716:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 718:	6a 01                	push   $0x1
 71a:	57                   	push   %edi
 71b:	56                   	push   %esi
        putc(fd, *ap);
 71c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 71f:	e8 50 fd ff ff       	call   474 <write>
        ap++;
 724:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 728:	83 c4 10             	add    $0x10,%esp
      state = 0;
 72b:	31 c9                	xor    %ecx,%ecx
 72d:	e9 e0 fe ff ff       	jmp    612 <printf+0x52>
 732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 738:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 73b:	83 ec 04             	sub    $0x4,%esp
 73e:	e9 2a ff ff ff       	jmp    66d <printf+0xad>
 743:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 747:	90                   	nop
          s = "(null)";
 748:	ba 03 09 00 00       	mov    $0x903,%edx
        while(*s != 0){
 74d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 750:	b8 28 00 00 00       	mov    $0x28,%eax
 755:	89 d3                	mov    %edx,%ebx
 757:	e9 74 ff ff ff       	jmp    6d0 <printf+0x110>
 75c:	66 90                	xchg   %ax,%ax
 75e:	66 90                	xchg   %ax,%ax

00000760 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 760:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 761:	a1 cc 0c 00 00       	mov    0xccc,%eax
{
 766:	89 e5                	mov    %esp,%ebp
 768:	57                   	push   %edi
 769:	56                   	push   %esi
 76a:	53                   	push   %ebx
 76b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 76e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 771:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 778:	89 c2                	mov    %eax,%edx
 77a:	8b 00                	mov    (%eax),%eax
 77c:	39 ca                	cmp    %ecx,%edx
 77e:	73 30                	jae    7b0 <free+0x50>
 780:	39 c1                	cmp    %eax,%ecx
 782:	72 04                	jb     788 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 784:	39 c2                	cmp    %eax,%edx
 786:	72 f0                	jb     778 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 788:	8b 73 fc             	mov    -0x4(%ebx),%esi
 78b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 78e:	39 f8                	cmp    %edi,%eax
 790:	74 30                	je     7c2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 792:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 795:	8b 42 04             	mov    0x4(%edx),%eax
 798:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 79b:	39 f1                	cmp    %esi,%ecx
 79d:	74 3a                	je     7d9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 79f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7a1:	5b                   	pop    %ebx
  freep = p;
 7a2:	89 15 cc 0c 00 00    	mov    %edx,0xccc
}
 7a8:	5e                   	pop    %esi
 7a9:	5f                   	pop    %edi
 7aa:	5d                   	pop    %ebp
 7ab:	c3                   	ret    
 7ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7b0:	39 c2                	cmp    %eax,%edx
 7b2:	72 c4                	jb     778 <free+0x18>
 7b4:	39 c1                	cmp    %eax,%ecx
 7b6:	73 c0                	jae    778 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 7b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7be:	39 f8                	cmp    %edi,%eax
 7c0:	75 d0                	jne    792 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 7c2:	03 70 04             	add    0x4(%eax),%esi
 7c5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 7c8:	8b 02                	mov    (%edx),%eax
 7ca:	8b 00                	mov    (%eax),%eax
 7cc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 7cf:	8b 42 04             	mov    0x4(%edx),%eax
 7d2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7d5:	39 f1                	cmp    %esi,%ecx
 7d7:	75 c6                	jne    79f <free+0x3f>
    p->s.size += bp->s.size;
 7d9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 7dc:	89 15 cc 0c 00 00    	mov    %edx,0xccc
    p->s.size += bp->s.size;
 7e2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 7e5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 7e8:	89 0a                	mov    %ecx,(%edx)
}
 7ea:	5b                   	pop    %ebx
 7eb:	5e                   	pop    %esi
 7ec:	5f                   	pop    %edi
 7ed:	5d                   	pop    %ebp
 7ee:	c3                   	ret    
 7ef:	90                   	nop

000007f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7f0:	55                   	push   %ebp
 7f1:	89 e5                	mov    %esp,%ebp
 7f3:	57                   	push   %edi
 7f4:	56                   	push   %esi
 7f5:	53                   	push   %ebx
 7f6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7f9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7fc:	8b 3d cc 0c 00 00    	mov    0xccc,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 802:	8d 70 07             	lea    0x7(%eax),%esi
 805:	c1 ee 03             	shr    $0x3,%esi
 808:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 80b:	85 ff                	test   %edi,%edi
 80d:	0f 84 9d 00 00 00    	je     8b0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 813:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 815:	8b 4a 04             	mov    0x4(%edx),%ecx
 818:	39 f1                	cmp    %esi,%ecx
 81a:	73 6a                	jae    886 <malloc+0x96>
 81c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 821:	39 de                	cmp    %ebx,%esi
 823:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 826:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 82d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 830:	eb 17                	jmp    849 <malloc+0x59>
 832:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 838:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 83a:	8b 48 04             	mov    0x4(%eax),%ecx
 83d:	39 f1                	cmp    %esi,%ecx
 83f:	73 4f                	jae    890 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 841:	8b 3d cc 0c 00 00    	mov    0xccc,%edi
 847:	89 c2                	mov    %eax,%edx
 849:	39 d7                	cmp    %edx,%edi
 84b:	75 eb                	jne    838 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 84d:	83 ec 0c             	sub    $0xc,%esp
 850:	ff 75 e4             	push   -0x1c(%ebp)
 853:	e8 84 fc ff ff       	call   4dc <sbrk>
  if(p == (char*)-1)
 858:	83 c4 10             	add    $0x10,%esp
 85b:	83 f8 ff             	cmp    $0xffffffff,%eax
 85e:	74 1c                	je     87c <malloc+0x8c>
  hp->s.size = nu;
 860:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 863:	83 ec 0c             	sub    $0xc,%esp
 866:	83 c0 08             	add    $0x8,%eax
 869:	50                   	push   %eax
 86a:	e8 f1 fe ff ff       	call   760 <free>
  return freep;
 86f:	8b 15 cc 0c 00 00    	mov    0xccc,%edx
      if((p = morecore(nunits)) == 0)
 875:	83 c4 10             	add    $0x10,%esp
 878:	85 d2                	test   %edx,%edx
 87a:	75 bc                	jne    838 <malloc+0x48>
        return 0;
  }
}
 87c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 87f:	31 c0                	xor    %eax,%eax
}
 881:	5b                   	pop    %ebx
 882:	5e                   	pop    %esi
 883:	5f                   	pop    %edi
 884:	5d                   	pop    %ebp
 885:	c3                   	ret    
    if(p->s.size >= nunits){
 886:	89 d0                	mov    %edx,%eax
 888:	89 fa                	mov    %edi,%edx
 88a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 890:	39 ce                	cmp    %ecx,%esi
 892:	74 4c                	je     8e0 <malloc+0xf0>
        p->s.size -= nunits;
 894:	29 f1                	sub    %esi,%ecx
 896:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 899:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 89c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 89f:	89 15 cc 0c 00 00    	mov    %edx,0xccc
}
 8a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8a8:	83 c0 08             	add    $0x8,%eax
}
 8ab:	5b                   	pop    %ebx
 8ac:	5e                   	pop    %esi
 8ad:	5f                   	pop    %edi
 8ae:	5d                   	pop    %ebp
 8af:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 8b0:	c7 05 cc 0c 00 00 d0 	movl   $0xcd0,0xccc
 8b7:	0c 00 00 
    base.s.size = 0;
 8ba:	bf d0 0c 00 00       	mov    $0xcd0,%edi
    base.s.ptr = freep = prevp = &base;
 8bf:	c7 05 d0 0c 00 00 d0 	movl   $0xcd0,0xcd0
 8c6:	0c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8c9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 8cb:	c7 05 d4 0c 00 00 00 	movl   $0x0,0xcd4
 8d2:	00 00 00 
    if(p->s.size >= nunits){
 8d5:	e9 42 ff ff ff       	jmp    81c <malloc+0x2c>
 8da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 8e0:	8b 08                	mov    (%eax),%ecx
 8e2:	89 0a                	mov    %ecx,(%edx)
 8e4:	eb b9                	jmp    89f <malloc+0xaf>
