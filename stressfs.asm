
_stressfs:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
  int fd, i;
  char path[] = "stressfs0";
   7:	b8 30 00 00 00       	mov    $0x30,%eax
{
   c:	ff 71 fc             	push   -0x4(%ecx)
   f:	55                   	push   %ebp
  10:	89 e5                	mov    %esp,%ebp
  12:	57                   	push   %edi
  13:	56                   	push   %esi
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));
  14:	8d b5 e8 fd ff ff    	lea    -0x218(%ebp),%esi
{
  1a:	53                   	push   %ebx

  for(i = 0; i < 4; i++)
  1b:	31 db                	xor    %ebx,%ebx
{
  1d:	51                   	push   %ecx
  1e:	81 ec 20 02 00 00    	sub    $0x220,%esp
  char path[] = "stressfs0";
  24:	66 89 85 e6 fd ff ff 	mov    %ax,-0x21a(%ebp)
  printf(1, "stressfs starting\n");
  2b:	68 b8 09 00 00       	push   $0x9b8
  30:	6a 01                	push   $0x1
  char path[] = "stressfs0";
  32:	c7 85 de fd ff ff 73 	movl   $0x65727473,-0x222(%ebp)
  39:	74 72 65 
  3c:	c7 85 e2 fd ff ff 73 	movl   $0x73667373,-0x21e(%ebp)
  43:	73 66 73 
  printf(1, "stressfs starting\n");
  46:	e8 45 06 00 00       	call   690 <printf>
  memset(data, 'a', sizeof(data));
  4b:	83 c4 0c             	add    $0xc,%esp
  4e:	68 00 02 00 00       	push   $0x200
  53:	6a 61                	push   $0x61
  55:	56                   	push   %esi
  56:	e8 a5 01 00 00       	call   200 <memset>
  5b:	83 c4 10             	add    $0x10,%esp
    if(fork() > 0)
  5e:	e8 b9 04 00 00       	call   51c <fork>
  63:	85 c0                	test   %eax,%eax
  65:	0f 8f bf 00 00 00    	jg     12a <main+0x12a>
  for(i = 0; i < 4; i++)
  6b:	83 c3 01             	add    $0x1,%ebx
  6e:	83 fb 04             	cmp    $0x4,%ebx
  71:	75 eb                	jne    5e <main+0x5e>
  73:	bf 04 00 00 00       	mov    $0x4,%edi
      break;

  printf(1, "write %d\n", i);
  78:	83 ec 04             	sub    $0x4,%esp
  7b:	53                   	push   %ebx

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  7c:	bb 14 00 00 00       	mov    $0x14,%ebx
  printf(1, "write %d\n", i);
  81:	68 cb 09 00 00       	push   $0x9cb
  86:	6a 01                	push   $0x1
  88:	e8 03 06 00 00       	call   690 <printf>
  path[8] += i;
  8d:	89 f8                	mov    %edi,%eax
  fd = open(path, O_CREATE | O_RDWR);
  8f:	5f                   	pop    %edi
  path[8] += i;
  90:	00 85 e6 fd ff ff    	add    %al,-0x21a(%ebp)
  fd = open(path, O_CREATE | O_RDWR);
  96:	58                   	pop    %eax
  97:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  9d:	68 02 02 00 00       	push   $0x202
  a2:	50                   	push   %eax
  a3:	e8 bc 04 00 00       	call   564 <open>
  a8:	83 c4 10             	add    $0x10,%esp
  ab:	89 c7                	mov    %eax,%edi
  for(i = 0; i < 20; i++)
  ad:	8d 76 00             	lea    0x0(%esi),%esi
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  b0:	83 ec 04             	sub    $0x4,%esp
  b3:	68 00 02 00 00       	push   $0x200
  b8:	56                   	push   %esi
  b9:	57                   	push   %edi
  ba:	e8 85 04 00 00       	call   544 <write>
  for(i = 0; i < 20; i++)
  bf:	83 c4 10             	add    $0x10,%esp
  c2:	83 eb 01             	sub    $0x1,%ebx
  c5:	75 e9                	jne    b0 <main+0xb0>
  close(fd);
  c7:	83 ec 0c             	sub    $0xc,%esp
  ca:	57                   	push   %edi
  cb:	e8 7c 04 00 00       	call   54c <close>

  printf(1, "read\n");
  d0:	58                   	pop    %eax
  d1:	5a                   	pop    %edx
  d2:	68 d5 09 00 00       	push   $0x9d5
  d7:	6a 01                	push   $0x1
  d9:	e8 b2 05 00 00       	call   690 <printf>

  fd = open(path, O_RDONLY);
  de:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  e4:	59                   	pop    %ecx
  e5:	5b                   	pop    %ebx
  e6:	6a 00                	push   $0x0
  e8:	bb 14 00 00 00       	mov    $0x14,%ebx
  ed:	50                   	push   %eax
  ee:	e8 71 04 00 00       	call   564 <open>
  f3:	83 c4 10             	add    $0x10,%esp
  f6:	89 c7                	mov    %eax,%edi
  for (i = 0; i < 20; i++)
  f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  ff:	90                   	nop
    read(fd, data, sizeof(data));
 100:	83 ec 04             	sub    $0x4,%esp
 103:	68 00 02 00 00       	push   $0x200
 108:	56                   	push   %esi
 109:	57                   	push   %edi
 10a:	e8 2d 04 00 00       	call   53c <read>
  for (i = 0; i < 20; i++)
 10f:	83 c4 10             	add    $0x10,%esp
 112:	83 eb 01             	sub    $0x1,%ebx
 115:	75 e9                	jne    100 <main+0x100>
  close(fd);
 117:	83 ec 0c             	sub    $0xc,%esp
 11a:	57                   	push   %edi
 11b:	e8 2c 04 00 00       	call   54c <close>

  wait();
 120:	e8 07 04 00 00       	call   52c <wait>

  exit();
 125:	e8 fa 03 00 00       	call   524 <exit>
  path[8] += i;
 12a:	89 df                	mov    %ebx,%edi
 12c:	e9 47 ff ff ff       	jmp    78 <main+0x78>
 131:	66 90                	xchg   %ax,%ax
 133:	66 90                	xchg   %ax,%ax
 135:	66 90                	xchg   %ax,%ax
 137:	66 90                	xchg   %ax,%ax
 139:	66 90                	xchg   %ax,%ax
 13b:	66 90                	xchg   %ax,%ax
 13d:	66 90                	xchg   %ax,%ax
 13f:	90                   	nop

00000140 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 140:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 141:	31 c0                	xor    %eax,%eax
{
 143:	89 e5                	mov    %esp,%ebp
 145:	53                   	push   %ebx
 146:	8b 4d 08             	mov    0x8(%ebp),%ecx
 149:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 14c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 150:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 154:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 157:	83 c0 01             	add    $0x1,%eax
 15a:	84 d2                	test   %dl,%dl
 15c:	75 f2                	jne    150 <strcpy+0x10>
    ;
  return os;
}
 15e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 161:	89 c8                	mov    %ecx,%eax
 163:	c9                   	leave  
 164:	c3                   	ret    
 165:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 16c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000170 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	53                   	push   %ebx
 174:	8b 55 08             	mov    0x8(%ebp),%edx
 177:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 17a:	0f b6 02             	movzbl (%edx),%eax
 17d:	84 c0                	test   %al,%al
 17f:	75 17                	jne    198 <strcmp+0x28>
 181:	eb 3a                	jmp    1bd <strcmp+0x4d>
 183:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 187:	90                   	nop
 188:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 18c:	83 c2 01             	add    $0x1,%edx
 18f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 192:	84 c0                	test   %al,%al
 194:	74 1a                	je     1b0 <strcmp+0x40>
    p++, q++;
 196:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 198:	0f b6 19             	movzbl (%ecx),%ebx
 19b:	38 c3                	cmp    %al,%bl
 19d:	74 e9                	je     188 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 19f:	29 d8                	sub    %ebx,%eax
}
 1a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1a4:	c9                   	leave  
 1a5:	c3                   	ret    
 1a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1ad:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 1b0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 1b4:	31 c0                	xor    %eax,%eax
 1b6:	29 d8                	sub    %ebx,%eax
}
 1b8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1bb:	c9                   	leave  
 1bc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 1bd:	0f b6 19             	movzbl (%ecx),%ebx
 1c0:	31 c0                	xor    %eax,%eax
 1c2:	eb db                	jmp    19f <strcmp+0x2f>
 1c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1cf:	90                   	nop

