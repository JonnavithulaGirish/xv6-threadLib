
_test_5:     file format elf32-i386


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
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
   ppid = getpid();
  14:	e8 8b 06 00 00       	call   6a4 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 64 0f 00 00       	mov    %eax,0xf64
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 95 09 00 00       	call   9c0 <malloc>
   assert(p != NULL);
  2b:	83 c4 10             	add    $0x10,%esp
  2e:	85 c0                	test   %eax,%eax
  30:	0f 84 00 01 00 00    	je     136 <main+0x136>
  36:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
  38:	89 c7                	mov    %eax,%edi
  3a:	25 ff 0f 00 00       	and    $0xfff,%eax
  3f:	74 0a                	je     4b <main+0x4b>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  41:	89 da                	mov    %ebx,%edx
  43:	29 c2                	sub    %eax,%edx
  45:	8d ba 00 10 00 00    	lea    0x1000(%edx),%edi
   else
     stack = p;

   int arg1 = 42, arg2 = 24;
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  4b:	8d 45 e0             	lea    -0x20(%ebp),%eax
  4e:	57                   	push   %edi
  4f:	50                   	push   %eax
  50:	8d 45 dc             	lea    -0x24(%ebp),%eax
  53:	50                   	push   %eax
  54:	68 80 01 00 00       	push   $0x180
   int arg1 = 42, arg2 = 24;
  59:	c7 45 dc 2a 00 00 00 	movl   $0x2a,-0x24(%ebp)
  60:	c7 45 e0 18 00 00 00 	movl   $0x18,-0x20(%ebp)
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  67:	e8 58 06 00 00       	call   6c4 <clone>
   assert(clone_pid > 0);
  6c:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, &arg1, &arg2, stack);
  6f:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  71:	85 c0                	test   %eax,%eax
  73:	7e 59                	jle    ce <main+0xce>

   void *join_stack;
   int join_pid = join(&join_stack);
  75:	83 ec 0c             	sub    $0xc,%esp
  78:	8d 45 e4             	lea    -0x1c(%ebp),%eax
  7b:	50                   	push   %eax
  7c:	e8 4b 06 00 00       	call   6cc <join>
   assert(join_pid == clone_pid);
  81:	83 c4 10             	add    $0x10,%esp
  84:	39 c6                	cmp    %eax,%esi
  86:	74 63                	je     eb <main+0xeb>
  88:	6a 29                	push   $0x29
  8a:	68 b8 0a 00 00       	push   $0xab8
  8f:	68 c1 0a 00 00       	push   $0xac1
  94:	6a 01                	push   $0x1
  96:	e8 f5 06 00 00       	call   790 <printf>
  9b:	83 c4 0c             	add    $0xc,%esp
  9e:	68 24 0b 00 00       	push   $0xb24
   assert(clone_pid > 0);
  a3:	68 d4 0a 00 00       	push   $0xad4
  a8:	6a 01                	push   $0x1
  aa:	e8 e1 06 00 00       	call   790 <printf>
  af:	5a                   	pop    %edx
  b0:	59                   	pop    %ecx
  b1:	68 e8 0a 00 00       	push   $0xae8
  b6:	6a 01                	push   $0x1
  b8:	e8 d3 06 00 00       	call   790 <printf>
  bd:	5b                   	pop    %ebx
  be:	ff 35 64 0f 00 00    	push   0xf64
  c4:	e8 8b 05 00 00       	call   654 <kill>
  c9:	e8 56 05 00 00       	call   624 <exit>
  ce:	6a 25                	push   $0x25
  d0:	68 b8 0a 00 00       	push   $0xab8
  d5:	68 c1 0a 00 00       	push   $0xac1
  da:	6a 01                	push   $0x1
  dc:	e8 af 06 00 00       	call   790 <printf>
  e1:	83 c4 0c             	add    $0xc,%esp
  e4:	68 16 0b 00 00       	push   $0xb16
  e9:	eb b8                	jmp    a3 <main+0xa3>
   assert(stack == join_stack);
  eb:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  ee:	74 1d                	je     10d <main+0x10d>
  f0:	6a 2a                	push   $0x2a
  f2:	68 b8 0a 00 00       	push   $0xab8
  f7:	68 c1 0a 00 00       	push   $0xac1
  fc:	6a 01                	push   $0x1
  fe:	e8 8d 06 00 00       	call   790 <printf>
 103:	83 c4 0c             	add    $0xc,%esp
 106:	68 3a 0b 00 00       	push   $0xb3a
 10b:	eb 96                	jmp    a3 <main+0xa3>
   assert(global == 2);
 10d:	83 3d 60 0f 00 00 02 	cmpl   $0x2,0xf60
 114:	74 40                	je     156 <main+0x156>
 116:	6a 2b                	push   $0x2b
 118:	68 b8 0a 00 00       	push   $0xab8
 11d:	68 c1 0a 00 00       	push   $0xac1
 122:	6a 01                	push   $0x1
 124:	e8 67 06 00 00       	call   790 <printf>
 129:	83 c4 0c             	add    $0xc,%esp
 12c:	68 4e 0b 00 00       	push   $0xb4e
 131:	e9 6d ff ff ff       	jmp    a3 <main+0xa3>
   assert(p != NULL);
 136:	6a 1d                	push   $0x1d
 138:	68 b8 0a 00 00       	push   $0xab8
 13d:	68 c1 0a 00 00       	push   $0xac1
 142:	6a 01                	push   $0x1
 144:	e8 47 06 00 00       	call   790 <printf>
 149:	83 c4 0c             	add    $0xc,%esp
 14c:	68 0c 0b 00 00       	push   $0xb0c
 151:	e9 4d ff ff ff       	jmp    a3 <main+0xa3>
   
   printf(1, "TEST PASSED\n");
 156:	50                   	push   %eax
 157:	50                   	push   %eax
 158:	68 5a 0b 00 00       	push   $0xb5a
 15d:	6a 01                	push   $0x1
 15f:	e8 2c 06 00 00       	call   790 <printf>
   free(p);
 164:	89 1c 24             	mov    %ebx,(%esp)
 167:	e8 c4 07 00 00       	call   930 <free>
   exit();
 16c:	e8 b3 04 00 00       	call   624 <exit>
 171:	66 90                	xchg   %ax,%ax
 173:	66 90                	xchg   %ax,%ax
 175:	66 90                	xchg   %ax,%ax
 177:	66 90                	xchg   %ax,%ax
 179:	66 90                	xchg   %ax,%ax
 17b:	66 90                	xchg   %ax,%ax
 17d:	66 90                	xchg   %ax,%ax
 17f:	90                   	nop

