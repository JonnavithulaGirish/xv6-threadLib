
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
  13:	e8 0c 05 00 00       	call   524 <getpid>
   void *stack, *p = malloc(PGSIZE*2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 84 0d 00 00       	mov    %eax,0xd84
   void *stack, *p = malloc(PGSIZE*2);
  25:	e8 16 08 00 00       	call   840 <malloc>
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
  4f:	e8 f0 04 00 00       	call   544 <clone>
   assert(clone_pid > 0);
  54:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, 0, 0, stack);
  57:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  59:	85 c0                	test   %eax,%eax
  5b:	0f 8e 92 00 00 00    	jle    f3 <main+0xf3>
  61:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
   while(global != 5);
  68:	8b 15 80 0d 00 00    	mov    0xd80,%edx
  6e:	83 fa 05             	cmp    $0x5,%edx
  71:	75 f5                	jne    68 <main+0x68>
   printf(1, "TEST PASSED\n");
  73:	50                   	push   %eax
  74:	50                   	push   %eax
  75:	68 8e 09 00 00       	push   $0x98e
  7a:	6a 01                	push   $0x1
  7c:	e8 8f 05 00 00       	call   610 <printf>
   
   void *join_stack;
   int join_pid = join(&join_stack);
  81:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  84:	89 04 24             	mov    %eax,(%esp)
  87:	e8 c0 04 00 00       	call   54c <join>
   assert(join_pid == clone_pid);
  8c:	83 c4 10             	add    $0x10,%esp
  8f:	39 c6                	cmp    %eax,%esi
  91:	74 52                	je     e5 <main+0xe5>
  93:	6a 29                	push   $0x29
  95:	68 38 09 00 00       	push   $0x938
  9a:	68 41 09 00 00       	push   $0x941
  9f:	6a 01                	push   $0x1
  a1:	e8 6a 05 00 00       	call   610 <printf>
  a6:	83 c4 0c             	add    $0xc,%esp
  a9:	68 9b 09 00 00       	push   $0x99b
   assert(clone_pid > 0);
  ae:	68 55 09 00 00       	push   $0x955
  b3:	6a 01                	push   $0x1
  b5:	e8 56 05 00 00       	call   610 <printf>
  ba:	5a                   	pop    %edx
  bb:	59                   	pop    %ecx
  bc:	68 69 09 00 00       	push   $0x969
  c1:	6a 01                	push   $0x1
  c3:	e8 48 05 00 00       	call   610 <printf>
  c8:	5b                   	pop    %ebx
  c9:	ff 35 84 0d 00 00    	push   0xd84
  cf:	e8 00 04 00 00       	call   4d4 <kill>
  d4:	e8 cb 03 00 00       	call   4a4 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d9:	29 d0                	sub    %edx,%eax
  db:	05 00 10 00 00       	add    $0x1000,%eax
  e0:	e9 60 ff ff ff       	jmp    45 <main+0x45>
   free(p);
  e5:	83 ec 0c             	sub    $0xc,%esp
  e8:	53                   	push   %ebx
  e9:	e8 c2 06 00 00       	call   7b0 <free>
   exit();
  ee:	e8 b1 03 00 00       	call   4a4 <exit>
   assert(clone_pid > 0);
  f3:	6a 23                	push   $0x23
  f5:	68 38 09 00 00       	push   $0x938
  fa:	68 41 09 00 00       	push   $0x941
  ff:	6a 01                	push   $0x1
 101:	e8 0a 05 00 00       	call   610 <printf>
 106:	83 c4 0c             	add    $0xc,%esp
 109:	68 80 09 00 00       	push   $0x980
 10e:	eb 9e                	jmp    ae <main+0xae>
   assert(p != NULL);
 110:	6a 1c                	push   $0x1c
 112:	68 38 09 00 00       	push   $0x938
 117:	68 41 09 00 00       	push   $0x941
 11c:	6a 01                	push   $0x1
 11e:	e8 ed 04 00 00       	call   610 <printf>
 123:	83 c4 0c             	add    $0xc,%esp
 126:	68 76 09 00 00       	push   $0x976
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
 136:	a1 80 0d 00 00       	mov    0xd80,%eax
 13b:	83 f8 01             	cmp    $0x1,%eax
 13e:	74 46                	je     186 <worker+0x56>
 140:	6a 30                	push   $0x30
 142:	68 38 09 00 00       	push   $0x938
 147:	68 41 09 00 00       	push   $0x941
 14c:	6a 01                	push   $0x1
 14e:	e8 bd 04 00 00       	call   610 <printf>
 153:	83 c4 0c             	add    $0xc,%esp
 156:	68 49 09 00 00       	push   $0x949
 15b:	68 55 09 00 00       	push   $0x955
 160:	6a 01                	push   $0x1
 162:	e8 a9 04 00 00       	call   610 <printf>
 167:	58                   	pop    %eax
 168:	5a                   	pop    %edx
 169:	68 69 09 00 00       	push   $0x969
 16e:	6a 01                	push   $0x1
 170:	e8 9b 04 00 00       	call   610 <printf>
 175:	59                   	pop    %ecx
 176:	ff 35 84 0d 00 00    	push   0xd84
 17c:	e8 53 03 00 00       	call   4d4 <kill>
 181:	e8 1e 03 00 00       	call   4a4 <exit>
   global = 5;
 186:	c7 05 80 0d 00 00 05 	movl   $0x5,0xd80
 18d:	00 00 00 
   exit();
 190:	e8 0f 03 00 00       	call   4a4 <exit>
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
 2d8:	e8 df 01 00 00       	call   4bc <read>
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
 33d:	e8 a2 01 00 00       	call   4e4 <open>
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
 352:	e8 a5 01 00 00       	call   4fc <fstat>
  close(fd);
 357:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 35a:	89 c6                	mov    %eax,%esi
  close(fd);
 35c:	e8 6b 01 00 00       	call   4cc <close>
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


