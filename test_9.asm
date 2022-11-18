
_test_9:     file format elf32-i386


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
  13:	e8 5c 05 00 00       	call   574 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 54 0e 00 00       	mov    %eax,0xe54
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 66 08 00 00       	call   890 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 d3 00 00 00    	je     108 <main+0x108>
   if((uint)p % PGSIZE)
  35:	89 c2                	mov    %eax,%edx
  37:	89 c3                	mov    %eax,%ebx
  39:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  3f:	0f 85 8c 00 00 00    	jne    d1 <main+0xd1>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int clone_pid = clone(worker, stack, 0, stack);
  45:	50                   	push   %eax
  46:	6a 00                	push   $0x0
  48:	50                   	push   %eax
  49:	68 30 01 00 00       	push   $0x130
  4e:	e8 41 05 00 00       	call   594 <clone>
   assert(clone_pid > 0);
  53:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, stack, 0, stack);
  56:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  58:	85 c0                	test   %eax,%eax
  5a:	0f 8e 8b 00 00 00    	jle    eb <main+0xeb>
   while(global != 5);
  60:	8b 15 50 0e 00 00    	mov    0xe50,%edx
  66:	83 fa 05             	cmp    $0x5,%edx
  69:	75 f5                	jne    60 <main+0x60>
   printf(1, "TEST PASSED\n");
  6b:	50                   	push   %eax
  6c:	50                   	push   %eax
  6d:	68 d2 09 00 00       	push   $0x9d2
  72:	6a 01                	push   $0x1
  74:	e8 e7 05 00 00       	call   660 <printf>

   void *join_stack;
   int join_pid = join(&join_stack);
  79:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  7c:	89 04 24             	mov    %eax,(%esp)
  7f:	e8 18 05 00 00       	call   59c <join>
   assert(join_pid == clone_pid);
  84:	83 c4 10             	add    $0x10,%esp
  87:	39 c6                	cmp    %eax,%esi
  89:	74 52                	je     dd <main+0xdd>
  8b:	6a 29                	push   $0x29
  8d:	68 88 09 00 00       	push   $0x988
  92:	68 91 09 00 00       	push   $0x991
  97:	6a 01                	push   $0x1
  99:	e8 c2 05 00 00       	call   660 <printf>
  9e:	83 c4 0c             	add    $0xc,%esp
  a1:	68 df 09 00 00       	push   $0x9df
   assert(clone_pid > 0);
  a6:	68 99 09 00 00       	push   $0x999
  ab:	6a 01                	push   $0x1
  ad:	e8 ae 05 00 00       	call   660 <printf>
  b2:	5a                   	pop    %edx
  b3:	59                   	pop    %ecx
  b4:	68 ad 09 00 00       	push   $0x9ad
  b9:	6a 01                	push   $0x1
  bb:	e8 a0 05 00 00       	call   660 <printf>
  c0:	5b                   	pop    %ebx
  c1:	ff 35 54 0e 00 00    	push   0xe54
  c7:	e8 58 04 00 00       	call   524 <kill>
  cc:	e8 23 04 00 00       	call   4f4 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d1:	29 d0                	sub    %edx,%eax
  d3:	05 00 10 00 00       	add    $0x1000,%eax
  d8:	e9 68 ff ff ff       	jmp    45 <main+0x45>
   free(p);
  dd:	83 ec 0c             	sub    $0xc,%esp
  e0:	53                   	push   %ebx
  e1:	e8 1a 07 00 00       	call   800 <free>
   exit();
  e6:	e8 09 04 00 00       	call   4f4 <exit>
   assert(clone_pid > 0);
  eb:	6a 23                	push   $0x23
  ed:	68 88 09 00 00       	push   $0x988
  f2:	68 91 09 00 00       	push   $0x991
  f7:	6a 01                	push   $0x1
  f9:	e8 62 05 00 00       	call   660 <printf>
  fe:	83 c4 0c             	add    $0xc,%esp
 101:	68 c4 09 00 00       	push   $0x9c4
 106:	eb 9e                	jmp    a6 <main+0xa6>
   assert(p != NULL);
 108:	6a 1c                	push   $0x1c
 10a:	68 88 09 00 00       	push   $0x988
 10f:	68 91 09 00 00       	push   $0x991
 114:	6a 01                	push   $0x1
 116:	e8 45 05 00 00       	call   660 <printf>
 11b:	83 c4 0c             	add    $0xc,%esp
 11e:	68 ba 09 00 00       	push   $0x9ba
 123:	eb 81                	jmp    a6 <main+0xa6>
 125:	66 90                	xchg   %ax,%ax
 127:	66 90                	xchg   %ax,%ax
 129:	66 90                	xchg   %ax,%ax
 12b:	66 90                	xchg   %ax,%ax
 12d:	66 90                	xchg   %ax,%ax
 12f:	90                   	nop

