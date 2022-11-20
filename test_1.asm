
_test_1:     file format elf32-i386


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
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
   f:	51                   	push   %ecx
  10:	83 ec 1c             	sub    $0x1c,%esp
   ppid = getpid();
  13:	e8 9e 05 00 00       	call   5b6 <getpid>
   void *stack, *p = malloc(PGSIZE*2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 28 0e 00 00       	mov    %eax,0xe28
   void *stack, *p = malloc(PGSIZE*2);
  25:	e8 a6 08 00 00       	call   8d0 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 db 00 00 00    	je     110 <main+0x110>
   if((uint)p % PGSIZE)
  35:	89 c2                	mov    %eax,%edx
  37:	89 c3                	mov    %eax,%ebx
  39:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  3f:	0f 85 94 00 00 00    	jne    d9 <main+0xd9>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int clone_pid = clone(worker, 0, 0, stack);
  45:	50                   	push   %eax
  46:	6a 00                	push   $0x0
  48:	6a 00                	push   $0x0
  4a:	68 30 01 00 00       	push   $0x130
  4f:	e8 82 05 00 00       	call   5d6 <clone>
   assert(clone_pid > 0);
  54:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, 0, 0, stack);
  57:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	0f 8e 92 00 00 00    	jle    f3 <main+0xf3>
  61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   while(global != 5);
  68:	8b 15 24 0e 00 00    	mov    0xe24,%edx
  6e:	83 fa 05             	cmp    $0x5,%edx
  71:	75 f5                	jne    68 <main+0x68>
   printf(1, "TEST PASSED\n");
  73:	50                   	push   %eax
  74:	50                   	push   %eax
  75:	68 1e 0a 00 00       	push   $0xa1e
  7a:	6a 01                	push   $0x1
  7c:	e8 1f 06 00 00       	call   6a0 <printf>
   
   void *join_stack;
   int join_pid = join(&join_stack);
  81:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  84:	89 04 24             	mov    %eax,(%esp)
  87:	e8 52 05 00 00       	call   5de <join>
   assert(join_pid == clone_pid);
  8c:	83 c4 10             	add    $0x10,%esp
  8f:	39 c6                	cmp    %eax,%esi
  91:	74 52                	je     e5 <main+0xe5>
  93:	6a 29                	push   $0x29
  95:	68 c8 09 00 00       	push   $0x9c8
  9a:	68 d1 09 00 00       	push   $0x9d1
  9f:	6a 01                	push   $0x1
  a1:	e8 fa 05 00 00       	call   6a0 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 2b 0a 00 00       	push   $0xa2b
   assert(clone_pid > 0);
  ae:	68 e5 09 00 00       	push   $0x9e5
  b3:	6a 01                	push   $0x1
  b5:	e8 e6 05 00 00       	call   6a0 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 f9 09 00 00       	push   $0x9f9
  c1:	6a 01                	push   $0x1
  c3:	e8 d8 05 00 00       	call   6a0 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 28 0e 00 00    	push   0xe28
  cf:	e8 92 04 00 00       	call   566 <kill>
  d4:	e8 5d 04 00 00       	call   536 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d9:	29 d0                	sub    %edx,%eax
  db:	05 00 10 00 00       	add    $0x1000,%eax
  e0:	e9 60 ff ff ff       	jmp    45 <main+0x45>
   free(p);
  e5:	83 ec 0c             	sub    $0xc,%esp
  e8:	53                   	push   %ebx
  e9:	e8 52 07 00 00       	call   840 <free>
   exit();
  ee:	e8 43 04 00 00       	call   536 <exit>
   assert(clone_pid > 0);
  f3:	6a 23                	push   $0x23
  f5:	68 c8 09 00 00       	push   $0x9c8
  fa:	68 d1 09 00 00       	push   $0x9d1
  ff:	6a 01                	push   $0x1
 101:	e8 9a 05 00 00       	call   6a0 <printf>
 106:	83 c4 0c             	add    $0xc,%esp
 109:	68 10 0a 00 00       	push   $0xa10
 10e:	eb 9e                	jmp    ae <main+0xae>
   assert(p != NULL);
 110:	6a 1c                	push   $0x1c
 112:	68 c8 09 00 00       	push   $0x9c8
 117:	68 d1 09 00 00       	push   $0x9d1
 11c:	6a 01                	push   $0x1
 11e:	e8 7d 05 00 00       	call   6a0 <printf>
 123:	83 c4 0c             	add    $0xc,%esp
 126:	68 06 0a 00 00       	push   $0xa06
 12b:	eb 81                	jmp    ae <main+0xae>
 12d:	66 90                	xchg   %ax,%ax
 12f:	90                   	nop

00000130 <worker>:
}

