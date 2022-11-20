
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
  30:	68 98 08 00 00       	push   $0x898
  35:	83 c3 01             	add    $0x1,%ebx
  38:	50                   	push   %eax
  39:	68 9a 08 00 00       	push   $0x89a
  3e:	6a 01                	push   $0x1
  40:	e8 2b 05 00 00       	call   570 <printf>
  45:	8b 44 9f fc          	mov    -0x4(%edi,%ebx,4),%eax
  49:	83 c4 10             	add    $0x10,%esp
  4c:	39 f3                	cmp    %esi,%ebx
  4e:	75 e0                	jne    30 <main+0x30>
  50:	68 9f 08 00 00       	push   $0x89f
  55:	50                   	push   %eax
  56:	68 9a 08 00 00       	push   $0x89a
  5b:	6a 01                	push   $0x1
  5d:	e8 0e 05 00 00       	call   570 <printf>
  62:	83 c4 10             	add    $0x10,%esp
  exit();
  65:	e8 9c 03 00 00       	call   406 <exit>
  6a:	66 90                	xchg   %ax,%ax
  6c:	66 90                	xchg   %ax,%ax
  6e:	66 90                	xchg   %ax,%ax

00000070 <strcpy>:

lock_t lk_create,lk_join;

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
 1a8:	e8 71 02 00 00       	call   41e <read>
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
 20d:	e8 34 02 00 00       	call   446 <open>
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
 222:	e8 37 02 00 00       	call   45e <fstat>
  close(fd);
 227:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 22a:	89 c6                	mov    %eax,%esi
  close(fd);
 22c:	e8 fd 01 00 00       	call   42e <close>
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
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 2c1:	ba 01 00 00 00       	mov    $0x1,%edx
 2c6:	89 e5                	mov    %esp,%ebp
 2c8:	83 ec 08             	sub    $0x8,%esp
 2cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2cf:	90                   	nop
 2d0:	89 d0                	mov    %edx,%eax
 2d2:	f0 87 05 70 0c 00 00 	lock xchg %eax,0xc70
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 2d9:	85 c0                	test   %eax,%eax
 2db:	75 f3                	jne    2d0 <thread_create+0x10>
    __sync_synchronize();
 2dd:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 2e2:	83 ec 0c             	sub    $0xc,%esp
 2e5:	68 00 20 00 00       	push   $0x2000
 2ea:	e8 b1 04 00 00       	call   7a0 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 2ef:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 2f4:	c7 05 70 0c 00 00 00 	movl   $0x0,0xc70
 2fb:	00 00 00 
	if((uint)stack % PGSIZE)
 2fe:	89 c2                	mov    %eax,%edx
 300:	83 c4 10             	add    $0x10,%esp
 303:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 309:	74 07                	je     312 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 30b:	29 d0                	sub    %edx,%eax
 30d:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 312:	50                   	push   %eax
 313:	ff 75 10             	push   0x10(%ebp)
 316:	ff 75 0c             	push   0xc(%ebp)
 319:	ff 75 08             	push   0x8(%ebp)
 31c:	e8 85 01 00 00       	call   4a6 <clone>
}
 321:	c9                   	leave  
 322:	c3                   	ret    
 323:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000330 <thread_join>:
int thread_join(){
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	53                   	push   %ebx
	int result= join(&stack);
 334:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 337:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 33a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 341:	50                   	push   %eax
 342:	e8 67 01 00 00       	call   4ae <join>
    while(xchg(&(lock->mutex), 1) != 0);
 347:	83 c4 10             	add    $0x10,%esp
 34a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 34f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 358:	89 d0                	mov    %edx,%eax
 35a:	f0 87 05 6c 0c 00 00 	lock xchg %eax,0xc6c
 361:	85 c0                	test   %eax,%eax
 363:	75 f3                	jne    358 <thread_join+0x28>
    __sync_synchronize();
 365:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 36a:	83 ec 0c             	sub    $0xc,%esp
 36d:	ff 75 f4             	push   -0xc(%ebp)
 370:	e8 9b 03 00 00       	call   710 <free>
   __sync_synchronize();
 375:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 37a:	c7 05 6c 0c 00 00 00 	movl   $0x0,0xc6c
 381:	00 00 00 
}
 384:	89 d8                	mov    %ebx,%eax
 386:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 389:	c9                   	leave  
 38a:	c3                   	ret    
 38b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop

00000390 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 390:	c7 05 70 0c 00 00 00 	movl   $0x0,0xc70
 397:	00 00 00 
 39a:	c7 05 6c 0c 00 00 00 	movl   $0x0,0xc6c
 3a1:	00 00 00 
}
 3a4:	c3                   	ret    
 3a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003b0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 3b0:	55                   	push   %ebp
 3b1:	b9 01 00 00 00       	mov    $0x1,%ecx
 3b6:	89 e5                	mov    %esp,%ebp
 3b8:	8b 55 08             	mov    0x8(%ebp),%edx
 3bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3bf:	90                   	nop
 3c0:	89 c8                	mov    %ecx,%eax
 3c2:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 3c5:	85 c0                	test   %eax,%eax
 3c7:	75 f7                	jne    3c0 <lock_acquire+0x10>
    __sync_synchronize();
 3c9:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 3ce:	5d                   	pop    %ebp
 3cf:	c3                   	ret    

000003d0 <lock_release>:
void lock_release(lock_t *lock){
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 3d6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 3db:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 3e1:	5d                   	pop    %ebp
 3e2:	c3                   	ret    
 3e3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003f0 <lock_init>:
void lock_init(lock_t *lock) {
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 3f3:	8b 45 08             	mov    0x8(%ebp),%eax
 3f6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 3fc:	5d                   	pop    %ebp
 3fd:	c3                   	ret    

000003fe <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3fe:	b8 01 00 00 00       	mov    $0x1,%eax
 403:	cd 40                	int    $0x40
 405:	c3                   	ret    

00000406 <exit>:
SYSCALL(exit)
 406:	b8 02 00 00 00       	mov    $0x2,%eax
 40b:	cd 40                	int    $0x40
 40d:	c3                   	ret    

0000040e <wait>:
SYSCALL(wait)
 40e:	b8 03 00 00 00       	mov    $0x3,%eax
 413:	cd 40                	int    $0x40
 415:	c3                   	ret    

00000416 <pipe>:
SYSCALL(pipe)
 416:	b8 04 00 00 00       	mov    $0x4,%eax
 41b:	cd 40                	int    $0x40
 41d:	c3                   	ret    

0000041e <read>:
SYSCALL(read)
 41e:	b8 05 00 00 00       	mov    $0x5,%eax
 423:	cd 40                	int    $0x40
 425:	c3                   	ret    

00000426 <write>:
SYSCALL(write)
 426:	b8 10 00 00 00       	mov    $0x10,%eax
 42b:	cd 40                	int    $0x40
 42d:	c3                   	ret    

0000042e <close>:
SYSCALL(close)
 42e:	b8 15 00 00 00       	mov    $0x15,%eax
 433:	cd 40                	int    $0x40
 435:	c3                   	ret    

00000436 <kill>:
SYSCALL(kill)
 436:	b8 06 00 00 00       	mov    $0x6,%eax
 43b:	cd 40                	int    $0x40
 43d:	c3                   	ret    

0000043e <exec>:
SYSCALL(exec)
 43e:	b8 07 00 00 00       	mov    $0x7,%eax
 443:	cd 40                	int    $0x40
 445:	c3                   	ret    

00000446 <open>:
SYSCALL(open)
 446:	b8 0f 00 00 00       	mov    $0xf,%eax
 44b:	cd 40                	int    $0x40
 44d:	c3                   	ret    

0000044e <mknod>:
SYSCALL(mknod)
 44e:	b8 11 00 00 00       	mov    $0x11,%eax
 453:	cd 40                	int    $0x40
 455:	c3                   	ret    

00000456 <unlink>:
SYSCALL(unlink)
 456:	b8 12 00 00 00       	mov    $0x12,%eax
 45b:	cd 40                	int    $0x40
 45d:	c3                   	ret    

0000045e <fstat>:
SYSCALL(fstat)
 45e:	b8 08 00 00 00       	mov    $0x8,%eax
 463:	cd 40                	int    $0x40
 465:	c3                   	ret    

00000466 <link>:
SYSCALL(link)
 466:	b8 13 00 00 00       	mov    $0x13,%eax
 46b:	cd 40                	int    $0x40
 46d:	c3                   	ret    

0000046e <mkdir>:
SYSCALL(mkdir)
 46e:	b8 14 00 00 00       	mov    $0x14,%eax
 473:	cd 40                	int    $0x40
 475:	c3                   	ret    

00000476 <chdir>:
SYSCALL(chdir)
 476:	b8 09 00 00 00       	mov    $0x9,%eax
 47b:	cd 40                	int    $0x40
 47d:	c3                   	ret    

0000047e <dup>:
SYSCALL(dup)
 47e:	b8 0a 00 00 00       	mov    $0xa,%eax
 483:	cd 40                	int    $0x40
 485:	c3                   	ret    

00000486 <getpid>:
SYSCALL(getpid)
 486:	b8 0b 00 00 00       	mov    $0xb,%eax
 48b:	cd 40                	int    $0x40
 48d:	c3                   	ret    

0000048e <sbrk>:
SYSCALL(sbrk)
 48e:	b8 0c 00 00 00       	mov    $0xc,%eax
 493:	cd 40                	int    $0x40
 495:	c3                   	ret    

00000496 <sleep>:
SYSCALL(sleep)
 496:	b8 0d 00 00 00       	mov    $0xd,%eax
 49b:	cd 40                	int    $0x40
 49d:	c3                   	ret    

0000049e <uptime>:
SYSCALL(uptime)
 49e:	b8 0e 00 00 00       	mov    $0xe,%eax
 4a3:	cd 40                	int    $0x40
 4a5:	c3                   	ret    

000004a6 <clone>:
SYSCALL(clone)
 4a6:	b8 16 00 00 00       	mov    $0x16,%eax
 4ab:	cd 40                	int    $0x40
 4ad:	c3                   	ret    

000004ae <join>:
SYSCALL(join)
 4ae:	b8 17 00 00 00       	mov    $0x17,%eax
 4b3:	cd 40                	int    $0x40
 4b5:	c3                   	ret    
 4b6:	66 90                	xchg   %ax,%ax
 4b8:	66 90                	xchg   %ax,%ax
 4ba:	66 90                	xchg   %ax,%ax
 4bc:	66 90                	xchg   %ax,%ax
 4be:	66 90                	xchg   %ax,%ax

000004c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
 4c4:	56                   	push   %esi
 4c5:	53                   	push   %ebx
 4c6:	83 ec 3c             	sub    $0x3c,%esp
 4c9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 4cc:	89 d1                	mov    %edx,%ecx
{
 4ce:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 4d1:	85 d2                	test   %edx,%edx
 4d3:	0f 89 7f 00 00 00    	jns    558 <printint+0x98>
 4d9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 4dd:	74 79                	je     558 <printint+0x98>
    neg = 1;
 4df:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 4e6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 4e8:	31 db                	xor    %ebx,%ebx
 4ea:	8d 75 d7             	lea    -0x29(%ebp),%esi
 4ed:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 4f0:	89 c8                	mov    %ecx,%eax
 4f2:	31 d2                	xor    %edx,%edx
 4f4:	89 cf                	mov    %ecx,%edi
 4f6:	f7 75 c4             	divl   -0x3c(%ebp)
 4f9:	0f b6 92 00 09 00 00 	movzbl 0x900(%edx),%edx
 500:	89 45 c0             	mov    %eax,-0x40(%ebp)
 503:	89 d8                	mov    %ebx,%eax
 505:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 508:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 50b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 50e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 511:	76 dd                	jbe    4f0 <printint+0x30>
  if(neg)
 513:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 516:	85 c9                	test   %ecx,%ecx
 518:	74 0c                	je     526 <printint+0x66>
    buf[i++] = '-';
 51a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 51f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 521:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 526:	8b 7d b8             	mov    -0x48(%ebp),%edi
 529:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 52d:	eb 07                	jmp    536 <printint+0x76>
 52f:	90                   	nop
    putc(fd, buf[i]);
 530:	0f b6 13             	movzbl (%ebx),%edx
 533:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 536:	83 ec 04             	sub    $0x4,%esp
 539:	88 55 d7             	mov    %dl,-0x29(%ebp)
 53c:	6a 01                	push   $0x1
 53e:	56                   	push   %esi
 53f:	57                   	push   %edi
 540:	e8 e1 fe ff ff       	call   426 <write>
  while(--i >= 0)
 545:	83 c4 10             	add    $0x10,%esp
 548:	39 de                	cmp    %ebx,%esi
 54a:	75 e4                	jne    530 <printint+0x70>
}
 54c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 54f:	5b                   	pop    %ebx
 550:	5e                   	pop    %esi
 551:	5f                   	pop    %edi
 552:	5d                   	pop    %ebp
 553:	c3                   	ret    
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 558:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 55f:	eb 87                	jmp    4e8 <printint+0x28>
 561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56f:	90                   	nop

00000570 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	57                   	push   %edi
 574:	56                   	push   %esi
 575:	53                   	push   %ebx
 576:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 579:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 57c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 57f:	0f b6 13             	movzbl (%ebx),%edx
 582:	84 d2                	test   %dl,%dl
 584:	74 6a                	je     5f0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 586:	8d 45 10             	lea    0x10(%ebp),%eax
 589:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 58c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 58f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 591:	89 45 d0             	mov    %eax,-0x30(%ebp)
 594:	eb 36                	jmp    5cc <printf+0x5c>
 596:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59d:	8d 76 00             	lea    0x0(%esi),%esi
 5a0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 5a3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 5a8:	83 f8 25             	cmp    $0x25,%eax
 5ab:	74 15                	je     5c2 <printf+0x52>
  write(fd, &c, 1);
 5ad:	83 ec 04             	sub    $0x4,%esp
 5b0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 5b3:	6a 01                	push   $0x1
 5b5:	57                   	push   %edi
 5b6:	56                   	push   %esi
 5b7:	e8 6a fe ff ff       	call   426 <write>
 5bc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 5bf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 5c2:	0f b6 13             	movzbl (%ebx),%edx
 5c5:	83 c3 01             	add    $0x1,%ebx
 5c8:	84 d2                	test   %dl,%dl
 5ca:	74 24                	je     5f0 <printf+0x80>
    c = fmt[i] & 0xff;
 5cc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 5cf:	85 c9                	test   %ecx,%ecx
 5d1:	74 cd                	je     5a0 <printf+0x30>
      }
    } else if(state == '%'){
 5d3:	83 f9 25             	cmp    $0x25,%ecx
 5d6:	75 ea                	jne    5c2 <printf+0x52>
      if(c == 'd'){
 5d8:	83 f8 25             	cmp    $0x25,%eax
 5db:	0f 84 07 01 00 00    	je     6e8 <printf+0x178>
 5e1:	83 e8 63             	sub    $0x63,%eax
 5e4:	83 f8 15             	cmp    $0x15,%eax
 5e7:	77 17                	ja     600 <printf+0x90>
 5e9:	ff 24 85 a8 08 00 00 	jmp    *0x8a8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5f3:	5b                   	pop    %ebx
 5f4:	5e                   	pop    %esi
 5f5:	5f                   	pop    %edi
 5f6:	5d                   	pop    %ebp
 5f7:	c3                   	ret    
 5f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ff:	90                   	nop
  write(fd, &c, 1);
 600:	83 ec 04             	sub    $0x4,%esp
 603:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 606:	6a 01                	push   $0x1
 608:	57                   	push   %edi
 609:	56                   	push   %esi
 60a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 60e:	e8 13 fe ff ff       	call   426 <write>
        putc(fd, c);
 613:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 617:	83 c4 0c             	add    $0xc,%esp
 61a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 61d:	6a 01                	push   $0x1
 61f:	57                   	push   %edi
 620:	56                   	push   %esi
 621:	e8 00 fe ff ff       	call   426 <write>
        putc(fd, c);
 626:	83 c4 10             	add    $0x10,%esp
      state = 0;
 629:	31 c9                	xor    %ecx,%ecx
 62b:	eb 95                	jmp    5c2 <printf+0x52>
 62d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 630:	83 ec 0c             	sub    $0xc,%esp
 633:	b9 10 00 00 00       	mov    $0x10,%ecx
 638:	6a 00                	push   $0x0
 63a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 63d:	8b 10                	mov    (%eax),%edx
 63f:	89 f0                	mov    %esi,%eax
 641:	e8 7a fe ff ff       	call   4c0 <printint>
        ap++;
 646:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 64a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 64d:	31 c9                	xor    %ecx,%ecx
 64f:	e9 6e ff ff ff       	jmp    5c2 <printf+0x52>
 654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 658:	8b 45 d0             	mov    -0x30(%ebp),%eax
 65b:	8b 10                	mov    (%eax),%edx
        ap++;
 65d:	83 c0 04             	add    $0x4,%eax
 660:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 663:	85 d2                	test   %edx,%edx
 665:	0f 84 8d 00 00 00    	je     6f8 <printf+0x188>
        while(*s != 0){
 66b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 66e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 670:	84 c0                	test   %al,%al
 672:	0f 84 4a ff ff ff    	je     5c2 <printf+0x52>
 678:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 67b:	89 d3                	mov    %edx,%ebx
 67d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 680:	83 ec 04             	sub    $0x4,%esp
          s++;
 683:	83 c3 01             	add    $0x1,%ebx
 686:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 689:	6a 01                	push   $0x1
 68b:	57                   	push   %edi
 68c:	56                   	push   %esi
 68d:	e8 94 fd ff ff       	call   426 <write>
        while(*s != 0){
 692:	0f b6 03             	movzbl (%ebx),%eax
 695:	83 c4 10             	add    $0x10,%esp
 698:	84 c0                	test   %al,%al
 69a:	75 e4                	jne    680 <printf+0x110>
      state = 0;
 69c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 69f:	31 c9                	xor    %ecx,%ecx
 6a1:	e9 1c ff ff ff       	jmp    5c2 <printf+0x52>
 6a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 6b0:	83 ec 0c             	sub    $0xc,%esp
 6b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6b8:	6a 01                	push   $0x1
 6ba:	e9 7b ff ff ff       	jmp    63a <printf+0xca>
 6bf:	90                   	nop
        putc(fd, *ap);
 6c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 6c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 6c6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 6c8:	6a 01                	push   $0x1
 6ca:	57                   	push   %edi
 6cb:	56                   	push   %esi
        putc(fd, *ap);
 6cc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 6cf:	e8 52 fd ff ff       	call   426 <write>
        ap++;
 6d4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6d8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6db:	31 c9                	xor    %ecx,%ecx
 6dd:	e9 e0 fe ff ff       	jmp    5c2 <printf+0x52>
 6e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 6e8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 6eb:	83 ec 04             	sub    $0x4,%esp
 6ee:	e9 2a ff ff ff       	jmp    61d <printf+0xad>
 6f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6f7:	90                   	nop
          s = "(null)";
 6f8:	ba a1 08 00 00       	mov    $0x8a1,%edx
        while(*s != 0){
 6fd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 700:	b8 28 00 00 00       	mov    $0x28,%eax
 705:	89 d3                	mov    %edx,%ebx
 707:	e9 74 ff ff ff       	jmp    680 <printf+0x110>
 70c:	66 90                	xchg   %ax,%ax
 70e:	66 90                	xchg   %ax,%ax

00000710 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 710:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 711:	a1 74 0c 00 00       	mov    0xc74,%eax
{
 716:	89 e5                	mov    %esp,%ebp
 718:	57                   	push   %edi
 719:	56                   	push   %esi
 71a:	53                   	push   %ebx
 71b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 71e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 728:	89 c2                	mov    %eax,%edx
 72a:	8b 00                	mov    (%eax),%eax
 72c:	39 ca                	cmp    %ecx,%edx
 72e:	73 30                	jae    760 <free+0x50>
 730:	39 c1                	cmp    %eax,%ecx
 732:	72 04                	jb     738 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 734:	39 c2                	cmp    %eax,%edx
 736:	72 f0                	jb     728 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 738:	8b 73 fc             	mov    -0x4(%ebx),%esi
 73b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 73e:	39 f8                	cmp    %edi,%eax
 740:	74 30                	je     772 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 742:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 745:	8b 42 04             	mov    0x4(%edx),%eax
 748:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 74b:	39 f1                	cmp    %esi,%ecx
 74d:	74 3a                	je     789 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 74f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 751:	5b                   	pop    %ebx
  freep = p;
 752:	89 15 74 0c 00 00    	mov    %edx,0xc74
}
 758:	5e                   	pop    %esi
 759:	5f                   	pop    %edi
 75a:	5d                   	pop    %ebp
 75b:	c3                   	ret    
 75c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 760:	39 c2                	cmp    %eax,%edx
 762:	72 c4                	jb     728 <free+0x18>
 764:	39 c1                	cmp    %eax,%ecx
 766:	73 c0                	jae    728 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 768:	8b 73 fc             	mov    -0x4(%ebx),%esi
 76b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 76e:	39 f8                	cmp    %edi,%eax
 770:	75 d0                	jne    742 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 772:	03 70 04             	add    0x4(%eax),%esi
 775:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 778:	8b 02                	mov    (%edx),%eax
 77a:	8b 00                	mov    (%eax),%eax
 77c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 77f:	8b 42 04             	mov    0x4(%edx),%eax
 782:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 785:	39 f1                	cmp    %esi,%ecx
 787:	75 c6                	jne    74f <free+0x3f>
    p->s.size += bp->s.size;
 789:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 78c:	89 15 74 0c 00 00    	mov    %edx,0xc74
    p->s.size += bp->s.size;
 792:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 795:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 798:	89 0a                	mov    %ecx,(%edx)
}
 79a:	5b                   	pop    %ebx
 79b:	5e                   	pop    %esi
 79c:	5f                   	pop    %edi
 79d:	5d                   	pop    %ebp
 79e:	c3                   	ret    
 79f:	90                   	nop

000007a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	57                   	push   %edi
 7a4:	56                   	push   %esi
 7a5:	53                   	push   %ebx
 7a6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 7ac:	8b 3d 74 0c 00 00    	mov    0xc74,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7b2:	8d 70 07             	lea    0x7(%eax),%esi
 7b5:	c1 ee 03             	shr    $0x3,%esi
 7b8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 7bb:	85 ff                	test   %edi,%edi
 7bd:	0f 84 9d 00 00 00    	je     860 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7c3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 7c5:	8b 4a 04             	mov    0x4(%edx),%ecx
 7c8:	39 f1                	cmp    %esi,%ecx
 7ca:	73 6a                	jae    836 <malloc+0x96>
 7cc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7d1:	39 de                	cmp    %ebx,%esi
 7d3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 7d6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 7dd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 7e0:	eb 17                	jmp    7f9 <malloc+0x59>
 7e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7e8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7ea:	8b 48 04             	mov    0x4(%eax),%ecx
 7ed:	39 f1                	cmp    %esi,%ecx
 7ef:	73 4f                	jae    840 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7f1:	8b 3d 74 0c 00 00    	mov    0xc74,%edi
 7f7:	89 c2                	mov    %eax,%edx
 7f9:	39 d7                	cmp    %edx,%edi
 7fb:	75 eb                	jne    7e8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 7fd:	83 ec 0c             	sub    $0xc,%esp
 800:	ff 75 e4             	push   -0x1c(%ebp)
 803:	e8 86 fc ff ff       	call   48e <sbrk>
  if(p == (char*)-1)
 808:	83 c4 10             	add    $0x10,%esp
 80b:	83 f8 ff             	cmp    $0xffffffff,%eax
 80e:	74 1c                	je     82c <malloc+0x8c>
  hp->s.size = nu;
 810:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 813:	83 ec 0c             	sub    $0xc,%esp
 816:	83 c0 08             	add    $0x8,%eax
 819:	50                   	push   %eax
 81a:	e8 f1 fe ff ff       	call   710 <free>
  return freep;
 81f:	8b 15 74 0c 00 00    	mov    0xc74,%edx
      if((p = morecore(nunits)) == 0)
 825:	83 c4 10             	add    $0x10,%esp
 828:	85 d2                	test   %edx,%edx
 82a:	75 bc                	jne    7e8 <malloc+0x48>
        return 0;
  }
}
 82c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 82f:	31 c0                	xor    %eax,%eax
}
 831:	5b                   	pop    %ebx
 832:	5e                   	pop    %esi
 833:	5f                   	pop    %edi
 834:	5d                   	pop    %ebp
 835:	c3                   	ret    
    if(p->s.size >= nunits){
 836:	89 d0                	mov    %edx,%eax
 838:	89 fa                	mov    %edi,%edx
 83a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 840:	39 ce                	cmp    %ecx,%esi
 842:	74 4c                	je     890 <malloc+0xf0>
        p->s.size -= nunits;
 844:	29 f1                	sub    %esi,%ecx
 846:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 849:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 84c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 84f:	89 15 74 0c 00 00    	mov    %edx,0xc74
}
 855:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 858:	83 c0 08             	add    $0x8,%eax
}
 85b:	5b                   	pop    %ebx
 85c:	5e                   	pop    %esi
 85d:	5f                   	pop    %edi
 85e:	5d                   	pop    %ebp
 85f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 860:	c7 05 74 0c 00 00 78 	movl   $0xc78,0xc74
 867:	0c 00 00 
    base.s.size = 0;
 86a:	bf 78 0c 00 00       	mov    $0xc78,%edi
    base.s.ptr = freep = prevp = &base;
 86f:	c7 05 78 0c 00 00 78 	movl   $0xc78,0xc78
 876:	0c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 879:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 87b:	c7 05 7c 0c 00 00 00 	movl   $0x0,0xc7c
 882:	00 00 00 
    if(p->s.size >= nunits){
 885:	e9 42 ff ff ff       	jmp    7cc <malloc+0x2c>
 88a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 890:	8b 08                	mov    (%eax),%ecx
 892:	89 0a                	mov    %ecx,(%edx)
 894:	eb b9                	jmp    84f <malloc+0xaf>