00000130 <worker>:
}

void
worker(void *arg1, void *arg2) {
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	83 ec 08             	sub    $0x8,%esp
   assert((uint)&arg2 == ((uint)arg1 + PGSIZE - 4));
 136:	8b 45 08             	mov    0x8(%ebp),%eax
 139:	8d 4d 0c             	lea    0xc(%ebp),%ecx
 13c:	8d 90 fc 0f 00 00    	lea    0xffc(%eax),%edx
 142:	39 d1                	cmp    %edx,%ecx
 144:	75 7d                	jne    1c3 <worker+0x93>
   assert((uint)&arg1 == ((uint)arg1 + PGSIZE - 8));
 146:	8d 90 f8 0f 00 00    	lea    0xff8(%eax),%edx
 14c:	8d 4d 08             	lea    0x8(%ebp),%ecx
 14f:	39 d1                	cmp    %edx,%ecx
 151:	75 2a                	jne    17d <worker+0x4d>
   assert(*((uint*) (arg1 + PGSIZE - 12)) == 0xffffffff);
 153:	83 b8 f4 0f 00 00 ff 	cmpl   $0xffffffff,0xff4(%eax)
 15a:	0f 84 80 00 00 00    	je     1e0 <worker+0xb0>
 160:	6a 32                	push   $0x32
 162:	68 88 09 00 00       	push   $0x988
 167:	68 91 09 00 00       	push   $0x991
 16c:	6a 01                	push   $0x1
 16e:	e8 ed 04 00 00       	call   660 <printf>
 173:	83 c4 0c             	add    $0xc,%esp
 176:	68 50 0a 00 00       	push   $0xa50
 17b:	eb 1b                	jmp    198 <worker+0x68>
   assert((uint)&arg1 == ((uint)arg1 + PGSIZE - 8));
 17d:	6a 31                	push   $0x31
 17f:	68 88 09 00 00       	push   $0x988
 184:	68 91 09 00 00       	push   $0x991
 189:	6a 01                	push   $0x1
 18b:	e8 d0 04 00 00       	call   660 <printf>
 190:	83 c4 0c             	add    $0xc,%esp
 193:	68 24 0a 00 00       	push   $0xa24
 198:	68 99 09 00 00       	push   $0x999
 19d:	6a 01                	push   $0x1
 19f:	e8 bc 04 00 00       	call   660 <printf>
 1a4:	58                   	pop    %eax
 1a5:	5a                   	pop    %edx
 1a6:	68 ad 09 00 00       	push   $0x9ad
 1ab:	6a 01                	push   $0x1
 1ad:	e8 ae 04 00 00       	call   660 <printf>
 1b2:	59                   	pop    %ecx
 1b3:	ff 35 54 0e 00 00    	push   0xe54
 1b9:	e8 66 03 00 00       	call   524 <kill>
 1be:	e8 31 03 00 00       	call   4f4 <exit>
   assert((uint)&arg2 == ((uint)arg1 + PGSIZE - 4));
 1c3:	6a 30                	push   $0x30
 1c5:	68 88 09 00 00       	push   $0x988
 1ca:	68 91 09 00 00       	push   $0x991
 1cf:	6a 01                	push   $0x1
 1d1:	e8 8a 04 00 00       	call   660 <printf>
 1d6:	83 c4 0c             	add    $0xc,%esp
 1d9:	68 f8 09 00 00       	push   $0x9f8
 1de:	eb b8                	jmp    198 <worker+0x68>
   global = 5;
 1e0:	c7 05 50 0e 00 00 05 	movl   $0x5,0xe50
 1e7:	00 00 00 
   exit();
 1ea:	e8 05 03 00 00       	call   4f4 <exit>
 1ef:	90                   	nop

000001f0 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 1f0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 1f1:	31 c0                	xor    %eax,%eax
{
 1f3:	89 e5                	mov    %esp,%ebp
 1f5:	53                   	push   %ebx
 1f6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1f9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 200:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 204:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 207:	83 c0 01             	add    $0x1,%eax
 20a:	84 d2                	test   %dl,%dl
 20c:	75 f2                	jne    200 <strcpy+0x10>
    ;
  return os;
}
 20e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 211:	89 c8                	mov    %ecx,%eax
 213:	c9                   	leave  
 214:	c3                   	ret    
 215:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000220 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	53                   	push   %ebx
 224:	8b 55 08             	mov    0x8(%ebp),%edx
 227:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 22a:	0f b6 02             	movzbl (%edx),%eax
 22d:	84 c0                	test   %al,%al
 22f:	75 17                	jne    248 <strcmp+0x28>
 231:	eb 3a                	jmp    26d <strcmp+0x4d>
 233:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 237:	90                   	nop
 238:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 23c:	83 c2 01             	add    $0x1,%edx
 23f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 242:	84 c0                	test   %al,%al
 244:	74 1a                	je     260 <strcmp+0x40>
    p++, q++;
 246:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 248:	0f b6 19             	movzbl (%ecx),%ebx
 24b:	38 c3                	cmp    %al,%bl
 24d:	74 e9                	je     238 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 24f:	29 d8                	sub    %ebx,%eax
}
 251:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 254:	c9                   	leave  
 255:	c3                   	ret    
 256:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 260:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 264:	31 c0                	xor    %eax,%eax
 266:	29 d8                	sub    %ebx,%eax
}
 268:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 26b:	c9                   	leave  
 26c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 26d:	0f b6 19             	movzbl (%ecx),%ebx
 270:	31 c0                	xor    %eax,%eax
 272:	eb db                	jmp    24f <strcmp+0x2f>
 274:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 27b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 27f:	90                   	nop

