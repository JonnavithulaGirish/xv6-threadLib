
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
   b:	e8 a6 04 00 00       	call   4b6 <exit>

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
  28:	e8 a9 04 00 00       	call   4d6 <write>
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
  49:	68 f8 06 00 00       	push   $0x6f8
  4e:	e8 5d 01 00 00       	call   1b0 <strlen>
  53:	83 c4 0c             	add    $0xc,%esp
  56:	50                   	push   %eax
  57:	68 f8 06 00 00       	push   $0x6f8
  5c:	6a 01                	push   $0x1
  5e:	e8 73 04 00 00       	call   4d6 <write>
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
  81:	e8 28 04 00 00       	call   4ae <fork>
    if(pid < 0)
  86:	85 c0                	test   %eax,%eax
  88:	79 e6                	jns    70 <forktest+0x30>
  for(; n > 0; n--){
  8a:	85 db                	test   %ebx,%ebx
  8c:	74 10                	je     9e <forktest+0x5e>
  8e:	66 90                	xchg   %ax,%ax
    if(wait() < 0){
  90:	e8 29 04 00 00       	call   4be <wait>
  95:	85 c0                	test   %eax,%eax
  97:	78 36                	js     cf <forktest+0x8f>
  for(; n > 0; n--){
  99:	83 eb 01             	sub    $0x1,%ebx
  9c:	75 f2                	jne    90 <forktest+0x50>
  if(wait() != -1){
  9e:	e8 1b 04 00 00       	call   4be <wait>
  a3:	83 f8 ff             	cmp    $0xffffffff,%eax
  a6:	75 49                	jne    f1 <forktest+0xb1>
  write(fd, s, strlen(s));
  a8:	83 ec 0c             	sub    $0xc,%esp
  ab:	68 2a 07 00 00       	push   $0x72a
  b0:	e8 fb 00 00 00       	call   1b0 <strlen>
  b5:	83 c4 0c             	add    $0xc,%esp
  b8:	50                   	push   %eax
  b9:	68 2a 07 00 00       	push   $0x72a
  be:	6a 01                	push   $0x1
  c0:	e8 11 04 00 00       	call   4d6 <write>
}
  c5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  c8:	c9                   	leave  
  c9:	c3                   	ret    
      exit();
  ca:	e8 e7 03 00 00       	call   4b6 <exit>
  write(fd, s, strlen(s));
  cf:	83 ec 0c             	sub    $0xc,%esp
  d2:	68 03 07 00 00       	push   $0x703
  d7:	e8 d4 00 00 00       	call   1b0 <strlen>
  dc:	83 c4 0c             	add    $0xc,%esp
  df:	50                   	push   %eax
  e0:	68 03 07 00 00       	push   $0x703
  e5:	6a 01                	push   $0x1
  e7:	e8 ea 03 00 00       	call   4d6 <write>
      exit();
  ec:	e8 c5 03 00 00       	call   4b6 <exit>
    printf(1, "wait got too many\n");
  f1:	52                   	push   %edx
  f2:	52                   	push   %edx
  f3:	68 17 07 00 00       	push   $0x717
  f8:	6a 01                	push   $0x1
  fa:	e8 11 ff ff ff       	call   10 <printf>
    exit();
  ff:	e8 b2 03 00 00       	call   4b6 <exit>
    printf(1, "fork claimed to work N times!\n", N);
 104:	50                   	push   %eax
 105:	68 e8 03 00 00       	push   $0x3e8
 10a:	68 38 07 00 00       	push   $0x738
 10f:	6a 01                	push   $0x1
 111:	e8 fa fe ff ff       	call   10 <printf>
    exit();
 116:	e8 9b 03 00 00       	call   4b6 <exit>
 11b:	66 90                	xchg   %ax,%ax
 11d:	66 90                	xchg   %ax,%ax
 11f:	90                   	nop

00000120 <strcpy>:

lock_t lk_create,lk_join;

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
 258:	e8 71 02 00 00       	call   4ce <read>
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
 2bd:	e8 34 02 00 00       	call   4f6 <open>
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
 2d2:	e8 37 02 00 00       	call   50e <fstat>
  close(fd);
 2d7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2da:	89 c6                	mov    %eax,%esi
  close(fd);
 2dc:	e8 fd 01 00 00       	call   4de <close>
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
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 371:	ba 01 00 00 00       	mov    $0x1,%edx
 376:	89 e5                	mov    %esp,%ebp
 378:	83 ec 08             	sub    $0x8,%esp
 37b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 37f:	90                   	nop
 380:	89 d0                	mov    %edx,%eax
 382:	f0 87 05 8c 0a 00 00 	lock xchg %eax,0xa8c
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 389:	85 c0                	test   %eax,%eax
 38b:	75 f3                	jne    380 <thread_create+0x10>
    __sync_synchronize();
 38d:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 392:	83 ec 0c             	sub    $0xc,%esp
 395:	68 00 20 00 00       	push   $0x2000
 39a:	e8 61 02 00 00       	call   600 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 39f:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 3a4:	c7 05 8c 0a 00 00 00 	movl   $0x0,0xa8c
 3ab:	00 00 00 
	if((uint)stack % PGSIZE)
 3ae:	89 c2                	mov    %eax,%edx
 3b0:	83 c4 10             	add    $0x10,%esp
 3b3:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 3b9:	74 07                	je     3c2 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 3bb:	29 d0                	sub    %edx,%eax
 3bd:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 3c2:	50                   	push   %eax
 3c3:	ff 75 10             	push   0x10(%ebp)
 3c6:	ff 75 0c             	push   0xc(%ebp)
 3c9:	ff 75 08             	push   0x8(%ebp)
 3cc:	e8 85 01 00 00       	call   556 <clone>
}
 3d1:	c9                   	leave  
 3d2:	c3                   	ret    
 3d3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000003e0 <thread_join>:
int thread_join(){
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	53                   	push   %ebx
	int result= join(&stack);
 3e4:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 3e7:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 3ea:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 3f1:	50                   	push   %eax
 3f2:	e8 67 01 00 00       	call   55e <join>
    while(xchg(&(lock->mutex), 1) != 0);
 3f7:	83 c4 10             	add    $0x10,%esp
 3fa:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 3ff:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 401:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 408:	89 d0                	mov    %edx,%eax
 40a:	f0 87 05 88 0a 00 00 	lock xchg %eax,0xa88
 411:	85 c0                	test   %eax,%eax
 413:	75 f3                	jne    408 <thread_join+0x28>
    __sync_synchronize();
 415:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 41a:	83 ec 0c             	sub    $0xc,%esp
 41d:	ff 75 f4             	push   -0xc(%ebp)
 420:	e8 4b 01 00 00       	call   570 <free>
   __sync_synchronize();
 425:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 42a:	c7 05 88 0a 00 00 00 	movl   $0x0,0xa88
 431:	00 00 00 
}
 434:	89 d8                	mov    %ebx,%eax
 436:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 439:	c9                   	leave  
 43a:	c3                   	ret    
 43b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 43f:	90                   	nop

00000440 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 440:	c7 05 8c 0a 00 00 00 	movl   $0x0,0xa8c
 447:	00 00 00 
 44a:	c7 05 88 0a 00 00 00 	movl   $0x0,0xa88
 451:	00 00 00 
}
 454:	c3                   	ret    
 455:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000460 <lock_acquire>:
void lock_acquire(lock_t *lock){
 460:	55                   	push   %ebp
 461:	b9 01 00 00 00       	mov    $0x1,%ecx
 466:	89 e5                	mov    %esp,%ebp
 468:	8b 55 08             	mov    0x8(%ebp),%edx
 46b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop
 470:	89 c8                	mov    %ecx,%eax
 472:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 475:	85 c0                	test   %eax,%eax
 477:	75 f7                	jne    470 <lock_acquire+0x10>
    __sync_synchronize();
 479:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 47e:	5d                   	pop    %ebp
 47f:	c3                   	ret    

00000480 <lock_release>:
void lock_release(lock_t *lock){
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 486:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 48b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 491:	5d                   	pop    %ebp
 492:	c3                   	ret    
 493:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004a0 <lock_init>:
void lock_init(lock_t *lock) {
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 4a3:	8b 45 08             	mov    0x8(%ebp),%eax
 4a6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 4ac:	5d                   	pop    %ebp
 4ad:	c3                   	ret    

000004ae <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 4ae:	b8 01 00 00 00       	mov    $0x1,%eax
 4b3:	cd 40                	int    $0x40
 4b5:	c3                   	ret    

000004b6 <exit>:
SYSCALL(exit)
 4b6:	b8 02 00 00 00       	mov    $0x2,%eax
 4bb:	cd 40                	int    $0x40
 4bd:	c3                   	ret    

000004be <wait>:
SYSCALL(wait)
 4be:	b8 03 00 00 00       	mov    $0x3,%eax
 4c3:	cd 40                	int    $0x40
 4c5:	c3                   	ret    

000004c6 <pipe>:
SYSCALL(pipe)
 4c6:	b8 04 00 00 00       	mov    $0x4,%eax
 4cb:	cd 40                	int    $0x40
 4cd:	c3                   	ret    

000004ce <read>:
SYSCALL(read)
 4ce:	b8 05 00 00 00       	mov    $0x5,%eax
 4d3:	cd 40                	int    $0x40
 4d5:	c3                   	ret    

000004d6 <write>:
SYSCALL(write)
 4d6:	b8 10 00 00 00       	mov    $0x10,%eax
 4db:	cd 40                	int    $0x40
 4dd:	c3                   	ret    

000004de <close>:
SYSCALL(close)
 4de:	b8 15 00 00 00       	mov    $0x15,%eax
 4e3:	cd 40                	int    $0x40
 4e5:	c3                   	ret    

000004e6 <kill>:
SYSCALL(kill)
 4e6:	b8 06 00 00 00       	mov    $0x6,%eax
 4eb:	cd 40                	int    $0x40
 4ed:	c3                   	ret    

000004ee <exec>:
SYSCALL(exec)
 4ee:	b8 07 00 00 00       	mov    $0x7,%eax
 4f3:	cd 40                	int    $0x40
 4f5:	c3                   	ret    

000004f6 <open>:
SYSCALL(open)
 4f6:	b8 0f 00 00 00       	mov    $0xf,%eax
 4fb:	cd 40                	int    $0x40
 4fd:	c3                   	ret    

000004fe <mknod>:
SYSCALL(mknod)
 4fe:	b8 11 00 00 00       	mov    $0x11,%eax
 503:	cd 40                	int    $0x40
 505:	c3                   	ret    

00000506 <unlink>:
SYSCALL(unlink)
 506:	b8 12 00 00 00       	mov    $0x12,%eax
 50b:	cd 40                	int    $0x40
 50d:	c3                   	ret    

0000050e <fstat>:
SYSCALL(fstat)
 50e:	b8 08 00 00 00       	mov    $0x8,%eax
 513:	cd 40                	int    $0x40
 515:	c3                   	ret    

00000516 <link>:
SYSCALL(link)
 516:	b8 13 00 00 00       	mov    $0x13,%eax
 51b:	cd 40                	int    $0x40
 51d:	c3                   	ret    

0000051e <mkdir>:
SYSCALL(mkdir)
 51e:	b8 14 00 00 00       	mov    $0x14,%eax
 523:	cd 40                	int    $0x40
 525:	c3                   	ret    

00000526 <chdir>:
SYSCALL(chdir)
 526:	b8 09 00 00 00       	mov    $0x9,%eax
 52b:	cd 40                	int    $0x40
 52d:	c3                   	ret    

0000052e <dup>:
SYSCALL(dup)
 52e:	b8 0a 00 00 00       	mov    $0xa,%eax
 533:	cd 40                	int    $0x40
 535:	c3                   	ret    

00000536 <getpid>:
SYSCALL(getpid)
 536:	b8 0b 00 00 00       	mov    $0xb,%eax
 53b:	cd 40                	int    $0x40
 53d:	c3                   	ret    

0000053e <sbrk>:
SYSCALL(sbrk)
 53e:	b8 0c 00 00 00       	mov    $0xc,%eax
 543:	cd 40                	int    $0x40
 545:	c3                   	ret    

00000546 <sleep>:
SYSCALL(sleep)
 546:	b8 0d 00 00 00       	mov    $0xd,%eax
 54b:	cd 40                	int    $0x40
 54d:	c3                   	ret    

0000054e <uptime>:
SYSCALL(uptime)
 54e:	b8 0e 00 00 00       	mov    $0xe,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    

00000556 <clone>:
SYSCALL(clone)
 556:	b8 16 00 00 00       	mov    $0x16,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    

0000055e <join>:
SYSCALL(join)
 55e:	b8 17 00 00 00       	mov    $0x17,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    
 566:	66 90                	xchg   %ax,%ax
 568:	66 90                	xchg   %ax,%ax
 56a:	66 90                	xchg   %ax,%ax
 56c:	66 90                	xchg   %ax,%ax
 56e:	66 90                	xchg   %ax,%ax

00000570 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 570:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 571:	a1 90 0a 00 00       	mov    0xa90,%eax
{
 576:	89 e5                	mov    %esp,%ebp
 578:	57                   	push   %edi
 579:	56                   	push   %esi
 57a:	53                   	push   %ebx
 57b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 57e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 588:	89 c2                	mov    %eax,%edx
 58a:	8b 00                	mov    (%eax),%eax
 58c:	39 ca                	cmp    %ecx,%edx
 58e:	73 30                	jae    5c0 <free+0x50>
 590:	39 c1                	cmp    %eax,%ecx
 592:	72 04                	jb     598 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 594:	39 c2                	cmp    %eax,%edx
 596:	72 f0                	jb     588 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 598:	8b 73 fc             	mov    -0x4(%ebx),%esi
 59b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 59e:	39 f8                	cmp    %edi,%eax
 5a0:	74 30                	je     5d2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 5a2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 5a5:	8b 42 04             	mov    0x4(%edx),%eax
 5a8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 5ab:	39 f1                	cmp    %esi,%ecx
 5ad:	74 3a                	je     5e9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 5af:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 5b1:	5b                   	pop    %ebx
  freep = p;
 5b2:	89 15 90 0a 00 00    	mov    %edx,0xa90
}
 5b8:	5e                   	pop    %esi
 5b9:	5f                   	pop    %edi
 5ba:	5d                   	pop    %ebp
 5bb:	c3                   	ret    
 5bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5c0:	39 c2                	cmp    %eax,%edx
 5c2:	72 c4                	jb     588 <free+0x18>
 5c4:	39 c1                	cmp    %eax,%ecx
 5c6:	73 c0                	jae    588 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 5c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5ce:	39 f8                	cmp    %edi,%eax
 5d0:	75 d0                	jne    5a2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 5d2:	03 70 04             	add    0x4(%eax),%esi
 5d5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 5d8:	8b 02                	mov    (%edx),%eax
 5da:	8b 00                	mov    (%eax),%eax
 5dc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 5df:	8b 42 04             	mov    0x4(%edx),%eax
 5e2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 5e5:	39 f1                	cmp    %esi,%ecx
 5e7:	75 c6                	jne    5af <free+0x3f>
    p->s.size += bp->s.size;
 5e9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 5ec:	89 15 90 0a 00 00    	mov    %edx,0xa90
    p->s.size += bp->s.size;
 5f2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 5f5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 5f8:	89 0a                	mov    %ecx,(%edx)
}
 5fa:	5b                   	pop    %ebx
 5fb:	5e                   	pop    %esi
 5fc:	5f                   	pop    %edi
 5fd:	5d                   	pop    %ebp
 5fe:	c3                   	ret    
 5ff:	90                   	nop

00000600 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	56                   	push   %esi
 605:	53                   	push   %ebx
 606:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 609:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 60c:	8b 3d 90 0a 00 00    	mov    0xa90,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 612:	8d 70 07             	lea    0x7(%eax),%esi
 615:	c1 ee 03             	shr    $0x3,%esi
 618:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 61b:	85 ff                	test   %edi,%edi
 61d:	0f 84 9d 00 00 00    	je     6c0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 623:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 625:	8b 4a 04             	mov    0x4(%edx),%ecx
 628:	39 f1                	cmp    %esi,%ecx
 62a:	73 6a                	jae    696 <malloc+0x96>
 62c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 631:	39 de                	cmp    %ebx,%esi
 633:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 636:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 63d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 640:	eb 17                	jmp    659 <malloc+0x59>
 642:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 648:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 64a:	8b 48 04             	mov    0x4(%eax),%ecx
 64d:	39 f1                	cmp    %esi,%ecx
 64f:	73 4f                	jae    6a0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 651:	8b 3d 90 0a 00 00    	mov    0xa90,%edi
 657:	89 c2                	mov    %eax,%edx
 659:	39 d7                	cmp    %edx,%edi
 65b:	75 eb                	jne    648 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 65d:	83 ec 0c             	sub    $0xc,%esp
 660:	ff 75 e4             	push   -0x1c(%ebp)
 663:	e8 d6 fe ff ff       	call   53e <sbrk>
  if(p == (char*)-1)
 668:	83 c4 10             	add    $0x10,%esp
 66b:	83 f8 ff             	cmp    $0xffffffff,%eax
 66e:	74 1c                	je     68c <malloc+0x8c>
  hp->s.size = nu;
 670:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 673:	83 ec 0c             	sub    $0xc,%esp
 676:	83 c0 08             	add    $0x8,%eax
 679:	50                   	push   %eax
 67a:	e8 f1 fe ff ff       	call   570 <free>
  return freep;
 67f:	8b 15 90 0a 00 00    	mov    0xa90,%edx
      if((p = morecore(nunits)) == 0)
 685:	83 c4 10             	add    $0x10,%esp
 688:	85 d2                	test   %edx,%edx
 68a:	75 bc                	jne    648 <malloc+0x48>
        return 0;
  }
}
 68c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 68f:	31 c0                	xor    %eax,%eax
}
 691:	5b                   	pop    %ebx
 692:	5e                   	pop    %esi
 693:	5f                   	pop    %edi
 694:	5d                   	pop    %ebp
 695:	c3                   	ret    
    if(p->s.size >= nunits){
 696:	89 d0                	mov    %edx,%eax
 698:	89 fa                	mov    %edi,%edx
 69a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 6a0:	39 ce                	cmp    %ecx,%esi
 6a2:	74 4c                	je     6f0 <malloc+0xf0>
        p->s.size -= nunits;
 6a4:	29 f1                	sub    %esi,%ecx
 6a6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 6a9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 6ac:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 6af:	89 15 90 0a 00 00    	mov    %edx,0xa90
}
 6b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 6b8:	83 c0 08             	add    $0x8,%eax
}
 6bb:	5b                   	pop    %ebx
 6bc:	5e                   	pop    %esi
 6bd:	5f                   	pop    %edi
 6be:	5d                   	pop    %ebp
 6bf:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 6c0:	c7 05 90 0a 00 00 94 	movl   $0xa94,0xa90
 6c7:	0a 00 00 
    base.s.size = 0;
 6ca:	bf 94 0a 00 00       	mov    $0xa94,%edi
    base.s.ptr = freep = prevp = &base;
 6cf:	c7 05 94 0a 00 00 94 	movl   $0xa94,0xa94
 6d6:	0a 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 6d9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 6db:	c7 05 98 0a 00 00 00 	movl   $0x0,0xa98
 6e2:	00 00 00 
    if(p->s.size >= nunits){
 6e5:	e9 42 ff ff ff       	jmp    62c <malloc+0x2c>
 6ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 6f0:	8b 08                	mov    (%eax),%ecx
 6f2:	89 0a                	mov    %ecx,(%edx)
 6f4:	eb b9                	jmp    6af <malloc+0xaf>