void
worker(void *arg1, void *arg2) {
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	83 ec 08             	sub    $0x8,%esp
   assert(global == 1);
 136:	a1 24 0e 00 00       	mov    0xe24,%eax
 13b:	83 f8 01             	cmp    $0x1,%eax
 13e:	74 46                	je     186 <worker+0x56>
 140:	6a 30                	push   $0x30
 142:	68 c8 09 00 00       	push   $0x9c8
 147:	68 d1 09 00 00       	push   $0x9d1
 14c:	6a 01                	push   $0x1
 14e:	e8 4d 05 00 00       	call   6a0 <printf>
 153:	83 c4 0c             	add    $0xc,%esp
 156:	68 d9 09 00 00       	push   $0x9d9
 15b:	68 e5 09 00 00       	push   $0x9e5
 160:	6a 01                	push   $0x1
 162:	e8 39 05 00 00       	call   6a0 <printf>
 167:	58                   	pop    %eax
 168:	5a                   	pop    %edx
 169:	68 f9 09 00 00       	push   $0x9f9
 16e:	6a 01                	push   $0x1
 170:	e8 2b 05 00 00       	call   6a0 <printf>
 175:	59                   	pop    %ecx
 176:	ff 35 28 0e 00 00    	push   0xe28
 17c:	e8 e5 03 00 00       	call   566 <kill>
 181:	e8 b0 03 00 00       	call   536 <exit>
   global = 5;
 186:	c7 05 24 0e 00 00 05 	movl   $0x5,0xe24
 18d:	00 00 00 
   exit();
 190:	e8 a1 03 00 00       	call   536 <exit>
 195:	66 90                	xchg   %ax,%ax
 197:	66 90                	xchg   %ax,%ax
 199:	66 90                	xchg   %ax,%ax
 19b:	66 90                	xchg   %ax,%ax
 19d:	66 90                	xchg   %ax,%ax
 19f:	90                   	nop

000001a0 <strcpy>:

lock_t lk_create,lk_join;

char*
strcpy(char *s, const char *t)
{
 1a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1a1:	31 c0                	xor    %eax,%eax
{
 1a3:	89 e5                	mov    %esp,%ebp
 1a5:	53                   	push   %ebx
 1a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 1b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 1b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 1b7:	83 c0 01             	add    $0x1,%eax
 1ba:	84 d2                	test   %dl,%dl
 1bc:	75 f2                	jne    1b0 <strcpy+0x10>
    ;
  return os;
}
 1be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 1c1:	89 c8                	mov    %ecx,%eax
 1c3:	c9                   	leave  
 1c4:	c3                   	ret    
 1c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000001d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	53                   	push   %ebx
 1d4:	8b 55 08             	mov    0x8(%ebp),%edx
 1d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1da:	0f b6 02             	movzbl (%edx),%eax
 1dd:	84 c0                	test   %al,%al
 1df:	75 17                	jne    1f8 <strcmp+0x28>
 1e1:	eb 3a                	jmp    21d <strcmp+0x4d>
 1e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1e7:	90                   	nop
 1e8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 1ec:	83 c2 01             	add    $0x1,%edx
 1ef:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 1f2:	84 c0                	test   %al,%al
 1f4:	74 1a                	je     210 <strcmp+0x40>
    p++, q++;
 1f6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 1f8:	0f b6 19             	movzbl (%ecx),%ebx
 1fb:	38 c3                	cmp    %al,%bl
 1fd:	74 e9                	je     1e8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 1ff:	29 d8                	sub    %ebx,%eax
}
 201:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 204:	c9                   	leave  
 205:	c3                   	ret    
 206:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 20d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 210:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 214:	31 c0                	xor    %eax,%eax
 216:	29 d8                	sub    %ebx,%eax
}
 218:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 21b:	c9                   	leave  
 21c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 21d:	0f b6 19             	movzbl (%ecx),%ebx
 220:	31 c0                	xor    %eax,%eax
 222:	eb db                	jmp    1ff <strcmp+0x2f>
 224:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 22f:	90                   	nop

00000230 <strlen>:

uint
strlen(const char *s)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 236:	80 3a 00             	cmpb   $0x0,(%edx)
 239:	74 15                	je     250 <strlen+0x20>
 23b:	31 c0                	xor    %eax,%eax
 23d:	8d 76 00             	lea    0x0(%esi),%esi
 240:	83 c0 01             	add    $0x1,%eax
 243:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 247:	89 c1                	mov    %eax,%ecx
 249:	75 f5                	jne    240 <strlen+0x10>
    ;
  return n;
}
 24b:	89 c8                	mov    %ecx,%eax
 24d:	5d                   	pop    %ebp
 24e:	c3                   	ret    
 24f:	90                   	nop
  for(n = 0; s[n]; n++)
 250:	31 c9                	xor    %ecx,%ecx
}
 252:	5d                   	pop    %ebp
 253:	89 c8                	mov    %ecx,%eax
 255:	c3                   	ret    
 256:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25d:	8d 76 00             	lea    0x0(%esi),%esi

00000260 <memset>:

void*
memset(void *dst, int c, uint n)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	57                   	push   %edi
 264:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 267:	8b 4d 10             	mov    0x10(%ebp),%ecx
 26a:	8b 45 0c             	mov    0xc(%ebp),%eax
 26d:	89 d7                	mov    %edx,%edi
 26f:	fc                   	cld    
 270:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 272:	8b 7d fc             	mov    -0x4(%ebp),%edi
 275:	89 d0                	mov    %edx,%eax
 277:	c9                   	leave  
 278:	c3                   	ret    
 279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000280 <strchr>:

char*
strchr(const char *s, char c)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	8b 45 08             	mov    0x8(%ebp),%eax
 286:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 28a:	0f b6 10             	movzbl (%eax),%edx
 28d:	84 d2                	test   %dl,%dl
 28f:	75 12                	jne    2a3 <strchr+0x23>
 291:	eb 1d                	jmp    2b0 <strchr+0x30>
 293:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 297:	90                   	nop
 298:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 29c:	83 c0 01             	add    $0x1,%eax
 29f:	84 d2                	test   %dl,%dl
 2a1:	74 0d                	je     2b0 <strchr+0x30>
    if(*s == c)
 2a3:	38 d1                	cmp    %dl,%cl
 2a5:	75 f1                	jne    298 <strchr+0x18>
      return (char*)s;
  return 0;
}
 2a7:	5d                   	pop    %ebp
 2a8:	c3                   	ret    
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 2b0:	31 c0                	xor    %eax,%eax
}
 2b2:	5d                   	pop    %ebp
 2b3:	c3                   	ret    
 2b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2bf:	90                   	nop

000002c0 <gets>:

char*
gets(char *buf, int max)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	57                   	push   %edi
 2c4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 2c5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 2c8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 2c9:	31 db                	xor    %ebx,%ebx
{
 2cb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 2ce:	eb 27                	jmp    2f7 <gets+0x37>
    cc = read(0, &c, 1);
 2d0:	83 ec 04             	sub    $0x4,%esp
 2d3:	6a 01                	push   $0x1
 2d5:	57                   	push   %edi
 2d6:	6a 00                	push   $0x0
 2d8:	e8 71 02 00 00       	call   54e <read>
    if(cc < 1)
 2dd:	83 c4 10             	add    $0x10,%esp
 2e0:	85 c0                	test   %eax,%eax
 2e2:	7e 1d                	jle    301 <gets+0x41>
      break;
    buf[i++] = c;
 2e4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2e8:	8b 55 08             	mov    0x8(%ebp),%edx
 2eb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 2ef:	3c 0a                	cmp    $0xa,%al
 2f1:	74 1d                	je     310 <gets+0x50>
 2f3:	3c 0d                	cmp    $0xd,%al
 2f5:	74 19                	je     310 <gets+0x50>
  for(i=0; i+1 < max; ){
 2f7:	89 de                	mov    %ebx,%esi
 2f9:	83 c3 01             	add    $0x1,%ebx
 2fc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2ff:	7c cf                	jl     2d0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 301:	8b 45 08             	mov    0x8(%ebp),%eax
 304:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 308:	8d 65 f4             	lea    -0xc(%ebp),%esp
 30b:	5b                   	pop    %ebx
 30c:	5e                   	pop    %esi
 30d:	5f                   	pop    %edi
 30e:	5d                   	pop    %ebp
 30f:	c3                   	ret    
  buf[i] = '\0';
 310:	8b 45 08             	mov    0x8(%ebp),%eax
 313:	89 de                	mov    %ebx,%esi
 315:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 319:	8d 65 f4             	lea    -0xc(%ebp),%esp
 31c:	5b                   	pop    %ebx
 31d:	5e                   	pop    %esi
 31e:	5f                   	pop    %edi
 31f:	5d                   	pop    %ebp
 320:	c3                   	ret    
 321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 328:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32f:	90                   	nop

00000330 <stat>:

int
stat(const char *n, struct stat *st)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	56                   	push   %esi
 334:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 335:	83 ec 08             	sub    $0x8,%esp
 338:	6a 00                	push   $0x0
 33a:	ff 75 08             	push   0x8(%ebp)
 33d:	e8 34 02 00 00       	call   576 <open>
  if(fd < 0)
 342:	83 c4 10             	add    $0x10,%esp
 345:	85 c0                	test   %eax,%eax
 347:	78 27                	js     370 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 349:	83 ec 08             	sub    $0x8,%esp
 34c:	ff 75 0c             	push   0xc(%ebp)
 34f:	89 c3                	mov    %eax,%ebx
 351:	50                   	push   %eax
 352:	e8 37 02 00 00       	call   58e <fstat>
  close(fd);
 357:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 35a:	89 c6                	mov    %eax,%esi
  close(fd);
 35c:	e8 fd 01 00 00       	call   55e <close>
  return r;
 361:	83 c4 10             	add    $0x10,%esp
}
 364:	8d 65 f8             	lea    -0x8(%ebp),%esp
 367:	89 f0                	mov    %esi,%eax
 369:	5b                   	pop    %ebx
 36a:	5e                   	pop    %esi
 36b:	5d                   	pop    %ebp
 36c:	c3                   	ret    
 36d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 370:	be ff ff ff ff       	mov    $0xffffffff,%esi
 375:	eb ed                	jmp    364 <stat+0x34>
 377:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37e:	66 90                	xchg   %ax,%ax

00000380 <atoi>:

int
atoi(const char *s)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	53                   	push   %ebx
 384:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 387:	0f be 02             	movsbl (%edx),%eax
 38a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 38d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 390:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 395:	77 1e                	ja     3b5 <atoi+0x35>
 397:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3a0:	83 c2 01             	add    $0x1,%edx
 3a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3a6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3aa:	0f be 02             	movsbl (%edx),%eax
 3ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
 3b0:	80 fb 09             	cmp    $0x9,%bl
 3b3:	76 eb                	jbe    3a0 <atoi+0x20>
  return n;
}
 3b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3b8:	89 c8                	mov    %ecx,%eax
 3ba:	c9                   	leave  
 3bb:	c3                   	ret    
 3bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	8b 45 10             	mov    0x10(%ebp),%eax
 3c7:	8b 55 08             	mov    0x8(%ebp),%edx
 3ca:	56                   	push   %esi
 3cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3ce:	85 c0                	test   %eax,%eax
 3d0:	7e 13                	jle    3e5 <memmove+0x25>
 3d2:	01 d0                	add    %edx,%eax
  dst = vdst;
 3d4:	89 d7                	mov    %edx,%edi
 3d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 3e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 3e1:	39 f8                	cmp    %edi,%eax
 3e3:	75 fb                	jne    3e0 <memmove+0x20>
  return vdst;
}
 3e5:	5e                   	pop    %esi
 3e6:	89 d0                	mov    %edx,%eax
 3e8:	5f                   	pop    %edi
 3e9:	5d                   	pop    %ebp
 3ea:	c3                   	ret    
 3eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ef:	90                   	nop

