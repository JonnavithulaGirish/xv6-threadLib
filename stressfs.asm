
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
  2b:	68 68 09 00 00       	push   $0x968
  30:	6a 01                	push   $0x1
  char path[] = "stressfs0";
  32:	c7 85 de fd ff ff 73 	movl   $0x65727473,-0x222(%ebp)
  39:	74 72 65 
  3c:	c7 85 e2 fd ff ff 73 	movl   $0x73667373,-0x21e(%ebp)
  43:	73 66 73 
  printf(1, "stressfs starting\n");
  46:	e8 f5 05 00 00       	call   640 <printf>
  memset(data, 'a', sizeof(data));
  4b:	83 c4 0c             	add    $0xc,%esp
  4e:	68 00 02 00 00       	push   $0x200
  53:	6a 61                	push   $0x61
  55:	56                   	push   %esi
  56:	e8 a5 01 00 00       	call   200 <memset>
  5b:	83 c4 10             	add    $0x10,%esp
    if(fork() > 0)
  5e:	e8 6b 04 00 00       	call   4ce <fork>
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
  81:	68 7b 09 00 00       	push   $0x97b
  86:	6a 01                	push   $0x1
  88:	e8 b3 05 00 00       	call   640 <printf>
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
  a3:	e8 6e 04 00 00       	call   516 <open>
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
  ba:	e8 37 04 00 00       	call   4f6 <write>
  for(i = 0; i < 20; i++)
  bf:	83 c4 10             	add    $0x10,%esp
  c2:	83 eb 01             	sub    $0x1,%ebx
  c5:	75 e9                	jne    b0 <main+0xb0>
  close(fd);
  c7:	83 ec 0c             	sub    $0xc,%esp
  ca:	57                   	push   %edi
  cb:	e8 2e 04 00 00       	call   4fe <close>

  printf(1, "read\n");
  d0:	58                   	pop    %eax
  d1:	5a                   	pop    %edx
  d2:	68 85 09 00 00       	push   $0x985
  d7:	6a 01                	push   $0x1
  d9:	e8 62 05 00 00       	call   640 <printf>

  fd = open(path, O_RDONLY);
  de:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
  e4:	59                   	pop    %ecx
  e5:	5b                   	pop    %ebx
  e6:	6a 00                	push   $0x0
  e8:	bb 14 00 00 00       	mov    $0x14,%ebx
  ed:	50                   	push   %eax
  ee:	e8 23 04 00 00       	call   516 <open>
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
 10a:	e8 df 03 00 00       	call   4ee <read>
  for (i = 0; i < 20; i++)
 10f:	83 c4 10             	add    $0x10,%esp
 112:	83 eb 01             	sub    $0x1,%ebx
 115:	75 e9                	jne    100 <main+0x100>
  close(fd);
 117:	83 ec 0c             	sub    $0xc,%esp
 11a:	57                   	push   %edi
 11b:	e8 de 03 00 00       	call   4fe <close>

  wait();
 120:	e8 b9 03 00 00       	call   4de <wait>

  exit();
 125:	e8 ac 03 00 00       	call   4d6 <exit>
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

