
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
  13:	e8 ec 05 00 00       	call   604 <getpid>
   void *stack, *p = malloc(PGSIZE*2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 88 0e 00 00       	mov    %eax,0xe88
   void *stack, *p = malloc(PGSIZE*2);
  25:	e8 f6 08 00 00       	call   920 <malloc>
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
  4f:	e8 d0 05 00 00       	call   624 <clone>
   assert(clone_pid > 0);
  54:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, 0, 0, stack);
  57:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	0f 8e 92 00 00 00    	jle    f3 <main+0xf3>
  61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   while(global != 5);
  68:	8b 15 84 0e 00 00    	mov    0xe84,%edx
  6e:	83 fa 05             	cmp    $0x5,%edx
  71:	75 f5                	jne    68 <main+0x68>
   printf(1, "TEST PASSED\n");
  73:	50                   	push   %eax
  74:	50                   	push   %eax
  75:	68 6e 0a 00 00       	push   $0xa6e
  7a:	6a 01                	push   $0x1
  7c:	e8 6f 06 00 00       	call   6f0 <printf>
   
   void *join_stack;
   int join_pid = join(&join_stack);
  81:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  84:	89 04 24             	mov    %eax,(%esp)
  87:	e8 a0 05 00 00       	call   62c <join>
   assert(join_pid == clone_pid);
  8c:	83 c4 10             	add    $0x10,%esp
  8f:	39 c6                	cmp    %eax,%esi
  91:	74 52                	je     e5 <main+0xe5>
  93:	6a 29                	push   $0x29
  95:	68 18 0a 00 00       	push   $0xa18
  9a:	68 21 0a 00 00       	push   $0xa21
  9f:	6a 01                	push   $0x1
  a1:	e8 4a 06 00 00       	call   6f0 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 7b 0a 00 00       	push   $0xa7b
   assert(clone_pid > 0);
  ae:	68 35 0a 00 00       	push   $0xa35
  b3:	6a 01                	push   $0x1
  b5:	e8 36 06 00 00       	call   6f0 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 49 0a 00 00       	push   $0xa49
  c1:	6a 01                	push   $0x1
  c3:	e8 28 06 00 00       	call   6f0 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 88 0e 00 00    	push   0xe88
  cf:	e8 e0 04 00 00       	call   5b4 <kill>
  d4:	e8 ab 04 00 00       	call   584 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d9:	29 d0                	sub    %edx,%eax
  db:	05 00 10 00 00       	add    $0x1000,%eax
  e0:	e9 60 ff ff ff       	jmp    45 <main+0x45>
   free(p);
  e5:	83 ec 0c             	sub    $0xc,%esp
  e8:	53                   	push   %ebx
  e9:	e8 a2 07 00 00       	call   890 <free>
   exit();
  ee:	e8 91 04 00 00       	call   584 <exit>
   assert(clone_pid > 0);
  f3:	6a 23                	push   $0x23
  f5:	68 18 0a 00 00       	push   $0xa18
  fa:	68 21 0a 00 00       	push   $0xa21
  ff:	6a 01                	push   $0x1
 101:	e8 ea 05 00 00       	call   6f0 <printf>
 106:	83 c4 0c             	add    $0xc,%esp
 109:	68 60 0a 00 00       	push   $0xa60
 10e:	eb 9e                	jmp    ae <main+0xae>
   assert(p != NULL);
 110:	6a 1c                	push   $0x1c
 112:	68 18 0a 00 00       	push   $0xa18
 117:	68 21 0a 00 00       	push   $0xa21
 11c:	6a 01                	push   $0x1
 11e:	e8 cd 05 00 00       	call   6f0 <printf>
 123:	83 c4 0c             	add    $0xc,%esp
 126:	68 56 0a 00 00       	push   $0xa56
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
 136:	a1 84 0e 00 00       	mov    0xe84,%eax
 13b:	83 f8 01             	cmp    $0x1,%eax
 13e:	74 46                	je     186 <worker+0x56>
 140:	6a 30                	push   $0x30
 142:	68 18 0a 00 00       	push   $0xa18
 147:	68 21 0a 00 00       	push   $0xa21
 14c:	6a 01                	push   $0x1
 14e:	e8 9d 05 00 00       	call   6f0 <printf>
 153:	83 c4 0c             	add    $0xc,%esp
 156:	68 29 0a 00 00       	push   $0xa29
 15b:	68 35 0a 00 00       	push   $0xa35
 160:	6a 01                	push   $0x1
 162:	e8 89 05 00 00       	call   6f0 <printf>
 167:	58                   	pop    %eax
 168:	5a                   	pop    %edx
 169:	68 49 0a 00 00       	push   $0xa49
 16e:	6a 01                	push   $0x1
 170:	e8 7b 05 00 00       	call   6f0 <printf>
 175:	59                   	pop    %ecx
 176:	ff 35 88 0e 00 00    	push   0xe88
 17c:	e8 33 04 00 00       	call   5b4 <kill>
 181:	e8 fe 03 00 00       	call   584 <exit>
   global = 5;
 186:	c7 05 84 0e 00 00 05 	movl   $0x5,0xe84
 18d:	00 00 00 
   exit();
 190:	e8 ef 03 00 00       	call   584 <exit>
 195:	66 90                	xchg   %ax,%ax
 197:	66 90                	xchg   %ax,%ax
 199:	66 90                	xchg   %ax,%ax
 19b:	66 90                	xchg   %ax,%ax
 19d:	66 90                	xchg   %ax,%ax
 19f:	90                   	nop

