
_forktest:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "fork test OK\n");
}

int
main(void)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
  forktest();
   6:	e8 35 00 00 00       	call   40 <forktest>
  exit();
   b:	e8 f4 04 00 00       	call   504 <exit>

00000010 <printf>:
{
  10:	55                   	push   %ebp
  11:	89 e5                	mov    %esp,%ebp
  13:	53                   	push   %ebx
  14:	83 ec 10             	sub    $0x10,%esp
  17:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  write(fd, s, strlen(s));
  1a:	53                   	push   %ebx
  1b:	e8 90 01 00 00       	call   1b0 <strlen>
  20:	83 c4 0c             	add    $0xc,%esp
  23:	50                   	push   %eax
  24:	53                   	push   %ebx
  25:	ff 75 08             	push   0x8(%ebp)
  28:	e8 f7 04 00 00       	call   524 <write>
}
  2d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  30:	83 c4 10             	add    $0x10,%esp
  33:	c9                   	leave  
  34:	c3                   	ret    
  35:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000040 <forktest>:
{
  40:	55                   	push   %ebp
  41:	89 e5                	mov    %esp,%ebp
  43:	53                   	push   %ebx
  for(n=0; n<N; n++){
  44:	31 db                	xor    %ebx,%ebx
{
  46:	83 ec 10             	sub    $0x10,%esp
  write(fd, s, strlen(s));
  49:	68 48 07 00 00       	push   $0x748
  4e:	e8 5d 01 00 00       	call   1b0 <strlen>
  53:	83 c4 0c             	add    $0xc,%esp
  56:	50                   	push   %eax
  57:	68 48 07 00 00       	push   $0x748
  5c:	6a 01                	push   $0x1
  5e:	e8 c1 04 00 00       	call   524 <write>
  63:	83 c4 10             	add    $0x10,%esp
  66:	eb 19                	jmp    81 <forktest+0x41>
  68:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  6f:	90                   	nop
    if(pid == 0)
  70:	74 58                	je     ca <forktest+0x8a>
  for(n=0; n<N; n++){
  72:	83 c3 01             	add    $0x1,%ebx
  75:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
  7b:	0f 84 83 00 00 00    	je     104 <forktest+0xc4>
    pid = fork();
  81:	e8 76 04 00 00       	call   4fc <fork>
    if(pid < 0)
  86:	85 c0                	test   %eax,%eax
  88:	79 e6                	jns    70 <forktest+0x30>
  for(; n > 0; n--){
  8a:	85 db                	test   %ebx,%ebx
  8c:	74 10                	je     9e <forktest+0x5e>
  8e:	66 90                	xchg   %ax,%ax
    if(wait() < 0){
  90:	e8 77 04 00 00       	call   50c <wait>
  95:	85 c0                	test   %eax,%eax
  97:	78 36                	js     cf <forktest+0x8f>
  for(; n > 0; n--){
  99:	83 eb 01             	sub    $0x1,%ebx
  9c:	75 f2                	jne    90 <forktest+0x50>
  if(wait() != -1){
  9e:	e8 69 04 00 00       	call   50c <wait>
  a3:	83 f8 ff             	cmp    $0xffffffff,%eax
  a6:	75 49                	jne    f1 <forktest+0xb1>
  write(fd, s, strlen(s));
  a8:	83 ec 0c             	sub    $0xc,%esp
  ab:	68 7a 07 00 00       	push   $0x77a
  b0:	e8 fb 00 00 00       	call   1b0 <strlen>
  b5:	83 c4 0c             	add    $0xc,%esp
  b8:	50                   	push   %eax
  b9:	68 7a 07 00 00       	push   $0x77a
  be:	6a 01                	push   $0x1
  c0:	e8 5f 04 00 00       	call   524 <write>
}
  c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c8:	c9                   	leave  
  c9:	c3                   	ret    
      exit();
  ca:	e8 35 04 00 00       	call   504 <exit>
  write(fd, s, strlen(s));
  cf:	83 ec 0c             	sub    $0xc,%esp
  d2:	68 53 07 00 00       	push   $0x753
  d7:	e8 d4 00 00 00       	call   1b0 <strlen>
  dc:	83 c4 0c             	add    $0xc,%esp
  df:	50                   	push   %eax
  e0:	68 53 07 00 00       	push   $0x753
  e5:	6a 01                	push   $0x1
  e7:	e8 38 04 00 00       	call   524 <write>
      exit();
  ec:	e8 13 04 00 00       	call   504 <exit>
    printf(1, "wait got too many\n");
  f1:	52                   	push   %edx
  f2:	52                   	push   %edx
  f3:	68 67 07 00 00       	push   $0x767
  f8:	6a 01                	push   $0x1
  fa:	e8 11 ff ff ff       	call   10 <printf>
    exit();
  ff:	e8 00 04 00 00       	call   504 <exit>
    printf(1, "fork claimed to work N times!\n", N);
 104:	50                   	push   %eax
 105:	68 e8 03 00 00       	push   $0x3e8
 10a:	68 88 07 00 00       	push   $0x788
 10f:	6a 01                	push   $0x1
 111:	e8 fa fe ff ff       	call   10 <printf>
    exit();
 116:	e8 e9 03 00 00       	call   504 <exit>
 11b:	66 90                	xchg   %ax,%ax
 11d:	66 90                	xchg   %ax,%ax
 11f:	90                   	nop

00000120 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 120:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 121:	31 c0                	xor    %eax,%eax
{
 123:	89 e5                	mov    %esp,%ebp
 125:	53                   	push   %ebx
 126:	8b 4d 08             	mov    0x8(%ebp),%ecx
 129:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 130:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 134:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 137:	83 c0 01             	add    $0x1,%eax
 13a:	84 d2                	test   %dl,%dl
 13c:	75 f2                	jne    130 <strcpy+0x10>
    ;
  return os;
}
 13e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 141:	89 c8                	mov    %ecx,%eax
 143:	c9                   	leave  
 144:	c3                   	ret    
 145:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 14c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000150 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	53                   	push   %ebx
 154:	8b 55 08             	mov    0x8(%ebp),%edx
 157:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 15a:	0f b6 02             	movzbl (%edx),%eax
 15d:	84 c0                	test   %al,%al
 15f:	75 17                	jne    178 <strcmp+0x28>
 161:	eb 3a                	jmp    19d <strcmp+0x4d>
 163:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 167:	90                   	nop
 168:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 16c:	83 c2 01             	add    $0x1,%edx
 16f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 172:	84 c0                	test   %al,%al
 174:	74 1a                	je     190 <strcmp+0x40>
    p++, q++;
 176:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 178:	0f b6 19             	movzbl (%ecx),%ebx
 17b:	38 c3                	cmp    %al,%bl
 17d:	74 e9                	je     168 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 17f:	29 d8                	sub    %ebx,%eax
}
 181:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 184:	c9                   	leave  
 185:	c3                   	ret    
 186:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 18d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 190:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 194:	31 c0                	xor    %eax,%eax
 196:	29 d8                	sub    %ebx,%eax
}
 198:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 19b:	c9                   	leave  
 19c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 19d:	0f b6 19             	movzbl (%ecx),%ebx
 1a0:	31 c0                	xor    %eax,%eax
 1a2:	eb db                	jmp    17f <strcmp+0x2f>
 1a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1af:	90                   	nop

000001b0 <strlen>:

uint
strlen(const char *s)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1b6:	80 3a 00             	cmpb   $0x0,(%edx)
 1b9:	74 15                	je     1d0 <strlen+0x20>
 1bb:	31 c0                	xor    %eax,%eax
 1bd:	8d 76 00             	lea    0x0(%esi),%esi
 1c0:	83 c0 01             	add    $0x1,%eax
 1c3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1c7:	89 c1                	mov    %eax,%ecx
 1c9:	75 f5                	jne    1c0 <strlen+0x10>
    ;
  return n;
}
 1cb:	89 c8                	mov    %ecx,%eax
 1cd:	5d                   	pop    %ebp
 1ce:	c3                   	ret    
 1cf:	90                   	nop
  for(n = 0; s[n]; n++)
 1d0:	31 c9                	xor    %ecx,%ecx
}
 1d2:	5d                   	pop    %ebp
 1d3:	89 c8                	mov    %ecx,%eax
 1d5:	c3                   	ret    
 1d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1dd:	8d 76 00             	lea    0x0(%esi),%esi

000001e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	57                   	push   %edi
 1e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ed:	89 d7                	mov    %edx,%edi
 1ef:	fc                   	cld    
 1f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1f2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 1f5:	89 d0                	mov    %edx,%eax
 1f7:	c9                   	leave  
 1f8:	c3                   	ret    
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000200 <strchr>:

char*
strchr(const char *s, char c)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	8b 45 08             	mov    0x8(%ebp),%eax
 206:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 20a:	0f b6 10             	movzbl (%eax),%edx
 20d:	84 d2                	test   %dl,%dl
 20f:	75 12                	jne    223 <strchr+0x23>
 211:	eb 1d                	jmp    230 <strchr+0x30>
 213:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 217:	90                   	nop
 218:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 21c:	83 c0 01             	add    $0x1,%eax
 21f:	84 d2                	test   %dl,%dl
 221:	74 0d                	je     230 <strchr+0x30>
    if(*s == c)
 223:	38 d1                	cmp    %dl,%cl
 225:	75 f1                	jne    218 <strchr+0x18>
      return (char*)s;
  return 0;
}
 227:	5d                   	pop    %ebp
 228:	c3                   	ret    
 229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 230:	31 c0                	xor    %eax,%eax
}
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 23f:	90                   	nop

00000240 <gets>:

char*
gets(char *buf, int max)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	57                   	push   %edi
 244:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 245:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 248:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 249:	31 db                	xor    %ebx,%ebx
{
 24b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 24e:	eb 27                	jmp    277 <gets+0x37>
    cc = read(0, &c, 1);
 250:	83 ec 04             	sub    $0x4,%esp
 253:	6a 01                	push   $0x1
 255:	57                   	push   %edi
 256:	6a 00                	push   $0x0
 258:	e8 bf 02 00 00       	call   51c <read>
    if(cc < 1)
 25d:	83 c4 10             	add    $0x10,%esp
 260:	85 c0                	test   %eax,%eax
 262:	7e 1d                	jle    281 <gets+0x41>
      break;
    buf[i++] = c;
 264:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 268:	8b 55 08             	mov    0x8(%ebp),%edx
 26b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 26f:	3c 0a                	cmp    $0xa,%al
 271:	74 1d                	je     290 <gets+0x50>
 273:	3c 0d                	cmp    $0xd,%al
 275:	74 19                	je     290 <gets+0x50>
  for(i=0; i+1 < max; ){
 277:	89 de                	mov    %ebx,%esi
 279:	83 c3 01             	add    $0x1,%ebx
 27c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 27f:	7c cf                	jl     250 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 281:	8b 45 08             	mov    0x8(%ebp),%eax
 284:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 288:	8d 65 f4             	lea    -0xc(%ebp),%esp
 28b:	5b                   	pop    %ebx
 28c:	5e                   	pop    %esi
 28d:	5f                   	pop    %edi
 28e:	5d                   	pop    %ebp
 28f:	c3                   	ret    
  buf[i] = '\0';
 290:	8b 45 08             	mov    0x8(%ebp),%eax
 293:	89 de                	mov    %ebx,%esi
 295:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 299:	8d 65 f4             	lea    -0xc(%ebp),%esp
 29c:	5b                   	pop    %ebx
 29d:	5e                   	pop    %esi
 29e:	5f                   	pop    %edi
 29f:	5d                   	pop    %ebp
 2a0:	c3                   	ret    
 2a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2af:	90                   	nop

000002b0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	56                   	push   %esi
 2b4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2b5:	83 ec 08             	sub    $0x8,%esp
 2b8:	6a 00                	push   $0x0
 2ba:	ff 75 08             	push   0x8(%ebp)
 2bd:	e8 82 02 00 00       	call   544 <open>
  if(fd < 0)
 2c2:	83 c4 10             	add    $0x10,%esp
 2c5:	85 c0                	test   %eax,%eax
 2c7:	78 27                	js     2f0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2c9:	83 ec 08             	sub    $0x8,%esp
 2cc:	ff 75 0c             	push   0xc(%ebp)
 2cf:	89 c3                	mov    %eax,%ebx
 2d1:	50                   	push   %eax
 2d2:	e8 85 02 00 00       	call   55c <fstat>
  close(fd);
 2d7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2da:	89 c6                	mov    %eax,%esi
  close(fd);
 2dc:	e8 4b 02 00 00       	call   52c <close>
  return r;
 2e1:	83 c4 10             	add    $0x10,%esp
}
 2e4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2e7:	89 f0                	mov    %esi,%eax
 2e9:	5b                   	pop    %ebx
 2ea:	5e                   	pop    %esi
 2eb:	5d                   	pop    %ebp
 2ec:	c3                   	ret    
 2ed:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 2f0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2f5:	eb ed                	jmp    2e4 <stat+0x34>
 2f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fe:	66 90                	xchg   %ax,%ax

00000300 <atoi>:

int
atoi(const char *s)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	53                   	push   %ebx
 304:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 307:	0f be 02             	movsbl (%edx),%eax
 30a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 30d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 310:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 315:	77 1e                	ja     335 <atoi+0x35>
 317:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 320:	83 c2 01             	add    $0x1,%edx
 323:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 326:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 32a:	0f be 02             	movsbl (%edx),%eax
 32d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 330:	80 fb 09             	cmp    $0x9,%bl
 333:	76 eb                	jbe    320 <atoi+0x20>
  return n;
}
 335:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 338:	89 c8                	mov    %ecx,%eax
 33a:	c9                   	leave  
 33b:	c3                   	ret    
 33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000340 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	57                   	push   %edi
 344:	8b 45 10             	mov    0x10(%ebp),%eax
 347:	8b 55 08             	mov    0x8(%ebp),%edx
 34a:	56                   	push   %esi
 34b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 34e:	85 c0                	test   %eax,%eax
 350:	7e 13                	jle    365 <memmove+0x25>
 352:	01 d0                	add    %edx,%eax
  dst = vdst;
 354:	89 d7                	mov    %edx,%edi
 356:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 360:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 361:	39 f8                	cmp    %edi,%eax
 363:	75 fb                	jne    360 <memmove+0x20>
  return vdst;
}
 365:	5e                   	pop    %esi
 366:	89 d0                	mov    %edx,%eax
 368:	5f                   	pop    %edi
 369:	5d                   	pop    %ebp
 36a:	c3                   	ret    
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 370:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 371:	b8 01 00 00 00       	mov    $0x1,%eax
 376:	89 e5                	mov    %esp,%ebp
 378:	53                   	push   %ebx
 379:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 37c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 383:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 38a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 38f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 392:	39 c2                	cmp    %eax,%edx
 394:	74 24                	je     3ba <thread_create+0x4a>
 396:	89 c3                	mov    %eax,%ebx
 398:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 3a0:	83 ec 04             	sub    $0x4,%esp
 3a3:	52                   	push   %edx
 3a4:	68 a7 07 00 00       	push   $0x7a7
 3a9:	6a 01                	push   $0x1
 3ab:	e8 60 fc ff ff       	call   10 <printf>
  while(lock->turn != myturn){
 3b0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3b3:	83 c4 10             	add    $0x10,%esp
 3b6:	39 d3                	cmp    %edx,%ebx
 3b8:	75 e6                	jne    3a0 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 3ba:	83 ec 0c             	sub    $0xc,%esp
 3bd:	68 00 20 00 00       	push   $0x2000
 3c2:	e8 89 02 00 00       	call   650 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 3c7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 3cb:	83 c4 10             	add    $0x10,%esp
 3ce:	89 c2                	mov    %eax,%edx
 3d0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 3d6:	74 07                	je     3df <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 3d8:	29 d0                	sub    %edx,%eax
 3da:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 3df:	50                   	push   %eax
 3e0:	ff 75 10             	push   0x10(%ebp)
 3e3:	ff 75 0c             	push   0xc(%ebp)
 3e6:	ff 75 08             	push   0x8(%ebp)
 3e9:	e8 b6 01 00 00       	call   5a4 <clone>
}
 3ee:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3f1:	c9                   	leave  
 3f2:	c3                   	ret    
 3f3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000400 <thread_join>:
int thread_join(){
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	56                   	push   %esi
 404:	53                   	push   %ebx
 405:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 408:	6a 04                	push   $0x4
 40a:	e8 41 02 00 00       	call   650 <malloc>
 40f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 412:	8d 45 ec             	lea    -0x14(%ebp),%eax
 415:	89 04 24             	mov    %eax,(%esp)
 418:	e8 8f 01 00 00       	call   5ac <join>
  lock->ticket = 0;
 41d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 424:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 426:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 42d:	b8 01 00 00 00       	mov    $0x1,%eax
 432:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 437:	8b 55 f4             	mov    -0xc(%ebp),%edx
 43a:	83 c4 10             	add    $0x10,%esp
 43d:	39 c2                	cmp    %eax,%edx
 43f:	74 21                	je     462 <thread_join+0x62>
 441:	89 c3                	mov    %eax,%ebx
 443:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 447:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 448:	83 ec 04             	sub    $0x4,%esp
 44b:	52                   	push   %edx
 44c:	68 a7 07 00 00       	push   $0x7a7
 451:	6a 01                	push   $0x1
 453:	e8 b8 fb ff ff       	call   10 <printf>
  while(lock->turn != myturn){
 458:	8b 55 f4             	mov    -0xc(%ebp),%edx
 45b:	83 c4 10             	add    $0x10,%esp
 45e:	39 d3                	cmp    %edx,%ebx
 460:	75 e6                	jne    448 <thread_join+0x48>
	free(stack);
 462:	83 ec 0c             	sub    $0xc,%esp
 465:	ff 75 ec             	push   -0x14(%ebp)
 468:	e8 53 01 00 00       	call   5c0 <free>
}
 46d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 470:	89 f0                	mov    %esi,%eax
 472:	5b                   	pop    %ebx
 473:	5e                   	pop    %esi
 474:	5d                   	pop    %ebp
 475:	c3                   	ret    
 476:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47d:	8d 76 00             	lea    0x0(%esi),%esi

00000480 <lock_init>:
void lock_init(lock_t *lock) {
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 486:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 48c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 493:	5d                   	pop    %ebp
 494:	c3                   	ret    
 495:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004a0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 4a0:	55                   	push   %ebp
 4a1:	b8 01 00 00 00       	mov    $0x1,%eax
 4a6:	89 e5                	mov    %esp,%ebp
 4a8:	56                   	push   %esi
 4a9:	8b 75 08             	mov    0x8(%ebp),%esi
 4ac:	53                   	push   %ebx
 4ad:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 4b1:	8b 56 04             	mov    0x4(%esi),%edx
 4b4:	39 d0                	cmp    %edx,%eax
 4b6:	74 22                	je     4da <lock_acquire+0x3a>
 4b8:	89 c3                	mov    %eax,%ebx
 4ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 4c0:	83 ec 04             	sub    $0x4,%esp
 4c3:	52                   	push   %edx
 4c4:	68 a7 07 00 00       	push   $0x7a7
 4c9:	6a 01                	push   $0x1
 4cb:	e8 40 fb ff ff       	call   10 <printf>
  while(lock->turn != myturn){
 4d0:	8b 56 04             	mov    0x4(%esi),%edx
 4d3:	83 c4 10             	add    $0x10,%esp
 4d6:	39 da                	cmp    %ebx,%edx
 4d8:	75 e6                	jne    4c0 <lock_acquire+0x20>
}
 4da:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4dd:	5b                   	pop    %ebx
 4de:	5e                   	pop    %esi
 4df:	5d                   	pop    %ebp
 4e0:	c3                   	ret    
 4e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop

000004f0 <lock_release>:
void lock_release(lock_t *lock){
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 4f6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 4fa:	5d                   	pop    %ebp
 4fb:	c3                   	ret    

000004fc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4fc:	b8 01 00 00 00       	mov    $0x1,%eax
 501:	cd 40                	int    $0x40
 503:	c3                   	ret    

00000504 <exit>:
SYSCALL(exit)
 504:	b8 02 00 00 00       	mov    $0x2,%eax
 509:	cd 40                	int    $0x40
 50b:	c3                   	ret    

0000050c <wait>:
SYSCALL(wait)
 50c:	b8 03 00 00 00       	mov    $0x3,%eax
 511:	cd 40                	int    $0x40
 513:	c3                   	ret    

00000514 <pipe>:
SYSCALL(pipe)
 514:	b8 04 00 00 00       	mov    $0x4,%eax
 519:	cd 40                	int    $0x40
 51b:	c3                   	ret    

0000051c <read>:
SYSCALL(read)
 51c:	b8 05 00 00 00       	mov    $0x5,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    

00000524 <write>:
SYSCALL(write)
 524:	b8 10 00 00 00       	mov    $0x10,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    

0000052c <close>:
SYSCALL(close)
 52c:	b8 15 00 00 00       	mov    $0x15,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    

00000534 <kill>:
SYSCALL(kill)
 534:	b8 06 00 00 00       	mov    $0x6,%eax
 539:	cd 40                	int    $0x40
 53b:	c3                   	ret    

0000053c <exec>:
SYSCALL(exec)
 53c:	b8 07 00 00 00       	mov    $0x7,%eax
 541:	cd 40                	int    $0x40
 543:	c3                   	ret    

00000544 <open>:
SYSCALL(open)
 544:	b8 0f 00 00 00       	mov    $0xf,%eax
 549:	cd 40                	int    $0x40
 54b:	c3                   	ret    

0000054c <mknod>:
SYSCALL(mknod)
 54c:	b8 11 00 00 00       	mov    $0x11,%eax
 551:	cd 40                	int    $0x40
 553:	c3                   	ret    

00000554 <unlink>:
SYSCALL(unlink)
 554:	b8 12 00 00 00       	mov    $0x12,%eax
 559:	cd 40                	int    $0x40
 55b:	c3                   	ret    

0000055c <fstat>:
SYSCALL(fstat)
 55c:	b8 08 00 00 00       	mov    $0x8,%eax
 561:	cd 40                	int    $0x40
 563:	c3                   	ret    

00000564 <link>:
SYSCALL(link)
 564:	b8 13 00 00 00       	mov    $0x13,%eax
 569:	cd 40                	int    $0x40
 56b:	c3                   	ret    

0000056c <mkdir>:
SYSCALL(mkdir)
 56c:	b8 14 00 00 00       	mov    $0x14,%eax
 571:	cd 40                	int    $0x40
 573:	c3                   	ret    

00000574 <chdir>:
SYSCALL(chdir)
 574:	b8 09 00 00 00       	mov    $0x9,%eax
 579:	cd 40                	int    $0x40
 57b:	c3                   	ret    

0000057c <dup>:
SYSCALL(dup)
 57c:	b8 0a 00 00 00       	mov    $0xa,%eax
 581:	cd 40                	int    $0x40
 583:	c3                   	ret    

00000584 <getpid>:
SYSCALL(getpid)
 584:	b8 0b 00 00 00       	mov    $0xb,%eax
 589:	cd 40                	int    $0x40
 58b:	c3                   	ret    

0000058c <sbrk>:
SYSCALL(sbrk)
 58c:	b8 0c 00 00 00       	mov    $0xc,%eax
 591:	cd 40                	int    $0x40
 593:	c3                   	ret    

00000594 <sleep>:
SYSCALL(sleep)
 594:	b8 0d 00 00 00       	mov    $0xd,%eax
 599:	cd 40                	int    $0x40
 59b:	c3                   	ret    

0000059c <uptime>:
SYSCALL(uptime)
 59c:	b8 0e 00 00 00       	mov    $0xe,%eax
 5a1:	cd 40                	int    $0x40
 5a3:	c3                   	ret    

000005a4 <clone>:
SYSCALL(clone)
 5a4:	b8 16 00 00 00       	mov    $0x16,%eax
 5a9:	cd 40                	int    $0x40
 5ab:	c3                   	ret    

000005ac <join>:
SYSCALL(join)
 5ac:	b8 17 00 00 00       	mov    $0x17,%eax
 5b1:	cd 40                	int    $0x40
 5b3:	c3                   	ret    
 5b4:	66 90                	xchg   %ax,%ax
 5b6:	66 90                	xchg   %ax,%ax
 5b8:	66 90                	xchg   %ax,%ax
 5ba:	66 90                	xchg   %ax,%ax
 5bc:	66 90                	xchg   %ax,%ax
 5be:	66 90                	xchg   %ax,%ax

000005c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 5c0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5c1:	a1 e8 0a 00 00       	mov    0xae8,%eax
{
 5c6:	89 e5                	mov    %esp,%ebp
 5c8:	57                   	push   %edi
 5c9:	56                   	push   %esi
 5ca:	53                   	push   %ebx
 5cb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 5ce:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5d8:	89 c2                	mov    %eax,%edx
 5da:	8b 00                	mov    (%eax),%eax
 5dc:	39 ca                	cmp    %ecx,%edx
 5de:	73 30                	jae    610 <free+0x50>
 5e0:	39 c1                	cmp    %eax,%ecx
 5e2:	72 04                	jb     5e8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5e4:	39 c2                	cmp    %eax,%edx
 5e6:	72 f0                	jb     5d8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 5e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5ee:	39 f8                	cmp    %edi,%eax
 5f0:	74 30                	je     622 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 5f2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 5f5:	8b 42 04             	mov    0x4(%edx),%eax
 5f8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 5fb:	39 f1                	cmp    %esi,%ecx
 5fd:	74 3a                	je     639 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 5ff:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 601:	5b                   	pop    %ebx
  freep = p;
 602:	89 15 e8 0a 00 00    	mov    %edx,0xae8
}
 608:	5e                   	pop    %esi
 609:	5f                   	pop    %edi
 60a:	5d                   	pop    %ebp
 60b:	c3                   	ret    
 60c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 610:	39 c2                	cmp    %eax,%edx
 612:	72 c4                	jb     5d8 <free+0x18>
 614:	39 c1                	cmp    %eax,%ecx
 616:	73 c0                	jae    5d8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 618:	8b 73 fc             	mov    -0x4(%ebx),%esi
 61b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 61e:	39 f8                	cmp    %edi,%eax
 620:	75 d0                	jne    5f2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 622:	03 70 04             	add    0x4(%eax),%esi
 625:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 628:	8b 02                	mov    (%edx),%eax
 62a:	8b 00                	mov    (%eax),%eax
 62c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 62f:	8b 42 04             	mov    0x4(%edx),%eax
 632:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 635:	39 f1                	cmp    %esi,%ecx
 637:	75 c6                	jne    5ff <free+0x3f>
    p->s.size += bp->s.size;
 639:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 63c:	89 15 e8 0a 00 00    	mov    %edx,0xae8
    p->s.size += bp->s.size;
 642:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 645:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 648:	89 0a                	mov    %ecx,(%edx)
}
 64a:	5b                   	pop    %ebx
 64b:	5e                   	pop    %esi
 64c:	5f                   	pop    %edi
 64d:	5d                   	pop    %ebp
 64e:	c3                   	ret    
 64f:	90                   	nop

00000650 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 650:	55                   	push   %ebp
 651:	89 e5                	mov    %esp,%ebp
 653:	57                   	push   %edi
 654:	56                   	push   %esi
 655:	53                   	push   %ebx
 656:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 659:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 65c:	8b 3d e8 0a 00 00    	mov    0xae8,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 662:	8d 70 07             	lea    0x7(%eax),%esi
 665:	c1 ee 03             	shr    $0x3,%esi
 668:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 66b:	85 ff                	test   %edi,%edi
 66d:	0f 84 9d 00 00 00    	je     710 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 673:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 675:	8b 4a 04             	mov    0x4(%edx),%ecx
 678:	39 f1                	cmp    %esi,%ecx
 67a:	73 6a                	jae    6e6 <malloc+0x96>
 67c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 681:	39 de                	cmp    %ebx,%esi
 683:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 686:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 68d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 690:	eb 17                	jmp    6a9 <malloc+0x59>
 692:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 698:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 69a:	8b 48 04             	mov    0x4(%eax),%ecx
 69d:	39 f1                	cmp    %esi,%ecx
 69f:	73 4f                	jae    6f0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 6a1:	8b 3d e8 0a 00 00    	mov    0xae8,%edi
 6a7:	89 c2                	mov    %eax,%edx
 6a9:	39 d7                	cmp    %edx,%edi
 6ab:	75 eb                	jne    698 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 6ad:	83 ec 0c             	sub    $0xc,%esp
 6b0:	ff 75 e4             	push   -0x1c(%ebp)
 6b3:	e8 d4 fe ff ff       	call   58c <sbrk>
  if(p == (char*)-1)
 6b8:	83 c4 10             	add    $0x10,%esp
 6bb:	83 f8 ff             	cmp    $0xffffffff,%eax
 6be:	74 1c                	je     6dc <malloc+0x8c>
  hp->s.size = nu;
 6c0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 6c3:	83 ec 0c             	sub    $0xc,%esp
 6c6:	83 c0 08             	add    $0x8,%eax
 6c9:	50                   	push   %eax
 6ca:	e8 f1 fe ff ff       	call   5c0 <free>
  return freep;
 6cf:	8b 15 e8 0a 00 00    	mov    0xae8,%edx
      if((p = morecore(nunits)) == 0)
 6d5:	83 c4 10             	add    $0x10,%esp
 6d8:	85 d2                	test   %edx,%edx
 6da:	75 bc                	jne    698 <malloc+0x48>
        return 0;
  }
}
 6dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 6df:	31 c0                	xor    %eax,%eax
}
 6e1:	5b                   	pop    %ebx
 6e2:	5e                   	pop    %esi
 6e3:	5f                   	pop    %edi
 6e4:	5d                   	pop    %ebp
 6e5:	c3                   	ret    
    if(p->s.size >= nunits){
 6e6:	89 d0                	mov    %edx,%eax
 6e8:	89 fa                	mov    %edi,%edx
 6ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 6f0:	39 ce                	cmp    %ecx,%esi
 6f2:	74 4c                	je     740 <malloc+0xf0>
        p->s.size -= nunits;
 6f4:	29 f1                	sub    %esi,%ecx
 6f6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 6f9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 6fc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 6ff:	89 15 e8 0a 00 00    	mov    %edx,0xae8
}
 705:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 708:	83 c0 08             	add    $0x8,%eax
}
 70b:	5b                   	pop    %ebx
 70c:	5e                   	pop    %esi
 70d:	5f                   	pop    %edi
 70e:	5d                   	pop    %ebp
 70f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 710:	c7 05 e8 0a 00 00 ec 	movl   $0xaec,0xae8
 717:	0a 00 00 
    base.s.size = 0;
 71a:	bf ec 0a 00 00       	mov    $0xaec,%edi
    base.s.ptr = freep = prevp = &base;
 71f:	c7 05 ec 0a 00 00 ec 	movl   $0xaec,0xaec
 726:	0a 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 729:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 72b:	c7 05 f0 0a 00 00 00 	movl   $0x0,0xaf0
 732:	00 00 00 
    if(p->s.size >= nunits){
 735:	e9 42 ff ff ff       	jmp    67c <malloc+0x2c>
 73a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 740:	8b 08                	mov    (%eax),%ecx
 742:	89 0a                	mov    %ecx,(%edx)
 744:	eb b9                	jmp    6ff <malloc+0xaf>