000003f0 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 3f0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 3f1:	ba 01 00 00 00       	mov    $0x1,%edx
 3f6:	89 e5                	mov    %esp,%ebp
 3f8:	83 ec 08             	sub    $0x8,%esp
 3fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop
 400:	89 d0                	mov    %edx,%eax
 402:	f0 87 05 30 0e 00 00 	lock xchg %eax,0xe30
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 409:	85 c0                	test   %eax,%eax
 40b:	75 f3                	jne    400 <thread_create+0x10>
    __sync_synchronize();
 40d:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 412:	83 ec 0c             	sub    $0xc,%esp
 415:	68 00 20 00 00       	push   $0x2000
 41a:	e8 b1 04 00 00       	call   8d0 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 41f:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 424:	c7 05 30 0e 00 00 00 	movl   $0x0,0xe30
 42b:	00 00 00 
	if((uint)stack % PGSIZE)
 42e:	89 c2                	mov    %eax,%edx
 430:	83 c4 10             	add    $0x10,%esp
 433:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 439:	74 07                	je     442 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 43b:	29 d0                	sub    %edx,%eax
 43d:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 442:	50                   	push   %eax
 443:	ff 75 10             	push   0x10(%ebp)
 446:	ff 75 0c             	push   0xc(%ebp)
 449:	ff 75 08             	push   0x8(%ebp)
 44c:	e8 85 01 00 00       	call   5d6 <clone>
}
 451:	c9                   	leave  
 452:	c3                   	ret    
 453:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000460 <thread_join>:
int thread_join(){
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	53                   	push   %ebx
	int result= join(&stack);
 464:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 467:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 46a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 471:	50                   	push   %eax
 472:	e8 67 01 00 00       	call   5de <join>
    while(xchg(&(lock->mutex), 1) != 0);
 477:	83 c4 10             	add    $0x10,%esp
 47a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 47f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 488:	89 d0                	mov    %edx,%eax
 48a:	f0 87 05 2c 0e 00 00 	lock xchg %eax,0xe2c
 491:	85 c0                	test   %eax,%eax
 493:	75 f3                	jne    488 <thread_join+0x28>
    __sync_synchronize();
 495:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 49a:	83 ec 0c             	sub    $0xc,%esp
 49d:	ff 75 f4             	push   -0xc(%ebp)
 4a0:	e8 9b 03 00 00       	call   840 <free>
   __sync_synchronize();
 4a5:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 4aa:	c7 05 2c 0e 00 00 00 	movl   $0x0,0xe2c
 4b1:	00 00 00 
}
 4b4:	89 d8                	mov    %ebx,%eax
 4b6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4b9:	c9                   	leave  
 4ba:	c3                   	ret    
 4bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop

000004c0 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 4c0:	c7 05 30 0e 00 00 00 	movl   $0x0,0xe30
 4c7:	00 00 00 
 4ca:	c7 05 2c 0e 00 00 00 	movl   $0x0,0xe2c
 4d1:	00 00 00 
}
 4d4:	c3                   	ret    
 4d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 4e0:	55                   	push   %ebp
 4e1:	b9 01 00 00 00       	mov    $0x1,%ecx
 4e6:	89 e5                	mov    %esp,%ebp
 4e8:	8b 55 08             	mov    0x8(%ebp),%edx
 4eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4ef:	90                   	nop
 4f0:	89 c8                	mov    %ecx,%eax
 4f2:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 4f5:	85 c0                	test   %eax,%eax
 4f7:	75 f7                	jne    4f0 <lock_acquire+0x10>
    __sync_synchronize();
 4f9:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 4fe:	5d                   	pop    %ebp
 4ff:	c3                   	ret    