int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	83 ec 14             	sub    $0x14,%esp
   void *stack = malloc(PGSIZE);
 3f6:	68 00 10 00 00       	push   $0x1000
 3fb:	e8 40 04 00 00       	call   840 <malloc>
   return clone(start_routine, arg1, arg2, stack);
 400:	50                   	push   %eax
 401:	ff 75 10             	push   0x10(%ebp)
 404:	ff 75 0c             	push   0xc(%ebp)
 407:	ff 75 08             	push   0x8(%ebp)
 40a:	e8 35 01 00 00       	call   544 <clone>
}
 40f:	c9                   	leave  
 410:	c3                   	ret    
 411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 418:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <thread_join>:

int thread_join(){
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
  void *stack;
  int pid= join(&stack);
 424:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 427:	83 ec 20             	sub    $0x20,%esp
  int pid= join(&stack);
 42a:	50                   	push   %eax
 42b:	e8 1c 01 00 00       	call   54c <join>
  if(pid >0 ){
 430:	83 c4 10             	add    $0x10,%esp
  int pid= join(&stack);
 433:	89 c2                	mov    %eax,%edx
  if(pid >0 ){
 435:	85 c0                	test   %eax,%eax
 437:	7e 0d                	jle    446 <thread_join+0x26>
 439:	8b 7d f4             	mov    -0xc(%ebp),%edi
 43c:	b9 00 10 00 00       	mov    $0x1000,%ecx
 441:	31 c0                	xor    %eax,%eax
 443:	fc                   	cld    
 444:	f3 aa                	rep stos %al,%es:(%edi)
    memset(stack,0,PGSIZE);
  }
  return pid;
}
 446:	8b 7d fc             	mov    -0x4(%ebp),%edi
 449:	89 d0                	mov    %edx,%eax
 44b:	c9                   	leave  
 44c:	c3                   	ret    
 44d:	8d 76 00             	lea    0x0(%esi),%esi

00000450 <lock_init>:

void lock_init(lock_t *lock) {
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 456:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 45c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 463:	5d                   	pop    %ebp
 464:	c3                   	ret    
 465:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000470 <lock_acquire>:

void lock_acquire(lock_t *lock){
 470:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 471:	b8 01 00 00 00       	mov    $0x1,%eax
 476:	89 e5                	mov    %esp,%ebp
 478:	8b 55 08             	mov    0x8(%ebp),%edx
 47b:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn);
 47f:	8b 52 04             	mov    0x4(%edx),%edx
 482:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 488:	39 c2                	cmp    %eax,%edx
 48a:	75 fc                	jne    488 <lock_acquire+0x18>
}
 48c:	5d                   	pop    %ebp
 48d:	c3                   	ret    
 48e:	66 90                	xchg   %ax,%ax

00000490 <lock_release>:

void lock_release(lock_t *lock){
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 496:	83 40 04 01          	addl   $0x1,0x4(%eax)
 49a:	5d                   	pop    %ebp
 49b:	c3                   	ret    

0000049c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 49c:	b8 01 00 00 00       	mov    $0x1,%eax
 4a1:	cd 40                	int    $0x40
 4a3:	c3                   	ret    

000004a4 <exit>:
SYSCALL(exit)
 4a4:	b8 02 00 00 00       	mov    $0x2,%eax
 4a9:	cd 40                	int    $0x40
 4ab:	c3                   	ret    

000004ac <wait>:
SYSCALL(wait)
 4ac:	b8 03 00 00 00       	mov    $0x3,%eax
 4b1:	cd 40                	int    $0x40
 4b3:	c3                   	ret    

000004b4 <pipe>:
SYSCALL(pipe)
 4b4:	b8 04 00 00 00       	mov    $0x4,%eax
 4b9:	cd 40                	int    $0x40
 4bb:	c3                   	ret    

000004bc <read>:
SYSCALL(read)
 4bc:	b8 05 00 00 00       	mov    $0x5,%eax
 4c1:	cd 40                	int    $0x40
 4c3:	c3                   	ret    

000004c4 <write>:
SYSCALL(write)
 4c4:	b8 10 00 00 00       	mov    $0x10,%eax
 4c9:	cd 40                	int    $0x40
 4cb:	c3                   	ret    

000004cc <close>:
SYSCALL(close)
 4cc:	b8 15 00 00 00       	mov    $0x15,%eax
 4d1:	cd 40                	int    $0x40
 4d3:	c3                   	ret    

000004d4 <kill>:
SYSCALL(kill)
 4d4:	b8 06 00 00 00       	mov    $0x6,%eax
 4d9:	cd 40                	int    $0x40
 4db:	c3                   	ret    

000004dc <exec>:
SYSCALL(exec)
 4dc:	b8 07 00 00 00       	mov    $0x7,%eax
 4e1:	cd 40                	int    $0x40
 4e3:	c3                   	ret    

000004e4 <open>:
SYSCALL(open)
 4e4:	b8 0f 00 00 00       	mov    $0xf,%eax
 4e9:	cd 40                	int    $0x40
 4eb:	c3                   	ret    

000004ec <mknod>:
SYSCALL(mknod)
 4ec:	b8 11 00 00 00       	mov    $0x11,%eax
 4f1:	cd 40                	int    $0x40
 4f3:	c3                   	ret    

000004f4 <unlink>:
SYSCALL(unlink)
 4f4:	b8 12 00 00 00       	mov    $0x12,%eax
 4f9:	cd 40                	int    $0x40
 4fb:	c3                   	ret    

000004fc <fstat>:
SYSCALL(fstat)
 4fc:	b8 08 00 00 00       	mov    $0x8,%eax
 501:	cd 40                	int    $0x40
 503:	c3                   	ret    

00000504 <link>:
SYSCALL(link)
 504:	b8 13 00 00 00       	mov    $0x13,%eax
 509:	cd 40                	int    $0x40
 50b:	c3                   	ret    

0000050c <mkdir>:
SYSCALL(mkdir)
 50c:	b8 14 00 00 00       	mov    $0x14,%eax
 511:	cd 40                	int    $0x40
 513:	c3                   	ret    

00000514 <chdir>:
SYSCALL(chdir)
 514:	b8 09 00 00 00       	mov    $0x9,%eax
 519:	cd 40                	int    $0x40
 51b:	c3                   	ret    

0000051c <dup>:
SYSCALL(dup)
 51c:	b8 0a 00 00 00       	mov    $0xa,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    

00000524 <getpid>:
SYSCALL(getpid)
 524:	b8 0b 00 00 00       	mov    $0xb,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    

0000052c <sbrk>:
SYSCALL(sbrk)
 52c:	b8 0c 00 00 00       	mov    $0xc,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    

00000534 <sleep>:
SYSCALL(sleep)
 534:	b8 0d 00 00 00       	mov    $0xd,%eax
 539:	cd 40                	int    $0x40
 53b:	c3                   	ret    

0000053c <uptime>:
SYSCALL(uptime)
 53c:	b8 0e 00 00 00       	mov    $0xe,%eax
 541:	cd 40                	int    $0x40
 543:	c3                   	ret    

00000544 <clone>:
SYSCALL(clone)
 544:	b8 16 00 00 00       	mov    $0x16,%eax
 549:	cd 40                	int    $0x40
 54b:	c3                   	ret    

0000054c <join>:
SYSCALL(join)
 54c:	b8 17 00 00 00       	mov    $0x17,%eax
 551:	cd 40                	int    $0x40
 553:	c3                   	ret    
 554:	66 90                	xchg   %ax,%ax
 556:	66 90                	xchg   %ax,%ax
 558:	66 90                	xchg   %ax,%ax
 55a:	66 90                	xchg   %ax,%ax
 55c:	66 90                	xchg   %ax,%ax
 55e:	66 90                	xchg   %ax,%ax

00000560 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
 564:	56                   	push   %esi
 565:	53                   	push   %ebx
 566:	83 ec 3c             	sub    $0x3c,%esp
 569:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 56c:	89 d1                	mov    %edx,%ecx
{
 56e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 571:	85 d2                	test   %edx,%edx
 573:	0f 89 7f 00 00 00    	jns    5f8 <printint+0x98>
 579:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 57d:	74 79                	je     5f8 <printint+0x98>
    neg = 1;
 57f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 586:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 588:	31 db                	xor    %ebx,%ebx
 58a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 58d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 590:	89 c8                	mov    %ecx,%eax
 592:	31 d2                	xor    %edx,%edx
 594:	89 cf                	mov    %ecx,%edi
 596:	f7 75 c4             	divl   -0x3c(%ebp)
 599:	0f b6 92 10 0a 00 00 	movzbl 0xa10(%edx),%edx
 5a0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 5a3:	89 d8                	mov    %ebx,%eax
 5a5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 5a8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 5ab:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 5ae:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 5b1:	76 dd                	jbe    590 <printint+0x30>
  if(neg)
 5b3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 5b6:	85 c9                	test   %ecx,%ecx
 5b8:	74 0c                	je     5c6 <printint+0x66>
    buf[i++] = '-';
 5ba:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 5bf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 5c1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 5c6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 5c9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 5cd:	eb 07                	jmp    5d6 <printint+0x76>
 5cf:	90                   	nop
    putc(fd, buf[i]);
 5d0:	0f b6 13             	movzbl (%ebx),%edx
 5d3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 5d6:	83 ec 04             	sub    $0x4,%esp
 5d9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 5dc:	6a 01                	push   $0x1
 5de:	56                   	push   %esi
 5df:	57                   	push   %edi
 5e0:	e8 df fe ff ff       	call   4c4 <write>
  while(--i >= 0)
 5e5:	83 c4 10             	add    $0x10,%esp
 5e8:	39 de                	cmp    %ebx,%esi
 5ea:	75 e4                	jne    5d0 <printint+0x70>
}
 5ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5ef:	5b                   	pop    %ebx
 5f0:	5e                   	pop    %esi
 5f1:	5f                   	pop    %edi
 5f2:	5d                   	pop    %ebp
 5f3:	c3                   	ret    
 5f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5f8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 5ff:	eb 87                	jmp    588 <printint+0x28>
 601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 608:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60f:	90                   	nop

00000610 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	57                   	push   %edi
 614:	56                   	push   %esi
 615:	53                   	push   %ebx
 616:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 619:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 61c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 61f:	0f b6 13             	movzbl (%ebx),%edx
 622:	84 d2                	test   %dl,%dl
 624:	74 6a                	je     690 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 626:	8d 45 10             	lea    0x10(%ebp),%eax
 629:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 62c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 62f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 631:	89 45 d0             	mov    %eax,-0x30(%ebp)
 634:	eb 36                	jmp    66c <printf+0x5c>
 636:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63d:	8d 76 00             	lea    0x0(%esi),%esi
 640:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 643:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 648:	83 f8 25             	cmp    $0x25,%eax
 64b:	74 15                	je     662 <printf+0x52>
  write(fd, &c, 1);
 64d:	83 ec 04             	sub    $0x4,%esp
 650:	88 55 e7             	mov    %dl,-0x19(%ebp)
 653:	6a 01                	push   $0x1
 655:	57                   	push   %edi
 656:	56                   	push   %esi
 657:	e8 68 fe ff ff       	call   4c4 <write>
 65c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 65f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 662:	0f b6 13             	movzbl (%ebx),%edx
 665:	83 c3 01             	add    $0x1,%ebx
 668:	84 d2                	test   %dl,%dl
 66a:	74 24                	je     690 <printf+0x80>
    c = fmt[i] & 0xff;
 66c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 66f:	85 c9                	test   %ecx,%ecx
 671:	74 cd                	je     640 <printf+0x30>
      }
    } else if(state == '%'){
 673:	83 f9 25             	cmp    $0x25,%ecx
 676:	75 ea                	jne    662 <printf+0x52>
      if(c == 'd'){
 678:	83 f8 25             	cmp    $0x25,%eax
 67b:	0f 84 07 01 00 00    	je     788 <printf+0x178>
 681:	83 e8 63             	sub    $0x63,%eax
 684:	83 f8 15             	cmp    $0x15,%eax
 687:	77 17                	ja     6a0 <printf+0x90>
 689:	ff 24 85 b8 09 00 00 	jmp    *0x9b8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 690:	8d 65 f4             	lea    -0xc(%ebp),%esp
 693:	5b                   	pop    %ebx
 694:	5e                   	pop    %esi
 695:	5f                   	pop    %edi
 696:	5d                   	pop    %ebp
 697:	c3                   	ret    
 698:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69f:	90                   	nop
  write(fd, &c, 1);
 6a0:	83 ec 04             	sub    $0x4,%esp
 6a3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 6a6:	6a 01                	push   $0x1
 6a8:	57                   	push   %edi
 6a9:	56                   	push   %esi
 6aa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 6ae:	e8 11 fe ff ff       	call   4c4 <write>
        putc(fd, c);
 6b3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 6b7:	83 c4 0c             	add    $0xc,%esp
 6ba:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6bd:	6a 01                	push   $0x1
 6bf:	57                   	push   %edi
 6c0:	56                   	push   %esi
 6c1:	e8 fe fd ff ff       	call   4c4 <write>
        putc(fd, c);
 6c6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6c9:	31 c9                	xor    %ecx,%ecx
 6cb:	eb 95                	jmp    662 <printf+0x52>
 6cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6d0:	83 ec 0c             	sub    $0xc,%esp
 6d3:	b9 10 00 00 00       	mov    $0x10,%ecx
 6d8:	6a 00                	push   $0x0
 6da:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6dd:	8b 10                	mov    (%eax),%edx
 6df:	89 f0                	mov    %esi,%eax
 6e1:	e8 7a fe ff ff       	call   560 <printint>
        ap++;
 6e6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 6ea:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6ed:	31 c9                	xor    %ecx,%ecx
 6ef:	e9 6e ff ff ff       	jmp    662 <printf+0x52>
 6f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 6f8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 6fb:	8b 10                	mov    (%eax),%edx
        ap++;
 6fd:	83 c0 04             	add    $0x4,%eax
 700:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 703:	85 d2                	test   %edx,%edx
 705:	0f 84 8d 00 00 00    	je     798 <printf+0x188>
        while(*s != 0){
 70b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 70e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 710:	84 c0                	test   %al,%al
 712:	0f 84 4a ff ff ff    	je     662 <printf+0x52>
 718:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 71b:	89 d3                	mov    %edx,%ebx
 71d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 720:	83 ec 04             	sub    $0x4,%esp
          s++;
 723:	83 c3 01             	add    $0x1,%ebx
 726:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 729:	6a 01                	push   $0x1
 72b:	57                   	push   %edi
 72c:	56                   	push   %esi
 72d:	e8 92 fd ff ff       	call   4c4 <write>
        while(*s != 0){
 732:	0f b6 03             	movzbl (%ebx),%eax
 735:	83 c4 10             	add    $0x10,%esp
 738:	84 c0                	test   %al,%al
 73a:	75 e4                	jne    720 <printf+0x110>
      state = 0;
 73c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 73f:	31 c9                	xor    %ecx,%ecx
 741:	e9 1c ff ff ff       	jmp    662 <printf+0x52>
 746:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 74d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 750:	83 ec 0c             	sub    $0xc,%esp
 753:	b9 0a 00 00 00       	mov    $0xa,%ecx
 758:	6a 01                	push   $0x1
 75a:	e9 7b ff ff ff       	jmp    6da <printf+0xca>
 75f:	90                   	nop
        putc(fd, *ap);
 760:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 763:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 766:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 768:	6a 01                	push   $0x1
 76a:	57                   	push   %edi
 76b:	56                   	push   %esi
        putc(fd, *ap);
 76c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 76f:	e8 50 fd ff ff       	call   4c4 <write>
        ap++;
 774:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 778:	83 c4 10             	add    $0x10,%esp
      state = 0;
 77b:	31 c9                	xor    %ecx,%ecx
 77d:	e9 e0 fe ff ff       	jmp    662 <printf+0x52>
 782:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 788:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 78b:	83 ec 04             	sub    $0x4,%esp
 78e:	e9 2a ff ff ff       	jmp    6bd <printf+0xad>
 793:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 797:	90                   	nop
          s = "(null)";
 798:	ba b1 09 00 00       	mov    $0x9b1,%edx
        while(*s != 0){
 79d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 7a0:	b8 28 00 00 00       	mov    $0x28,%eax
 7a5:	89 d3                	mov    %edx,%ebx
 7a7:	e9 74 ff ff ff       	jmp    720 <printf+0x110>
 7ac:	66 90                	xchg   %ax,%ax
 7ae:	66 90                	xchg   %ax,%ax

000007b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 7b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7b1:	a1 88 0d 00 00       	mov    0xd88,%eax
{
 7b6:	89 e5                	mov    %esp,%ebp
 7b8:	57                   	push   %edi
 7b9:	56                   	push   %esi
 7ba:	53                   	push   %ebx
 7bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 7be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7c8:	89 c2                	mov    %eax,%edx
 7ca:	8b 00                	mov    (%eax),%eax
 7cc:	39 ca                	cmp    %ecx,%edx
 7ce:	73 30                	jae    800 <free+0x50>
 7d0:	39 c1                	cmp    %eax,%ecx
 7d2:	72 04                	jb     7d8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7d4:	39 c2                	cmp    %eax,%edx
 7d6:	72 f0                	jb     7c8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7de:	39 f8                	cmp    %edi,%eax
 7e0:	74 30                	je     812 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 7e2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 7e5:	8b 42 04             	mov    0x4(%edx),%eax
 7e8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 7eb:	39 f1                	cmp    %esi,%ecx
 7ed:	74 3a                	je     829 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 7ef:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 7f1:	5b                   	pop    %ebx
  freep = p;
 7f2:	89 15 88 0d 00 00    	mov    %edx,0xd88
}
 7f8:	5e                   	pop    %esi
 7f9:	5f                   	pop    %edi
 7fa:	5d                   	pop    %ebp
 7fb:	c3                   	ret    
 7fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 800:	39 c2                	cmp    %eax,%edx
 802:	72 c4                	jb     7c8 <free+0x18>
 804:	39 c1                	cmp    %eax,%ecx
 806:	73 c0                	jae    7c8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 808:	8b 73 fc             	mov    -0x4(%ebx),%esi
 80b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 80e:	39 f8                	cmp    %edi,%eax
 810:	75 d0                	jne    7e2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 812:	03 70 04             	add    0x4(%eax),%esi
 815:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 818:	8b 02                	mov    (%edx),%eax
 81a:	8b 00                	mov    (%eax),%eax
 81c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 81f:	8b 42 04             	mov    0x4(%edx),%eax
 822:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 825:	39 f1                	cmp    %esi,%ecx
 827:	75 c6                	jne    7ef <free+0x3f>
    p->s.size += bp->s.size;
 829:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 82c:	89 15 88 0d 00 00    	mov    %edx,0xd88
    p->s.size += bp->s.size;
 832:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 835:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 838:	89 0a                	mov    %ecx,(%edx)
}
 83a:	5b                   	pop    %ebx
 83b:	5e                   	pop    %esi
 83c:	5f                   	pop    %edi
 83d:	5d                   	pop    %ebp
 83e:	c3                   	ret    
 83f:	90                   	nop

00000840 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 840:	55                   	push   %ebp
 841:	89 e5                	mov    %esp,%ebp
 843:	57                   	push   %edi
 844:	56                   	push   %esi
 845:	53                   	push   %ebx
 846:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 849:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 84c:	8b 3d 88 0d 00 00    	mov    0xd88,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 852:	8d 70 07             	lea    0x7(%eax),%esi
 855:	c1 ee 03             	shr    $0x3,%esi
 858:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 85b:	85 ff                	test   %edi,%edi
 85d:	0f 84 9d 00 00 00    	je     900 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 863:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 865:	8b 4a 04             	mov    0x4(%edx),%ecx
 868:	39 f1                	cmp    %esi,%ecx
 86a:	73 6a                	jae    8d6 <malloc+0x96>
 86c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 871:	39 de                	cmp    %ebx,%esi
 873:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 876:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 87d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 880:	eb 17                	jmp    899 <malloc+0x59>
 882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 888:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 88a:	8b 48 04             	mov    0x4(%eax),%ecx
 88d:	39 f1                	cmp    %esi,%ecx
 88f:	73 4f                	jae    8e0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 891:	8b 3d 88 0d 00 00    	mov    0xd88,%edi
 897:	89 c2                	mov    %eax,%edx
 899:	39 d7                	cmp    %edx,%edi
 89b:	75 eb                	jne    888 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 89d:	83 ec 0c             	sub    $0xc,%esp
 8a0:	ff 75 e4             	push   -0x1c(%ebp)
 8a3:	e8 84 fc ff ff       	call   52c <sbrk>
  if(p == (char*)-1)
 8a8:	83 c4 10             	add    $0x10,%esp
 8ab:	83 f8 ff             	cmp    $0xffffffff,%eax
 8ae:	74 1c                	je     8cc <malloc+0x8c>
  hp->s.size = nu;
 8b0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 8b3:	83 ec 0c             	sub    $0xc,%esp
 8b6:	83 c0 08             	add    $0x8,%eax
 8b9:	50                   	push   %eax
 8ba:	e8 f1 fe ff ff       	call   7b0 <free>
  return freep;
 8bf:	8b 15 88 0d 00 00    	mov    0xd88,%edx
      if((p = morecore(nunits)) == 0)
 8c5:	83 c4 10             	add    $0x10,%esp
 8c8:	85 d2                	test   %edx,%edx
 8ca:	75 bc                	jne    888 <malloc+0x48>
        return 0;
  }
}
 8cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8cf:	31 c0                	xor    %eax,%eax
}
 8d1:	5b                   	pop    %ebx
 8d2:	5e                   	pop    %esi
 8d3:	5f                   	pop    %edi
 8d4:	5d                   	pop    %ebp
 8d5:	c3                   	ret    
    if(p->s.size >= nunits){
 8d6:	89 d0                	mov    %edx,%eax
 8d8:	89 fa                	mov    %edi,%edx
 8da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8e0:	39 ce                	cmp    %ecx,%esi
 8e2:	74 4c                	je     930 <malloc+0xf0>
        p->s.size -= nunits;
 8e4:	29 f1                	sub    %esi,%ecx
 8e6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 8e9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 8ec:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 8ef:	89 15 88 0d 00 00    	mov    %edx,0xd88
}
 8f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 8f8:	83 c0 08             	add    $0x8,%eax
}
 8fb:	5b                   	pop    %ebx
 8fc:	5e                   	pop    %esi
 8fd:	5f                   	pop    %edi
 8fe:	5d                   	pop    %ebp
 8ff:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 900:	c7 05 88 0d 00 00 8c 	movl   $0xd8c,0xd88
 907:	0d 00 00 
    base.s.size = 0;
 90a:	bf 8c 0d 00 00       	mov    $0xd8c,%edi
    base.s.ptr = freep = prevp = &base;
 90f:	c7 05 8c 0d 00 00 8c 	movl   $0xd8c,0xd8c
 916:	0d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 919:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 91b:	c7 05 90 0d 00 00 00 	movl   $0x0,0xd90
 922:	00 00 00 
    if(p->s.size >= nunits){
 925:	e9 42 ff ff ff       	jmp    86c <malloc+0x2c>
 92a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 930:	8b 08                	mov    (%eax),%ecx
 932:	89 0a                	mov    %ecx,(%edx)
 934:	eb b9                	jmp    8ef <malloc+0xaf>