000001a0 <strcpy>:
#include "x86.h"
#include "mmu.h"

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
 2d8:	e8 bf 02 00 00       	call   59c <read>
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
 33d:	e8 82 02 00 00       	call   5c4 <open>
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
 352:	e8 85 02 00 00       	call   5dc <fstat>
  close(fd);
 357:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 35a:	89 c6                	mov    %eax,%esi
  close(fd);
 35c:	e8 4b 02 00 00       	call   5ac <close>
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
  asm volatile("lock; xaddl %%eax, %2;" :
 3f1:	b8 01 00 00 00       	mov    $0x1,%eax
 3f6:	89 e5                	mov    %esp,%ebp
 3f8:	53                   	push   %ebx
 3f9:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 3fc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 403:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 40a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 40f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 412:	39 c2                	cmp    %eax,%edx
 414:	74 24                	je     43a <thread_create+0x4a>
 416:	89 c3                	mov    %eax,%ebx
 418:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 420:	83 ec 04             	sub    $0x4,%esp
 423:	52                   	push   %edx
 424:	68 91 0a 00 00       	push   $0xa91
 429:	6a 01                	push   $0x1
 42b:	e8 c0 02 00 00       	call   6f0 <printf>
  while(lock->turn != myturn){
 430:	8b 55 f4             	mov    -0xc(%ebp),%edx
 433:	83 c4 10             	add    $0x10,%esp
 436:	39 d3                	cmp    %edx,%ebx
 438:	75 e6                	jne    420 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 43a:	83 ec 0c             	sub    $0xc,%esp
 43d:	68 00 20 00 00       	push   $0x2000
 442:	e8 d9 04 00 00       	call   920 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 447:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 44b:	83 c4 10             	add    $0x10,%esp
 44e:	89 c2                	mov    %eax,%edx
 450:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 456:	74 07                	je     45f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 458:	29 d0                	sub    %edx,%eax
 45a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 45f:	50                   	push   %eax
 460:	ff 75 10             	push   0x10(%ebp)
 463:	ff 75 0c             	push   0xc(%ebp)
 466:	ff 75 08             	push   0x8(%ebp)
 469:	e8 b6 01 00 00       	call   624 <clone>
}
 46e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 471:	c9                   	leave  
 472:	c3                   	ret    
 473:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000480 <thread_join>:
int thread_join(){
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	56                   	push   %esi
 484:	53                   	push   %ebx
 485:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 488:	6a 04                	push   $0x4
 48a:	e8 91 04 00 00       	call   920 <malloc>
 48f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 492:	8d 45 ec             	lea    -0x14(%ebp),%eax
 495:	89 04 24             	mov    %eax,(%esp)
 498:	e8 8f 01 00 00       	call   62c <join>
  lock->ticket = 0;
 49d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 4a4:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 4a6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 4ad:	b8 01 00 00 00       	mov    $0x1,%eax
 4b2:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 4b7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 4ba:	83 c4 10             	add    $0x10,%esp
 4bd:	39 c2                	cmp    %eax,%edx
 4bf:	74 21                	je     4e2 <thread_join+0x62>
 4c1:	89 c3                	mov    %eax,%ebx
 4c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4c7:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 4c8:	83 ec 04             	sub    $0x4,%esp
 4cb:	52                   	push   %edx
 4cc:	68 91 0a 00 00       	push   $0xa91
 4d1:	6a 01                	push   $0x1
 4d3:	e8 18 02 00 00       	call   6f0 <printf>
  while(lock->turn != myturn){
 4d8:	8b 55 f4             	mov    -0xc(%ebp),%edx
 4db:	83 c4 10             	add    $0x10,%esp
 4de:	39 d3                	cmp    %edx,%ebx
 4e0:	75 e6                	jne    4c8 <thread_join+0x48>
	free(stack);
 4e2:	83 ec 0c             	sub    $0xc,%esp
 4e5:	ff 75 ec             	push   -0x14(%ebp)
 4e8:	e8 a3 03 00 00       	call   890 <free>
}
 4ed:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4f0:	89 f0                	mov    %esi,%eax
 4f2:	5b                   	pop    %ebx
 4f3:	5e                   	pop    %esi
 4f4:	5d                   	pop    %ebp
 4f5:	c3                   	ret    
 4f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fd:	8d 76 00             	lea    0x0(%esi),%esi

00000500 <lock_init>:
void lock_init(lock_t *lock) {
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 506:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 50c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 513:	5d                   	pop    %ebp
 514:	c3                   	ret    
 515:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000520 <lock_acquire>:
void lock_acquire(lock_t *lock){
 520:	55                   	push   %ebp
 521:	b8 01 00 00 00       	mov    $0x1,%eax
 526:	89 e5                	mov    %esp,%ebp
 528:	56                   	push   %esi
 529:	8b 75 08             	mov    0x8(%ebp),%esi
 52c:	53                   	push   %ebx
 52d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 531:	8b 56 04             	mov    0x4(%esi),%edx
 534:	39 d0                	cmp    %edx,%eax
 536:	74 22                	je     55a <lock_acquire+0x3a>
 538:	89 c3                	mov    %eax,%ebx
 53a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 540:	83 ec 04             	sub    $0x4,%esp
 543:	52                   	push   %edx
 544:	68 91 0a 00 00       	push   $0xa91
 549:	6a 01                	push   $0x1
 54b:	e8 a0 01 00 00       	call   6f0 <printf>
  while(lock->turn != myturn){
 550:	8b 56 04             	mov    0x4(%esi),%edx
 553:	83 c4 10             	add    $0x10,%esp
 556:	39 da                	cmp    %ebx,%edx
 558:	75 e6                	jne    540 <lock_acquire+0x20>
}
 55a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 55d:	5b                   	pop    %ebx
 55e:	5e                   	pop    %esi
 55f:	5d                   	pop    %ebp
 560:	c3                   	ret    
 561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 568:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56f:	90                   	nop

00000570 <lock_release>:
void lock_release(lock_t *lock){
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 576:	83 40 04 01          	addl   $0x1,0x4(%eax)
 57a:	5d                   	pop    %ebp
 57b:	c3                   	ret    

0000057c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 57c:	b8 01 00 00 00       	mov    $0x1,%eax
 581:	cd 40                	int    $0x40
 583:	c3                   	ret    

00000584 <exit>:
SYSCALL(exit)
 584:	b8 02 00 00 00       	mov    $0x2,%eax
 589:	cd 40                	int    $0x40
 58b:	c3                   	ret    

0000058c <wait>:
SYSCALL(wait)
 58c:	b8 03 00 00 00       	mov    $0x3,%eax
 591:	cd 40                	int    $0x40
 593:	c3                   	ret    

00000594 <pipe>:
SYSCALL(pipe)
 594:	b8 04 00 00 00       	mov    $0x4,%eax
 599:	cd 40                	int    $0x40
 59b:	c3                   	ret    

0000059c <read>:
SYSCALL(read)
 59c:	b8 05 00 00 00       	mov    $0x5,%eax
 5a1:	cd 40                	int    $0x40
 5a3:	c3                   	ret    

000005a4 <write>:
SYSCALL(write)
 5a4:	b8 10 00 00 00       	mov    $0x10,%eax
 5a9:	cd 40                	int    $0x40
 5ab:	c3                   	ret    

000005ac <close>:
SYSCALL(close)
 5ac:	b8 15 00 00 00       	mov    $0x15,%eax
 5b1:	cd 40                	int    $0x40
 5b3:	c3                   	ret    

000005b4 <kill>:
SYSCALL(kill)
 5b4:	b8 06 00 00 00       	mov    $0x6,%eax
 5b9:	cd 40                	int    $0x40
 5bb:	c3                   	ret    

000005bc <exec>:
SYSCALL(exec)
 5bc:	b8 07 00 00 00       	mov    $0x7,%eax
 5c1:	cd 40                	int    $0x40
 5c3:	c3                   	ret    

000005c4 <open>:
SYSCALL(open)
 5c4:	b8 0f 00 00 00       	mov    $0xf,%eax
 5c9:	cd 40                	int    $0x40
 5cb:	c3                   	ret    

000005cc <mknod>:
SYSCALL(mknod)
 5cc:	b8 11 00 00 00       	mov    $0x11,%eax
 5d1:	cd 40                	int    $0x40
 5d3:	c3                   	ret    

000005d4 <unlink>:
SYSCALL(unlink)
 5d4:	b8 12 00 00 00       	mov    $0x12,%eax
 5d9:	cd 40                	int    $0x40
 5db:	c3                   	ret    

000005dc <fstat>:
SYSCALL(fstat)
 5dc:	b8 08 00 00 00       	mov    $0x8,%eax
 5e1:	cd 40                	int    $0x40
 5e3:	c3                   	ret    

000005e4 <link>:
SYSCALL(link)
 5e4:	b8 13 00 00 00       	mov    $0x13,%eax
 5e9:	cd 40                	int    $0x40
 5eb:	c3                   	ret    

000005ec <mkdir>:
SYSCALL(mkdir)
 5ec:	b8 14 00 00 00       	mov    $0x14,%eax
 5f1:	cd 40                	int    $0x40
 5f3:	c3                   	ret    

000005f4 <chdir>:
SYSCALL(chdir)
 5f4:	b8 09 00 00 00       	mov    $0x9,%eax
 5f9:	cd 40                	int    $0x40
 5fb:	c3                   	ret    

000005fc <dup>:
SYSCALL(dup)
 5fc:	b8 0a 00 00 00       	mov    $0xa,%eax
 601:	cd 40                	int    $0x40
 603:	c3                   	ret    

00000604 <getpid>:
SYSCALL(getpid)
 604:	b8 0b 00 00 00       	mov    $0xb,%eax
 609:	cd 40                	int    $0x40
 60b:	c3                   	ret    

0000060c <sbrk>:
SYSCALL(sbrk)
 60c:	b8 0c 00 00 00       	mov    $0xc,%eax
 611:	cd 40                	int    $0x40
 613:	c3                   	ret    

00000614 <sleep>:
SYSCALL(sleep)
 614:	b8 0d 00 00 00       	mov    $0xd,%eax
 619:	cd 40                	int    $0x40
 61b:	c3                   	ret    

0000061c <uptime>:
SYSCALL(uptime)
 61c:	b8 0e 00 00 00       	mov    $0xe,%eax
 621:	cd 40                	int    $0x40
 623:	c3                   	ret    

00000624 <clone>:
SYSCALL(clone)
 624:	b8 16 00 00 00       	mov    $0x16,%eax
 629:	cd 40                	int    $0x40
 62b:	c3                   	ret    

0000062c <join>:
SYSCALL(join)
 62c:	b8 17 00 00 00       	mov    $0x17,%eax
 631:	cd 40                	int    $0x40
 633:	c3                   	ret    
 634:	66 90                	xchg   %ax,%ax
 636:	66 90                	xchg   %ax,%ax
 638:	66 90                	xchg   %ax,%ax
 63a:	66 90                	xchg   %ax,%ax
 63c:	66 90                	xchg   %ax,%ax
 63e:	66 90                	xchg   %ax,%ax

00000640 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	57                   	push   %edi
 644:	56                   	push   %esi
 645:	53                   	push   %ebx
 646:	83 ec 3c             	sub    $0x3c,%esp
 649:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 64c:	89 d1                	mov    %edx,%ecx
{
 64e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 651:	85 d2                	test   %edx,%edx
 653:	0f 89 7f 00 00 00    	jns    6d8 <printint+0x98>
 659:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 65d:	74 79                	je     6d8 <printint+0x98>
    neg = 1;
 65f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 666:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 668:	31 db                	xor    %ebx,%ebx
 66a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 66d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 670:	89 c8                	mov    %ecx,%eax
 672:	31 d2                	xor    %edx,%edx
 674:	89 cf                	mov    %ecx,%edi
 676:	f7 75 c4             	divl   -0x3c(%ebp)
 679:	0f b6 92 04 0b 00 00 	movzbl 0xb04(%edx),%edx
 680:	89 45 c0             	mov    %eax,-0x40(%ebp)
 683:	89 d8                	mov    %ebx,%eax
 685:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 688:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 68b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 68e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 691:	76 dd                	jbe    670 <printint+0x30>
  if(neg)
 693:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 696:	85 c9                	test   %ecx,%ecx
 698:	74 0c                	je     6a6 <printint+0x66>
    buf[i++] = '-';
 69a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 69f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6a1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6a6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6a9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6ad:	eb 07                	jmp    6b6 <printint+0x76>
 6af:	90                   	nop
    putc(fd, buf[i]);
 6b0:	0f b6 13             	movzbl (%ebx),%edx
 6b3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 6b6:	83 ec 04             	sub    $0x4,%esp
 6b9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 6bc:	6a 01                	push   $0x1
 6be:	56                   	push   %esi
 6bf:	57                   	push   %edi
 6c0:	e8 df fe ff ff       	call   5a4 <write>
  while(--i >= 0)
 6c5:	83 c4 10             	add    $0x10,%esp
 6c8:	39 de                	cmp    %ebx,%esi
 6ca:	75 e4                	jne    6b0 <printint+0x70>
}
 6cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6cf:	5b                   	pop    %ebx
 6d0:	5e                   	pop    %esi
 6d1:	5f                   	pop    %edi
 6d2:	5d                   	pop    %ebp
 6d3:	c3                   	ret    
 6d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6d8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 6df:	eb 87                	jmp    668 <printint+0x28>
 6e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ef:	90                   	nop

000006f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
 6f3:	57                   	push   %edi
 6f4:	56                   	push   %esi
 6f5:	53                   	push   %ebx
 6f6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 6f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 6fc:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 6ff:	0f b6 13             	movzbl (%ebx),%edx
 702:	84 d2                	test   %dl,%dl
 704:	74 6a                	je     770 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 706:	8d 45 10             	lea    0x10(%ebp),%eax
 709:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 70c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 70f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 711:	89 45 d0             	mov    %eax,-0x30(%ebp)
 714:	eb 36                	jmp    74c <printf+0x5c>
 716:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 71d:	8d 76 00             	lea    0x0(%esi),%esi
 720:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 723:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 728:	83 f8 25             	cmp    $0x25,%eax
 72b:	74 15                	je     742 <printf+0x52>
  write(fd, &c, 1);
 72d:	83 ec 04             	sub    $0x4,%esp
 730:	88 55 e7             	mov    %dl,-0x19(%ebp)
 733:	6a 01                	push   $0x1
 735:	57                   	push   %edi
 736:	56                   	push   %esi
 737:	e8 68 fe ff ff       	call   5a4 <write>
 73c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 73f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 742:	0f b6 13             	movzbl (%ebx),%edx
 745:	83 c3 01             	add    $0x1,%ebx
 748:	84 d2                	test   %dl,%dl
 74a:	74 24                	je     770 <printf+0x80>
    c = fmt[i] & 0xff;
 74c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 74f:	85 c9                	test   %ecx,%ecx
 751:	74 cd                	je     720 <printf+0x30>
      }
    } else if(state == '%'){
 753:	83 f9 25             	cmp    $0x25,%ecx
 756:	75 ea                	jne    742 <printf+0x52>
      if(c == 'd'){
 758:	83 f8 25             	cmp    $0x25,%eax
 75b:	0f 84 07 01 00 00    	je     868 <printf+0x178>
 761:	83 e8 63             	sub    $0x63,%eax
 764:	83 f8 15             	cmp    $0x15,%eax
 767:	77 17                	ja     780 <printf+0x90>
 769:	ff 24 85 ac 0a 00 00 	jmp    *0xaac(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 770:	8d 65 f4             	lea    -0xc(%ebp),%esp
 773:	5b                   	pop    %ebx
 774:	5e                   	pop    %esi
 775:	5f                   	pop    %edi
 776:	5d                   	pop    %ebp
 777:	c3                   	ret    
 778:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 77f:	90                   	nop
  write(fd, &c, 1);
 780:	83 ec 04             	sub    $0x4,%esp
 783:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 786:	6a 01                	push   $0x1
 788:	57                   	push   %edi
 789:	56                   	push   %esi
 78a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 78e:	e8 11 fe ff ff       	call   5a4 <write>
        putc(fd, c);
 793:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 797:	83 c4 0c             	add    $0xc,%esp
 79a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 79d:	6a 01                	push   $0x1
 79f:	57                   	push   %edi
 7a0:	56                   	push   %esi
 7a1:	e8 fe fd ff ff       	call   5a4 <write>
        putc(fd, c);
 7a6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7a9:	31 c9                	xor    %ecx,%ecx
 7ab:	eb 95                	jmp    742 <printf+0x52>
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7b0:	83 ec 0c             	sub    $0xc,%esp
 7b3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7b8:	6a 00                	push   $0x0
 7ba:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7bd:	8b 10                	mov    (%eax),%edx
 7bf:	89 f0                	mov    %esi,%eax
 7c1:	e8 7a fe ff ff       	call   640 <printint>
        ap++;
 7c6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7ca:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7cd:	31 c9                	xor    %ecx,%ecx
 7cf:	e9 6e ff ff ff       	jmp    742 <printf+0x52>
 7d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7d8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7db:	8b 10                	mov    (%eax),%edx
        ap++;
 7dd:	83 c0 04             	add    $0x4,%eax
 7e0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 7e3:	85 d2                	test   %edx,%edx
 7e5:	0f 84 8d 00 00 00    	je     878 <printf+0x188>
        while(*s != 0){
 7eb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 7ee:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 7f0:	84 c0                	test   %al,%al
 7f2:	0f 84 4a ff ff ff    	je     742 <printf+0x52>
 7f8:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7fb:	89 d3                	mov    %edx,%ebx
 7fd:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 800:	83 ec 04             	sub    $0x4,%esp
          s++;
 803:	83 c3 01             	add    $0x1,%ebx
 806:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 809:	6a 01                	push   $0x1
 80b:	57                   	push   %edi
 80c:	56                   	push   %esi
 80d:	e8 92 fd ff ff       	call   5a4 <write>
        while(*s != 0){
 812:	0f b6 03             	movzbl (%ebx),%eax
 815:	83 c4 10             	add    $0x10,%esp
 818:	84 c0                	test   %al,%al
 81a:	75 e4                	jne    800 <printf+0x110>
      state = 0;
 81c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 81f:	31 c9                	xor    %ecx,%ecx
 821:	e9 1c ff ff ff       	jmp    742 <printf+0x52>
 826:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 82d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 830:	83 ec 0c             	sub    $0xc,%esp
 833:	b9 0a 00 00 00       	mov    $0xa,%ecx
 838:	6a 01                	push   $0x1
 83a:	e9 7b ff ff ff       	jmp    7ba <printf+0xca>
 83f:	90                   	nop
        putc(fd, *ap);
 840:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 843:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 846:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 848:	6a 01                	push   $0x1
 84a:	57                   	push   %edi
 84b:	56                   	push   %esi
        putc(fd, *ap);
 84c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 84f:	e8 50 fd ff ff       	call   5a4 <write>
        ap++;
 854:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 858:	83 c4 10             	add    $0x10,%esp
      state = 0;
 85b:	31 c9                	xor    %ecx,%ecx
 85d:	e9 e0 fe ff ff       	jmp    742 <printf+0x52>
 862:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 868:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 86b:	83 ec 04             	sub    $0x4,%esp
 86e:	e9 2a ff ff ff       	jmp    79d <printf+0xad>
 873:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 877:	90                   	nop
          s = "(null)";
 878:	ba a5 0a 00 00       	mov    $0xaa5,%edx
        while(*s != 0){
 87d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 880:	b8 28 00 00 00       	mov    $0x28,%eax
 885:	89 d3                	mov    %edx,%ebx
 887:	e9 74 ff ff ff       	jmp    800 <printf+0x110>
 88c:	66 90                	xchg   %ax,%ax
 88e:	66 90                	xchg   %ax,%ax

00000890 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 890:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 891:	a1 8c 0e 00 00       	mov    0xe8c,%eax
{
 896:	89 e5                	mov    %esp,%ebp
 898:	57                   	push   %edi
 899:	56                   	push   %esi
 89a:	53                   	push   %ebx
 89b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 89e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8a8:	89 c2                	mov    %eax,%edx
 8aa:	8b 00                	mov    (%eax),%eax
 8ac:	39 ca                	cmp    %ecx,%edx
 8ae:	73 30                	jae    8e0 <free+0x50>
 8b0:	39 c1                	cmp    %eax,%ecx
 8b2:	72 04                	jb     8b8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8b4:	39 c2                	cmp    %eax,%edx
 8b6:	72 f0                	jb     8a8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8be:	39 f8                	cmp    %edi,%eax
 8c0:	74 30                	je     8f2 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8c2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8c5:	8b 42 04             	mov    0x4(%edx),%eax
 8c8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8cb:	39 f1                	cmp    %esi,%ecx
 8cd:	74 3a                	je     909 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8cf:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8d1:	5b                   	pop    %ebx
  freep = p;
 8d2:	89 15 8c 0e 00 00    	mov    %edx,0xe8c
}
 8d8:	5e                   	pop    %esi
 8d9:	5f                   	pop    %edi
 8da:	5d                   	pop    %ebp
 8db:	c3                   	ret    
 8dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8e0:	39 c2                	cmp    %eax,%edx
 8e2:	72 c4                	jb     8a8 <free+0x18>
 8e4:	39 c1                	cmp    %eax,%ecx
 8e6:	73 c0                	jae    8a8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 8e8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8eb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8ee:	39 f8                	cmp    %edi,%eax
 8f0:	75 d0                	jne    8c2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 8f2:	03 70 04             	add    0x4(%eax),%esi
 8f5:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 8f8:	8b 02                	mov    (%edx),%eax
 8fa:	8b 00                	mov    (%eax),%eax
 8fc:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 8ff:	8b 42 04             	mov    0x4(%edx),%eax
 902:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 905:	39 f1                	cmp    %esi,%ecx
 907:	75 c6                	jne    8cf <free+0x3f>
    p->s.size += bp->s.size;
 909:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 90c:	89 15 8c 0e 00 00    	mov    %edx,0xe8c
    p->s.size += bp->s.size;
 912:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 915:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 918:	89 0a                	mov    %ecx,(%edx)
}
 91a:	5b                   	pop    %ebx
 91b:	5e                   	pop    %esi
 91c:	5f                   	pop    %edi
 91d:	5d                   	pop    %ebp
 91e:	c3                   	ret    
 91f:	90                   	nop

00000920 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 920:	55                   	push   %ebp
 921:	89 e5                	mov    %esp,%ebp
 923:	57                   	push   %edi
 924:	56                   	push   %esi
 925:	53                   	push   %ebx
 926:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 929:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 92c:	8b 3d 8c 0e 00 00    	mov    0xe8c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 932:	8d 70 07             	lea    0x7(%eax),%esi
 935:	c1 ee 03             	shr    $0x3,%esi
 938:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 93b:	85 ff                	test   %edi,%edi
 93d:	0f 84 9d 00 00 00    	je     9e0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 943:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 945:	8b 4a 04             	mov    0x4(%edx),%ecx
 948:	39 f1                	cmp    %esi,%ecx
 94a:	73 6a                	jae    9b6 <malloc+0x96>
 94c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 951:	39 de                	cmp    %ebx,%esi
 953:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 956:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 95d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 960:	eb 17                	jmp    979 <malloc+0x59>
 962:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 968:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 96a:	8b 48 04             	mov    0x4(%eax),%ecx
 96d:	39 f1                	cmp    %esi,%ecx
 96f:	73 4f                	jae    9c0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 971:	8b 3d 8c 0e 00 00    	mov    0xe8c,%edi
 977:	89 c2                	mov    %eax,%edx
 979:	39 d7                	cmp    %edx,%edi
 97b:	75 eb                	jne    968 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 97d:	83 ec 0c             	sub    $0xc,%esp
 980:	ff 75 e4             	push   -0x1c(%ebp)
 983:	e8 84 fc ff ff       	call   60c <sbrk>
  if(p == (char*)-1)
 988:	83 c4 10             	add    $0x10,%esp
 98b:	83 f8 ff             	cmp    $0xffffffff,%eax
 98e:	74 1c                	je     9ac <malloc+0x8c>
  hp->s.size = nu;
 990:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 993:	83 ec 0c             	sub    $0xc,%esp
 996:	83 c0 08             	add    $0x8,%eax
 999:	50                   	push   %eax
 99a:	e8 f1 fe ff ff       	call   890 <free>
  return freep;
 99f:	8b 15 8c 0e 00 00    	mov    0xe8c,%edx
      if((p = morecore(nunits)) == 0)
 9a5:	83 c4 10             	add    $0x10,%esp
 9a8:	85 d2                	test   %edx,%edx
 9aa:	75 bc                	jne    968 <malloc+0x48>
        return 0;
  }
}
 9ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9af:	31 c0                	xor    %eax,%eax
}
 9b1:	5b                   	pop    %ebx
 9b2:	5e                   	pop    %esi
 9b3:	5f                   	pop    %edi
 9b4:	5d                   	pop    %ebp
 9b5:	c3                   	ret    
    if(p->s.size >= nunits){
 9b6:	89 d0                	mov    %edx,%eax
 9b8:	89 fa                	mov    %edi,%edx
 9ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9c0:	39 ce                	cmp    %ecx,%esi
 9c2:	74 4c                	je     a10 <malloc+0xf0>
        p->s.size -= nunits;
 9c4:	29 f1                	sub    %esi,%ecx
 9c6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9c9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9cc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 9cf:	89 15 8c 0e 00 00    	mov    %edx,0xe8c
}
 9d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9d8:	83 c0 08             	add    $0x8,%eax
}
 9db:	5b                   	pop    %ebx
 9dc:	5e                   	pop    %esi
 9dd:	5f                   	pop    %edi
 9de:	5d                   	pop    %ebp
 9df:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 9e0:	c7 05 8c 0e 00 00 90 	movl   $0xe90,0xe8c
 9e7:	0e 00 00 
    base.s.size = 0;
 9ea:	bf 90 0e 00 00       	mov    $0xe90,%edi
    base.s.ptr = freep = prevp = &base;
 9ef:	c7 05 90 0e 00 00 90 	movl   $0xe90,0xe90
 9f6:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9f9:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 9fb:	c7 05 94 0e 00 00 00 	movl   $0x0,0xe94
 a02:	00 00 00 
    if(p->s.size >= nunits){
 a05:	e9 42 ff ff ff       	jmp    94c <malloc+0x2c>
 a0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a10:	8b 08                	mov    (%eax),%ecx
 a12:	89 0a                	mov    %ecx,(%edx)
 a14:	eb b9                	jmp    9cf <malloc+0xaf>