00000180 <worker>:
}

void
worker(void *arg1, void *arg2) {
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	83 ec 08             	sub    $0x8,%esp
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 186:	8b 45 0c             	mov    0xc(%ebp),%eax
 189:	8b 10                	mov    (%eax),%edx
   assert(tmp1 == 42);
 18b:	8b 45 08             	mov    0x8(%ebp),%eax
 18e:	83 38 2a             	cmpl   $0x2a,(%eax)
 191:	75 75                	jne    208 <worker+0x88>
   assert(tmp2 == 24);
 193:	83 fa 18             	cmp    $0x18,%edx
 196:	75 2a                	jne    1c2 <worker+0x42>
   assert(global == 1);
 198:	83 3d 60 0f 00 00 01 	cmpl   $0x1,0xf60
 19f:	0f 84 80 00 00 00    	je     225 <worker+0xa5>
 1a5:	6a 38                	push   $0x38
 1a7:	68 b8 0a 00 00       	push   $0xab8
 1ac:	68 c1 0a 00 00       	push   $0xac1
 1b1:	6a 01                	push   $0x1
 1b3:	e8 d8 05 00 00       	call   790 <printf>
 1b8:	83 c4 0c             	add    $0xc,%esp
 1bb:	68 00 0b 00 00       	push   $0xb00
 1c0:	eb 1b                	jmp    1dd <worker+0x5d>
   assert(tmp2 == 24);
 1c2:	6a 37                	push   $0x37
 1c4:	68 b8 0a 00 00       	push   $0xab8
 1c9:	68 c1 0a 00 00       	push   $0xac1
 1ce:	6a 01                	push   $0x1
 1d0:	e8 bb 05 00 00       	call   790 <printf>
 1d5:	83 c4 0c             	add    $0xc,%esp
 1d8:	68 f5 0a 00 00       	push   $0xaf5
 1dd:	68 d4 0a 00 00       	push   $0xad4
 1e2:	6a 01                	push   $0x1
 1e4:	e8 a7 05 00 00       	call   790 <printf>
 1e9:	58                   	pop    %eax
 1ea:	5a                   	pop    %edx
 1eb:	68 e8 0a 00 00       	push   $0xae8
 1f0:	6a 01                	push   $0x1
 1f2:	e8 99 05 00 00       	call   790 <printf>
 1f7:	59                   	pop    %ecx
 1f8:	ff 35 64 0f 00 00    	push   0xf64
 1fe:	e8 51 04 00 00       	call   654 <kill>
 203:	e8 1c 04 00 00       	call   624 <exit>
   assert(tmp1 == 42);
 208:	6a 36                	push   $0x36
 20a:	68 b8 0a 00 00       	push   $0xab8
 20f:	68 c1 0a 00 00       	push   $0xac1
 214:	6a 01                	push   $0x1
 216:	e8 75 05 00 00       	call   790 <printf>
 21b:	83 c4 0c             	add    $0xc,%esp
 21e:	68 c9 0a 00 00       	push   $0xac9
 223:	eb b8                	jmp    1dd <worker+0x5d>
   global++;
 225:	c7 05 60 0f 00 00 02 	movl   $0x2,0xf60
 22c:	00 00 00 
   exit();
 22f:	e8 f0 03 00 00       	call   624 <exit>
 234:	66 90                	xchg   %ax,%ax
 236:	66 90                	xchg   %ax,%ax
 238:	66 90                	xchg   %ax,%ax
 23a:	66 90                	xchg   %ax,%ax
 23c:	66 90                	xchg   %ax,%ax
 23e:	66 90                	xchg   %ax,%ax

00000240 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 240:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 241:	31 c0                	xor    %eax,%eax
{
 243:	89 e5                	mov    %esp,%ebp
 245:	53                   	push   %ebx
 246:	8b 4d 08             	mov    0x8(%ebp),%ecx
 249:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 250:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 254:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 257:	83 c0 01             	add    $0x1,%eax
 25a:	84 d2                	test   %dl,%dl
 25c:	75 f2                	jne    250 <strcpy+0x10>
    ;
  return os;
}
 25e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 261:	89 c8                	mov    %ecx,%eax
 263:	c9                   	leave  
 264:	c3                   	ret    
 265:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 26c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000270 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	53                   	push   %ebx
 274:	8b 55 08             	mov    0x8(%ebp),%edx
 277:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 27a:	0f b6 02             	movzbl (%edx),%eax
 27d:	84 c0                	test   %al,%al
 27f:	75 17                	jne    298 <strcmp+0x28>
 281:	eb 3a                	jmp    2bd <strcmp+0x4d>
 283:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 287:	90                   	nop
 288:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 28c:	83 c2 01             	add    $0x1,%edx
 28f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 292:	84 c0                	test   %al,%al
 294:	74 1a                	je     2b0 <strcmp+0x40>
    p++, q++;
 296:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 298:	0f b6 19             	movzbl (%ecx),%ebx
 29b:	38 c3                	cmp    %al,%bl
 29d:	74 e9                	je     288 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 29f:	29 d8                	sub    %ebx,%eax
}
 2a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2a4:	c9                   	leave  
 2a5:	c3                   	ret    
 2a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 2b0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2b4:	31 c0                	xor    %eax,%eax
 2b6:	29 d8                	sub    %ebx,%eax
}
 2b8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2bb:	c9                   	leave  
 2bc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 2bd:	0f b6 19             	movzbl (%ecx),%ebx
 2c0:	31 c0                	xor    %eax,%eax
 2c2:	eb db                	jmp    29f <strcmp+0x2f>
 2c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2cf:	90                   	nop