00000500 <lock_release>:
void lock_release(lock_t *lock){
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 506:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 50b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 511:	5d                   	pop    %ebp
 512:	c3                   	ret    
 513:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000520 <lock_init>:
void lock_init(lock_t *lock) {
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 523:	8b 45 08             	mov    0x8(%ebp),%eax
 526:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 52c:	5d                   	pop    %ebp
 52d:	c3                   	ret    

0000052e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 52e:	b8 01 00 00 00       	mov    $0x1,%eax
 533:	cd 40                	int    $0x40
 535:	c3                   	ret    

00000536 <exit>:
SYSCALL(exit)
 536:	b8 02 00 00 00       	mov    $0x2,%eax
 53b:	cd 40                	int    $0x40
 53d:	c3                   	ret    

0000053e <wait>:
SYSCALL(wait)
 53e:	b8 03 00 00 00       	mov    $0x3,%eax
 543:	cd 40                	int    $0x40
 545:	c3                   	ret    

00000546 <pipe>:
SYSCALL(pipe)
 546:	b8 04 00 00 00       	mov    $0x4,%eax
 54b:	cd 40                	int    $0x40
 54d:	c3                   	ret    

0000054e <read>:
SYSCALL(read)
 54e:	b8 05 00 00 00       	mov    $0x5,%eax
 553:	cd 40                	int    $0x40
 555:	c3                   	ret    

00000556 <write>:
SYSCALL(write)
 556:	b8 10 00 00 00       	mov    $0x10,%eax
 55b:	cd 40                	int    $0x40
 55d:	c3                   	ret    

0000055e <close>:
SYSCALL(close)
 55e:	b8 15 00 00 00       	mov    $0x15,%eax
 563:	cd 40                	int    $0x40
 565:	c3                   	ret    

00000566 <kill>:
SYSCALL(kill)
 566:	b8 06 00 00 00       	mov    $0x6,%eax
 56b:	cd 40                	int    $0x40
 56d:	c3                   	ret    

0000056e <exec>:
SYSCALL(exec)
 56e:	b8 07 00 00 00       	mov    $0x7,%eax
 573:	cd 40                	int    $0x40
 575:	c3                   	ret    

00000576 <open>:
SYSCALL(open)
 576:	b8 0f 00 00 00       	mov    $0xf,%eax
 57b:	cd 40                	int    $0x40
 57d:	c3                   	ret    

0000057e <mknod>:
SYSCALL(mknod)
 57e:	b8 11 00 00 00       	mov    $0x11,%eax
 583:	cd 40                	int    $0x40
 585:	c3                   	ret    

00000586 <unlink>:
SYSCALL(unlink)
 586:	b8 12 00 00 00       	mov    $0x12,%eax
 58b:	cd 40                	int    $0x40
 58d:	c3                   	ret    

0000058e <fstat>:
SYSCALL(fstat)
 58e:	b8 08 00 00 00       	mov    $0x8,%eax
 593:	cd 40                	int    $0x40
 595:	c3                   	ret    

00000596 <link>:
SYSCALL(link)
 596:	b8 13 00 00 00       	mov    $0x13,%eax
 59b:	cd 40                	int    $0x40
 59d:	c3                   	ret    

0000059e <mkdir>:
SYSCALL(mkdir)
 59e:	b8 14 00 00 00       	mov    $0x14,%eax
 5a3:	cd 40                	int    $0x40
 5a5:	c3                   	ret    

000005a6 <chdir>:
SYSCALL(chdir)
 5a6:	b8 09 00 00 00       	mov    $0x9,%eax
 5ab:	cd 40                	int    $0x40
 5ad:	c3                   	ret    

000005ae <dup>:
SYSCALL(dup)
 5ae:	b8 0a 00 00 00       	mov    $0xa,%eax
 5b3:	cd 40                	int    $0x40
 5b5:	c3                   	ret    

000005b6 <getpid>:
SYSCALL(getpid)
 5b6:	b8 0b 00 00 00       	mov    $0xb,%eax
 5bb:	cd 40                	int    $0x40
 5bd:	c3                   	ret    

000005be <sbrk>:
SYSCALL(sbrk)
 5be:	b8 0c 00 00 00       	mov    $0xc,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    

000005c6 <sleep>:
SYSCALL(sleep)
 5c6:	b8 0d 00 00 00       	mov    $0xd,%eax
 5cb:	cd 40                	int    $0x40
 5cd:	c3                   	ret    

000005ce <uptime>:
SYSCALL(uptime)
 5ce:	b8 0e 00 00 00       	mov    $0xe,%eax
 5d3:	cd 40                	int    $0x40
 5d5:	c3                   	ret    

000005d6 <clone>:
SYSCALL(clone)
 5d6:	b8 16 00 00 00       	mov    $0x16,%eax
 5db:	cd 40                	int    $0x40
 5dd:	c3                   	ret    

000005de <join>:
SYSCALL(join)
 5de:	b8 17 00 00 00       	mov    $0x17,%eax
 5e3:	cd 40                	int    $0x40
 5e5:	c3                   	ret    
 5e6:	66 90                	xchg   %ax,%ax
 5e8:	66 90                	xchg   %ax,%ax
 5ea:	66 90                	xchg   %ax,%ax
 5ec:	66 90                	xchg   %ax,%ax
 5ee:	66 90                	xchg   %ax,%ax

000005f0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5f0:	55                   	push   %ebp
 5f1:	89 e5                	mov    %esp,%ebp
 5f3:	57                   	push   %edi
 5f4:	56                   	push   %esi
 5f5:	53                   	push   %ebx
 5f6:	83 ec 3c             	sub    $0x3c,%esp
 5f9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5fc:	89 d1                	mov    %edx,%ecx
{
 5fe:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 601:	85 d2                	test   %edx,%edx
 603:	0f 89 7f 00 00 00    	jns    688 <printint+0x98>
 609:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 60d:	74 79                	je     688 <printint+0x98>
    neg = 1;
 60f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 616:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 618:	31 db                	xor    %ebx,%ebx
 61a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 61d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 620:	89 c8                	mov    %ecx,%eax
 622:	31 d2                	xor    %edx,%edx
 624:	89 cf                	mov    %ecx,%edi
 626:	f7 75 c4             	divl   -0x3c(%ebp)
 629:	0f b6 92 a0 0a 00 00 	movzbl 0xaa0(%edx),%edx
 630:	89 45 c0             	mov    %eax,-0x40(%ebp)
 633:	89 d8                	mov    %ebx,%eax
 635:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 638:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 63b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 63e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 641:	76 dd                	jbe    620 <printint+0x30>
  if(neg)
 643:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 646:	85 c9                	test   %ecx,%ecx
 648:	74 0c                	je     656 <printint+0x66>
    buf[i++] = '-';
 64a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 64f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 651:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 656:	8b 7d b8             	mov    -0x48(%ebp),%edi
 659:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 65d:	eb 07                	jmp    666 <printint+0x76>
 65f:	90                   	nop
    putc(fd, buf[i]);
 660:	0f b6 13             	movzbl (%ebx),%edx
 663:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 666:	83 ec 04             	sub    $0x4,%esp
 669:	88 55 d7             	mov    %dl,-0x29(%ebp)
 66c:	6a 01                	push   $0x1
 66e:	56                   	push   %esi
 66f:	57                   	push   %edi
 670:	e8 e1 fe ff ff       	call   556 <write>
  while(--i >= 0)
 675:	83 c4 10             	add    $0x10,%esp
 678:	39 de                	cmp    %ebx,%esi
 67a:	75 e4                	jne    660 <printint+0x70>
}
 67c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 67f:	5b                   	pop    %ebx
 680:	5e                   	pop    %esi
 681:	5f                   	pop    %edi
 682:	5d                   	pop    %ebp
 683:	c3                   	ret    
 684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 688:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 68f:	eb 87                	jmp    618 <printint+0x28>
 691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 698:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69f:	90                   	nop

000006a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	57                   	push   %edi
 6a4:	56                   	push   %esi
 6a5:	53                   	push   %ebx
 6a6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6ac:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6af:	0f b6 13             	movzbl (%ebx),%edx
 6b2:	84 d2                	test   %dl,%dl
 6b4:	74 6a                	je     720 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 6b6:	8d 45 10             	lea    0x10(%ebp),%eax
 6b9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 6bc:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 6bf:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6c1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6c4:	eb 36                	jmp    6fc <printf+0x5c>
 6c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
 6d0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6d3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6d8:	83 f8 25             	cmp    $0x25,%eax
 6db:	74 15                	je     6f2 <printf+0x52>
  write(fd, &c, 1);
 6dd:	83 ec 04             	sub    $0x4,%esp
 6e0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6e3:	6a 01                	push   $0x1
 6e5:	57                   	push   %edi
 6e6:	56                   	push   %esi
 6e7:	e8 6a fe ff ff       	call   556 <write>
 6ec:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6ef:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6f2:	0f b6 13             	movzbl (%ebx),%edx
 6f5:	83 c3 01             	add    $0x1,%ebx
 6f8:	84 d2                	test   %dl,%dl
 6fa:	74 24                	je     720 <printf+0x80>
    c = fmt[i] & 0xff;
 6fc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6ff:	85 c9                	test   %ecx,%ecx
 701:	74 cd                	je     6d0 <printf+0x30>
      }
    } else if(state == '%'){
 703:	83 f9 25             	cmp    $0x25,%ecx
 706:	75 ea                	jne    6f2 <printf+0x52>
      if(c == 'd'){
 708:	83 f8 25             	cmp    $0x25,%eax
 70b:	0f 84 07 01 00 00    	je     818 <printf+0x178>
 711:	83 e8 63             	sub    $0x63,%eax
 714:	83 f8 15             	cmp    $0x15,%eax
 717:	77 17                	ja     730 <printf+0x90>
 719:	ff 24 85 48 0a 00 00 	jmp    *0xa48(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 720:	8d 65 f4             	lea    -0xc(%ebp),%esp
 723:	5b                   	pop    %ebx
 724:	5e                   	pop    %esi
 725:	5f                   	pop    %edi
 726:	5d                   	pop    %ebp
 727:	c3                   	ret    
 728:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72f:	90                   	nop
  write(fd, &c, 1);
 730:	83 ec 04             	sub    $0x4,%esp
 733:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 736:	6a 01                	push   $0x1
 738:	57                   	push   %edi
 739:	56                   	push   %esi
 73a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 73e:	e8 13 fe ff ff       	call   556 <write>
        putc(fd, c);
 743:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 747:	83 c4 0c             	add    $0xc,%esp
 74a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 74d:	6a 01                	push   $0x1
 74f:	57                   	push   %edi
 750:	56                   	push   %esi
 751:	e8 00 fe ff ff       	call   556 <write>
        putc(fd, c);
 756:	83 c4 10             	add    $0x10,%esp
      state = 0;
 759:	31 c9                	xor    %ecx,%ecx
 75b:	eb 95                	jmp    6f2 <printf+0x52>
 75d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 760:	83 ec 0c             	sub    $0xc,%esp
 763:	b9 10 00 00 00       	mov    $0x10,%ecx
 768:	6a 00                	push   $0x0
 76a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 76d:	8b 10                	mov    (%eax),%edx
 76f:	89 f0                	mov    %esi,%eax
 771:	e8 7a fe ff ff       	call   5f0 <printint>
        ap++;
 776:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 77a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 77d:	31 c9                	xor    %ecx,%ecx
 77f:	e9 6e ff ff ff       	jmp    6f2 <printf+0x52>
 784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 788:	8b 45 d0             	mov    -0x30(%ebp),%eax
 78b:	8b 10                	mov    (%eax),%edx
        ap++;
 78d:	83 c0 04             	add    $0x4,%eax
 790:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 793:	85 d2                	test   %edx,%edx
 795:	0f 84 8d 00 00 00    	je     828 <printf+0x188>
        while(*s != 0){
 79b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 79e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7a0:	84 c0                	test   %al,%al
 7a2:	0f 84 4a ff ff ff    	je     6f2 <printf+0x52>
 7a8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7ab:	89 d3                	mov    %edx,%ebx
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 7b0:	83 ec 04             	sub    $0x4,%esp
          s++;
 7b3:	83 c3 01             	add    $0x1,%ebx
 7b6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7b9:	6a 01                	push   $0x1
 7bb:	57                   	push   %edi
 7bc:	56                   	push   %esi
 7bd:	e8 94 fd ff ff       	call   556 <write>
        while(*s != 0){
 7c2:	0f b6 03             	movzbl (%ebx),%eax
 7c5:	83 c4 10             	add    $0x10,%esp
 7c8:	84 c0                	test   %al,%al
 7ca:	75 e4                	jne    7b0 <printf+0x110>
      state = 0;
 7cc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7cf:	31 c9                	xor    %ecx,%ecx
 7d1:	e9 1c ff ff ff       	jmp    6f2 <printf+0x52>
 7d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7dd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7e0:	83 ec 0c             	sub    $0xc,%esp
 7e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7e8:	6a 01                	push   $0x1
 7ea:	e9 7b ff ff ff       	jmp    76a <printf+0xca>
 7ef:	90                   	nop
        putc(fd, *ap);
 7f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7f3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7f6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7f8:	6a 01                	push   $0x1
 7fa:	57                   	push   %edi
 7fb:	56                   	push   %esi
        putc(fd, *ap);
 7fc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7ff:	e8 52 fd ff ff       	call   556 <write>
        ap++;
 804:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 808:	83 c4 10             	add    $0x10,%esp
      state = 0;
 80b:	31 c9                	xor    %ecx,%ecx
 80d:	e9 e0 fe ff ff       	jmp    6f2 <printf+0x52>
 812:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 818:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 81b:	83 ec 04             	sub    $0x4,%esp
 81e:	e9 2a ff ff ff       	jmp    74d <printf+0xad>
 823:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 827:	90                   	nop
          s = "(null)";
 828:	ba 41 0a 00 00       	mov    $0xa41,%edx
        while(*s != 0){
 82d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 830:	b8 28 00 00 00       	mov    $0x28,%eax
 835:	89 d3                	mov    %edx,%ebx
 837:	e9 74 ff ff ff       	jmp    7b0 <printf+0x110>
 83c:	66 90                	xchg   %ax,%ax
 83e:	66 90                	xchg   %ax,%ax

00000840 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 840:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 841:	a1 34 0e 00 00       	mov    0xe34,%eax
{
 846:	89 e5                	mov    %esp,%ebp
 848:	57                   	push   %edi
 849:	56                   	push   %esi
 84a:	53                   	push   %ebx
 84b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 84e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 851:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 858:	89 c2                	mov    %eax,%edx
 85a:	8b 00                	mov    (%eax),%eax
 85c:	39 ca                	cmp    %ecx,%edx
 85e:	73 30                	jae    890 <free+0x50>
 860:	39 c1                	cmp    %eax,%ecx
 862:	72 04                	jb     868 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 864:	39 c2                	cmp    %eax,%edx
 866:	72 f0                	jb     858 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 868:	8b 73 fc             	mov    -0x4(%ebx),%esi
 86b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 86e:	39 f8                	cmp    %edi,%eax
 870:	74 30                	je     8a2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 872:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 875:	8b 42 04             	mov    0x4(%edx),%eax
 878:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 87b:	39 f1                	cmp    %esi,%ecx
 87d:	74 3a                	je     8b9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 87f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 881:	5b                   	pop    %ebx
  freep = p;
 882:	89 15 34 0e 00 00    	mov    %edx,0xe34
}
 888:	5e                   	pop    %esi
 889:	5f                   	pop    %edi
 88a:	5d                   	pop    %ebp
 88b:	c3                   	ret    
 88c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 890:	39 c2                	cmp    %eax,%edx
 892:	72 c4                	jb     858 <free+0x18>
 894:	39 c1                	cmp    %eax,%ecx
 896:	73 c0                	jae    858 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 898:	8b 73 fc             	mov    -0x4(%ebx),%esi
 89b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 89e:	39 f8                	cmp    %edi,%eax
 8a0:	75 d0                	jne    872 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8a2:	03 70 04             	add    0x4(%eax),%esi
 8a5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8a8:	8b 02                	mov    (%edx),%eax
 8aa:	8b 00                	mov    (%eax),%eax
 8ac:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8af:	8b 42 04             	mov    0x4(%edx),%eax
 8b2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8b5:	39 f1                	cmp    %esi,%ecx
 8b7:	75 c6                	jne    87f <free+0x3f>
    p->s.size += bp->s.size;
 8b9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 8bc:	89 15 34 0e 00 00    	mov    %edx,0xe34
    p->s.size += bp->s.size;
 8c2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8c5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8c8:	89 0a                	mov    %ecx,(%edx)
}
 8ca:	5b                   	pop    %ebx
 8cb:	5e                   	pop    %esi
 8cc:	5f                   	pop    %edi
 8cd:	5d                   	pop    %ebp
 8ce:	c3                   	ret    
 8cf:	90                   	nop

000008d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8d0:	55                   	push   %ebp
 8d1:	89 e5                	mov    %esp,%ebp
 8d3:	57                   	push   %edi
 8d4:	56                   	push   %esi
 8d5:	53                   	push   %ebx
 8d6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8d9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8dc:	8b 3d 34 0e 00 00    	mov    0xe34,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8e2:	8d 70 07             	lea    0x7(%eax),%esi
 8e5:	c1 ee 03             	shr    $0x3,%esi
 8e8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8eb:	85 ff                	test   %edi,%edi
 8ed:	0f 84 9d 00 00 00    	je     990 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8f3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8f5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8f8:	39 f1                	cmp    %esi,%ecx
 8fa:	73 6a                	jae    966 <malloc+0x96>
 8fc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 901:	39 de                	cmp    %ebx,%esi
 903:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 906:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 90d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 910:	eb 17                	jmp    929 <malloc+0x59>
 912:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 918:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 91a:	8b 48 04             	mov    0x4(%eax),%ecx
 91d:	39 f1                	cmp    %esi,%ecx
 91f:	73 4f                	jae    970 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 921:	8b 3d 34 0e 00 00    	mov    0xe34,%edi
 927:	89 c2                	mov    %eax,%edx
 929:	39 d7                	cmp    %edx,%edi
 92b:	75 eb                	jne    918 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 92d:	83 ec 0c             	sub    $0xc,%esp
 930:	ff 75 e4             	push   -0x1c(%ebp)
 933:	e8 86 fc ff ff       	call   5be <sbrk>
  if(p == (char*)-1)
 938:	83 c4 10             	add    $0x10,%esp
 93b:	83 f8 ff             	cmp    $0xffffffff,%eax
 93e:	74 1c                	je     95c <malloc+0x8c>
  hp->s.size = nu;
 940:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 943:	83 ec 0c             	sub    $0xc,%esp
 946:	83 c0 08             	add    $0x8,%eax
 949:	50                   	push   %eax
 94a:	e8 f1 fe ff ff       	call   840 <free>
  return freep;
 94f:	8b 15 34 0e 00 00    	mov    0xe34,%edx
      if((p = morecore(nunits)) == 0)
 955:	83 c4 10             	add    $0x10,%esp
 958:	85 d2                	test   %edx,%edx
 95a:	75 bc                	jne    918 <malloc+0x48>
        return 0;
  }
}
 95c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 95f:	31 c0                	xor    %eax,%eax
}
 961:	5b                   	pop    %ebx
 962:	5e                   	pop    %esi
 963:	5f                   	pop    %edi
 964:	5d                   	pop    %ebp
 965:	c3                   	ret    
    if(p->s.size >= nunits){
 966:	89 d0                	mov    %edx,%eax
 968:	89 fa                	mov    %edi,%edx
 96a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 970:	39 ce                	cmp    %ecx,%esi
 972:	74 4c                	je     9c0 <malloc+0xf0>
        p->s.size -= nunits;
 974:	29 f1                	sub    %esi,%ecx
 976:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 979:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 97c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 97f:	89 15 34 0e 00 00    	mov    %edx,0xe34
}
 985:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 988:	83 c0 08             	add    $0x8,%eax
}
 98b:	5b                   	pop    %ebx
 98c:	5e                   	pop    %esi
 98d:	5f                   	pop    %edi
 98e:	5d                   	pop    %ebp
 98f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 990:	c7 05 34 0e 00 00 38 	movl   $0xe38,0xe34
 997:	0e 00 00 
    base.s.size = 0;
 99a:	bf 38 0e 00 00       	mov    $0xe38,%edi
    base.s.ptr = freep = prevp = &base;
 99f:	c7 05 38 0e 00 00 38 	movl   $0xe38,0xe38
 9a6:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9a9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9ab:	c7 05 3c 0e 00 00 00 	movl   $0x0,0xe3c
 9b2:	00 00 00 
    if(p->s.size >= nunits){
 9b5:	e9 42 ff ff ff       	jmp    8fc <malloc+0x2c>
 9ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9c0:	8b 08                	mov    (%eax),%ecx
 9c2:	89 0a                	mov    %ecx,(%edx)
 9c4:	eb b9                	jmp    97f <malloc+0xaf>