lock_t lk_create,lk_join;

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
 278:	e8 71 02 00 00       	call   4ee <read>
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
 2dd:	e8 34 02 00 00       	call   516 <open>
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
 2f2:	e8 37 02 00 00       	call   52e <fstat>
  close(fd);
 2f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2fa:	89 c6                	mov    %eax,%esi
  close(fd);
 2fc:	e8 fd 01 00 00       	call   4fe <close>
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
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 391:	ba 01 00 00 00       	mov    $0x1,%edx
 396:	89 e5                	mov    %esp,%ebp
 398:	83 ec 08             	sub    $0x8,%esp
 39b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 39f:	90                   	nop
 3a0:	89 d0                	mov    %edx,%eax
 3a2:	f0 87 05 60 0d 00 00 	lock xchg %eax,0xd60
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 3a9:	85 c0                	test   %eax,%eax
 3ab:	75 f3                	jne    3a0 <thread_create+0x10>
    __sync_synchronize();
 3ad:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 3b2:	83 ec 0c             	sub    $0xc,%esp
 3b5:	68 00 20 00 00       	push   $0x2000
 3ba:	e8 b1 04 00 00       	call   870 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 3bf:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 3c4:	c7 05 60 0d 00 00 00 	movl   $0x0,0xd60
 3cb:	00 00 00 
	if((uint)stack % PGSIZE)
 3ce:	89 c2                	mov    %eax,%edx
 3d0:	83 c4 10             	add    $0x10,%esp
 3d3:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 3d9:	74 07                	je     3e2 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 3db:	29 d0                	sub    %edx,%eax
 3dd:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 3e2:	50                   	push   %eax
 3e3:	ff 75 10             	push   0x10(%ebp)
 3e6:	ff 75 0c             	push   0xc(%ebp)
 3e9:	ff 75 08             	push   0x8(%ebp)
 3ec:	e8 85 01 00 00       	call   576 <clone>
}
 3f1:	c9                   	leave  
 3f2:	c3                   	ret    
 3f3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000400 <thread_join>:
int thread_join(){
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	53                   	push   %ebx
	int result= join(&stack);
 404:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 407:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 40a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 411:	50                   	push   %eax
 412:	e8 67 01 00 00       	call   57e <join>
    while(xchg(&(lock->mutex), 1) != 0);
 417:	83 c4 10             	add    $0x10,%esp
 41a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 41f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 428:	89 d0                	mov    %edx,%eax
 42a:	f0 87 05 5c 0d 00 00 	lock xchg %eax,0xd5c
 431:	85 c0                	test   %eax,%eax
 433:	75 f3                	jne    428 <thread_join+0x28>
    __sync_synchronize();
 435:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 43a:	83 ec 0c             	sub    $0xc,%esp
 43d:	ff 75 f4             	push   -0xc(%ebp)
 440:	e8 9b 03 00 00       	call   7e0 <free>
   __sync_synchronize();
 445:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 44a:	c7 05 5c 0d 00 00 00 	movl   $0x0,0xd5c
 451:	00 00 00 
}
 454:	89 d8                	mov    %ebx,%eax
 456:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 459:	c9                   	leave  
 45a:	c3                   	ret    
 45b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 45f:	90                   	nop

00000460 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 460:	c7 05 60 0d 00 00 00 	movl   $0x0,0xd60
 467:	00 00 00 
 46a:	c7 05 5c 0d 00 00 00 	movl   $0x0,0xd5c
 471:	00 00 00 
}
 474:	c3                   	ret    
 475:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000480 <lock_acquire>:
void lock_acquire(lock_t *lock){
 480:	55                   	push   %ebp
 481:	b9 01 00 00 00       	mov    $0x1,%ecx
 486:	89 e5                	mov    %esp,%ebp
 488:	8b 55 08             	mov    0x8(%ebp),%edx
 48b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop
 490:	89 c8                	mov    %ecx,%eax
 492:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 495:	85 c0                	test   %eax,%eax
 497:	75 f7                	jne    490 <lock_acquire+0x10>
    __sync_synchronize();
 499:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 49e:	5d                   	pop    %ebp
 49f:	c3                   	ret    

000004a0 <lock_release>:
void lock_release(lock_t *lock){
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 4a6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 4ab:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 4b1:	5d                   	pop    %ebp
 4b2:	c3                   	ret    
 4b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004c0 <lock_init>:
void lock_init(lock_t *lock) {
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
 4c6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 4cc:	5d                   	pop    %ebp
 4cd:	c3                   	ret    

000004ce <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4ce:	b8 01 00 00 00       	mov    $0x1,%eax
 4d3:	cd 40                	int    $0x40
 4d5:	c3                   	ret    

000004d6 <exit>:
SYSCALL(exit)
 4d6:	b8 02 00 00 00       	mov    $0x2,%eax
 4db:	cd 40                	int    $0x40
 4dd:	c3                   	ret    

000004de <wait>:
SYSCALL(wait)
 4de:	b8 03 00 00 00       	mov    $0x3,%eax
 4e3:	cd 40                	int    $0x40
 4e5:	c3                   	ret    

000004e6 <pipe>:
SYSCALL(pipe)
 4e6:	b8 04 00 00 00       	mov    $0x4,%eax
 4eb:	cd 40                	int    $0x40
 4ed:	c3                   	ret    

000004ee <read>:
SYSCALL(read)
 4ee:	b8 05 00 00 00       	mov    $0x5,%eax
 4f3:	cd 40                	int    $0x40
 4f5:	c3                   	ret    

000004f6 <write>:
SYSCALL(write)
 4f6:	b8 10 00 00 00       	mov    $0x10,%eax
 4fb:	cd 40                	int    $0x40
 4fd:	c3                   	ret    

000004fe <close>:
SYSCALL(close)
 4fe:	b8 15 00 00 00       	mov    $0x15,%eax
 503:	cd 40                	int    $0x40
 505:	c3                   	ret    

00000506 <kill>:
SYSCALL(kill)
 506:	b8 06 00 00 00       	mov    $0x6,%eax
 50b:	cd 40                	int    $0x40
 50d:	c3                   	ret    

0000050e <exec>:
SYSCALL(exec)
 50e:	b8 07 00 00 00       	mov    $0x7,%eax
 513:	cd 40                	int    $0x40
 515:	c3                   	ret    

00000516 <open>:
SYSCALL(open)
 516:	b8 0f 00 00 00       	mov    $0xf,%eax
 51b:	cd 40                	int    $0x40
 51d:	c3                   	ret    

0000051e <mknod>:
SYSCALL(mknod)
 51e:	b8 11 00 00 00       	mov    $0x11,%eax
 523:	cd 40                	int    $0x40
 525:	c3                   	ret    

00000526 <unlink>:
SYSCALL(unlink)
 526:	b8 12 00 00 00       	mov    $0x12,%eax
 52b:	cd 40                	int    $0x40
 52d:	c3                   	ret    

0000052e <fstat>:
SYSCALL(fstat)
 52e:	b8 08 00 00 00       	mov    $0x8,%eax
 533:	cd 40                	int    $0x40
 535:	c3                   	ret    

00000536 <link>:
SYSCALL(link)
 536:	b8 13 00 00 00       	mov    $0x13,%eax
 53b:	cd 40                	int    $0x40
 53d:	c3                   	ret    

0000053e <mkdir>:
SYSCALL(mkdir)
 53e:	b8 14 00 00 00       	mov    $0x14,%eax
 543:	cd 40                	int    $0x40
 545:	c3                   	ret    

00000546 <chdir>:
SYSCALL(chdir)
 546:	b8 09 00 00 00       	mov    $0x9,%eax
 54b:	cd 40                	int    $0x40
 54d:	c3                   	ret    

0000054e <dup>:
SYSCALL(dup)
 54e:	b8 0a 00 00 00       	mov    $0xa,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    

00000556 <getpid>:
SYSCALL(getpid)
 556:	b8 0b 00 00 00       	mov    $0xb,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    

0000055e <sbrk>:
SYSCALL(sbrk)
 55e:	b8 0c 00 00 00       	mov    $0xc,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    

00000566 <sleep>:
SYSCALL(sleep)
 566:	b8 0d 00 00 00       	mov    $0xd,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    

0000056e <uptime>:
SYSCALL(uptime)
 56e:	b8 0e 00 00 00       	mov    $0xe,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    

00000576 <clone>:
SYSCALL(clone)
 576:	b8 16 00 00 00       	mov    $0x16,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    

0000057e <join>:
SYSCALL(join)
 57e:	b8 17 00 00 00       	mov    $0x17,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    
 586:	66 90                	xchg   %ax,%ax
 588:	66 90                	xchg   %ax,%ax
 58a:	66 90                	xchg   %ax,%ax
 58c:	66 90                	xchg   %ax,%ax
 58e:	66 90                	xchg   %ax,%ax

00000590 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	57                   	push   %edi
 594:	56                   	push   %esi
 595:	53                   	push   %ebx
 596:	83 ec 3c             	sub    $0x3c,%esp
 599:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 59c:	89 d1                	mov    %edx,%ecx
{
 59e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5a1:	85 d2                	test   %edx,%edx
 5a3:	0f 89 7f 00 00 00    	jns    628 <printint+0x98>
 5a9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5ad:	74 79                	je     628 <printint+0x98>
    neg = 1;
 5af:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5b6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5b8:	31 db                	xor    %ebx,%ebx
 5ba:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5bd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 5c0:	89 c8                	mov    %ecx,%eax
 5c2:	31 d2                	xor    %edx,%edx
 5c4:	89 cf                	mov    %ecx,%edi
 5c6:	f7 75 c4             	divl   -0x3c(%ebp)
 5c9:	0f b6 92 ec 09 00 00 	movzbl 0x9ec(%edx),%edx
 5d0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5d3:	89 d8                	mov    %ebx,%eax
 5d5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 5d8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 5db:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 5de:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 5e1:	76 dd                	jbe    5c0 <printint+0x30>
  if(neg)
 5e3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 5e6:	85 c9                	test   %ecx,%ecx
 5e8:	74 0c                	je     5f6 <printint+0x66>
    buf[i++] = '-';
 5ea:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 5ef:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 5f1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 5f6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 5f9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 5fd:	eb 07                	jmp    606 <printint+0x76>
 5ff:	90                   	nop
    putc(fd, buf[i]);
 600:	0f b6 13             	movzbl (%ebx),%edx
 603:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 606:	83 ec 04             	sub    $0x4,%esp
 609:	88 55 d7             	mov    %dl,-0x29(%ebp)
 60c:	6a 01                	push   $0x1
 60e:	56                   	push   %esi
 60f:	57                   	push   %edi
 610:	e8 e1 fe ff ff       	call   4f6 <write>
  while(--i >= 0)
 615:	83 c4 10             	add    $0x10,%esp
 618:	39 de                	cmp    %ebx,%esi
 61a:	75 e4                	jne    600 <printint+0x70>
}
 61c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 61f:	5b                   	pop    %ebx
 620:	5e                   	pop    %esi
 621:	5f                   	pop    %edi
 622:	5d                   	pop    %ebp
 623:	c3                   	ret    
 624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 628:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 62f:	eb 87                	jmp    5b8 <printint+0x28>
 631:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 638:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63f:	90                   	nop

00000640 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	57                   	push   %edi
 644:	56                   	push   %esi
 645:	53                   	push   %ebx
 646:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 649:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 64c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 64f:	0f b6 13             	movzbl (%ebx),%edx
 652:	84 d2                	test   %dl,%dl
 654:	74 6a                	je     6c0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 656:	8d 45 10             	lea    0x10(%ebp),%eax
 659:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 65c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 65f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 661:	89 45 d0             	mov    %eax,-0x30(%ebp)
 664:	eb 36                	jmp    69c <printf+0x5c>
 666:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 66d:	8d 76 00             	lea    0x0(%esi),%esi
 670:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 673:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 678:	83 f8 25             	cmp    $0x25,%eax
 67b:	74 15                	je     692 <printf+0x52>
  write(fd, &c, 1);
 67d:	83 ec 04             	sub    $0x4,%esp
 680:	88 55 e7             	mov    %dl,-0x19(%ebp)
 683:	6a 01                	push   $0x1
 685:	57                   	push   %edi
 686:	56                   	push   %esi
 687:	e8 6a fe ff ff       	call   4f6 <write>
 68c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 68f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 692:	0f b6 13             	movzbl (%ebx),%edx
 695:	83 c3 01             	add    $0x1,%ebx
 698:	84 d2                	test   %dl,%dl
 69a:	74 24                	je     6c0 <printf+0x80>
    c = fmt[i] & 0xff;
 69c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 69f:	85 c9                	test   %ecx,%ecx
 6a1:	74 cd                	je     670 <printf+0x30>
      }
    } else if(state == '%'){
 6a3:	83 f9 25             	cmp    $0x25,%ecx
 6a6:	75 ea                	jne    692 <printf+0x52>
      if(c == 'd'){
 6a8:	83 f8 25             	cmp    $0x25,%eax
 6ab:	0f 84 07 01 00 00    	je     7b8 <printf+0x178>
 6b1:	83 e8 63             	sub    $0x63,%eax
 6b4:	83 f8 15             	cmp    $0x15,%eax
 6b7:	77 17                	ja     6d0 <printf+0x90>
 6b9:	ff 24 85 94 09 00 00 	jmp    *0x994(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 6c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6c3:	5b                   	pop    %ebx
 6c4:	5e                   	pop    %esi
 6c5:	5f                   	pop    %edi
 6c6:	5d                   	pop    %ebp
 6c7:	c3                   	ret    
 6c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6cf:	90                   	nop
  write(fd, &c, 1);
 6d0:	83 ec 04             	sub    $0x4,%esp
 6d3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 6d6:	6a 01                	push   $0x1
 6d8:	57                   	push   %edi
 6d9:	56                   	push   %esi
 6da:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6de:	e8 13 fe ff ff       	call   4f6 <write>
        putc(fd, c);
 6e3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 6e7:	83 c4 0c             	add    $0xc,%esp
 6ea:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6ed:	6a 01                	push   $0x1
 6ef:	57                   	push   %edi
 6f0:	56                   	push   %esi
 6f1:	e8 00 fe ff ff       	call   4f6 <write>
        putc(fd, c);
 6f6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6f9:	31 c9                	xor    %ecx,%ecx
 6fb:	eb 95                	jmp    692 <printf+0x52>
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 700:	83 ec 0c             	sub    $0xc,%esp
 703:	b9 10 00 00 00       	mov    $0x10,%ecx
 708:	6a 00                	push   $0x0
 70a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 70d:	8b 10                	mov    (%eax),%edx
 70f:	89 f0                	mov    %esi,%eax
 711:	e8 7a fe ff ff       	call   590 <printint>
        ap++;
 716:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 71a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 71d:	31 c9                	xor    %ecx,%ecx
 71f:	e9 6e ff ff ff       	jmp    692 <printf+0x52>
 724:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 728:	8b 45 d0             	mov    -0x30(%ebp),%eax
 72b:	8b 10                	mov    (%eax),%edx
        ap++;
 72d:	83 c0 04             	add    $0x4,%eax
 730:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 733:	85 d2                	test   %edx,%edx
 735:	0f 84 8d 00 00 00    	je     7c8 <printf+0x188>
        while(*s != 0){
 73b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 73e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 740:	84 c0                	test   %al,%al
 742:	0f 84 4a ff ff ff    	je     692 <printf+0x52>
 748:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 74b:	89 d3                	mov    %edx,%ebx
 74d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 750:	83 ec 04             	sub    $0x4,%esp
          s++;
 753:	83 c3 01             	add    $0x1,%ebx
 756:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 759:	6a 01                	push   $0x1
 75b:	57                   	push   %edi
 75c:	56                   	push   %esi
 75d:	e8 94 fd ff ff       	call   4f6 <write>
        while(*s != 0){
 762:	0f b6 03             	movzbl (%ebx),%eax
 765:	83 c4 10             	add    $0x10,%esp
 768:	84 c0                	test   %al,%al
 76a:	75 e4                	jne    750 <printf+0x110>
      state = 0;
 76c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 76f:	31 c9                	xor    %ecx,%ecx
 771:	e9 1c ff ff ff       	jmp    692 <printf+0x52>
 776:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 77d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 780:	83 ec 0c             	sub    $0xc,%esp
 783:	b9 0a 00 00 00       	mov    $0xa,%ecx
 788:	6a 01                	push   $0x1
 78a:	e9 7b ff ff ff       	jmp    70a <printf+0xca>
 78f:	90                   	nop
        putc(fd, *ap);
 790:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 793:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 796:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 798:	6a 01                	push   $0x1
 79a:	57                   	push   %edi
 79b:	56                   	push   %esi
        putc(fd, *ap);
 79c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 79f:	e8 52 fd ff ff       	call   4f6 <write>
        ap++;
 7a4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7a8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7ab:	31 c9                	xor    %ecx,%ecx
 7ad:	e9 e0 fe ff ff       	jmp    692 <printf+0x52>
 7b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7b8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7bb:	83 ec 04             	sub    $0x4,%esp
 7be:	e9 2a ff ff ff       	jmp    6ed <printf+0xad>
 7c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 7c7:	90                   	nop
          s = "(null)";
 7c8:	ba 8b 09 00 00       	mov    $0x98b,%edx
        while(*s != 0){
 7cd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7d0:	b8 28 00 00 00       	mov    $0x28,%eax
 7d5:	89 d3                	mov    %edx,%ebx
 7d7:	e9 74 ff ff ff       	jmp    750 <printf+0x110>
 7dc:	66 90                	xchg   %ax,%ax
 7de:	66 90                	xchg   %ax,%ax

000007e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 7e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7e1:	a1 64 0d 00 00       	mov    0xd64,%eax
{
 7e6:	89 e5                	mov    %esp,%ebp
 7e8:	57                   	push   %edi
 7e9:	56                   	push   %esi
 7ea:	53                   	push   %ebx
 7eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 7ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7f8:	89 c2                	mov    %eax,%edx
 7fa:	8b 00                	mov    (%eax),%eax
 7fc:	39 ca                	cmp    %ecx,%edx
 7fe:	73 30                	jae    830 <free+0x50>
 800:	39 c1                	cmp    %eax,%ecx
 802:	72 04                	jb     808 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 804:	39 c2                	cmp    %eax,%edx
 806:	72 f0                	jb     7f8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 808:	8b 73 fc             	mov    -0x4(%ebx),%esi
 80b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 80e:	39 f8                	cmp    %edi,%eax
 810:	74 30                	je     842 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 812:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 815:	8b 42 04             	mov    0x4(%edx),%eax
 818:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 81b:	39 f1                	cmp    %esi,%ecx
 81d:	74 3a                	je     859 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 81f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 821:	5b                   	pop    %ebx
  freep = p;
 822:	89 15 64 0d 00 00    	mov    %edx,0xd64
}
 828:	5e                   	pop    %esi
 829:	5f                   	pop    %edi
 82a:	5d                   	pop    %ebp
 82b:	c3                   	ret    
 82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 830:	39 c2                	cmp    %eax,%edx
 832:	72 c4                	jb     7f8 <free+0x18>
 834:	39 c1                	cmp    %eax,%ecx
 836:	73 c0                	jae    7f8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 838:	8b 73 fc             	mov    -0x4(%ebx),%esi
 83b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 83e:	39 f8                	cmp    %edi,%eax
 840:	75 d0                	jne    812 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 842:	03 70 04             	add    0x4(%eax),%esi
 845:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 848:	8b 02                	mov    (%edx),%eax
 84a:	8b 00                	mov    (%eax),%eax
 84c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 84f:	8b 42 04             	mov    0x4(%edx),%eax
 852:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 855:	39 f1                	cmp    %esi,%ecx
 857:	75 c6                	jne    81f <free+0x3f>
    p->s.size += bp->s.size;
 859:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 85c:	89 15 64 0d 00 00    	mov    %edx,0xd64
    p->s.size += bp->s.size;
 862:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 865:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 868:	89 0a                	mov    %ecx,(%edx)
}
 86a:	5b                   	pop    %ebx
 86b:	5e                   	pop    %esi
 86c:	5f                   	pop    %edi
 86d:	5d                   	pop    %ebp
 86e:	c3                   	ret    
 86f:	90                   	nop

00000870 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 870:	55                   	push   %ebp
 871:	89 e5                	mov    %esp,%ebp
 873:	57                   	push   %edi
 874:	56                   	push   %esi
 875:	53                   	push   %ebx
 876:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 879:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 87c:	8b 3d 64 0d 00 00    	mov    0xd64,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 882:	8d 70 07             	lea    0x7(%eax),%esi
 885:	c1 ee 03             	shr    $0x3,%esi
 888:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 88b:	85 ff                	test   %edi,%edi
 88d:	0f 84 9d 00 00 00    	je     930 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 893:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 895:	8b 4a 04             	mov    0x4(%edx),%ecx
 898:	39 f1                	cmp    %esi,%ecx
 89a:	73 6a                	jae    906 <malloc+0x96>
 89c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8a1:	39 de                	cmp    %ebx,%esi
 8a3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8a6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8ad:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8b0:	eb 17                	jmp    8c9 <malloc+0x59>
 8b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8b8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8ba:	8b 48 04             	mov    0x4(%eax),%ecx
 8bd:	39 f1                	cmp    %esi,%ecx
 8bf:	73 4f                	jae    910 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8c1:	8b 3d 64 0d 00 00    	mov    0xd64,%edi
 8c7:	89 c2                	mov    %eax,%edx
 8c9:	39 d7                	cmp    %edx,%edi
 8cb:	75 eb                	jne    8b8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8cd:	83 ec 0c             	sub    $0xc,%esp
 8d0:	ff 75 e4             	push   -0x1c(%ebp)
 8d3:	e8 86 fc ff ff       	call   55e <sbrk>
  if(p == (char*)-1)
 8d8:	83 c4 10             	add    $0x10,%esp
 8db:	83 f8 ff             	cmp    $0xffffffff,%eax
 8de:	74 1c                	je     8fc <malloc+0x8c>
  hp->s.size = nu;
 8e0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 8e3:	83 ec 0c             	sub    $0xc,%esp
 8e6:	83 c0 08             	add    $0x8,%eax
 8e9:	50                   	push   %eax
 8ea:	e8 f1 fe ff ff       	call   7e0 <free>
  return freep;
 8ef:	8b 15 64 0d 00 00    	mov    0xd64,%edx
      if((p = morecore(nunits)) == 0)
 8f5:	83 c4 10             	add    $0x10,%esp
 8f8:	85 d2                	test   %edx,%edx
 8fa:	75 bc                	jne    8b8 <malloc+0x48>
        return 0;
  }
}
 8fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8ff:	31 c0                	xor    %eax,%eax
}
 901:	5b                   	pop    %ebx
 902:	5e                   	pop    %esi
 903:	5f                   	pop    %edi
 904:	5d                   	pop    %ebp
 905:	c3                   	ret    
    if(p->s.size >= nunits){
 906:	89 d0                	mov    %edx,%eax
 908:	89 fa                	mov    %edi,%edx
 90a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 910:	39 ce                	cmp    %ecx,%esi
 912:	74 4c                	je     960 <malloc+0xf0>
        p->s.size -= nunits;
 914:	29 f1                	sub    %esi,%ecx
 916:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 919:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 91c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 91f:	89 15 64 0d 00 00    	mov    %edx,0xd64
}
 925:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 928:	83 c0 08             	add    $0x8,%eax
}
 92b:	5b                   	pop    %ebx
 92c:	5e                   	pop    %esi
 92d:	5f                   	pop    %edi
 92e:	5d                   	pop    %ebp
 92f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 930:	c7 05 64 0d 00 00 68 	movl   $0xd68,0xd64
 937:	0d 00 00 
    base.s.size = 0;
 93a:	bf 68 0d 00 00       	mov    $0xd68,%edi
    base.s.ptr = freep = prevp = &base;
 93f:	c7 05 68 0d 00 00 68 	movl   $0xd68,0xd68
 946:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 949:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 94b:	c7 05 6c 0d 00 00 00 	movl   $0x0,0xd6c
 952:	00 00 00 
    if(p->s.size >= nunits){
 955:	e9 42 ff ff ff       	jmp    89c <malloc+0x2c>
 95a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 960:	8b 08                	mov    (%eax),%ecx
 962:	89 0a                	mov    %ecx,(%edx)
 964:	eb b9                	jmp    91f <malloc+0xaf>