00000280 <strlen>:

uint
strlen(const char *s)
{
 280:	55                   	push   %ebp
 281:	89 e5                	mov    %esp,%ebp
 283:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 286:	80 3a 00             	cmpb   $0x0,(%edx)
 289:	74 15                	je     2a0 <strlen+0x20>
 28b:	31 c0                	xor    %eax,%eax
 28d:	8d 76 00             	lea    0x0(%esi),%esi
 290:	83 c0 01             	add    $0x1,%eax
 293:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 297:	89 c1                	mov    %eax,%ecx
 299:	75 f5                	jne    290 <strlen+0x10>
    ;
  return n;
}
 29b:	89 c8                	mov    %ecx,%eax
 29d:	5d                   	pop    %ebp
 29e:	c3                   	ret    
 29f:	90                   	nop
  for(n = 0; s[n]; n++)
 2a0:	31 c9                	xor    %ecx,%ecx
}
 2a2:	5d                   	pop    %ebp
 2a3:	89 c8                	mov    %ecx,%eax
 2a5:	c3                   	ret    
 2a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ad:	8d 76 00             	lea    0x0(%esi),%esi

000002b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2b0:	55                   	push   %ebp
 2b1:	89 e5                	mov    %esp,%ebp
 2b3:	57                   	push   %edi
 2b4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2b7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2ba:	8b 45 0c             	mov    0xc(%ebp),%eax
 2bd:	89 d7                	mov    %edx,%edi
 2bf:	fc                   	cld    
 2c0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2c2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 2c5:	89 d0                	mov    %edx,%eax
 2c7:	c9                   	leave  
 2c8:	c3                   	ret    
 2c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002d0 <strchr>:

char*
strchr(const char *s, char c)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	8b 45 08             	mov    0x8(%ebp),%eax
 2d6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2da:	0f b6 10             	movzbl (%eax),%edx
 2dd:	84 d2                	test   %dl,%dl
 2df:	75 12                	jne    2f3 <strchr+0x23>
 2e1:	eb 1d                	jmp    300 <strchr+0x30>
 2e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2e7:	90                   	nop
 2e8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 2ec:	83 c0 01             	add    $0x1,%eax
 2ef:	84 d2                	test   %dl,%dl
 2f1:	74 0d                	je     300 <strchr+0x30>
    if(*s == c)
 2f3:	38 d1                	cmp    %dl,%cl
 2f5:	75 f1                	jne    2e8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 2f7:	5d                   	pop    %ebp
 2f8:	c3                   	ret    
 2f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 300:	31 c0                	xor    %eax,%eax
}
 302:	5d                   	pop    %ebp
 303:	c3                   	ret    
 304:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 30f:	90                   	nop

00000310 <gets>:

char*
gets(char *buf, int max)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 315:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 318:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 319:	31 db                	xor    %ebx,%ebx
{
 31b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 31e:	eb 27                	jmp    347 <gets+0x37>
    cc = read(0, &c, 1);
 320:	83 ec 04             	sub    $0x4,%esp
 323:	6a 01                	push   $0x1
 325:	57                   	push   %edi
 326:	6a 00                	push   $0x0
 328:	e8 df 01 00 00       	call   50c <read>
    if(cc < 1)
 32d:	83 c4 10             	add    $0x10,%esp
 330:	85 c0                	test   %eax,%eax
 332:	7e 1d                	jle    351 <gets+0x41>
      break;
    buf[i++] = c;
 334:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 338:	8b 55 08             	mov    0x8(%ebp),%edx
 33b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 33f:	3c 0a                	cmp    $0xa,%al
 341:	74 1d                	je     360 <gets+0x50>
 343:	3c 0d                	cmp    $0xd,%al
 345:	74 19                	je     360 <gets+0x50>
  for(i=0; i+1 < max; ){
 347:	89 de                	mov    %ebx,%esi
 349:	83 c3 01             	add    $0x1,%ebx
 34c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 34f:	7c cf                	jl     320 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 351:	8b 45 08             	mov    0x8(%ebp),%eax
 354:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 358:	8d 65 f4             	lea    -0xc(%ebp),%esp
 35b:	5b                   	pop    %ebx
 35c:	5e                   	pop    %esi
 35d:	5f                   	pop    %edi
 35e:	5d                   	pop    %ebp
 35f:	c3                   	ret    
  buf[i] = '\0';
 360:	8b 45 08             	mov    0x8(%ebp),%eax
 363:	89 de                	mov    %ebx,%esi
 365:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 369:	8d 65 f4             	lea    -0xc(%ebp),%esp
 36c:	5b                   	pop    %ebx
 36d:	5e                   	pop    %esi
 36e:	5f                   	pop    %edi
 36f:	5d                   	pop    %ebp
 370:	c3                   	ret    
 371:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 378:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37f:	90                   	nop

00000380 <stat>:

int
stat(const char *n, struct stat *st)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	56                   	push   %esi
 384:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 385:	83 ec 08             	sub    $0x8,%esp
 388:	6a 00                	push   $0x0
 38a:	ff 75 08             	push   0x8(%ebp)
 38d:	e8 a2 01 00 00       	call   534 <open>
  if(fd < 0)
 392:	83 c4 10             	add    $0x10,%esp
 395:	85 c0                	test   %eax,%eax
 397:	78 27                	js     3c0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 399:	83 ec 08             	sub    $0x8,%esp
 39c:	ff 75 0c             	push   0xc(%ebp)
 39f:	89 c3                	mov    %eax,%ebx
 3a1:	50                   	push   %eax
 3a2:	e8 a5 01 00 00       	call   54c <fstat>
  close(fd);
 3a7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3aa:	89 c6                	mov    %eax,%esi
  close(fd);
 3ac:	e8 6b 01 00 00       	call   51c <close>
  return r;
 3b1:	83 c4 10             	add    $0x10,%esp
}
 3b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3b7:	89 f0                	mov    %esi,%eax
 3b9:	5b                   	pop    %ebx
 3ba:	5e                   	pop    %esi
 3bb:	5d                   	pop    %ebp
 3bc:	c3                   	ret    
 3bd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3c0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3c5:	eb ed                	jmp    3b4 <stat+0x34>
 3c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ce:	66 90                	xchg   %ax,%ax

000003d0 <atoi>:

int
atoi(const char *s)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	53                   	push   %ebx
 3d4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3d7:	0f be 02             	movsbl (%edx),%eax
 3da:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3dd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 3e0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 3e5:	77 1e                	ja     405 <atoi+0x35>
 3e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ee:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 3f0:	83 c2 01             	add    $0x1,%edx
 3f3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 3f6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 3fa:	0f be 02             	movsbl (%edx),%eax
 3fd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 400:	80 fb 09             	cmp    $0x9,%bl
 403:	76 eb                	jbe    3f0 <atoi+0x20>
  return n;
}
 405:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 408:	89 c8                	mov    %ecx,%eax
 40a:	c9                   	leave  
 40b:	c3                   	ret    
 40c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000410 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	57                   	push   %edi
 414:	8b 45 10             	mov    0x10(%ebp),%eax
 417:	8b 55 08             	mov    0x8(%ebp),%edx
 41a:	56                   	push   %esi
 41b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 41e:	85 c0                	test   %eax,%eax
 420:	7e 13                	jle    435 <memmove+0x25>
 422:	01 d0                	add    %edx,%eax
  dst = vdst;
 424:	89 d7                	mov    %edx,%edi
 426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 430:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 431:	39 f8                	cmp    %edi,%eax
 433:	75 fb                	jne    430 <memmove+0x20>
  return vdst;
}
 435:	5e                   	pop    %esi
 436:	89 d0                	mov    %edx,%eax
 438:	5f                   	pop    %edi
 439:	5d                   	pop    %ebp
 43a:	c3                   	ret    
 43b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 43f:	90                   	nop