000002d0 <strlen>:

uint
strlen(const char *s)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2d6:	80 3a 00             	cmpb   $0x0,(%edx)
 2d9:	74 15                	je     2f0 <strlen+0x20>
 2db:	31 c0                	xor    %eax,%eax
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
 2e0:	83 c0 01             	add    $0x1,%eax
 2e3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2e7:	89 c1                	mov    %eax,%ecx
 2e9:	75 f5                	jne    2e0 <strlen+0x10>
    ;
  return n;
}
 2eb:	89 c8                	mov    %ecx,%eax
 2ed:	5d                   	pop    %ebp
 2ee:	c3                   	ret    
 2ef:	90                   	nop
  for(n = 0; s[n]; n++)
 2f0:	31 c9                	xor    %ecx,%ecx
}
 2f2:	5d                   	pop    %ebp
 2f3:	89 c8                	mov    %ecx,%eax
 2f5:	c3                   	ret    
 2f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fd:	8d 76 00             	lea    0x0(%esi),%esi

00000300 <memset>:

void*
memset(void *dst, int c, uint n)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	57                   	push   %edi
 304:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 307:	8b 4d 10             	mov    0x10(%ebp),%ecx
 30a:	8b 45 0c             	mov    0xc(%ebp),%eax
 30d:	89 d7                	mov    %edx,%edi
 30f:	fc                   	cld    
 310:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 312:	8b 7d fc             	mov    -0x4(%ebp),%edi
 315:	89 d0                	mov    %edx,%eax
 317:	c9                   	leave  
 318:	c3                   	ret    
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000320 <strchr>:

char*
strchr(const char *s, char c)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	8b 45 08             	mov    0x8(%ebp),%eax
 326:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 32a:	0f b6 10             	movzbl (%eax),%edx
 32d:	84 d2                	test   %dl,%dl
 32f:	75 12                	jne    343 <strchr+0x23>
 331:	eb 1d                	jmp    350 <strchr+0x30>
 333:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 337:	90                   	nop
 338:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 33c:	83 c0 01             	add    $0x1,%eax
 33f:	84 d2                	test   %dl,%dl
 341:	74 0d                	je     350 <strchr+0x30>
    if(*s == c)
 343:	38 d1                	cmp    %dl,%cl
 345:	75 f1                	jne    338 <strchr+0x18>
      return (char*)s;
  return 0;
}
 347:	5d                   	pop    %ebp
 348:	c3                   	ret    
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 350:	31 c0                	xor    %eax,%eax
}
 352:	5d                   	pop    %ebp
 353:	c3                   	ret    
 354:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 35b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 35f:	90                   	nop

00000360 <gets>:

char*
gets(char *buf, int max)
{
 360:	55                   	push   %ebp
 361:	89 e5                	mov    %esp,%ebp
 363:	57                   	push   %edi
 364:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 365:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 368:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 369:	31 db                	xor    %ebx,%ebx
{
 36b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 36e:	eb 27                	jmp    397 <gets+0x37>
    cc = read(0, &c, 1);
 370:	83 ec 04             	sub    $0x4,%esp
 373:	6a 01                	push   $0x1
 375:	57                   	push   %edi
 376:	6a 00                	push   $0x0
 378:	e8 bf 02 00 00       	call   63c <read>
    if(cc < 1)
 37d:	83 c4 10             	add    $0x10,%esp
 380:	85 c0                	test   %eax,%eax
 382:	7e 1d                	jle    3a1 <gets+0x41>
      break;
    buf[i++] = c;
 384:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 388:	8b 55 08             	mov    0x8(%ebp),%edx
 38b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 38f:	3c 0a                	cmp    $0xa,%al
 391:	74 1d                	je     3b0 <gets+0x50>
 393:	3c 0d                	cmp    $0xd,%al
 395:	74 19                	je     3b0 <gets+0x50>
  for(i=0; i+1 < max; ){
 397:	89 de                	mov    %ebx,%esi
 399:	83 c3 01             	add    $0x1,%ebx
 39c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 39f:	7c cf                	jl     370 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 3a1:	8b 45 08             	mov    0x8(%ebp),%eax
 3a4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 3a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3ab:	5b                   	pop    %ebx
 3ac:	5e                   	pop    %esi
 3ad:	5f                   	pop    %edi
 3ae:	5d                   	pop    %ebp
 3af:	c3                   	ret    
  buf[i] = '\0';
 3b0:	8b 45 08             	mov    0x8(%ebp),%eax
 3b3:	89 de                	mov    %ebx,%esi
 3b5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 3b9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3bc:	5b                   	pop    %ebx
 3bd:	5e                   	pop    %esi
 3be:	5f                   	pop    %edi
 3bf:	5d                   	pop    %ebp
 3c0:	c3                   	ret    
 3c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	56                   	push   %esi
 3d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3d5:	83 ec 08             	sub    $0x8,%esp
 3d8:	6a 00                	push   $0x0
 3da:	ff 75 08             	push   0x8(%ebp)
 3dd:	e8 82 02 00 00       	call   664 <open>
  if(fd < 0)
 3e2:	83 c4 10             	add    $0x10,%esp
 3e5:	85 c0                	test   %eax,%eax
 3e7:	78 27                	js     410 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3e9:	83 ec 08             	sub    $0x8,%esp
 3ec:	ff 75 0c             	push   0xc(%ebp)
 3ef:	89 c3                	mov    %eax,%ebx
 3f1:	50                   	push   %eax
 3f2:	e8 85 02 00 00       	call   67c <fstat>
  close(fd);
 3f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3fa:	89 c6                	mov    %eax,%esi
  close(fd);
 3fc:	e8 4b 02 00 00       	call   64c <close>
  return r;
 401:	83 c4 10             	add    $0x10,%esp
}
 404:	8d 65 f8             	lea    -0x8(%ebp),%esp
 407:	89 f0                	mov    %esi,%eax
 409:	5b                   	pop    %ebx
 40a:	5e                   	pop    %esi
 40b:	5d                   	pop    %ebp
 40c:	c3                   	ret    
 40d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 410:	be ff ff ff ff       	mov    $0xffffffff,%esi
 415:	eb ed                	jmp    404 <stat+0x34>
 417:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41e:	66 90                	xchg   %ax,%ax

00000420 <atoi>:

int
atoi(const char *s)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	53                   	push   %ebx
 424:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 427:	0f be 02             	movsbl (%edx),%eax
 42a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 42d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 430:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 435:	77 1e                	ja     455 <atoi+0x35>
 437:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 43e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 440:	83 c2 01             	add    $0x1,%edx
 443:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 446:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 44a:	0f be 02             	movsbl (%edx),%eax
 44d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 450:	80 fb 09             	cmp    $0x9,%bl
 453:	76 eb                	jbe    440 <atoi+0x20>
  return n;
}
 455:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 458:	89 c8                	mov    %ecx,%eax
 45a:	c9                   	leave  
 45b:	c3                   	ret    
 45c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000460 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	8b 45 10             	mov    0x10(%ebp),%eax
 467:	8b 55 08             	mov    0x8(%ebp),%edx
 46a:	56                   	push   %esi
 46b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 46e:	85 c0                	test   %eax,%eax
 470:	7e 13                	jle    485 <memmove+0x25>
 472:	01 d0                	add    %edx,%eax
  dst = vdst;
 474:	89 d7                	mov    %edx,%edi
 476:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 47d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 480:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 481:	39 f8                	cmp    %edi,%eax
 483:	75 fb                	jne    480 <memmove+0x20>
  return vdst;
}
 485:	5e                   	pop    %esi
 486:	89 d0                	mov    %edx,%eax
 488:	5f                   	pop    %edi
 489:	5d                   	pop    %ebp
 48a:	c3                   	ret    
 48b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 490:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 491:	b8 01 00 00 00       	mov    $0x1,%eax
 496:	89 e5                	mov    %esp,%ebp
 498:	53                   	push   %ebx
 499:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 49c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 4a3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 4aa:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 4af:	8b 55 f4             	mov    -0xc(%ebp),%edx
 4b2:	39 c2                	cmp    %eax,%edx
 4b4:	74 24                	je     4da <thread_create+0x4a>
 4b6:	89 c3                	mov    %eax,%ebx
 4b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 4c0:	83 ec 04             	sub    $0x4,%esp
 4c3:	52                   	push   %edx
 4c4:	68 67 0b 00 00       	push   $0xb67
 4c9:	6a 01                	push   $0x1
 4cb:	e8 c0 02 00 00       	call   790 <printf>
  while(lock->turn != myturn){
 4d0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 4d3:	83 c4 10             	add    $0x10,%esp
 4d6:	39 d3                	cmp    %edx,%ebx
 4d8:	75 e6                	jne    4c0 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 4da:	83 ec 0c             	sub    $0xc,%esp
 4dd:	68 00 20 00 00       	push   $0x2000
 4e2:	e8 d9 04 00 00       	call   9c0 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 4e7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 4eb:	83 c4 10             	add    $0x10,%esp
 4ee:	89 c2                	mov    %eax,%edx
 4f0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 4f6:	74 07                	je     4ff <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 4f8:	29 d0                	sub    %edx,%eax
 4fa:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 4ff:	50                   	push   %eax
 500:	ff 75 10             	push   0x10(%ebp)
 503:	ff 75 0c             	push   0xc(%ebp)
 506:	ff 75 08             	push   0x8(%ebp)
 509:	e8 b6 01 00 00       	call   6c4 <clone>
}
 50e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 511:	c9                   	leave  
 512:	c3                   	ret    
 513:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000520 <thread_join>:
int thread_join(){
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	56                   	push   %esi
 524:	53                   	push   %ebx
 525:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 528:	6a 04                	push   $0x4
 52a:	e8 91 04 00 00       	call   9c0 <malloc>
 52f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 532:	8d 45 ec             	lea    -0x14(%ebp),%eax
 535:	89 04 24             	mov    %eax,(%esp)
 538:	e8 8f 01 00 00       	call   6cc <join>
  lock->ticket = 0;
 53d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 544:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 546:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 54d:	b8 01 00 00 00       	mov    $0x1,%eax
 552:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 557:	8b 55 f4             	mov    -0xc(%ebp),%edx
 55a:	83 c4 10             	add    $0x10,%esp
 55d:	39 c2                	cmp    %eax,%edx
 55f:	74 21                	je     582 <thread_join+0x62>
 561:	89 c3                	mov    %eax,%ebx
 563:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 567:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 568:	83 ec 04             	sub    $0x4,%esp
 56b:	52                   	push   %edx
 56c:	68 67 0b 00 00       	push   $0xb67
 571:	6a 01                	push   $0x1
 573:	e8 18 02 00 00       	call   790 <printf>
  while(lock->turn != myturn){
 578:	8b 55 f4             	mov    -0xc(%ebp),%edx
 57b:	83 c4 10             	add    $0x10,%esp
 57e:	39 d3                	cmp    %edx,%ebx
 580:	75 e6                	jne    568 <thread_join+0x48>
	free(stack);
 582:	83 ec 0c             	sub    $0xc,%esp
 585:	ff 75 ec             	push   -0x14(%ebp)
 588:	e8 a3 03 00 00       	call   930 <free>
}
 58d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 590:	89 f0                	mov    %esi,%eax
 592:	5b                   	pop    %ebx
 593:	5e                   	pop    %esi
 594:	5d                   	pop    %ebp
 595:	c3                   	ret    
 596:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59d:	8d 76 00             	lea    0x0(%esi),%esi

000005a0 <lock_init>:
void lock_init(lock_t *lock) {
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 5a6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 5ac:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 5b3:	5d                   	pop    %ebp
 5b4:	c3                   	ret    
 5b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005c0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 5c0:	55                   	push   %ebp
 5c1:	b8 01 00 00 00       	mov    $0x1,%eax
 5c6:	89 e5                	mov    %esp,%ebp
 5c8:	56                   	push   %esi
 5c9:	8b 75 08             	mov    0x8(%ebp),%esi
 5cc:	53                   	push   %ebx
 5cd:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 5d1:	8b 56 04             	mov    0x4(%esi),%edx
 5d4:	39 d0                	cmp    %edx,%eax
 5d6:	74 22                	je     5fa <lock_acquire+0x3a>
 5d8:	89 c3                	mov    %eax,%ebx
 5da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 5e0:	83 ec 04             	sub    $0x4,%esp
 5e3:	52                   	push   %edx
 5e4:	68 67 0b 00 00       	push   $0xb67
 5e9:	6a 01                	push   $0x1
 5eb:	e8 a0 01 00 00       	call   790 <printf>
  while(lock->turn != myturn){
 5f0:	8b 56 04             	mov    0x4(%esi),%edx
 5f3:	83 c4 10             	add    $0x10,%esp
 5f6:	39 da                	cmp    %ebx,%edx
 5f8:	75 e6                	jne    5e0 <lock_acquire+0x20>
}
 5fa:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5fd:	5b                   	pop    %ebx
 5fe:	5e                   	pop    %esi
 5ff:	5d                   	pop    %ebp
 600:	c3                   	ret    
 601:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 608:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 60f:	90                   	nop

00000610 <lock_release>:
void lock_release(lock_t *lock){
 610:	55                   	push   %ebp
 611:	89 e5                	mov    %esp,%ebp
 613:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 616:	83 40 04 01          	addl   $0x1,0x4(%eax)
 61a:	5d                   	pop    %ebp
 61b:	c3                   	ret    

0000061c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 61c:	b8 01 00 00 00       	mov    $0x1,%eax
 621:	cd 40                	int    $0x40
 623:	c3                   	ret    

00000624 <exit>:
SYSCALL(exit)
 624:	b8 02 00 00 00       	mov    $0x2,%eax
 629:	cd 40                	int    $0x40
 62b:	c3                   	ret    

0000062c <wait>:
SYSCALL(wait)
 62c:	b8 03 00 00 00       	mov    $0x3,%eax
 631:	cd 40                	int    $0x40
 633:	c3                   	ret    

00000634 <pipe>:
SYSCALL(pipe)
 634:	b8 04 00 00 00       	mov    $0x4,%eax
 639:	cd 40                	int    $0x40
 63b:	c3                   	ret    

0000063c <read>:
SYSCALL(read)
 63c:	b8 05 00 00 00       	mov    $0x5,%eax
 641:	cd 40                	int    $0x40
 643:	c3                   	ret    

00000644 <write>:
SYSCALL(write)
 644:	b8 10 00 00 00       	mov    $0x10,%eax
 649:	cd 40                	int    $0x40
 64b:	c3                   	ret    

0000064c <close>:
SYSCALL(close)
 64c:	b8 15 00 00 00       	mov    $0x15,%eax
 651:	cd 40                	int    $0x40
 653:	c3                   	ret    

00000654 <kill>:
SYSCALL(kill)
 654:	b8 06 00 00 00       	mov    $0x6,%eax
 659:	cd 40                	int    $0x40
 65b:	c3                   	ret    

0000065c <exec>:
SYSCALL(exec)
 65c:	b8 07 00 00 00       	mov    $0x7,%eax
 661:	cd 40                	int    $0x40
 663:	c3                   	ret    

00000664 <open>:
SYSCALL(open)
 664:	b8 0f 00 00 00       	mov    $0xf,%eax
 669:	cd 40                	int    $0x40
 66b:	c3                   	ret    

0000066c <mknod>:
SYSCALL(mknod)
 66c:	b8 11 00 00 00       	mov    $0x11,%eax
 671:	cd 40                	int    $0x40
 673:	c3                   	ret    

00000674 <unlink>:
SYSCALL(unlink)
 674:	b8 12 00 00 00       	mov    $0x12,%eax
 679:	cd 40                	int    $0x40
 67b:	c3                   	ret    

0000067c <fstat>:
SYSCALL(fstat)
 67c:	b8 08 00 00 00       	mov    $0x8,%eax
 681:	cd 40                	int    $0x40
 683:	c3                   	ret    

00000684 <link>:
SYSCALL(link)
 684:	b8 13 00 00 00       	mov    $0x13,%eax
 689:	cd 40                	int    $0x40
 68b:	c3                   	ret    

0000068c <mkdir>:
SYSCALL(mkdir)
 68c:	b8 14 00 00 00       	mov    $0x14,%eax
 691:	cd 40                	int    $0x40
 693:	c3                   	ret    

00000694 <chdir>:
SYSCALL(chdir)
 694:	b8 09 00 00 00       	mov    $0x9,%eax
 699:	cd 40                	int    $0x40
 69b:	c3                   	ret    

0000069c <dup>:
SYSCALL(dup)
 69c:	b8 0a 00 00 00       	mov    $0xa,%eax
 6a1:	cd 40                	int    $0x40
 6a3:	c3                   	ret    

000006a4 <getpid>:
SYSCALL(getpid)
 6a4:	b8 0b 00 00 00       	mov    $0xb,%eax
 6a9:	cd 40                	int    $0x40
 6ab:	c3                   	ret    

000006ac <sbrk>:
SYSCALL(sbrk)
 6ac:	b8 0c 00 00 00       	mov    $0xc,%eax
 6b1:	cd 40                	int    $0x40
 6b3:	c3                   	ret    

000006b4 <sleep>:
SYSCALL(sleep)
 6b4:	b8 0d 00 00 00       	mov    $0xd,%eax
 6b9:	cd 40                	int    $0x40
 6bb:	c3                   	ret    

000006bc <uptime>:
SYSCALL(uptime)
 6bc:	b8 0e 00 00 00       	mov    $0xe,%eax
 6c1:	cd 40                	int    $0x40
 6c3:	c3                   	ret    

000006c4 <clone>:
SYSCALL(clone)
 6c4:	b8 16 00 00 00       	mov    $0x16,%eax
 6c9:	cd 40                	int    $0x40
 6cb:	c3                   	ret    

000006cc <join>:
SYSCALL(join)
 6cc:	b8 17 00 00 00       	mov    $0x17,%eax
 6d1:	cd 40                	int    $0x40
 6d3:	c3                   	ret    
 6d4:	66 90                	xchg   %ax,%ax
 6d6:	66 90                	xchg   %ax,%ax
 6d8:	66 90                	xchg   %ax,%ax
 6da:	66 90                	xchg   %ax,%ax
 6dc:	66 90                	xchg   %ax,%ax
 6de:	66 90                	xchg   %ax,%ax

000006e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6e0:	55                   	push   %ebp
 6e1:	89 e5                	mov    %esp,%ebp
 6e3:	57                   	push   %edi
 6e4:	56                   	push   %esi
 6e5:	53                   	push   %ebx
 6e6:	83 ec 3c             	sub    $0x3c,%esp
 6e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6ec:	89 d1                	mov    %edx,%ecx
{
 6ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6f1:	85 d2                	test   %edx,%edx
 6f3:	0f 89 7f 00 00 00    	jns    778 <printint+0x98>
 6f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6fd:	74 79                	je     778 <printint+0x98>
    neg = 1;
 6ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 706:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 708:	31 db                	xor    %ebx,%ebx
 70a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 70d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 710:	89 c8                	mov    %ecx,%eax
 712:	31 d2                	xor    %edx,%edx
 714:	89 cf                	mov    %ecx,%edi
 716:	f7 75 c4             	divl   -0x3c(%ebp)
 719:	0f b6 92 dc 0b 00 00 	movzbl 0xbdc(%edx),%edx
 720:	89 45 c0             	mov    %eax,-0x40(%ebp)
 723:	89 d8                	mov    %ebx,%eax
 725:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 728:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 72b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 72e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 731:	76 dd                	jbe    710 <printint+0x30>
  if(neg)
 733:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 736:	85 c9                	test   %ecx,%ecx
 738:	74 0c                	je     746 <printint+0x66>
    buf[i++] = '-';
 73a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 73f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 741:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 746:	8b 7d b8             	mov    -0x48(%ebp),%edi
 749:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 74d:	eb 07                	jmp    756 <printint+0x76>
 74f:	90                   	nop
    putc(fd, buf[i]);
 750:	0f b6 13             	movzbl (%ebx),%edx
 753:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 756:	83 ec 04             	sub    $0x4,%esp
 759:	88 55 d7             	mov    %dl,-0x29(%ebp)
 75c:	6a 01                	push   $0x1
 75e:	56                   	push   %esi
 75f:	57                   	push   %edi
 760:	e8 df fe ff ff       	call   644 <write>
  while(--i >= 0)
 765:	83 c4 10             	add    $0x10,%esp
 768:	39 de                	cmp    %ebx,%esi
 76a:	75 e4                	jne    750 <printint+0x70>
}
 76c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 76f:	5b                   	pop    %ebx
 770:	5e                   	pop    %esi
 771:	5f                   	pop    %edi
 772:	5d                   	pop    %ebp
 773:	c3                   	ret    
 774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 778:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 77f:	eb 87                	jmp    708 <printint+0x28>
 781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 788:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78f:	90                   	nop

00000790 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 790:	55                   	push   %ebp
 791:	89 e5                	mov    %esp,%ebp
 793:	57                   	push   %edi
 794:	56                   	push   %esi
 795:	53                   	push   %ebx
 796:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 799:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 79c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 79f:	0f b6 13             	movzbl (%ebx),%edx
 7a2:	84 d2                	test   %dl,%dl
 7a4:	74 6a                	je     810 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 7a6:	8d 45 10             	lea    0x10(%ebp),%eax
 7a9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 7ac:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 7af:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7b4:	eb 36                	jmp    7ec <printf+0x5c>
 7b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
 7c0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7c3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7c8:	83 f8 25             	cmp    $0x25,%eax
 7cb:	74 15                	je     7e2 <printf+0x52>
  write(fd, &c, 1);
 7cd:	83 ec 04             	sub    $0x4,%esp
 7d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7d3:	6a 01                	push   $0x1
 7d5:	57                   	push   %edi
 7d6:	56                   	push   %esi
 7d7:	e8 68 fe ff ff       	call   644 <write>
 7dc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7df:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7e2:	0f b6 13             	movzbl (%ebx),%edx
 7e5:	83 c3 01             	add    $0x1,%ebx
 7e8:	84 d2                	test   %dl,%dl
 7ea:	74 24                	je     810 <printf+0x80>
    c = fmt[i] & 0xff;
 7ec:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7ef:	85 c9                	test   %ecx,%ecx
 7f1:	74 cd                	je     7c0 <printf+0x30>
      }
    } else if(state == '%'){
 7f3:	83 f9 25             	cmp    $0x25,%ecx
 7f6:	75 ea                	jne    7e2 <printf+0x52>
      if(c == 'd'){
 7f8:	83 f8 25             	cmp    $0x25,%eax
 7fb:	0f 84 07 01 00 00    	je     908 <printf+0x178>
 801:	83 e8 63             	sub    $0x63,%eax
 804:	83 f8 15             	cmp    $0x15,%eax
 807:	77 17                	ja     820 <printf+0x90>
 809:	ff 24 85 84 0b 00 00 	jmp    *0xb84(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 810:	8d 65 f4             	lea    -0xc(%ebp),%esp
 813:	5b                   	pop    %ebx
 814:	5e                   	pop    %esi
 815:	5f                   	pop    %edi
 816:	5d                   	pop    %ebp
 817:	c3                   	ret    
 818:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 81f:	90                   	nop
  write(fd, &c, 1);
 820:	83 ec 04             	sub    $0x4,%esp
 823:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 826:	6a 01                	push   $0x1
 828:	57                   	push   %edi
 829:	56                   	push   %esi
 82a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 82e:	e8 11 fe ff ff       	call   644 <write>
        putc(fd, c);
 833:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 837:	83 c4 0c             	add    $0xc,%esp
 83a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 83d:	6a 01                	push   $0x1
 83f:	57                   	push   %edi
 840:	56                   	push   %esi
 841:	e8 fe fd ff ff       	call   644 <write>
        putc(fd, c);
 846:	83 c4 10             	add    $0x10,%esp
      state = 0;
 849:	31 c9                	xor    %ecx,%ecx
 84b:	eb 95                	jmp    7e2 <printf+0x52>
 84d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 850:	83 ec 0c             	sub    $0xc,%esp
 853:	b9 10 00 00 00       	mov    $0x10,%ecx
 858:	6a 00                	push   $0x0
 85a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 85d:	8b 10                	mov    (%eax),%edx
 85f:	89 f0                	mov    %esi,%eax
 861:	e8 7a fe ff ff       	call   6e0 <printint>
        ap++;
 866:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 86a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 86d:	31 c9                	xor    %ecx,%ecx
 86f:	e9 6e ff ff ff       	jmp    7e2 <printf+0x52>
 874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 878:	8b 45 d0             	mov    -0x30(%ebp),%eax
 87b:	8b 10                	mov    (%eax),%edx
        ap++;
 87d:	83 c0 04             	add    $0x4,%eax
 880:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 883:	85 d2                	test   %edx,%edx
 885:	0f 84 8d 00 00 00    	je     918 <printf+0x188>
        while(*s != 0){
 88b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 88e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 890:	84 c0                	test   %al,%al
 892:	0f 84 4a ff ff ff    	je     7e2 <printf+0x52>
 898:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 89b:	89 d3                	mov    %edx,%ebx
 89d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 8a0:	83 ec 04             	sub    $0x4,%esp
          s++;
 8a3:	83 c3 01             	add    $0x1,%ebx
 8a6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8a9:	6a 01                	push   $0x1
 8ab:	57                   	push   %edi
 8ac:	56                   	push   %esi
 8ad:	e8 92 fd ff ff       	call   644 <write>
        while(*s != 0){
 8b2:	0f b6 03             	movzbl (%ebx),%eax
 8b5:	83 c4 10             	add    $0x10,%esp
 8b8:	84 c0                	test   %al,%al
 8ba:	75 e4                	jne    8a0 <printf+0x110>
      state = 0;
 8bc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8bf:	31 c9                	xor    %ecx,%ecx
 8c1:	e9 1c ff ff ff       	jmp    7e2 <printf+0x52>
 8c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8d0:	83 ec 0c             	sub    $0xc,%esp
 8d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8d8:	6a 01                	push   $0x1
 8da:	e9 7b ff ff ff       	jmp    85a <printf+0xca>
 8df:	90                   	nop
        putc(fd, *ap);
 8e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8e3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8e6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8e8:	6a 01                	push   $0x1
 8ea:	57                   	push   %edi
 8eb:	56                   	push   %esi
        putc(fd, *ap);
 8ec:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8ef:	e8 50 fd ff ff       	call   644 <write>
        ap++;
 8f4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8f8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8fb:	31 c9                	xor    %ecx,%ecx
 8fd:	e9 e0 fe ff ff       	jmp    7e2 <printf+0x52>
 902:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 908:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 90b:	83 ec 04             	sub    $0x4,%esp
 90e:	e9 2a ff ff ff       	jmp    83d <printf+0xad>
 913:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 917:	90                   	nop
          s = "(null)";
 918:	ba 7b 0b 00 00       	mov    $0xb7b,%edx
        while(*s != 0){
 91d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 920:	b8 28 00 00 00       	mov    $0x28,%eax
 925:	89 d3                	mov    %edx,%ebx
 927:	e9 74 ff ff ff       	jmp    8a0 <printf+0x110>
 92c:	66 90                	xchg   %ax,%ax
 92e:	66 90                	xchg   %ax,%ax

00000930 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 930:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 931:	a1 68 0f 00 00       	mov    0xf68,%eax
{
 936:	89 e5                	mov    %esp,%ebp
 938:	57                   	push   %edi
 939:	56                   	push   %esi
 93a:	53                   	push   %ebx
 93b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 93e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 941:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 948:	89 c2                	mov    %eax,%edx
 94a:	8b 00                	mov    (%eax),%eax
 94c:	39 ca                	cmp    %ecx,%edx
 94e:	73 30                	jae    980 <free+0x50>
 950:	39 c1                	cmp    %eax,%ecx
 952:	72 04                	jb     958 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 954:	39 c2                	cmp    %eax,%edx
 956:	72 f0                	jb     948 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 958:	8b 73 fc             	mov    -0x4(%ebx),%esi
 95b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 95e:	39 f8                	cmp    %edi,%eax
 960:	74 30                	je     992 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 962:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 965:	8b 42 04             	mov    0x4(%edx),%eax
 968:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 96b:	39 f1                	cmp    %esi,%ecx
 96d:	74 3a                	je     9a9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 96f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 971:	5b                   	pop    %ebx
  freep = p;
 972:	89 15 68 0f 00 00    	mov    %edx,0xf68
}
 978:	5e                   	pop    %esi
 979:	5f                   	pop    %edi
 97a:	5d                   	pop    %ebp
 97b:	c3                   	ret    
 97c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 980:	39 c2                	cmp    %eax,%edx
 982:	72 c4                	jb     948 <free+0x18>
 984:	39 c1                	cmp    %eax,%ecx
 986:	73 c0                	jae    948 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 988:	8b 73 fc             	mov    -0x4(%ebx),%esi
 98b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 98e:	39 f8                	cmp    %edi,%eax
 990:	75 d0                	jne    962 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 992:	03 70 04             	add    0x4(%eax),%esi
 995:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 998:	8b 02                	mov    (%edx),%eax
 99a:	8b 00                	mov    (%eax),%eax
 99c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 99f:	8b 42 04             	mov    0x4(%edx),%eax
 9a2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9a5:	39 f1                	cmp    %esi,%ecx
 9a7:	75 c6                	jne    96f <free+0x3f>
    p->s.size += bp->s.size;
 9a9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 9ac:	89 15 68 0f 00 00    	mov    %edx,0xf68
    p->s.size += bp->s.size;
 9b2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9b5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9b8:	89 0a                	mov    %ecx,(%edx)
}
 9ba:	5b                   	pop    %ebx
 9bb:	5e                   	pop    %esi
 9bc:	5f                   	pop    %edi
 9bd:	5d                   	pop    %ebp
 9be:	c3                   	ret    
 9bf:	90                   	nop

000009c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9c0:	55                   	push   %ebp
 9c1:	89 e5                	mov    %esp,%ebp
 9c3:	57                   	push   %edi
 9c4:	56                   	push   %esi
 9c5:	53                   	push   %ebx
 9c6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9c9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9cc:	8b 3d 68 0f 00 00    	mov    0xf68,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9d2:	8d 70 07             	lea    0x7(%eax),%esi
 9d5:	c1 ee 03             	shr    $0x3,%esi
 9d8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9db:	85 ff                	test   %edi,%edi
 9dd:	0f 84 9d 00 00 00    	je     a80 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9e3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9e5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9e8:	39 f1                	cmp    %esi,%ecx
 9ea:	73 6a                	jae    a56 <malloc+0x96>
 9ec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9f1:	39 de                	cmp    %ebx,%esi
 9f3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9f6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9fd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a00:	eb 17                	jmp    a19 <malloc+0x59>
 a02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a08:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a0a:	8b 48 04             	mov    0x4(%eax),%ecx
 a0d:	39 f1                	cmp    %esi,%ecx
 a0f:	73 4f                	jae    a60 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a11:	8b 3d 68 0f 00 00    	mov    0xf68,%edi
 a17:	89 c2                	mov    %eax,%edx
 a19:	39 d7                	cmp    %edx,%edi
 a1b:	75 eb                	jne    a08 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a1d:	83 ec 0c             	sub    $0xc,%esp
 a20:	ff 75 e4             	push   -0x1c(%ebp)
 a23:	e8 84 fc ff ff       	call   6ac <sbrk>
  if(p == (char*)-1)
 a28:	83 c4 10             	add    $0x10,%esp
 a2b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a2e:	74 1c                	je     a4c <malloc+0x8c>
  hp->s.size = nu;
 a30:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a33:	83 ec 0c             	sub    $0xc,%esp
 a36:	83 c0 08             	add    $0x8,%eax
 a39:	50                   	push   %eax
 a3a:	e8 f1 fe ff ff       	call   930 <free>
  return freep;
 a3f:	8b 15 68 0f 00 00    	mov    0xf68,%edx
      if((p = morecore(nunits)) == 0)
 a45:	83 c4 10             	add    $0x10,%esp
 a48:	85 d2                	test   %edx,%edx
 a4a:	75 bc                	jne    a08 <malloc+0x48>
        return 0;
  }
}
 a4c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a4f:	31 c0                	xor    %eax,%eax
}
 a51:	5b                   	pop    %ebx
 a52:	5e                   	pop    %esi
 a53:	5f                   	pop    %edi
 a54:	5d                   	pop    %ebp
 a55:	c3                   	ret    
    if(p->s.size >= nunits){
 a56:	89 d0                	mov    %edx,%eax
 a58:	89 fa                	mov    %edi,%edx
 a5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a60:	39 ce                	cmp    %ecx,%esi
 a62:	74 4c                	je     ab0 <malloc+0xf0>
        p->s.size -= nunits;
 a64:	29 f1                	sub    %esi,%ecx
 a66:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a69:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a6c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a6f:	89 15 68 0f 00 00    	mov    %edx,0xf68
}
 a75:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a78:	83 c0 08             	add    $0x8,%eax
}
 a7b:	5b                   	pop    %ebx
 a7c:	5e                   	pop    %esi
 a7d:	5f                   	pop    %edi
 a7e:	5d                   	pop    %ebp
 a7f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a80:	c7 05 68 0f 00 00 6c 	movl   $0xf6c,0xf68
 a87:	0f 00 00 
    base.s.size = 0;
 a8a:	bf 6c 0f 00 00       	mov    $0xf6c,%edi
    base.s.ptr = freep = prevp = &base;
 a8f:	c7 05 6c 0f 00 00 6c 	movl   $0xf6c,0xf6c
 a96:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a99:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a9b:	c7 05 70 0f 00 00 00 	movl   $0x0,0xf70
 aa2:	00 00 00 
    if(p->s.size >= nunits){
 aa5:	e9 42 ff ff ff       	jmp    9ec <malloc+0x2c>
 aaa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 ab0:	8b 08                	mov    (%eax),%ecx
 ab2:	89 0a                	mov    %ecx,(%edx)
 ab4:	eb b9                	jmp    a6f <malloc+0xaf>