000001d0 <strlen>:

uint
strlen(const char *s)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 1d6:	80 3a 00             	cmpb   $0x0,(%edx)
 1d9:	74 15                	je     1f0 <strlen+0x20>
 1db:	31 c0                	xor    %eax,%eax
 1dd:	8d 76 00             	lea    0x0(%esi),%esi
 1e0:	83 c0 01             	add    $0x1,%eax
 1e3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 1e7:	89 c1                	mov    %eax,%ecx
 1e9:	75 f5                	jne    1e0 <strlen+0x10>
    ;
  return n;
}
 1eb:	89 c8                	mov    %ecx,%eax
 1ed:	5d                   	pop    %ebp
 1ee:	c3                   	ret    
 1ef:	90                   	nop
  for(n = 0; s[n]; n++)
 1f0:	31 c9                	xor    %ecx,%ecx
}
 1f2:	5d                   	pop    %ebp
 1f3:	89 c8                	mov    %ecx,%eax
 1f5:	c3                   	ret    
 1f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1fd:	8d 76 00             	lea    0x0(%esi),%esi

00000200 <memset>:

void*
memset(void *dst, int c, uint n)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	57                   	push   %edi
 204:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 207:	8b 4d 10             	mov    0x10(%ebp),%ecx
 20a:	8b 45 0c             	mov    0xc(%ebp),%eax
 20d:	89 d7                	mov    %edx,%edi
 20f:	fc                   	cld    
 210:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 212:	8b 7d fc             	mov    -0x4(%ebp),%edi
 215:	89 d0                	mov    %edx,%eax
 217:	c9                   	leave  
 218:	c3                   	ret    
 219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000220 <strchr>:

char*
strchr(const char *s, char c)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	8b 45 08             	mov    0x8(%ebp),%eax
 226:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 22a:	0f b6 10             	movzbl (%eax),%edx
 22d:	84 d2                	test   %dl,%dl
 22f:	75 12                	jne    243 <strchr+0x23>
 231:	eb 1d                	jmp    250 <strchr+0x30>
 233:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 237:	90                   	nop
 238:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 23c:	83 c0 01             	add    $0x1,%eax
 23f:	84 d2                	test   %dl,%dl
 241:	74 0d                	je     250 <strchr+0x30>
    if(*s == c)
 243:	38 d1                	cmp    %dl,%cl
 245:	75 f1                	jne    238 <strchr+0x18>
      return (char*)s;
  return 0;
}
 247:	5d                   	pop    %ebp
 248:	c3                   	ret    
 249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 250:	31 c0                	xor    %eax,%eax
}
 252:	5d                   	pop    %ebp
 253:	c3                   	ret    
 254:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 25f:	90                   	nop

00000260 <gets>:

char*
gets(char *buf, int max)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 265:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 268:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 269:	31 db                	xor    %ebx,%ebx
{
 26b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 26e:	eb 27                	jmp    297 <gets+0x37>
    cc = read(0, &c, 1);
 270:	83 ec 04             	sub    $0x4,%esp
 273:	6a 01                	push   $0x1
 275:	57                   	push   %edi
 276:	6a 00                	push   $0x0
 278:	e8 bf 02 00 00       	call   53c <read>
    if(cc < 1)
 27d:	83 c4 10             	add    $0x10,%esp
 280:	85 c0                	test   %eax,%eax
 282:	7e 1d                	jle    2a1 <gets+0x41>
      break;
    buf[i++] = c;
 284:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 288:	8b 55 08             	mov    0x8(%ebp),%edx
 28b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 28f:	3c 0a                	cmp    $0xa,%al
 291:	74 1d                	je     2b0 <gets+0x50>
 293:	3c 0d                	cmp    $0xd,%al
 295:	74 19                	je     2b0 <gets+0x50>
  for(i=0; i+1 < max; ){
 297:	89 de                	mov    %ebx,%esi
 299:	83 c3 01             	add    $0x1,%ebx
 29c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 29f:	7c cf                	jl     270 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 2a1:	8b 45 08             	mov    0x8(%ebp),%eax
 2a4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 2a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2ab:	5b                   	pop    %ebx
 2ac:	5e                   	pop    %esi
 2ad:	5f                   	pop    %edi
 2ae:	5d                   	pop    %ebp
 2af:	c3                   	ret    
  buf[i] = '\0';
 2b0:	8b 45 08             	mov    0x8(%ebp),%eax
 2b3:	89 de                	mov    %ebx,%esi
 2b5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 2b9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2bc:	5b                   	pop    %ebx
 2bd:	5e                   	pop    %esi
 2be:	5f                   	pop    %edi
 2bf:	5d                   	pop    %ebp
 2c0:	c3                   	ret    
 2c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2cf:	90                   	nop

000002d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	56                   	push   %esi
 2d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2d5:	83 ec 08             	sub    $0x8,%esp
 2d8:	6a 00                	push   $0x0
 2da:	ff 75 08             	push   0x8(%ebp)
 2dd:	e8 82 02 00 00       	call   564 <open>
  if(fd < 0)
 2e2:	83 c4 10             	add    $0x10,%esp
 2e5:	85 c0                	test   %eax,%eax
 2e7:	78 27                	js     310 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 2e9:	83 ec 08             	sub    $0x8,%esp
 2ec:	ff 75 0c             	push   0xc(%ebp)
 2ef:	89 c3                	mov    %eax,%ebx
 2f1:	50                   	push   %eax
 2f2:	e8 85 02 00 00       	call   57c <fstat>
  close(fd);
 2f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2fa:	89 c6                	mov    %eax,%esi
  close(fd);
 2fc:	e8 4b 02 00 00       	call   54c <close>
  return r;
 301:	83 c4 10             	add    $0x10,%esp
}
 304:	8d 65 f8             	lea    -0x8(%ebp),%esp
 307:	89 f0                	mov    %esi,%eax
 309:	5b                   	pop    %ebx
 30a:	5e                   	pop    %esi
 30b:	5d                   	pop    %ebp
 30c:	c3                   	ret    
 30d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 310:	be ff ff ff ff       	mov    $0xffffffff,%esi
 315:	eb ed                	jmp    304 <stat+0x34>
 317:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 31e:	66 90                	xchg   %ax,%ax

00000320 <atoi>:

int
atoi(const char *s)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	53                   	push   %ebx
 324:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 327:	0f be 02             	movsbl (%edx),%eax
 32a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 32d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 330:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 335:	77 1e                	ja     355 <atoi+0x35>
 337:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 33e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 340:	83 c2 01             	add    $0x1,%edx
 343:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 346:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 34a:	0f be 02             	movsbl (%edx),%eax
 34d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 350:	80 fb 09             	cmp    $0x9,%bl
 353:	76 eb                	jbe    340 <atoi+0x20>
  return n;
}
 355:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 358:	89 c8                	mov    %ecx,%eax
 35a:	c9                   	leave  
 35b:	c3                   	ret    
 35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000360 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
 364:	8b 45 10             	mov    0x10(%ebp),%eax
 367:	8b 55 08             	mov    0x8(%ebp),%edx
 36a:	56                   	push   %esi
 36b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 36e:	85 c0                	test   %eax,%eax
 370:	7e 13                	jle    385 <memmove+0x25>
 372:	01 d0                	add    %edx,%eax
  dst = vdst;
 374:	89 d7                	mov    %edx,%edi
 376:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 380:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 381:	39 f8                	cmp    %edi,%eax
 383:	75 fb                	jne    380 <memmove+0x20>
  return vdst;
}
 385:	5e                   	pop    %esi
 386:	89 d0                	mov    %edx,%eax
 388:	5f                   	pop    %edi
 389:	5d                   	pop    %ebp
 38a:	c3                   	ret    
 38b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop

00000390 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 390:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 391:	b8 01 00 00 00       	mov    $0x1,%eax
 396:	89 e5                	mov    %esp,%ebp
 398:	53                   	push   %ebx
 399:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 39c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 3a3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 3aa:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 3af:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3b2:	39 c2                	cmp    %eax,%edx
 3b4:	74 24                	je     3da <thread_create+0x4a>
 3b6:	89 c3                	mov    %eax,%ebx
 3b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bf:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 3c0:	83 ec 04             	sub    $0x4,%esp
 3c3:	52                   	push   %edx
 3c4:	68 db 09 00 00       	push   $0x9db
 3c9:	6a 01                	push   $0x1
 3cb:	e8 c0 02 00 00       	call   690 <printf>
  while(lock->turn != myturn){
 3d0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 3d3:	83 c4 10             	add    $0x10,%esp
 3d6:	39 d3                	cmp    %edx,%ebx
 3d8:	75 e6                	jne    3c0 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 3da:	83 ec 0c             	sub    $0xc,%esp
 3dd:	68 00 20 00 00       	push   $0x2000
 3e2:	e8 d9 04 00 00       	call   8c0 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 3e7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 3eb:	83 c4 10             	add    $0x10,%esp
 3ee:	89 c2                	mov    %eax,%edx
 3f0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 3f6:	74 07                	je     3ff <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 3f8:	29 d0                	sub    %edx,%eax
 3fa:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 3ff:	50                   	push   %eax
 400:	ff 75 10             	push   0x10(%ebp)
 403:	ff 75 0c             	push   0xc(%ebp)
 406:	ff 75 08             	push   0x8(%ebp)
 409:	e8 b6 01 00 00       	call   5c4 <clone>
}
 40e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 411:	c9                   	leave  
 412:	c3                   	ret    
 413:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000420 <thread_join>:
int thread_join(){
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	56                   	push   %esi
 424:	53                   	push   %ebx
 425:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 428:	6a 04                	push   $0x4
 42a:	e8 91 04 00 00       	call   8c0 <malloc>
 42f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 432:	8d 45 ec             	lea    -0x14(%ebp),%eax
 435:	89 04 24             	mov    %eax,(%esp)
 438:	e8 8f 01 00 00       	call   5cc <join>
  lock->ticket = 0;
 43d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 444:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 446:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 44d:	b8 01 00 00 00       	mov    $0x1,%eax
 452:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 457:	8b 55 f4             	mov    -0xc(%ebp),%edx
 45a:	83 c4 10             	add    $0x10,%esp
 45d:	39 c2                	cmp    %eax,%edx
 45f:	74 21                	je     482 <thread_join+0x62>
 461:	89 c3                	mov    %eax,%ebx
 463:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 467:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 468:	83 ec 04             	sub    $0x4,%esp
 46b:	52                   	push   %edx
 46c:	68 db 09 00 00       	push   $0x9db
 471:	6a 01                	push   $0x1
 473:	e8 18 02 00 00       	call   690 <printf>
  while(lock->turn != myturn){
 478:	8b 55 f4             	mov    -0xc(%ebp),%edx
 47b:	83 c4 10             	add    $0x10,%esp
 47e:	39 d3                	cmp    %edx,%ebx
 480:	75 e6                	jne    468 <thread_join+0x48>
	free(stack);
 482:	83 ec 0c             	sub    $0xc,%esp
 485:	ff 75 ec             	push   -0x14(%ebp)
 488:	e8 a3 03 00 00       	call   830 <free>
}
 48d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 490:	89 f0                	mov    %esi,%eax
 492:	5b                   	pop    %ebx
 493:	5e                   	pop    %esi
 494:	5d                   	pop    %ebp
 495:	c3                   	ret    
 496:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49d:	8d 76 00             	lea    0x0(%esi),%esi

000004a0 <lock_init>:
void lock_init(lock_t *lock) {
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 4a6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 4ac:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 4b3:	5d                   	pop    %ebp
 4b4:	c3                   	ret    
 4b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004c0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 4c0:	55                   	push   %ebp
 4c1:	b8 01 00 00 00       	mov    $0x1,%eax
 4c6:	89 e5                	mov    %esp,%ebp
 4c8:	56                   	push   %esi
 4c9:	8b 75 08             	mov    0x8(%ebp),%esi
 4cc:	53                   	push   %ebx
 4cd:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 4d1:	8b 56 04             	mov    0x4(%esi),%edx
 4d4:	39 d0                	cmp    %edx,%eax
 4d6:	74 22                	je     4fa <lock_acquire+0x3a>
 4d8:	89 c3                	mov    %eax,%ebx
 4da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 4e0:	83 ec 04             	sub    $0x4,%esp
 4e3:	52                   	push   %edx
 4e4:	68 db 09 00 00       	push   $0x9db
 4e9:	6a 01                	push   $0x1
 4eb:	e8 a0 01 00 00       	call   690 <printf>
  while(lock->turn != myturn){
 4f0:	8b 56 04             	mov    0x4(%esi),%edx
 4f3:	83 c4 10             	add    $0x10,%esp
 4f6:	39 da                	cmp    %ebx,%edx
 4f8:	75 e6                	jne    4e0 <lock_acquire+0x20>
}
 4fa:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4fd:	5b                   	pop    %ebx
 4fe:	5e                   	pop    %esi
 4ff:	5d                   	pop    %ebp
 500:	c3                   	ret    
 501:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 508:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop

00000510 <lock_release>:
void lock_release(lock_t *lock){
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 516:	83 40 04 01          	addl   $0x1,0x4(%eax)
 51a:	5d                   	pop    %ebp
 51b:	c3                   	ret    

0000051c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 51c:	b8 01 00 00 00       	mov    $0x1,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    

00000524 <exit>:
SYSCALL(exit)
 524:	b8 02 00 00 00       	mov    $0x2,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    

0000052c <wait>:
SYSCALL(wait)
 52c:	b8 03 00 00 00       	mov    $0x3,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    

00000534 <pipe>:
SYSCALL(pipe)
 534:	b8 04 00 00 00       	mov    $0x4,%eax
 539:	cd 40                	int    $0x40
 53b:	c3                   	ret    

0000053c <read>:
SYSCALL(read)
 53c:	b8 05 00 00 00       	mov    $0x5,%eax
 541:	cd 40                	int    $0x40
 543:	c3                   	ret    

00000544 <write>:
SYSCALL(write)
 544:	b8 10 00 00 00       	mov    $0x10,%eax
 549:	cd 40                	int    $0x40
 54b:	c3                   	ret    

0000054c <close>:
SYSCALL(close)
 54c:	b8 15 00 00 00       	mov    $0x15,%eax
 551:	cd 40                	int    $0x40
 553:	c3                   	ret    

00000554 <kill>:
SYSCALL(kill)
 554:	b8 06 00 00 00       	mov    $0x6,%eax
 559:	cd 40                	int    $0x40
 55b:	c3                   	ret    

0000055c <exec>:
SYSCALL(exec)
 55c:	b8 07 00 00 00       	mov    $0x7,%eax
 561:	cd 40                	int    $0x40
 563:	c3                   	ret    

00000564 <open>:
SYSCALL(open)
 564:	b8 0f 00 00 00       	mov    $0xf,%eax
 569:	cd 40                	int    $0x40
 56b:	c3                   	ret    

0000056c <mknod>:
SYSCALL(mknod)
 56c:	b8 11 00 00 00       	mov    $0x11,%eax
 571:	cd 40                	int    $0x40
 573:	c3                   	ret    

00000574 <unlink>:
SYSCALL(unlink)
 574:	b8 12 00 00 00       	mov    $0x12,%eax
 579:	cd 40                	int    $0x40
 57b:	c3                   	ret    

0000057c <fstat>:
SYSCALL(fstat)
 57c:	b8 08 00 00 00       	mov    $0x8,%eax
 581:	cd 40                	int    $0x40
 583:	c3                   	ret    

00000584 <link>:
SYSCALL(link)
 584:	b8 13 00 00 00       	mov    $0x13,%eax
 589:	cd 40                	int    $0x40
 58b:	c3                   	ret    

0000058c <mkdir>:
SYSCALL(mkdir)
 58c:	b8 14 00 00 00       	mov    $0x14,%eax
 591:	cd 40                	int    $0x40
 593:	c3                   	ret    

00000594 <chdir>:
SYSCALL(chdir)
 594:	b8 09 00 00 00       	mov    $0x9,%eax
 599:	cd 40                	int    $0x40
 59b:	c3                   	ret    

0000059c <dup>:
SYSCALL(dup)
 59c:	b8 0a 00 00 00       	mov    $0xa,%eax
 5a1:	cd 40                	int    $0x40
 5a3:	c3                   	ret    

000005a4 <getpid>:
SYSCALL(getpid)
 5a4:	b8 0b 00 00 00       	mov    $0xb,%eax
 5a9:	cd 40                	int    $0x40
 5ab:	c3                   	ret    

000005ac <sbrk>:
SYSCALL(sbrk)
 5ac:	b8 0c 00 00 00       	mov    $0xc,%eax
 5b1:	cd 40                	int    $0x40
 5b3:	c3                   	ret    

000005b4 <sleep>:
SYSCALL(sleep)
 5b4:	b8 0d 00 00 00       	mov    $0xd,%eax
 5b9:	cd 40                	int    $0x40
 5bb:	c3                   	ret    

000005bc <uptime>:
SYSCALL(uptime)
 5bc:	b8 0e 00 00 00       	mov    $0xe,%eax
 5c1:	cd 40                	int    $0x40
 5c3:	c3                   	ret    

000005c4 <clone>:
SYSCALL(clone)
 5c4:	b8 16 00 00 00       	mov    $0x16,%eax
 5c9:	cd 40                	int    $0x40
 5cb:	c3                   	ret    

000005cc <join>:
SYSCALL(join)
 5cc:	b8 17 00 00 00       	mov    $0x17,%eax
 5d1:	cd 40                	int    $0x40
 5d3:	c3                   	ret    
 5d4:	66 90                	xchg   %ax,%ax
 5d6:	66 90                	xchg   %ax,%ax
 5d8:	66 90                	xchg   %ax,%ax
 5da:	66 90                	xchg   %ax,%ax
 5dc:	66 90                	xchg   %ax,%ax
 5de:	66 90                	xchg   %ax,%ax

000005e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	57                   	push   %edi
 5e4:	56                   	push   %esi
 5e5:	53                   	push   %ebx
 5e6:	83 ec 3c             	sub    $0x3c,%esp
 5e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5ec:	89 d1                	mov    %edx,%ecx
{
 5ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5f1:	85 d2                	test   %edx,%edx
 5f3:	0f 89 7f 00 00 00    	jns    678 <printint+0x98>
 5f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5fd:	74 79                	je     678 <printint+0x98>
    neg = 1;
 5ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 606:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 608:	31 db                	xor    %ebx,%ebx
 60a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 60d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 610:	89 c8                	mov    %ecx,%eax
 612:	31 d2                	xor    %edx,%edx
 614:	89 cf                	mov    %ecx,%edi
 616:	f7 75 c4             	divl   -0x3c(%ebp)
 619:	0f b6 92 50 0a 00 00 	movzbl 0xa50(%edx),%edx
 620:	89 45 c0             	mov    %eax,-0x40(%ebp)
 623:	89 d8                	mov    %ebx,%eax
 625:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 628:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 62b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 62e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 631:	76 dd                	jbe    610 <printint+0x30>
  if(neg)
 633:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 636:	85 c9                	test   %ecx,%ecx
 638:	74 0c                	je     646 <printint+0x66>
    buf[i++] = '-';
 63a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 63f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 641:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 646:	8b 7d b8             	mov    -0x48(%ebp),%edi
 649:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 64d:	eb 07                	jmp    656 <printint+0x76>
 64f:	90                   	nop
    putc(fd, buf[i]);
 650:	0f b6 13             	movzbl (%ebx),%edx
 653:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 656:	83 ec 04             	sub    $0x4,%esp
 659:	88 55 d7             	mov    %dl,-0x29(%ebp)
 65c:	6a 01                	push   $0x1
 65e:	56                   	push   %esi
 65f:	57                   	push   %edi
 660:	e8 df fe ff ff       	call   544 <write>
  while(--i >= 0)
 665:	83 c4 10             	add    $0x10,%esp
 668:	39 de                	cmp    %ebx,%esi
 66a:	75 e4                	jne    650 <printint+0x70>
}
 66c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 66f:	5b                   	pop    %ebx
 670:	5e                   	pop    %esi
 671:	5f                   	pop    %edi
 672:	5d                   	pop    %ebp
 673:	c3                   	ret    
 674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 678:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 67f:	eb 87                	jmp    608 <printint+0x28>
 681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 68f:	90                   	nop

00000690 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
 695:	53                   	push   %ebx
 696:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 699:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 69c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 69f:	0f b6 13             	movzbl (%ebx),%edx
 6a2:	84 d2                	test   %dl,%dl
 6a4:	74 6a                	je     710 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6a6:	8d 45 10             	lea    0x10(%ebp),%eax
 6a9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6ac:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6af:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6b4:	eb 36                	jmp    6ec <printf+0x5c>
 6b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
 6c0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6c3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6c8:	83 f8 25             	cmp    $0x25,%eax
 6cb:	74 15                	je     6e2 <printf+0x52>
  write(fd, &c, 1);
 6cd:	83 ec 04             	sub    $0x4,%esp
 6d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6d3:	6a 01                	push   $0x1
 6d5:	57                   	push   %edi
 6d6:	56                   	push   %esi
 6d7:	e8 68 fe ff ff       	call   544 <write>
 6dc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6df:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6e2:	0f b6 13             	movzbl (%ebx),%edx
 6e5:	83 c3 01             	add    $0x1,%ebx
 6e8:	84 d2                	test   %dl,%dl
 6ea:	74 24                	je     710 <printf+0x80>
    c = fmt[i] & 0xff;
 6ec:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6ef:	85 c9                	test   %ecx,%ecx
 6f1:	74 cd                	je     6c0 <printf+0x30>
      }
    } else if(state == '%'){
 6f3:	83 f9 25             	cmp    $0x25,%ecx
 6f6:	75 ea                	jne    6e2 <printf+0x52>
      if(c == 'd'){
 6f8:	83 f8 25             	cmp    $0x25,%eax
 6fb:	0f 84 07 01 00 00    	je     808 <printf+0x178>
 701:	83 e8 63             	sub    $0x63,%eax
 704:	83 f8 15             	cmp    $0x15,%eax
 707:	77 17                	ja     720 <printf+0x90>
 709:	ff 24 85 f8 09 00 00 	jmp    *0x9f8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 710:	8d 65 f4             	lea    -0xc(%ebp),%esp
 713:	5b                   	pop    %ebx
 714:	5e                   	pop    %esi
 715:	5f                   	pop    %edi
 716:	5d                   	pop    %ebp
 717:	c3                   	ret    
 718:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 71f:	90                   	nop
  write(fd, &c, 1);
 720:	83 ec 04             	sub    $0x4,%esp
 723:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 726:	6a 01                	push   $0x1
 728:	57                   	push   %edi
 729:	56                   	push   %esi
 72a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 72e:	e8 11 fe ff ff       	call   544 <write>
        putc(fd, c);
 733:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 737:	83 c4 0c             	add    $0xc,%esp
 73a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 73d:	6a 01                	push   $0x1
 73f:	57                   	push   %edi
 740:	56                   	push   %esi
 741:	e8 fe fd ff ff       	call   544 <write>
        putc(fd, c);
 746:	83 c4 10             	add    $0x10,%esp
      state = 0;
 749:	31 c9                	xor    %ecx,%ecx
 74b:	eb 95                	jmp    6e2 <printf+0x52>
 74d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 750:	83 ec 0c             	sub    $0xc,%esp
 753:	b9 10 00 00 00       	mov    $0x10,%ecx
 758:	6a 00                	push   $0x0
 75a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 75d:	8b 10                	mov    (%eax),%edx
 75f:	89 f0                	mov    %esi,%eax
 761:	e8 7a fe ff ff       	call   5e0 <printint>
        ap++;
 766:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 76a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 76d:	31 c9                	xor    %ecx,%ecx
 76f:	e9 6e ff ff ff       	jmp    6e2 <printf+0x52>
 774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 778:	8b 45 d0             	mov    -0x30(%ebp),%eax
 77b:	8b 10                	mov    (%eax),%edx
        ap++;
 77d:	83 c0 04             	add    $0x4,%eax
 780:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 783:	85 d2                	test   %edx,%edx
 785:	0f 84 8d 00 00 00    	je     818 <printf+0x188>
        while(*s != 0){
 78b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 78e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 790:	84 c0                	test   %al,%al
 792:	0f 84 4a ff ff ff    	je     6e2 <printf+0x52>
 798:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 79b:	89 d3                	mov    %edx,%ebx
 79d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7a0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7a3:	83 c3 01             	add    $0x1,%ebx
 7a6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7a9:	6a 01                	push   $0x1
 7ab:	57                   	push   %edi
 7ac:	56                   	push   %esi
 7ad:	e8 92 fd ff ff       	call   544 <write>
        while(*s != 0){
 7b2:	0f b6 03             	movzbl (%ebx),%eax
 7b5:	83 c4 10             	add    $0x10,%esp
 7b8:	84 c0                	test   %al,%al
 7ba:	75 e4                	jne    7a0 <printf+0x110>
      state = 0;
 7bc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7bf:	31 c9                	xor    %ecx,%ecx
 7c1:	e9 1c ff ff ff       	jmp    6e2 <printf+0x52>
 7c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7d0:	83 ec 0c             	sub    $0xc,%esp
 7d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7d8:	6a 01                	push   $0x1
 7da:	e9 7b ff ff ff       	jmp    75a <printf+0xca>
 7df:	90                   	nop
        putc(fd, *ap);
 7e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7e3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7e6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7e8:	6a 01                	push   $0x1
 7ea:	57                   	push   %edi
 7eb:	56                   	push   %esi
        putc(fd, *ap);
 7ec:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7ef:	e8 50 fd ff ff       	call   544 <write>
        ap++;
 7f4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7f8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7fb:	31 c9                	xor    %ecx,%ecx
 7fd:	e9 e0 fe ff ff       	jmp    6e2 <printf+0x52>
 802:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 808:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 80b:	83 ec 04             	sub    $0x4,%esp
 80e:	e9 2a ff ff ff       	jmp    73d <printf+0xad>
 813:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 817:	90                   	nop
          s = "(null)";
 818:	ba ef 09 00 00       	mov    $0x9ef,%edx
        while(*s != 0){
 81d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 820:	b8 28 00 00 00       	mov    $0x28,%eax
 825:	89 d3                	mov    %edx,%ebx
 827:	e9 74 ff ff ff       	jmp    7a0 <printf+0x110>
 82c:	66 90                	xchg   %ax,%ax
 82e:	66 90                	xchg   %ax,%ax

00000830 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 830:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 831:	a1 bc 0d 00 00       	mov    0xdbc,%eax
{
 836:	89 e5                	mov    %esp,%ebp
 838:	57                   	push   %edi
 839:	56                   	push   %esi
 83a:	53                   	push   %ebx
 83b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 83e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 848:	89 c2                	mov    %eax,%edx
 84a:	8b 00                	mov    (%eax),%eax
 84c:	39 ca                	cmp    %ecx,%edx
 84e:	73 30                	jae    880 <free+0x50>
 850:	39 c1                	cmp    %eax,%ecx
 852:	72 04                	jb     858 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 854:	39 c2                	cmp    %eax,%edx
 856:	72 f0                	jb     848 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 858:	8b 73 fc             	mov    -0x4(%ebx),%esi
 85b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 85e:	39 f8                	cmp    %edi,%eax
 860:	74 30                	je     892 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 862:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 865:	8b 42 04             	mov    0x4(%edx),%eax
 868:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 86b:	39 f1                	cmp    %esi,%ecx
 86d:	74 3a                	je     8a9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 86f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 871:	5b                   	pop    %ebx
  freep = p;
 872:	89 15 bc 0d 00 00    	mov    %edx,0xdbc
}
 878:	5e                   	pop    %esi
 879:	5f                   	pop    %edi
 87a:	5d                   	pop    %ebp
 87b:	c3                   	ret    
 87c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 880:	39 c2                	cmp    %eax,%edx
 882:	72 c4                	jb     848 <free+0x18>
 884:	39 c1                	cmp    %eax,%ecx
 886:	73 c0                	jae    848 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 888:	8b 73 fc             	mov    -0x4(%ebx),%esi
 88b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 88e:	39 f8                	cmp    %edi,%eax
 890:	75 d0                	jne    862 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 892:	03 70 04             	add    0x4(%eax),%esi
 895:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 898:	8b 02                	mov    (%edx),%eax
 89a:	8b 00                	mov    (%eax),%eax
 89c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 89f:	8b 42 04             	mov    0x4(%edx),%eax
 8a2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8a5:	39 f1                	cmp    %esi,%ecx
 8a7:	75 c6                	jne    86f <free+0x3f>
    p->s.size += bp->s.size;
 8a9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8ac:	89 15 bc 0d 00 00    	mov    %edx,0xdbc
    p->s.size += bp->s.size;
 8b2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8b5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8b8:	89 0a                	mov    %ecx,(%edx)
}
 8ba:	5b                   	pop    %ebx
 8bb:	5e                   	pop    %esi
 8bc:	5f                   	pop    %edi
 8bd:	5d                   	pop    %ebp
 8be:	c3                   	ret    
 8bf:	90                   	nop

000008c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8c0:	55                   	push   %ebp
 8c1:	89 e5                	mov    %esp,%ebp
 8c3:	57                   	push   %edi
 8c4:	56                   	push   %esi
 8c5:	53                   	push   %ebx
 8c6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8cc:	8b 3d bc 0d 00 00    	mov    0xdbc,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8d2:	8d 70 07             	lea    0x7(%eax),%esi
 8d5:	c1 ee 03             	shr    $0x3,%esi
 8d8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8db:	85 ff                	test   %edi,%edi
 8dd:	0f 84 9d 00 00 00    	je     980 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8e3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8e5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8e8:	39 f1                	cmp    %esi,%ecx
 8ea:	73 6a                	jae    956 <malloc+0x96>
 8ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8f1:	39 de                	cmp    %ebx,%esi
 8f3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8f6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 900:	eb 17                	jmp    919 <malloc+0x59>
 902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 908:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 90a:	8b 48 04             	mov    0x4(%eax),%ecx
 90d:	39 f1                	cmp    %esi,%ecx
 90f:	73 4f                	jae    960 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 911:	8b 3d bc 0d 00 00    	mov    0xdbc,%edi
 917:	89 c2                	mov    %eax,%edx
 919:	39 d7                	cmp    %edx,%edi
 91b:	75 eb                	jne    908 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 91d:	83 ec 0c             	sub    $0xc,%esp
 920:	ff 75 e4             	push   -0x1c(%ebp)
 923:	e8 84 fc ff ff       	call   5ac <sbrk>
  if(p == (char*)-1)
 928:	83 c4 10             	add    $0x10,%esp
 92b:	83 f8 ff             	cmp    $0xffffffff,%eax
 92e:	74 1c                	je     94c <malloc+0x8c>
  hp->s.size = nu;
 930:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 933:	83 ec 0c             	sub    $0xc,%esp
 936:	83 c0 08             	add    $0x8,%eax
 939:	50                   	push   %eax
 93a:	e8 f1 fe ff ff       	call   830 <free>
  return freep;
 93f:	8b 15 bc 0d 00 00    	mov    0xdbc,%edx
      if((p = morecore(nunits)) == 0)
 945:	83 c4 10             	add    $0x10,%esp
 948:	85 d2                	test   %edx,%edx
 94a:	75 bc                	jne    908 <malloc+0x48>
        return 0;
  }
}
 94c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 94f:	31 c0                	xor    %eax,%eax
}
 951:	5b                   	pop    %ebx
 952:	5e                   	pop    %esi
 953:	5f                   	pop    %edi
 954:	5d                   	pop    %ebp
 955:	c3                   	ret    
    if(p->s.size >= nunits){
 956:	89 d0                	mov    %edx,%eax
 958:	89 fa                	mov    %edi,%edx
 95a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 960:	39 ce                	cmp    %ecx,%esi
 962:	74 4c                	je     9b0 <malloc+0xf0>
        p->s.size -= nunits;
 964:	29 f1                	sub    %esi,%ecx
 966:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 969:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 96c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 96f:	89 15 bc 0d 00 00    	mov    %edx,0xdbc
}
 975:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 978:	83 c0 08             	add    $0x8,%eax
}
 97b:	5b                   	pop    %ebx
 97c:	5e                   	pop    %esi
 97d:	5f                   	pop    %edi
 97e:	5d                   	pop    %ebp
 97f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 980:	c7 05 bc 0d 00 00 c0 	movl   $0xdc0,0xdbc
 987:	0d 00 00 
    base.s.size = 0;
 98a:	bf c0 0d 00 00       	mov    $0xdc0,%edi
    base.s.ptr = freep = prevp = &base;
 98f:	c7 05 c0 0d 00 00 c0 	movl   $0xdc0,0xdc0
 996:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 999:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 99b:	c7 05 c4 0d 00 00 00 	movl   $0x0,0xdc4
 9a2:	00 00 00 
    if(p->s.size >= nunits){
 9a5:	e9 42 ff ff ff       	jmp    8ec <malloc+0x2c>
 9aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9b0:	8b 08                	mov    (%eax),%ecx
 9b2:	89 0a                	mov    %ecx,(%edx)
 9b4:	eb b9                	jmp    96f <malloc+0xaf>