00000440 <thread_create>:


//Create thread_Create & thread_join


int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	83 ec 14             	sub    $0x14,%esp
   void *stack = malloc(PGSIZE);
 446:	68 00 10 00 00       	push   $0x1000
 44b:	e8 40 04 00 00       	call   890 <malloc>
   return clone(start_routine, arg1, arg2, stack);
 450:	50                   	push   %eax
 451:	ff 75 10             	push   0x10(%ebp)
 454:	ff 75 0c             	push   0xc(%ebp)
 457:	ff 75 08             	push   0x8(%ebp)
 45a:	e8 35 01 00 00       	call   594 <clone>
}
 45f:	c9                   	leave  
 460:	c3                   	ret    
 461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 468:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <thread_join>:

int thread_join(){
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	57                   	push   %edi
  void *stack;
  int pid= join(&stack);
 474:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 477:	83 ec 20             	sub    $0x20,%esp
  int pid= join(&stack);
 47a:	50                   	push   %eax
 47b:	e8 1c 01 00 00       	call   59c <join>
  if(pid >0 ){
 480:	83 c4 10             	add    $0x10,%esp
  int pid= join(&stack);
 483:	89 c2                	mov    %eax,%edx
  if(pid >0 ){
 485:	85 c0                	test   %eax,%eax
 487:	7e 0d                	jle    496 <thread_join+0x26>
 489:	8b 7d f4             	mov    -0xc(%ebp),%edi
 48c:	b9 00 10 00 00       	mov    $0x1000,%ecx
 491:	31 c0                	xor    %eax,%eax
 493:	fc                   	cld    
 494:	f3 aa                	rep stos %al,%es:(%edi)
    memset(stack,0,PGSIZE);
  }
  return pid;
}
 496:	8b 7d fc             	mov    -0x4(%ebp),%edi
 499:	89 d0                	mov    %edx,%eax
 49b:	c9                   	leave  
 49c:	c3                   	ret    
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
  asm volatile("lock; xaddl %%eax, %2;" :
 4c1:	b8 01 00 00 00       	mov    $0x1,%eax
 4c6:	89 e5                	mov    %esp,%ebp
 4c8:	8b 55 08             	mov    0x8(%ebp),%edx
 4cb:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn);
 4cf:	8b 52 04             	mov    0x4(%edx),%edx
 4d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4d8:	39 c2                	cmp    %eax,%edx
 4da:	75 fc                	jne    4d8 <lock_acquire+0x18>
}
 4dc:	5d                   	pop    %ebp
 4dd:	c3                   	ret    
 4de:	66 90                	xchg   %ax,%ax

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
 5e9:	0f b6 92 e0 0a 00 00 	movzbl 0xae0(%edx),%edx
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
 6d9:	ff 24 85 88 0a 00 00 	jmp    *0xa88(,%eax,4)
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
 7e8:	ba 7e 0a 00 00       	mov    $0xa7e,%edx
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
 801:	a1 58 0e 00 00       	mov    0xe58,%eax
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
 842:	89 15 58 0e 00 00    	mov    %edx,0xe58
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
 87c:	89 15 58 0e 00 00    	mov    %edx,0xe58
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
 89c:	8b 3d 58 0e 00 00    	mov    0xe58,%edi
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
 8e1:	8b 3d 58 0e 00 00    	mov    0xe58,%edi
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
 90f:	8b 15 58 0e 00 00    	mov    0xe58,%edx
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
 93f:	89 15 58 0e 00 00    	mov    %edx,0xe58
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
 950:	c7 05 58 0e 00 00 5c 	movl   $0xe5c,0xe58
 957:	0e 00 00 
    base.s.size = 0;
 95a:	bf 5c 0e 00 00       	mov    $0xe5c,%edi
    base.s.ptr = freep = prevp = &base;
 95f:	c7 05 5c 0e 00 00 5c 	movl   $0xe5c,0xe5c
 966:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 969:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 96b:	c7 05 60 0e 00 00 00 	movl   $0x0,0xe60
 972:	00 00 00 
    if(p->s.size >= nunits){
 975:	e9 42 ff ff ff       	jmp    8bc <malloc+0x2c>
 97a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 980:	8b 08                	mov    (%eax),%ecx
 982:	89 0a                	mov    %ecx,(%edx)
 984:	eb b9                	jmp    93f <malloc+0xaf>
