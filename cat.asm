
_cat:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
}

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
   f:	be 01 00 00 00       	mov    $0x1,%esi
  14:	53                   	push   %ebx
  15:	51                   	push   %ecx
  16:	83 ec 18             	sub    $0x18,%esp
  19:	8b 01                	mov    (%ecx),%eax
  1b:	8b 59 04             	mov    0x4(%ecx),%ebx
  1e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  21:	83 c3 04             	add    $0x4,%ebx
  int fd, i;

  if(argc <= 1){
  24:	83 f8 01             	cmp    $0x1,%eax
  27:	7e 54                	jle    7d <main+0x7d>
  29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    cat(0);
    exit();
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
  30:	83 ec 08             	sub    $0x8,%esp
  33:	6a 00                	push   $0x0
  35:	ff 33                	push   (%ebx)
  37:	e8 f8 04 00 00       	call   534 <open>
  3c:	83 c4 10             	add    $0x10,%esp
  3f:	89 c7                	mov    %eax,%edi
  41:	85 c0                	test   %eax,%eax
  43:	78 24                	js     69 <main+0x69>
      printf(1, "cat: cannot open %s\n", argv[i]);
      exit();
    }
    cat(fd);
  45:	83 ec 0c             	sub    $0xc,%esp
  for(i = 1; i < argc; i++){
  48:	83 c6 01             	add    $0x1,%esi
  4b:	83 c3 04             	add    $0x4,%ebx
    cat(fd);
  4e:	50                   	push   %eax
  4f:	e8 3c 00 00 00       	call   90 <cat>
    close(fd);
  54:	89 3c 24             	mov    %edi,(%esp)
  57:	e8 c0 04 00 00       	call   51c <close>
  for(i = 1; i < argc; i++){
  5c:	83 c4 10             	add    $0x10,%esp
  5f:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
  62:	75 cc                	jne    30 <main+0x30>
  }
  exit();
  64:	e8 8b 04 00 00       	call   4f4 <exit>
      printf(1, "cat: cannot open %s\n", argv[i]);
  69:	50                   	push   %eax
  6a:	ff 33                	push   (%ebx)
  6c:	68 ab 09 00 00       	push   $0x9ab
  71:	6a 01                	push   $0x1
  73:	e8 e8 05 00 00       	call   660 <printf>
      exit();
  78:	e8 77 04 00 00       	call   4f4 <exit>
    cat(0);
  7d:	83 ec 0c             	sub    $0xc,%esp
  80:	6a 00                	push   $0x0
  82:	e8 09 00 00 00       	call   90 <cat>
    exit();
  87:	e8 68 04 00 00       	call   4f4 <exit>
  8c:	66 90                	xchg   %ax,%ax
  8e:	66 90                	xchg   %ax,%ax

00000090 <cat>:
{
  90:	55                   	push   %ebp
  91:	89 e5                	mov    %esp,%ebp
  93:	56                   	push   %esi
  94:	8b 75 08             	mov    0x8(%ebp),%esi
  97:	53                   	push   %ebx
  while((n = read(fd, buf, sizeof(buf))) > 0) {
  98:	eb 1d                	jmp    b7 <cat+0x27>
  9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if (write(1, buf, n) != n) {
  a0:	83 ec 04             	sub    $0x4,%esp
  a3:	53                   	push   %ebx
  a4:	68 e0 0d 00 00       	push   $0xde0
  a9:	6a 01                	push   $0x1
  ab:	e8 64 04 00 00       	call   514 <write>
  b0:	83 c4 10             	add    $0x10,%esp
  b3:	39 d8                	cmp    %ebx,%eax
  b5:	75 25                	jne    dc <cat+0x4c>
  while((n = read(fd, buf, sizeof(buf))) > 0) {
  b7:	83 ec 04             	sub    $0x4,%esp
  ba:	68 00 02 00 00       	push   $0x200
  bf:	68 e0 0d 00 00       	push   $0xde0
  c4:	56                   	push   %esi
  c5:	e8 42 04 00 00       	call   50c <read>
  ca:	83 c4 10             	add    $0x10,%esp
  cd:	89 c3                	mov    %eax,%ebx
  cf:	85 c0                	test   %eax,%eax
  d1:	7f cd                	jg     a0 <cat+0x10>
  if(n < 0){
  d3:	75 1b                	jne    f0 <cat+0x60>
}
  d5:	8d 65 f8             	lea    -0x8(%ebp),%esp
  d8:	5b                   	pop    %ebx
  d9:	5e                   	pop    %esi
  da:	5d                   	pop    %ebp
  db:	c3                   	ret    
      printf(1, "cat: write error\n");
  dc:	83 ec 08             	sub    $0x8,%esp
  df:	68 88 09 00 00       	push   $0x988
  e4:	6a 01                	push   $0x1
  e6:	e8 75 05 00 00       	call   660 <printf>
      exit();
  eb:	e8 04 04 00 00       	call   4f4 <exit>
    printf(1, "cat: read error\n");
  f0:	50                   	push   %eax
  f1:	50                   	push   %eax
  f2:	68 9a 09 00 00       	push   $0x99a
  f7:	6a 01                	push   $0x1
  f9:	e8 62 05 00 00       	call   660 <printf>
    exit();
  fe:	e8 f1 03 00 00       	call   4f4 <exit>
 103:	66 90                	xchg   %ax,%ax
 105:	66 90                	xchg   %ax,%ax
 107:	66 90                	xchg   %ax,%ax
 109:	66 90                	xchg   %ax,%ax
 10b:	66 90                	xchg   %ax,%ax
 10d:	66 90                	xchg   %ax,%ax
 10f:	90                   	nop

00000110 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 110:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 111:	31 c0                	xor    %eax,%eax
{
 113:	89 e5                	mov    %esp,%ebp
 115:	53                   	push   %ebx
 116:	8b 4d 08             	mov    0x8(%ebp),%ecx
 119:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 11c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 120:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 124:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 127:	83 c0 01             	add    $0x1,%eax
 12a:	84 d2                	test   %dl,%dl
 12c:	75 f2                	jne    120 <strcpy+0x10>
    ;
  return os;
}
 12e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 131:	89 c8                	mov    %ecx,%eax
 133:	c9                   	leave  
 134:	c3                   	ret    
 135:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 13c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000140 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	53                   	push   %ebx
 144:	8b 55 08             	mov    0x8(%ebp),%edx
 147:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 14a:	0f b6 02             	movzbl (%edx),%eax
 14d:	84 c0                	test   %al,%al
 14f:	75 17                	jne    168 <strcmp+0x28>
 151:	eb 3a                	jmp    18d <strcmp+0x4d>
 153:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 157:	90                   	nop
 158:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 15c:	83 c2 01             	add    $0x1,%edx
 15f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 162:	84 c0                	test   %al,%al
 164:	74 1a                	je     180 <strcmp+0x40>
    p++, q++;
 166:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 168:	0f b6 19             	movzbl (%ecx),%ebx
 16b:	38 c3                	cmp    %al,%bl
 16d:	74 e9                	je     158 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 16f:	29 d8                	sub    %ebx,%eax
}
 171:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 174:	c9                   	leave  
 175:	c3                   	ret    
 176:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 17d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 180:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 184:	31 c0                	xor    %eax,%eax
 186:	29 d8                	sub    %ebx,%eax
}
 188:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 18b:	c9                   	leave  
 18c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 18d:	0f b6 19             	movzbl (%ecx),%ebx
 190:	31 c0                	xor    %eax,%eax
 192:	eb db                	jmp    16f <strcmp+0x2f>
 194:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 19b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 19f:	90                   	nop

000001a0 <strlen>:

uint
strlen(const char *s)
{
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1a6:	80 3a 00             	cmpb   $0x0,(%edx)
 1a9:	74 15                	je     1c0 <strlen+0x20>
 1ab:	31 c0                	xor    %eax,%eax
 1ad:	8d 76 00             	lea    0x0(%esi),%esi
 1b0:	83 c0 01             	add    $0x1,%eax
 1b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1b7:	89 c1                	mov    %eax,%ecx
 1b9:	75 f5                	jne    1b0 <strlen+0x10>
    ;
  return n;
}
 1bb:	89 c8                	mov    %ecx,%eax
 1bd:	5d                   	pop    %ebp
 1be:	c3                   	ret    
 1bf:	90                   	nop
  for(n = 0; s[n]; n++)
 1c0:	31 c9                	xor    %ecx,%ecx
}
 1c2:	5d                   	pop    %ebp
 1c3:	89 c8                	mov    %ecx,%eax
 1c5:	c3                   	ret    
 1c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1cd:	8d 76 00             	lea    0x0(%esi),%esi

000001d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1da:	8b 45 0c             	mov    0xc(%ebp),%eax
 1dd:	89 d7                	mov    %edx,%edi
 1df:	fc                   	cld    
 1e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 1e5:	89 d0                	mov    %edx,%eax
 1e7:	c9                   	leave  
 1e8:	c3                   	ret    
 1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001f0 <strchr>:

char*
strchr(const char *s, char c)
{
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	8b 45 08             	mov    0x8(%ebp),%eax
 1f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 1fa:	0f b6 10             	movzbl (%eax),%edx
 1fd:	84 d2                	test   %dl,%dl
 1ff:	75 12                	jne    213 <strchr+0x23>
 201:	eb 1d                	jmp    220 <strchr+0x30>
 203:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 207:	90                   	nop
 208:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 20c:	83 c0 01             	add    $0x1,%eax
 20f:	84 d2                	test   %dl,%dl
 211:	74 0d                	je     220 <strchr+0x30>
    if(*s == c)
 213:	38 d1                	cmp    %dl,%cl
 215:	75 f1                	jne    208 <strchr+0x18>
      return (char*)s;
  return 0;
}
 217:	5d                   	pop    %ebp
 218:	c3                   	ret    
 219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 220:	31 c0                	xor    %eax,%eax
}
 222:	5d                   	pop    %ebp
 223:	c3                   	ret    
 224:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 22f:	90                   	nop

00000230 <gets>:

char*
gets(char *buf, int max)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	57                   	push   %edi
 234:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 235:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 238:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 239:	31 db                	xor    %ebx,%ebx
{
 23b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 23e:	eb 27                	jmp    267 <gets+0x37>
    cc = read(0, &c, 1);
 240:	83 ec 04             	sub    $0x4,%esp
 243:	6a 01                	push   $0x1
 245:	57                   	push   %edi
 246:	6a 00                	push   $0x0
 248:	e8 bf 02 00 00       	call   50c <read>
    if(cc < 1)
 24d:	83 c4 10             	add    $0x10,%esp
 250:	85 c0                	test   %eax,%eax
 252:	7e 1d                	jle    271 <gets+0x41>
      break;
    buf[i++] = c;
 254:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 258:	8b 55 08             	mov    0x8(%ebp),%edx
 25b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 25f:	3c 0a                	cmp    $0xa,%al
 261:	74 1d                	je     280 <gets+0x50>
 263:	3c 0d                	cmp    $0xd,%al
 265:	74 19                	je     280 <gets+0x50>
  for(i=0; i+1 < max; ){
 267:	89 de                	mov    %ebx,%esi
 269:	83 c3 01             	add    $0x1,%ebx
 26c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 26f:	7c cf                	jl     240 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 271:	8b 45 08             	mov    0x8(%ebp),%eax
 274:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 278:	8d 65 f4             	lea    -0xc(%ebp),%esp
 27b:	5b                   	pop    %ebx
 27c:	5e                   	pop    %esi
 27d:	5f                   	pop    %edi
 27e:	5d                   	pop    %ebp
 27f:	c3                   	ret    
  buf[i] = '\0';
 280:	8b 45 08             	mov    0x8(%ebp),%eax
 283:	89 de                	mov    %ebx,%esi
 285:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 289:	8d 65 f4             	lea    -0xc(%ebp),%esp
 28c:	5b                   	pop    %ebx
 28d:	5e                   	pop    %esi
 28e:	5f                   	pop    %edi
 28f:	5d                   	pop    %ebp
 290:	c3                   	ret    
 291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 298:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29f:	90                   	nop

000002a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	56                   	push   %esi
 2a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2a5:	83 ec 08             	sub    $0x8,%esp
 2a8:	6a 00                	push   $0x0
 2aa:	ff 75 08             	push   0x8(%ebp)
 2ad:	e8 82 02 00 00       	call   534 <open>
  if(fd < 0)
 2b2:	83 c4 10             	add    $0x10,%esp
 2b5:	85 c0                	test   %eax,%eax
 2b7:	78 27                	js     2e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2b9:	83 ec 08             	sub    $0x8,%esp
 2bc:	ff 75 0c             	push   0xc(%ebp)
 2bf:	89 c3                	mov    %eax,%ebx
 2c1:	50                   	push   %eax
 2c2:	e8 85 02 00 00       	call   54c <fstat>
  close(fd);
 2c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2ca:	89 c6                	mov    %eax,%esi
  close(fd);
 2cc:	e8 4b 02 00 00       	call   51c <close>
  return r;
 2d1:	83 c4 10             	add    $0x10,%esp
}
 2d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2d7:	89 f0                	mov    %esi,%eax
 2d9:	5b                   	pop    %ebx
 2da:	5e                   	pop    %esi
 2db:	5d                   	pop    %ebp
 2dc:	c3                   	ret    
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 2e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2e5:	eb ed                	jmp    2d4 <stat+0x34>
 2e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ee:	66 90                	xchg   %ax,%ax

000002f0 <atoi>:

int
atoi(const char *s)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 2f7:	0f be 02             	movsbl (%edx),%eax
 2fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 2fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 300:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 305:	77 1e                	ja     325 <atoi+0x35>
 307:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 310:	83 c2 01             	add    $0x1,%edx
 313:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 316:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 31a:	0f be 02             	movsbl (%edx),%eax
 31d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 320:	80 fb 09             	cmp    $0x9,%bl
 323:	76 eb                	jbe    310 <atoi+0x20>
  return n;
}
 325:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 328:	89 c8                	mov    %ecx,%eax
 32a:	c9                   	leave  
 32b:	c3                   	ret    
 32c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000330 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	57                   	push   %edi
 334:	8b 45 10             	mov    0x10(%ebp),%eax
 337:	8b 55 08             	mov    0x8(%ebp),%edx
 33a:	56                   	push   %esi
 33b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 33e:	85 c0                	test   %eax,%eax
 340:	7e 13                	jle    355 <memmove+0x25>
 342:	01 d0                	add    %edx,%eax
  dst = vdst;
 344:	89 d7                	mov    %edx,%edi
 346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 350:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 351:	39 f8                	cmp    %edi,%eax
 353:	75 fb                	jne    350 <memmove+0x20>
  return vdst;
}
 355:	5e                   	pop    %esi
 356:	89 d0                	mov    %edx,%eax
 358:	5f                   	pop    %edi
 359:	5d                   	pop    %ebp
 35a:	c3                   	ret    
 35b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 360:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 361:	b8 01 00 00 00       	mov    $0x1,%eax
 366:	89 e5                	mov    %esp,%ebp
 368:	53                   	push   %ebx
 369:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 36c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 373:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 37a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 37f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 382:	39 c2                	cmp    %eax,%edx
 384:	74 24                	je     3aa <thread_create+0x4a>
 386:	89 c3                	mov    %eax,%ebx
 388:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 390:	83 ec 04             	sub    $0x4,%esp
 393:	52                   	push   %edx
 394:	68 c0 09 00 00       	push   $0x9c0
 399:	6a 01                	push   $0x1
 39b:	e8 c0 02 00 00       	call   660 <printf>
  while(lock->turn != myturn){
 3a0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3a3:	83 c4 10             	add    $0x10,%esp
 3a6:	39 d3                	cmp    %edx,%ebx
 3a8:	75 e6                	jne    390 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 3aa:	83 ec 0c             	sub    $0xc,%esp
 3ad:	68 00 20 00 00       	push   $0x2000
 3b2:	e8 d9 04 00 00       	call   890 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 3b7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 3bb:	83 c4 10             	add    $0x10,%esp
 3be:	89 c2                	mov    %eax,%edx
 3c0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 3c6:	74 07                	je     3cf <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 3c8:	29 d0                	sub    %edx,%eax
 3ca:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 3cf:	50                   	push   %eax
 3d0:	ff 75 10             	push   0x10(%ebp)
 3d3:	ff 75 0c             	push   0xc(%ebp)
 3d6:	ff 75 08             	push   0x8(%ebp)
 3d9:	e8 b6 01 00 00       	call   594 <clone>
}
 3de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3e1:	c9                   	leave  
 3e2:	c3                   	ret    
 3e3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003f0 <thread_join>:
int thread_join(){
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	56                   	push   %esi
 3f4:	53                   	push   %ebx
 3f5:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 3f8:	6a 04                	push   $0x4
 3fa:	e8 91 04 00 00       	call   890 <malloc>
 3ff:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 402:	8d 45 ec             	lea    -0x14(%ebp),%eax
 405:	89 04 24             	mov    %eax,(%esp)
 408:	e8 8f 01 00 00       	call   59c <join>
  lock->ticket = 0;
 40d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 414:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 416:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 41d:	b8 01 00 00 00       	mov    $0x1,%eax
 422:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 427:	8b 55 f4             	mov    -0xc(%ebp),%edx
 42a:	83 c4 10             	add    $0x10,%esp
 42d:	39 c2                	cmp    %eax,%edx
 42f:	74 21                	je     452 <thread_join+0x62>
 431:	89 c3                	mov    %eax,%ebx
 433:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 437:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 438:	83 ec 04             	sub    $0x4,%esp
 43b:	52                   	push   %edx
 43c:	68 c0 09 00 00       	push   $0x9c0
 441:	6a 01                	push   $0x1
 443:	e8 18 02 00 00       	call   660 <printf>
  while(lock->turn != myturn){
 448:	8b 55 f4             	mov    -0xc(%ebp),%edx
 44b:	83 c4 10             	add    $0x10,%esp
 44e:	39 d3                	cmp    %edx,%ebx
 450:	75 e6                	jne    438 <thread_join+0x48>
	free(stack);
 452:	83 ec 0c             	sub    $0xc,%esp
 455:	ff 75 ec             	push   -0x14(%ebp)
 458:	e8 a3 03 00 00       	call   800 <free>
}
 45d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 460:	89 f0                	mov    %esi,%eax
 462:	5b                   	pop    %ebx
 463:	5e                   	pop    %esi
 464:	5d                   	pop    %ebp
 465:	c3                   	ret    
 466:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46d:	8d 76 00             	lea    0x0(%esi),%esi

00000470 <lock_init>:
void lock_init(lock_t *lock) {
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 476:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 47c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 483:	5d                   	pop    %ebp
 484:	c3                   	ret    
 485:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <lock_acquire>:
void lock_acquire(lock_t *lock){
 490:	55                   	push   %ebp
 491:	b8 01 00 00 00       	mov    $0x1,%eax
 496:	89 e5                	mov    %esp,%ebp
 498:	56                   	push   %esi
 499:	8b 75 08             	mov    0x8(%ebp),%esi
 49c:	53                   	push   %ebx
 49d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 4a1:	8b 56 04             	mov    0x4(%esi),%edx
 4a4:	39 d0                	cmp    %edx,%eax
 4a6:	74 22                	je     4ca <lock_acquire+0x3a>
 4a8:	89 c3                	mov    %eax,%ebx
 4aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 4b0:	83 ec 04             	sub    $0x4,%esp
 4b3:	52                   	push   %edx
 4b4:	68 c0 09 00 00       	push   $0x9c0
 4b9:	6a 01                	push   $0x1
 4bb:	e8 a0 01 00 00       	call   660 <printf>
  while(lock->turn != myturn){
 4c0:	8b 56 04             	mov    0x4(%esi),%edx
 4c3:	83 c4 10             	add    $0x10,%esp
 4c6:	39 da                	cmp    %ebx,%edx
 4c8:	75 e6                	jne    4b0 <lock_acquire+0x20>
}
 4ca:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4cd:	5b                   	pop    %ebx
 4ce:	5e                   	pop    %esi
 4cf:	5d                   	pop    %ebp
 4d0:	c3                   	ret    
 4d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4df:	90                   	nop

000004e0 <lock_release>:
void lock_release(lock_t *lock){
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 4e6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 4ea:	5d                   	pop    %ebp
 4eb:	c3                   	ret    

000004ec <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4ec:	b8 01 00 00 00       	mov    $0x1,%eax
 4f1:	cd 40                	int    $0x40
 4f3:	c3                   	ret    

000004f4 <exit>:
SYSCALL(exit)
 4f4:	b8 02 00 00 00       	mov    $0x2,%eax
 4f9:	cd 40                	int    $0x40
 4fb:	c3                   	ret    

000004fc <wait>:
SYSCALL(wait)
 4fc:	b8 03 00 00 00       	mov    $0x3,%eax
 501:	cd 40                	int    $0x40
 503:	c3                   	ret    

00000504 <pipe>:
SYSCALL(pipe)
 504:	b8 04 00 00 00       	mov    $0x4,%eax
 509:	cd 40                	int    $0x40
 50b:	c3                   	ret    

0000050c <read>:
SYSCALL(read)
 50c:	b8 05 00 00 00       	mov    $0x5,%eax
 511:	cd 40                	int    $0x40
 513:	c3                   	ret    

00000514 <write>:
SYSCALL(write)
 514:	b8 10 00 00 00       	mov    $0x10,%eax
 519:	cd 40                	int    $0x40
 51b:	c3                   	ret    

0000051c <close>:
SYSCALL(close)
 51c:	b8 15 00 00 00       	mov    $0x15,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    

00000524 <kill>:
SYSCALL(kill)
 524:	b8 06 00 00 00       	mov    $0x6,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    

0000052c <exec>:
SYSCALL(exec)
 52c:	b8 07 00 00 00       	mov    $0x7,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    

00000534 <open>:
SYSCALL(open)
 534:	b8 0f 00 00 00       	mov    $0xf,%eax
 539:	cd 40                	int    $0x40
 53b:	c3                   	ret    

0000053c <mknod>:
SYSCALL(mknod)
 53c:	b8 11 00 00 00       	mov    $0x11,%eax
 541:	cd 40                	int    $0x40
 543:	c3                   	ret    

00000544 <unlink>:
SYSCALL(unlink)
 544:	b8 12 00 00 00       	mov    $0x12,%eax
 549:	cd 40                	int    $0x40
 54b:	c3                   	ret    

0000054c <fstat>:
SYSCALL(fstat)
 54c:	b8 08 00 00 00       	mov    $0x8,%eax
 551:	cd 40                	int    $0x40
 553:	c3                   	ret    

00000554 <link>:
SYSCALL(link)
 554:	b8 13 00 00 00       	mov    $0x13,%eax
 559:	cd 40                	int    $0x40
 55b:	c3                   	ret    

0000055c <mkdir>:
SYSCALL(mkdir)
 55c:	b8 14 00 00 00       	mov    $0x14,%eax
 561:	cd 40                	int    $0x40
 563:	c3                   	ret    

00000564 <chdir>:
SYSCALL(chdir)
 564:	b8 09 00 00 00       	mov    $0x9,%eax
 569:	cd 40                	int    $0x40
 56b:	c3                   	ret    

0000056c <dup>:
SYSCALL(dup)
 56c:	b8 0a 00 00 00       	mov    $0xa,%eax
 571:	cd 40                	int    $0x40
 573:	c3                   	ret    

00000574 <getpid>:
SYSCALL(getpid)
 574:	b8 0b 00 00 00       	mov    $0xb,%eax
 579:	cd 40                	int    $0x40
 57b:	c3                   	ret    

0000057c <sbrk>:
SYSCALL(sbrk)
 57c:	b8 0c 00 00 00       	mov    $0xc,%eax
 581:	cd 40                	int    $0x40
 583:	c3                   	ret    

00000584 <sleep>:
SYSCALL(sleep)
 584:	b8 0d 00 00 00       	mov    $0xd,%eax
 589:	cd 40                	int    $0x40
 58b:	c3                   	ret    

0000058c <uptime>:
SYSCALL(uptime)
 58c:	b8 0e 00 00 00       	mov    $0xe,%eax
 591:	cd 40                	int    $0x40
 593:	c3                   	ret    

00000594 <clone>:
SYSCALL(clone)
 594:	b8 16 00 00 00       	mov    $0x16,%eax
 599:	cd 40                	int    $0x40
 59b:	c3                   	ret    

0000059c <join>:
SYSCALL(join)
 59c:	b8 17 00 00 00       	mov    $0x17,%eax
 5a1:	cd 40                	int    $0x40
 5a3:	c3                   	ret    
 5a4:	66 90                	xchg   %ax,%ax
 5a6:	66 90                	xchg   %ax,%ax
 5a8:	66 90                	xchg   %ax,%ax
 5aa:	66 90                	xchg   %ax,%ax
 5ac:	66 90                	xchg   %ax,%ax
 5ae:	66 90                	xchg   %ax,%ax

000005b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
 5b3:	57                   	push   %edi
 5b4:	56                   	push   %esi
 5b5:	53                   	push   %ebx
 5b6:	83 ec 3c             	sub    $0x3c,%esp
 5b9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5bc:	89 d1                	mov    %edx,%ecx
{
 5be:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5c1:	85 d2                	test   %edx,%edx
 5c3:	0f 89 7f 00 00 00    	jns    648 <printint+0x98>
 5c9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5cd:	74 79                	je     648 <printint+0x98>
    neg = 1;
 5cf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5d6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5d8:	31 db                	xor    %ebx,%ebx
 5da:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5dd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 5e0:	89 c8                	mov    %ecx,%eax
 5e2:	31 d2                	xor    %edx,%edx
 5e4:	89 cf                	mov    %ecx,%edi
 5e6:	f7 75 c4             	divl   -0x3c(%ebp)
 5e9:	0f b6 92 34 0a 00 00 	movzbl 0xa34(%edx),%edx
 5f0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5f3:	89 d8                	mov    %ebx,%eax
 5f5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 5f8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 5fb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 5fe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 601:	76 dd                	jbe    5e0 <printint+0x30>
  if(neg)
 603:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 606:	85 c9                	test   %ecx,%ecx
 608:	74 0c                	je     616 <printint+0x66>
    buf[i++] = '-';
 60a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 60f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 611:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 616:	8b 7d b8             	mov    -0x48(%ebp),%edi
 619:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 61d:	eb 07                	jmp    626 <printint+0x76>
 61f:	90                   	nop
    putc(fd, buf[i]);
 620:	0f b6 13             	movzbl (%ebx),%edx
 623:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 626:	83 ec 04             	sub    $0x4,%esp
 629:	88 55 d7             	mov    %dl,-0x29(%ebp)
 62c:	6a 01                	push   $0x1
 62e:	56                   	push   %esi
 62f:	57                   	push   %edi
 630:	e8 df fe ff ff       	call   514 <write>
  while(--i >= 0)
 635:	83 c4 10             	add    $0x10,%esp
 638:	39 de                	cmp    %ebx,%esi
 63a:	75 e4                	jne    620 <printint+0x70>
}
 63c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 63f:	5b                   	pop    %ebx
 640:	5e                   	pop    %esi
 641:	5f                   	pop    %edi
 642:	5d                   	pop    %ebp
 643:	c3                   	ret    
 644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 648:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 64f:	eb 87                	jmp    5d8 <printint+0x28>
 651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop

00000660 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 669:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 66c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 66f:	0f b6 13             	movzbl (%ebx),%edx
 672:	84 d2                	test   %dl,%dl
 674:	74 6a                	je     6e0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 676:	8d 45 10             	lea    0x10(%ebp),%eax
 679:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 67c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 67f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 681:	89 45 d0             	mov    %eax,-0x30(%ebp)
 684:	eb 36                	jmp    6bc <printf+0x5c>
 686:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68d:	8d 76 00             	lea    0x0(%esi),%esi
 690:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 693:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 698:	83 f8 25             	cmp    $0x25,%eax
 69b:	74 15                	je     6b2 <printf+0x52>
  write(fd, &c, 1);
 69d:	83 ec 04             	sub    $0x4,%esp
 6a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6a3:	6a 01                	push   $0x1
 6a5:	57                   	push   %edi
 6a6:	56                   	push   %esi
 6a7:	e8 68 fe ff ff       	call   514 <write>
 6ac:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6af:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6b2:	0f b6 13             	movzbl (%ebx),%edx
 6b5:	83 c3 01             	add    $0x1,%ebx
 6b8:	84 d2                	test   %dl,%dl
 6ba:	74 24                	je     6e0 <printf+0x80>
    c = fmt[i] & 0xff;
 6bc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6bf:	85 c9                	test   %ecx,%ecx
 6c1:	74 cd                	je     690 <printf+0x30>
      }
    } else if(state == '%'){
 6c3:	83 f9 25             	cmp    $0x25,%ecx
 6c6:	75 ea                	jne    6b2 <printf+0x52>
      if(c == 'd'){
 6c8:	83 f8 25             	cmp    $0x25,%eax
 6cb:	0f 84 07 01 00 00    	je     7d8 <printf+0x178>
 6d1:	83 e8 63             	sub    $0x63,%eax
 6d4:	83 f8 15             	cmp    $0x15,%eax
 6d7:	77 17                	ja     6f0 <printf+0x90>
 6d9:	ff 24 85 dc 09 00 00 	jmp    *0x9dc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6e3:	5b                   	pop    %ebx
 6e4:	5e                   	pop    %esi
 6e5:	5f                   	pop    %edi
 6e6:	5d                   	pop    %ebp
 6e7:	c3                   	ret    
 6e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ef:	90                   	nop
  write(fd, &c, 1);
 6f0:	83 ec 04             	sub    $0x4,%esp
 6f3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 6f6:	6a 01                	push   $0x1
 6f8:	57                   	push   %edi
 6f9:	56                   	push   %esi
 6fa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6fe:	e8 11 fe ff ff       	call   514 <write>
        putc(fd, c);
 703:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 707:	83 c4 0c             	add    $0xc,%esp
 70a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 70d:	6a 01                	push   $0x1
 70f:	57                   	push   %edi
 710:	56                   	push   %esi
 711:	e8 fe fd ff ff       	call   514 <write>
        putc(fd, c);
 716:	83 c4 10             	add    $0x10,%esp
      state = 0;
 719:	31 c9                	xor    %ecx,%ecx
 71b:	eb 95                	jmp    6b2 <printf+0x52>
 71d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 720:	83 ec 0c             	sub    $0xc,%esp
 723:	b9 10 00 00 00       	mov    $0x10,%ecx
 728:	6a 00                	push   $0x0
 72a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 72d:	8b 10                	mov    (%eax),%edx
 72f:	89 f0                	mov    %esi,%eax
 731:	e8 7a fe ff ff       	call   5b0 <printint>
        ap++;
 736:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 73a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 73d:	31 c9                	xor    %ecx,%ecx
 73f:	e9 6e ff ff ff       	jmp    6b2 <printf+0x52>
 744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 748:	8b 45 d0             	mov    -0x30(%ebp),%eax
 74b:	8b 10                	mov    (%eax),%edx
        ap++;
 74d:	83 c0 04             	add    $0x4,%eax
 750:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 753:	85 d2                	test   %edx,%edx
 755:	0f 84 8d 00 00 00    	je     7e8 <printf+0x188>
        while(*s != 0){
 75b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 75e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 760:	84 c0                	test   %al,%al
 762:	0f 84 4a ff ff ff    	je     6b2 <printf+0x52>
 768:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 76b:	89 d3                	mov    %edx,%ebx
 76d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 770:	83 ec 04             	sub    $0x4,%esp
          s++;
 773:	83 c3 01             	add    $0x1,%ebx
 776:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 779:	6a 01                	push   $0x1
 77b:	57                   	push   %edi
 77c:	56                   	push   %esi
 77d:	e8 92 fd ff ff       	call   514 <write>
        while(*s != 0){
 782:	0f b6 03             	movzbl (%ebx),%eax
 785:	83 c4 10             	add    $0x10,%esp
 788:	84 c0                	test   %al,%al
 78a:	75 e4                	jne    770 <printf+0x110>
      state = 0;
 78c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 78f:	31 c9                	xor    %ecx,%ecx
 791:	e9 1c ff ff ff       	jmp    6b2 <printf+0x52>
 796:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 79d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7a0:	83 ec 0c             	sub    $0xc,%esp
 7a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7a8:	6a 01                	push   $0x1
 7aa:	e9 7b ff ff ff       	jmp    72a <printf+0xca>
 7af:	90                   	nop
        putc(fd, *ap);
 7b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7b6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7b8:	6a 01                	push   $0x1
 7ba:	57                   	push   %edi
 7bb:	56                   	push   %esi
        putc(fd, *ap);
 7bc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7bf:	e8 50 fd ff ff       	call   514 <write>
        ap++;
 7c4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7c8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7cb:	31 c9                	xor    %ecx,%ecx
 7cd:	e9 e0 fe ff ff       	jmp    6b2 <printf+0x52>
 7d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7d8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7db:	83 ec 04             	sub    $0x4,%esp
 7de:	e9 2a ff ff ff       	jmp    70d <printf+0xad>
 7e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7e7:	90                   	nop
          s = "(null)";
 7e8:	ba d4 09 00 00       	mov    $0x9d4,%edx
        while(*s != 0){
 7ed:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7f0:	b8 28 00 00 00       	mov    $0x28,%eax
 7f5:	89 d3                	mov    %edx,%ebx
 7f7:	e9 74 ff ff ff       	jmp    770 <printf+0x110>
 7fc:	66 90                	xchg   %ax,%ax
 7fe:	66 90                	xchg   %ax,%ax

00000800 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 800:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 801:	a1 e0 0f 00 00       	mov    0xfe0,%eax
{
 806:	89 e5                	mov    %esp,%ebp
 808:	57                   	push   %edi
 809:	56                   	push   %esi
 80a:	53                   	push   %ebx
 80b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 80e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 818:	89 c2                	mov    %eax,%edx
 81a:	8b 00                	mov    (%eax),%eax
 81c:	39 ca                	cmp    %ecx,%edx
 81e:	73 30                	jae    850 <free+0x50>
 820:	39 c1                	cmp    %eax,%ecx
 822:	72 04                	jb     828 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 824:	39 c2                	cmp    %eax,%edx
 826:	72 f0                	jb     818 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 828:	8b 73 fc             	mov    -0x4(%ebx),%esi
 82b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 82e:	39 f8                	cmp    %edi,%eax
 830:	74 30                	je     862 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 832:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 835:	8b 42 04             	mov    0x4(%edx),%eax
 838:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 83b:	39 f1                	cmp    %esi,%ecx
 83d:	74 3a                	je     879 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 83f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 841:	5b                   	pop    %ebx
  freep = p;
 842:	89 15 e0 0f 00 00    	mov    %edx,0xfe0
}
 848:	5e                   	pop    %esi
 849:	5f                   	pop    %edi
 84a:	5d                   	pop    %ebp
 84b:	c3                   	ret    
 84c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 850:	39 c2                	cmp    %eax,%edx
 852:	72 c4                	jb     818 <free+0x18>
 854:	39 c1                	cmp    %eax,%ecx
 856:	73 c0                	jae    818 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 858:	8b 73 fc             	mov    -0x4(%ebx),%esi
 85b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 85e:	39 f8                	cmp    %edi,%eax
 860:	75 d0                	jne    832 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 862:	03 70 04             	add    0x4(%eax),%esi
 865:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 868:	8b 02                	mov    (%edx),%eax
 86a:	8b 00                	mov    (%eax),%eax
 86c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 86f:	8b 42 04             	mov    0x4(%edx),%eax
 872:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 875:	39 f1                	cmp    %esi,%ecx
 877:	75 c6                	jne    83f <free+0x3f>
    p->s.size += bp->s.size;
 879:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 87c:	89 15 e0 0f 00 00    	mov    %edx,0xfe0
    p->s.size += bp->s.size;
 882:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 885:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 888:	89 0a                	mov    %ecx,(%edx)
}
 88a:	5b                   	pop    %ebx
 88b:	5e                   	pop    %esi
 88c:	5f                   	pop    %edi
 88d:	5d                   	pop    %ebp
 88e:	c3                   	ret    
 88f:	90                   	nop

00000890 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 890:	55                   	push   %ebp
 891:	89 e5                	mov    %esp,%ebp
 893:	57                   	push   %edi
 894:	56                   	push   %esi
 895:	53                   	push   %ebx
 896:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 899:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 89c:	8b 3d e0 0f 00 00    	mov    0xfe0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8a2:	8d 70 07             	lea    0x7(%eax),%esi
 8a5:	c1 ee 03             	shr    $0x3,%esi
 8a8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8ab:	85 ff                	test   %edi,%edi
 8ad:	0f 84 9d 00 00 00    	je     950 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8b3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8b5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8b8:	39 f1                	cmp    %esi,%ecx
 8ba:	73 6a                	jae    926 <malloc+0x96>
 8bc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8c1:	39 de                	cmp    %ebx,%esi
 8c3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8c6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8cd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8d0:	eb 17                	jmp    8e9 <malloc+0x59>
 8d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8da:	8b 48 04             	mov    0x4(%eax),%ecx
 8dd:	39 f1                	cmp    %esi,%ecx
 8df:	73 4f                	jae    930 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8e1:	8b 3d e0 0f 00 00    	mov    0xfe0,%edi
 8e7:	89 c2                	mov    %eax,%edx
 8e9:	39 d7                	cmp    %edx,%edi
 8eb:	75 eb                	jne    8d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8ed:	83 ec 0c             	sub    $0xc,%esp
 8f0:	ff 75 e4             	push   -0x1c(%ebp)
 8f3:	e8 84 fc ff ff       	call   57c <sbrk>
  if(p == (char*)-1)
 8f8:	83 c4 10             	add    $0x10,%esp
 8fb:	83 f8 ff             	cmp    $0xffffffff,%eax
 8fe:	74 1c                	je     91c <malloc+0x8c>
  hp->s.size = nu;
 900:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 903:	83 ec 0c             	sub    $0xc,%esp
 906:	83 c0 08             	add    $0x8,%eax
 909:	50                   	push   %eax
 90a:	e8 f1 fe ff ff       	call   800 <free>
  return freep;
 90f:	8b 15 e0 0f 00 00    	mov    0xfe0,%edx
      if((p = morecore(nunits)) == 0)
 915:	83 c4 10             	add    $0x10,%esp
 918:	85 d2                	test   %edx,%edx
 91a:	75 bc                	jne    8d8 <malloc+0x48>
        return 0;
  }
}
 91c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 91f:	31 c0                	xor    %eax,%eax
}
 921:	5b                   	pop    %ebx
 922:	5e                   	pop    %esi
 923:	5f                   	pop    %edi
 924:	5d                   	pop    %ebp
 925:	c3                   	ret    
    if(p->s.size >= nunits){
 926:	89 d0                	mov    %edx,%eax
 928:	89 fa                	mov    %edi,%edx
 92a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 930:	39 ce                	cmp    %ecx,%esi
 932:	74 4c                	je     980 <malloc+0xf0>
        p->s.size -= nunits;
 934:	29 f1                	sub    %esi,%ecx
 936:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 939:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 93c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 93f:	89 15 e0 0f 00 00    	mov    %edx,0xfe0
}
 945:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 948:	83 c0 08             	add    $0x8,%eax
}
 94b:	5b                   	pop    %ebx
 94c:	5e                   	pop    %esi
 94d:	5f                   	pop    %edi
 94e:	5d                   	pop    %ebp
 94f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 950:	c7 05 e0 0f 00 00 e4 	movl   $0xfe4,0xfe0
 957:	0f 00 00 
    base.s.size = 0;
 95a:	bf e4 0f 00 00       	mov    $0xfe4,%edi
    base.s.ptr = freep = prevp = &base;
 95f:	c7 05 e4 0f 00 00 e4 	movl   $0xfe4,0xfe4
 966:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 969:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 96b:	c7 05 e8 0f 00 00 00 	movl   $0x0,0xfe8
 972:	00 00 00 
    if(p->s.size >= nunits){
 975:	e9 42 ff ff ff       	jmp    8bc <malloc+0x2c>
 97a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 980:	8b 08                	mov    (%eax),%ecx
 982:	89 0a                	mov    %ecx,(%edx)
 984:	eb b9                	jmp    93f <malloc+0xaf>
