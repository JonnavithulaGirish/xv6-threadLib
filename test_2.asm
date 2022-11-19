
_test_2:     file format elf32-i386


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
  13:	e8 5c 06 00 00       	call   674 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 18 0f 00 00       	mov    %eax,0xf18
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 66 09 00 00       	call   990 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 e9 00 00 00    	je     11e <main+0x11e>
   if((uint)p % PGSIZE)
  35:	89 c2                	mov    %eax,%edx
  37:	89 c3                	mov    %eax,%ebx
  39:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  3f:	0f 85 93 00 00 00    	jne    d8 <main+0xd8>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int clone_pid = clone(worker, (void*)&arg1, (void*)&arg2, stack);
  45:	50                   	push   %eax
  46:	68 10 0f 00 00       	push   $0xf10
  4b:	68 14 0f 00 00       	push   $0xf14
  50:	68 90 01 00 00       	push   $0x190
  55:	e8 3a 06 00 00       	call   694 <clone>
   assert(clone_pid > 0);
  5a:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, (void*)&arg1, (void*)&arg2, stack);
  5d:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  5f:	85 c0                	test   %eax,%eax
  61:	0f 8e 9a 00 00 00    	jle    101 <main+0x101>
  67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  6e:	66 90                	xchg   %ax,%ax
   while(global != 33);
  70:	a1 0c 0f 00 00       	mov    0xf0c,%eax
  75:	83 f8 21             	cmp    $0x21,%eax
  78:	75 f6                	jne    70 <main+0x70>
   assert(arg1 == 44);
  7a:	a1 14 0f 00 00       	mov    0xf14,%eax
  7f:	83 f8 2c             	cmp    $0x2c,%eax
  82:	75 60                	jne    e4 <main+0xe4>
   assert(arg2 == 55);
  84:	a1 10 0f 00 00       	mov    0xf10,%eax
  89:	83 f8 37             	cmp    $0x37,%eax
  8c:	0f 84 ac 00 00 00    	je     13e <main+0x13e>
  92:	6a 28                	push   $0x28
  94:	68 88 0a 00 00       	push   $0xa88
  99:	68 91 0a 00 00       	push   $0xa91
  9e:	6a 01                	push   $0x1
  a0:	e8 bb 06 00 00       	call   760 <printf>
  a5:	83 c4 0c             	add    $0xc,%esp
  a8:	68 e9 0a 00 00       	push   $0xae9
   assert(clone_pid > 0);
  ad:	68 a5 0a 00 00       	push   $0xaa5
  b2:	6a 01                	push   $0x1
  b4:	e8 a7 06 00 00       	call   760 <printf>
  b9:	5a                   	pop    %edx
  ba:	59                   	pop    %ecx
  bb:	68 b9 0a 00 00       	push   $0xab9
  c0:	6a 01                	push   $0x1
  c2:	e8 99 06 00 00       	call   760 <printf>
  c7:	5b                   	pop    %ebx
  c8:	ff 35 18 0f 00 00    	push   0xf18
  ce:	e8 51 05 00 00       	call   624 <kill>
  d3:	e8 1c 05 00 00       	call   5f4 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d8:	29 d0                	sub    %edx,%eax
  da:	05 00 10 00 00       	add    $0x1000,%eax
  df:	e9 61 ff ff ff       	jmp    45 <main+0x45>
   assert(arg1 == 44);
  e4:	6a 27                	push   $0x27
  e6:	68 88 0a 00 00       	push   $0xa88
  eb:	68 91 0a 00 00       	push   $0xa91
  f0:	6a 01                	push   $0x1
  f2:	e8 69 06 00 00       	call   760 <printf>
  f7:	83 c4 0c             	add    $0xc,%esp
  fa:	68 de 0a 00 00       	push   $0xade
  ff:	eb ac                	jmp    ad <main+0xad>
   assert(clone_pid > 0);
 101:	6a 25                	push   $0x25
 103:	68 88 0a 00 00       	push   $0xa88
 108:	68 91 0a 00 00       	push   $0xa91
 10d:	6a 01                	push   $0x1
 10f:	e8 4c 06 00 00       	call   760 <printf>
 114:	83 c4 0c             	add    $0xc,%esp
 117:	68 d0 0a 00 00       	push   $0xad0
 11c:	eb 8f                	jmp    ad <main+0xad>
   assert(p != NULL);
 11e:	6a 1e                	push   $0x1e
 120:	68 88 0a 00 00       	push   $0xa88
 125:	68 91 0a 00 00       	push   $0xa91
 12a:	6a 01                	push   $0x1
 12c:	e8 2f 06 00 00       	call   760 <printf>
 131:	83 c4 0c             	add    $0xc,%esp
 134:	68 c6 0a 00 00       	push   $0xac6
 139:	e9 6f ff ff ff       	jmp    ad <main+0xad>
   printf(1, "TEST PASSED\n");
 13e:	50                   	push   %eax
 13f:	50                   	push   %eax
 140:	68 f4 0a 00 00       	push   $0xaf4
 145:	6a 01                	push   $0x1
 147:	e8 14 06 00 00       	call   760 <printf>
   
   void *join_stack;
   int join_pid = join(&join_stack);
 14c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 14f:	89 04 24             	mov    %eax,(%esp)
 152:	e8 45 05 00 00       	call   69c <join>
   assert(join_pid == clone_pid);
 157:	83 c4 10             	add    $0x10,%esp
 15a:	39 c6                	cmp    %eax,%esi
 15c:	74 20                	je     17e <main+0x17e>
 15e:	6a 2d                	push   $0x2d
 160:	68 88 0a 00 00       	push   $0xa88
 165:	68 91 0a 00 00       	push   $0xa91
 16a:	6a 01                	push   $0x1
 16c:	e8 ef 05 00 00       	call   760 <printf>
 171:	83 c4 0c             	add    $0xc,%esp
 174:	68 01 0b 00 00       	push   $0xb01
 179:	e9 2f ff ff ff       	jmp    ad <main+0xad>
   free(p);
 17e:	83 ec 0c             	sub    $0xc,%esp
 181:	53                   	push   %ebx
 182:	e8 79 07 00 00       	call   900 <free>
   exit();
 187:	e8 68 04 00 00       	call   5f4 <exit>
 18c:	66 90                	xchg   %ax,%ax
 18e:	66 90                	xchg   %ax,%ax

00000190 <worker>:
}

void
worker(void *arg1, void *arg2) {
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	53                   	push   %ebx
 194:	83 ec 04             	sub    $0x4,%esp
 197:	8b 45 0c             	mov    0xc(%ebp),%eax
 19a:	8b 55 08             	mov    0x8(%ebp),%edx
   int tmp1 = *(int*)arg1;
   int tmp2 = *(int*)arg2;
 19d:	8b 18                	mov    (%eax),%ebx
   int tmp1 = *(int*)arg1;
 19f:	8b 0a                	mov    (%edx),%ecx
   *(int*)arg1 = 44;
 1a1:	c7 02 2c 00 00 00    	movl   $0x2c,(%edx)
   *(int*)arg2 = 55;
 1a7:	c7 00 37 00 00 00    	movl   $0x37,(%eax)
   assert(global == 1);
 1ad:	a1 0c 0f 00 00       	mov    0xf0c,%eax
 1b2:	83 f8 01             	cmp    $0x1,%eax
 1b5:	74 46                	je     1fd <worker+0x6d>
 1b7:	6a 38                	push   $0x38
 1b9:	68 88 0a 00 00       	push   $0xa88
 1be:	68 91 0a 00 00       	push   $0xa91
 1c3:	6a 01                	push   $0x1
 1c5:	e8 96 05 00 00       	call   760 <printf>
 1ca:	83 c4 0c             	add    $0xc,%esp
 1cd:	68 99 0a 00 00       	push   $0xa99
 1d2:	68 a5 0a 00 00       	push   $0xaa5
 1d7:	6a 01                	push   $0x1
 1d9:	e8 82 05 00 00       	call   760 <printf>
 1de:	58                   	pop    %eax
 1df:	5a                   	pop    %edx
 1e0:	68 b9 0a 00 00       	push   $0xab9
 1e5:	6a 01                	push   $0x1
 1e7:	e8 74 05 00 00       	call   760 <printf>
 1ec:	59                   	pop    %ecx
 1ed:	ff 35 18 0f 00 00    	push   0xf18
 1f3:	e8 2c 04 00 00       	call   624 <kill>
 1f8:	e8 f7 03 00 00       	call   5f4 <exit>
   global = tmp1 + tmp2;
 1fd:	01 d9                	add    %ebx,%ecx
 1ff:	89 0d 0c 0f 00 00    	mov    %ecx,0xf0c
   exit();
 205:	e8 ea 03 00 00       	call   5f4 <exit>
 20a:	66 90                	xchg   %ax,%ax
 20c:	66 90                	xchg   %ax,%ax
 20e:	66 90                	xchg   %ax,%ax

00000210 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 210:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 211:	31 c0                	xor    %eax,%eax
{
 213:	89 e5                	mov    %esp,%ebp
 215:	53                   	push   %ebx
 216:	8b 4d 08             	mov    0x8(%ebp),%ecx
 219:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 21c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 220:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 224:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 227:	83 c0 01             	add    $0x1,%eax
 22a:	84 d2                	test   %dl,%dl
 22c:	75 f2                	jne    220 <strcpy+0x10>
    ;
  return os;
}
 22e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 231:	89 c8                	mov    %ecx,%eax
 233:	c9                   	leave  
 234:	c3                   	ret    
 235:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000240 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	53                   	push   %ebx
 244:	8b 55 08             	mov    0x8(%ebp),%edx
 247:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 24a:	0f b6 02             	movzbl (%edx),%eax
 24d:	84 c0                	test   %al,%al
 24f:	75 17                	jne    268 <strcmp+0x28>
 251:	eb 3a                	jmp    28d <strcmp+0x4d>
 253:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 257:	90                   	nop
 258:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 25c:	83 c2 01             	add    $0x1,%edx
 25f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 262:	84 c0                	test   %al,%al
 264:	74 1a                	je     280 <strcmp+0x40>
    p++, q++;
 266:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 268:	0f b6 19             	movzbl (%ecx),%ebx
 26b:	38 c3                	cmp    %al,%bl
 26d:	74 e9                	je     258 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 26f:	29 d8                	sub    %ebx,%eax
}
 271:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 274:	c9                   	leave  
 275:	c3                   	ret    
 276:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 27d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 280:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 284:	31 c0                	xor    %eax,%eax
 286:	29 d8                	sub    %ebx,%eax
}
 288:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 28b:	c9                   	leave  
 28c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 28d:	0f b6 19             	movzbl (%ecx),%ebx
 290:	31 c0                	xor    %eax,%eax
 292:	eb db                	jmp    26f <strcmp+0x2f>
 294:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 29f:	90                   	nop

000002a0 <strlen>:

uint
strlen(const char *s)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2a6:	80 3a 00             	cmpb   $0x0,(%edx)
 2a9:	74 15                	je     2c0 <strlen+0x20>
 2ab:	31 c0                	xor    %eax,%eax
 2ad:	8d 76 00             	lea    0x0(%esi),%esi
 2b0:	83 c0 01             	add    $0x1,%eax
 2b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2b7:	89 c1                	mov    %eax,%ecx
 2b9:	75 f5                	jne    2b0 <strlen+0x10>
    ;
  return n;
}
 2bb:	89 c8                	mov    %ecx,%eax
 2bd:	5d                   	pop    %ebp
 2be:	c3                   	ret    
 2bf:	90                   	nop
  for(n = 0; s[n]; n++)
 2c0:	31 c9                	xor    %ecx,%ecx
}
 2c2:	5d                   	pop    %ebp
 2c3:	89 c8                	mov    %ecx,%eax
 2c5:	c3                   	ret    
 2c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2cd:	8d 76 00             	lea    0x0(%esi),%esi

000002d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2d0:	55                   	push   %ebp
 2d1:	89 e5                	mov    %esp,%ebp
 2d3:	57                   	push   %edi
 2d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2da:	8b 45 0c             	mov    0xc(%ebp),%eax
 2dd:	89 d7                	mov    %edx,%edi
 2df:	fc                   	cld    
 2e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 2e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 2e5:	89 d0                	mov    %edx,%eax
 2e7:	c9                   	leave  
 2e8:	c3                   	ret    
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000002f0 <strchr>:

char*
strchr(const char *s, char c)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	8b 45 08             	mov    0x8(%ebp),%eax
 2f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 2fa:	0f b6 10             	movzbl (%eax),%edx
 2fd:	84 d2                	test   %dl,%dl
 2ff:	75 12                	jne    313 <strchr+0x23>
 301:	eb 1d                	jmp    320 <strchr+0x30>
 303:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 307:	90                   	nop
 308:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 30c:	83 c0 01             	add    $0x1,%eax
 30f:	84 d2                	test   %dl,%dl
 311:	74 0d                	je     320 <strchr+0x30>
    if(*s == c)
 313:	38 d1                	cmp    %dl,%cl
 315:	75 f1                	jne    308 <strchr+0x18>
      return (char*)s;
  return 0;
}
 317:	5d                   	pop    %ebp
 318:	c3                   	ret    
 319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 320:	31 c0                	xor    %eax,%eax
}
 322:	5d                   	pop    %ebp
 323:	c3                   	ret    
 324:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 32f:	90                   	nop

00000330 <gets>:

char*
gets(char *buf, int max)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	57                   	push   %edi
 334:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 335:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 338:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 339:	31 db                	xor    %ebx,%ebx
{
 33b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 33e:	eb 27                	jmp    367 <gets+0x37>
    cc = read(0, &c, 1);
 340:	83 ec 04             	sub    $0x4,%esp
 343:	6a 01                	push   $0x1
 345:	57                   	push   %edi
 346:	6a 00                	push   $0x0
 348:	e8 bf 02 00 00       	call   60c <read>
    if(cc < 1)
 34d:	83 c4 10             	add    $0x10,%esp
 350:	85 c0                	test   %eax,%eax
 352:	7e 1d                	jle    371 <gets+0x41>
      break;
    buf[i++] = c;
 354:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 358:	8b 55 08             	mov    0x8(%ebp),%edx
 35b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 35f:	3c 0a                	cmp    $0xa,%al
 361:	74 1d                	je     380 <gets+0x50>
 363:	3c 0d                	cmp    $0xd,%al
 365:	74 19                	je     380 <gets+0x50>
  for(i=0; i+1 < max; ){
 367:	89 de                	mov    %ebx,%esi
 369:	83 c3 01             	add    $0x1,%ebx
 36c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 36f:	7c cf                	jl     340 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 371:	8b 45 08             	mov    0x8(%ebp),%eax
 374:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 378:	8d 65 f4             	lea    -0xc(%ebp),%esp
 37b:	5b                   	pop    %ebx
 37c:	5e                   	pop    %esi
 37d:	5f                   	pop    %edi
 37e:	5d                   	pop    %ebp
 37f:	c3                   	ret    
  buf[i] = '\0';
 380:	8b 45 08             	mov    0x8(%ebp),%eax
 383:	89 de                	mov    %ebx,%esi
 385:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 389:	8d 65 f4             	lea    -0xc(%ebp),%esp
 38c:	5b                   	pop    %ebx
 38d:	5e                   	pop    %esi
 38e:	5f                   	pop    %edi
 38f:	5d                   	pop    %ebp
 390:	c3                   	ret    
 391:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 398:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39f:	90                   	nop

000003a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	56                   	push   %esi
 3a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3a5:	83 ec 08             	sub    $0x8,%esp
 3a8:	6a 00                	push   $0x0
 3aa:	ff 75 08             	push   0x8(%ebp)
 3ad:	e8 82 02 00 00       	call   634 <open>
  if(fd < 0)
 3b2:	83 c4 10             	add    $0x10,%esp
 3b5:	85 c0                	test   %eax,%eax
 3b7:	78 27                	js     3e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3b9:	83 ec 08             	sub    $0x8,%esp
 3bc:	ff 75 0c             	push   0xc(%ebp)
 3bf:	89 c3                	mov    %eax,%ebx
 3c1:	50                   	push   %eax
 3c2:	e8 85 02 00 00       	call   64c <fstat>
  close(fd);
 3c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3ca:	89 c6                	mov    %eax,%esi
  close(fd);
 3cc:	e8 4b 02 00 00       	call   61c <close>
  return r;
 3d1:	83 c4 10             	add    $0x10,%esp
}
 3d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3d7:	89 f0                	mov    %esi,%eax
 3d9:	5b                   	pop    %ebx
 3da:	5e                   	pop    %esi
 3db:	5d                   	pop    %ebp
 3dc:	c3                   	ret    
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 3e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 3e5:	eb ed                	jmp    3d4 <stat+0x34>
 3e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ee:	66 90                	xchg   %ax,%ax

000003f0 <atoi>:

int
atoi(const char *s)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	53                   	push   %ebx
 3f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 3f7:	0f be 02             	movsbl (%edx),%eax
 3fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 3fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 400:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 405:	77 1e                	ja     425 <atoi+0x35>
 407:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 410:	83 c2 01             	add    $0x1,%edx
 413:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 416:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 41a:	0f be 02             	movsbl (%edx),%eax
 41d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 420:	80 fb 09             	cmp    $0x9,%bl
 423:	76 eb                	jbe    410 <atoi+0x20>
  return n;
}
 425:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 428:	89 c8                	mov    %ecx,%eax
 42a:	c9                   	leave  
 42b:	c3                   	ret    
 42c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000430 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	8b 45 10             	mov    0x10(%ebp),%eax
 437:	8b 55 08             	mov    0x8(%ebp),%edx
 43a:	56                   	push   %esi
 43b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 43e:	85 c0                	test   %eax,%eax
 440:	7e 13                	jle    455 <memmove+0x25>
 442:	01 d0                	add    %edx,%eax
  dst = vdst;
 444:	89 d7                	mov    %edx,%edi
 446:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 450:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 451:	39 f8                	cmp    %edi,%eax
 453:	75 fb                	jne    450 <memmove+0x20>
  return vdst;
}
 455:	5e                   	pop    %esi
 456:	89 d0                	mov    %edx,%eax
 458:	5f                   	pop    %edi
 459:	5d                   	pop    %ebp
 45a:	c3                   	ret    
 45b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 45f:	90                   	nop

00000460 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 460:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 461:	b8 01 00 00 00       	mov    $0x1,%eax
 466:	89 e5                	mov    %esp,%ebp
 468:	53                   	push   %ebx
 469:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 46c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 473:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 47a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 47f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 482:	39 c2                	cmp    %eax,%edx
 484:	74 24                	je     4aa <thread_create+0x4a>
 486:	89 c3                	mov    %eax,%ebx
 488:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 490:	83 ec 04             	sub    $0x4,%esp
 493:	52                   	push   %edx
 494:	68 17 0b 00 00       	push   $0xb17
 499:	6a 01                	push   $0x1
 49b:	e8 c0 02 00 00       	call   760 <printf>
  while(lock->turn != myturn){
 4a0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 4a3:	83 c4 10             	add    $0x10,%esp
 4a6:	39 d3                	cmp    %edx,%ebx
 4a8:	75 e6                	jne    490 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 4aa:	83 ec 0c             	sub    $0xc,%esp
 4ad:	68 00 20 00 00       	push   $0x2000
 4b2:	e8 d9 04 00 00       	call   990 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 4b7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 4bb:	83 c4 10             	add    $0x10,%esp
 4be:	89 c2                	mov    %eax,%edx
 4c0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 4c6:	74 07                	je     4cf <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 4c8:	29 d0                	sub    %edx,%eax
 4ca:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 4cf:	50                   	push   %eax
 4d0:	ff 75 10             	push   0x10(%ebp)
 4d3:	ff 75 0c             	push   0xc(%ebp)
 4d6:	ff 75 08             	push   0x8(%ebp)
 4d9:	e8 b6 01 00 00       	call   694 <clone>
}
 4de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4e1:	c9                   	leave  
 4e2:	c3                   	ret    
 4e3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004f0 <thread_join>:
int thread_join(){
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	56                   	push   %esi
 4f4:	53                   	push   %ebx
 4f5:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 4f8:	6a 04                	push   $0x4
 4fa:	e8 91 04 00 00       	call   990 <malloc>
 4ff:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 502:	8d 45 ec             	lea    -0x14(%ebp),%eax
 505:	89 04 24             	mov    %eax,(%esp)
 508:	e8 8f 01 00 00       	call   69c <join>
  lock->ticket = 0;
 50d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 514:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 516:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 51d:	b8 01 00 00 00       	mov    $0x1,%eax
 522:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 527:	8b 55 f4             	mov    -0xc(%ebp),%edx
 52a:	83 c4 10             	add    $0x10,%esp
 52d:	39 c2                	cmp    %eax,%edx
 52f:	74 21                	je     552 <thread_join+0x62>
 531:	89 c3                	mov    %eax,%ebx
 533:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 537:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 538:	83 ec 04             	sub    $0x4,%esp
 53b:	52                   	push   %edx
 53c:	68 17 0b 00 00       	push   $0xb17
 541:	6a 01                	push   $0x1
 543:	e8 18 02 00 00       	call   760 <printf>
  while(lock->turn != myturn){
 548:	8b 55 f4             	mov    -0xc(%ebp),%edx
 54b:	83 c4 10             	add    $0x10,%esp
 54e:	39 d3                	cmp    %edx,%ebx
 550:	75 e6                	jne    538 <thread_join+0x48>
	free(stack);
 552:	83 ec 0c             	sub    $0xc,%esp
 555:	ff 75 ec             	push   -0x14(%ebp)
 558:	e8 a3 03 00 00       	call   900 <free>
}
 55d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 560:	89 f0                	mov    %esi,%eax
 562:	5b                   	pop    %ebx
 563:	5e                   	pop    %esi
 564:	5d                   	pop    %ebp
 565:	c3                   	ret    
 566:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56d:	8d 76 00             	lea    0x0(%esi),%esi

00000570 <lock_init>:
void lock_init(lock_t *lock) {
 570:	55                   	push   %ebp
 571:	89 e5                	mov    %esp,%ebp
 573:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 576:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 57c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 583:	5d                   	pop    %ebp
 584:	c3                   	ret    
 585:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000590 <lock_acquire>:
void lock_acquire(lock_t *lock){
 590:	55                   	push   %ebp
 591:	b8 01 00 00 00       	mov    $0x1,%eax
 596:	89 e5                	mov    %esp,%ebp
 598:	56                   	push   %esi
 599:	8b 75 08             	mov    0x8(%ebp),%esi
 59c:	53                   	push   %ebx
 59d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 5a1:	8b 56 04             	mov    0x4(%esi),%edx
 5a4:	39 d0                	cmp    %edx,%eax
 5a6:	74 22                	je     5ca <lock_acquire+0x3a>
 5a8:	89 c3                	mov    %eax,%ebx
 5aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 5b0:	83 ec 04             	sub    $0x4,%esp
 5b3:	52                   	push   %edx
 5b4:	68 17 0b 00 00       	push   $0xb17
 5b9:	6a 01                	push   $0x1
 5bb:	e8 a0 01 00 00       	call   760 <printf>
  while(lock->turn != myturn){
 5c0:	8b 56 04             	mov    0x4(%esi),%edx
 5c3:	83 c4 10             	add    $0x10,%esp
 5c6:	39 da                	cmp    %ebx,%edx
 5c8:	75 e6                	jne    5b0 <lock_acquire+0x20>
}
 5ca:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5cd:	5b                   	pop    %ebx
 5ce:	5e                   	pop    %esi
 5cf:	5d                   	pop    %ebp
 5d0:	c3                   	ret    
 5d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop

000005e0 <lock_release>:
void lock_release(lock_t *lock){
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 5e6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 5ea:	5d                   	pop    %ebp
 5eb:	c3                   	ret    

000005ec <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5ec:	b8 01 00 00 00       	mov    $0x1,%eax
 5f1:	cd 40                	int    $0x40
 5f3:	c3                   	ret    

000005f4 <exit>:
SYSCALL(exit)
 5f4:	b8 02 00 00 00       	mov    $0x2,%eax
 5f9:	cd 40                	int    $0x40
 5fb:	c3                   	ret    

000005fc <wait>:
SYSCALL(wait)
 5fc:	b8 03 00 00 00       	mov    $0x3,%eax
 601:	cd 40                	int    $0x40
 603:	c3                   	ret    

00000604 <pipe>:
SYSCALL(pipe)
 604:	b8 04 00 00 00       	mov    $0x4,%eax
 609:	cd 40                	int    $0x40
 60b:	c3                   	ret    

0000060c <read>:
SYSCALL(read)
 60c:	b8 05 00 00 00       	mov    $0x5,%eax
 611:	cd 40                	int    $0x40
 613:	c3                   	ret    

00000614 <write>:
SYSCALL(write)
 614:	b8 10 00 00 00       	mov    $0x10,%eax
 619:	cd 40                	int    $0x40
 61b:	c3                   	ret    

0000061c <close>:
SYSCALL(close)
 61c:	b8 15 00 00 00       	mov    $0x15,%eax
 621:	cd 40                	int    $0x40
 623:	c3                   	ret    

00000624 <kill>:
SYSCALL(kill)
 624:	b8 06 00 00 00       	mov    $0x6,%eax
 629:	cd 40                	int    $0x40
 62b:	c3                   	ret    

0000062c <exec>:
SYSCALL(exec)
 62c:	b8 07 00 00 00       	mov    $0x7,%eax
 631:	cd 40                	int    $0x40
 633:	c3                   	ret    

00000634 <open>:
SYSCALL(open)
 634:	b8 0f 00 00 00       	mov    $0xf,%eax
 639:	cd 40                	int    $0x40
 63b:	c3                   	ret    

0000063c <mknod>:
SYSCALL(mknod)
 63c:	b8 11 00 00 00       	mov    $0x11,%eax
 641:	cd 40                	int    $0x40
 643:	c3                   	ret    

00000644 <unlink>:
SYSCALL(unlink)
 644:	b8 12 00 00 00       	mov    $0x12,%eax
 649:	cd 40                	int    $0x40
 64b:	c3                   	ret    

0000064c <fstat>:
SYSCALL(fstat)
 64c:	b8 08 00 00 00       	mov    $0x8,%eax
 651:	cd 40                	int    $0x40
 653:	c3                   	ret    

00000654 <link>:
SYSCALL(link)
 654:	b8 13 00 00 00       	mov    $0x13,%eax
 659:	cd 40                	int    $0x40
 65b:	c3                   	ret    

0000065c <mkdir>:
SYSCALL(mkdir)
 65c:	b8 14 00 00 00       	mov    $0x14,%eax
 661:	cd 40                	int    $0x40
 663:	c3                   	ret    

00000664 <chdir>:
SYSCALL(chdir)
 664:	b8 09 00 00 00       	mov    $0x9,%eax
 669:	cd 40                	int    $0x40
 66b:	c3                   	ret    

0000066c <dup>:
SYSCALL(dup)
 66c:	b8 0a 00 00 00       	mov    $0xa,%eax
 671:	cd 40                	int    $0x40
 673:	c3                   	ret    

00000674 <getpid>:
SYSCALL(getpid)
 674:	b8 0b 00 00 00       	mov    $0xb,%eax
 679:	cd 40                	int    $0x40
 67b:	c3                   	ret    

0000067c <sbrk>:
SYSCALL(sbrk)
 67c:	b8 0c 00 00 00       	mov    $0xc,%eax
 681:	cd 40                	int    $0x40
 683:	c3                   	ret    

00000684 <sleep>:
SYSCALL(sleep)
 684:	b8 0d 00 00 00       	mov    $0xd,%eax
 689:	cd 40                	int    $0x40
 68b:	c3                   	ret    

0000068c <uptime>:
SYSCALL(uptime)
 68c:	b8 0e 00 00 00       	mov    $0xe,%eax
 691:	cd 40                	int    $0x40
 693:	c3                   	ret    

00000694 <clone>:
SYSCALL(clone)
 694:	b8 16 00 00 00       	mov    $0x16,%eax
 699:	cd 40                	int    $0x40
 69b:	c3                   	ret    

0000069c <join>:
SYSCALL(join)
 69c:	b8 17 00 00 00       	mov    $0x17,%eax
 6a1:	cd 40                	int    $0x40
 6a3:	c3                   	ret    
 6a4:	66 90                	xchg   %ax,%ax
 6a6:	66 90                	xchg   %ax,%ax
 6a8:	66 90                	xchg   %ax,%ax
 6aa:	66 90                	xchg   %ax,%ax
 6ac:	66 90                	xchg   %ax,%ax
 6ae:	66 90                	xchg   %ax,%ax

000006b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	56                   	push   %esi
 6b5:	53                   	push   %ebx
 6b6:	83 ec 3c             	sub    $0x3c,%esp
 6b9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6bc:	89 d1                	mov    %edx,%ecx
{
 6be:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6c1:	85 d2                	test   %edx,%edx
 6c3:	0f 89 7f 00 00 00    	jns    748 <printint+0x98>
 6c9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6cd:	74 79                	je     748 <printint+0x98>
    neg = 1;
 6cf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6d6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6d8:	31 db                	xor    %ebx,%ebx
 6da:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6e0:	89 c8                	mov    %ecx,%eax
 6e2:	31 d2                	xor    %edx,%edx
 6e4:	89 cf                	mov    %ecx,%edi
 6e6:	f7 75 c4             	divl   -0x3c(%ebp)
 6e9:	0f b6 92 8c 0b 00 00 	movzbl 0xb8c(%edx),%edx
 6f0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6f3:	89 d8                	mov    %ebx,%eax
 6f5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6f8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6fb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6fe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 701:	76 dd                	jbe    6e0 <printint+0x30>
  if(neg)
 703:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 706:	85 c9                	test   %ecx,%ecx
 708:	74 0c                	je     716 <printint+0x66>
    buf[i++] = '-';
 70a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 70f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 711:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 716:	8b 7d b8             	mov    -0x48(%ebp),%edi
 719:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 71d:	eb 07                	jmp    726 <printint+0x76>
 71f:	90                   	nop
    putc(fd, buf[i]);
 720:	0f b6 13             	movzbl (%ebx),%edx
 723:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 726:	83 ec 04             	sub    $0x4,%esp
 729:	88 55 d7             	mov    %dl,-0x29(%ebp)
 72c:	6a 01                	push   $0x1
 72e:	56                   	push   %esi
 72f:	57                   	push   %edi
 730:	e8 df fe ff ff       	call   614 <write>
  while(--i >= 0)
 735:	83 c4 10             	add    $0x10,%esp
 738:	39 de                	cmp    %ebx,%esi
 73a:	75 e4                	jne    720 <printint+0x70>
}
 73c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 73f:	5b                   	pop    %ebx
 740:	5e                   	pop    %esi
 741:	5f                   	pop    %edi
 742:	5d                   	pop    %ebp
 743:	c3                   	ret    
 744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 748:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 74f:	eb 87                	jmp    6d8 <printint+0x28>
 751:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 758:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75f:	90                   	nop

00000760 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 769:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 76c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 76f:	0f b6 13             	movzbl (%ebx),%edx
 772:	84 d2                	test   %dl,%dl
 774:	74 6a                	je     7e0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 776:	8d 45 10             	lea    0x10(%ebp),%eax
 779:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 77c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 77f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 781:	89 45 d0             	mov    %eax,-0x30(%ebp)
 784:	eb 36                	jmp    7bc <printf+0x5c>
 786:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78d:	8d 76 00             	lea    0x0(%esi),%esi
 790:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 793:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 798:	83 f8 25             	cmp    $0x25,%eax
 79b:	74 15                	je     7b2 <printf+0x52>
  write(fd, &c, 1);
 79d:	83 ec 04             	sub    $0x4,%esp
 7a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7a3:	6a 01                	push   $0x1
 7a5:	57                   	push   %edi
 7a6:	56                   	push   %esi
 7a7:	e8 68 fe ff ff       	call   614 <write>
 7ac:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7af:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7b2:	0f b6 13             	movzbl (%ebx),%edx
 7b5:	83 c3 01             	add    $0x1,%ebx
 7b8:	84 d2                	test   %dl,%dl
 7ba:	74 24                	je     7e0 <printf+0x80>
    c = fmt[i] & 0xff;
 7bc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7bf:	85 c9                	test   %ecx,%ecx
 7c1:	74 cd                	je     790 <printf+0x30>
      }
    } else if(state == '%'){
 7c3:	83 f9 25             	cmp    $0x25,%ecx
 7c6:	75 ea                	jne    7b2 <printf+0x52>
      if(c == 'd'){
 7c8:	83 f8 25             	cmp    $0x25,%eax
 7cb:	0f 84 07 01 00 00    	je     8d8 <printf+0x178>
 7d1:	83 e8 63             	sub    $0x63,%eax
 7d4:	83 f8 15             	cmp    $0x15,%eax
 7d7:	77 17                	ja     7f0 <printf+0x90>
 7d9:	ff 24 85 34 0b 00 00 	jmp    *0xb34(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7e3:	5b                   	pop    %ebx
 7e4:	5e                   	pop    %esi
 7e5:	5f                   	pop    %edi
 7e6:	5d                   	pop    %ebp
 7e7:	c3                   	ret    
 7e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ef:	90                   	nop
  write(fd, &c, 1);
 7f0:	83 ec 04             	sub    $0x4,%esp
 7f3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7f6:	6a 01                	push   $0x1
 7f8:	57                   	push   %edi
 7f9:	56                   	push   %esi
 7fa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7fe:	e8 11 fe ff ff       	call   614 <write>
        putc(fd, c);
 803:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 807:	83 c4 0c             	add    $0xc,%esp
 80a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 80d:	6a 01                	push   $0x1
 80f:	57                   	push   %edi
 810:	56                   	push   %esi
 811:	e8 fe fd ff ff       	call   614 <write>
        putc(fd, c);
 816:	83 c4 10             	add    $0x10,%esp
      state = 0;
 819:	31 c9                	xor    %ecx,%ecx
 81b:	eb 95                	jmp    7b2 <printf+0x52>
 81d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 820:	83 ec 0c             	sub    $0xc,%esp
 823:	b9 10 00 00 00       	mov    $0x10,%ecx
 828:	6a 00                	push   $0x0
 82a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 82d:	8b 10                	mov    (%eax),%edx
 82f:	89 f0                	mov    %esi,%eax
 831:	e8 7a fe ff ff       	call   6b0 <printint>
        ap++;
 836:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 83a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 83d:	31 c9                	xor    %ecx,%ecx
 83f:	e9 6e ff ff ff       	jmp    7b2 <printf+0x52>
 844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 848:	8b 45 d0             	mov    -0x30(%ebp),%eax
 84b:	8b 10                	mov    (%eax),%edx
        ap++;
 84d:	83 c0 04             	add    $0x4,%eax
 850:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 853:	85 d2                	test   %edx,%edx
 855:	0f 84 8d 00 00 00    	je     8e8 <printf+0x188>
        while(*s != 0){
 85b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 85e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 860:	84 c0                	test   %al,%al
 862:	0f 84 4a ff ff ff    	je     7b2 <printf+0x52>
 868:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 86b:	89 d3                	mov    %edx,%ebx
 86d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 870:	83 ec 04             	sub    $0x4,%esp
          s++;
 873:	83 c3 01             	add    $0x1,%ebx
 876:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 879:	6a 01                	push   $0x1
 87b:	57                   	push   %edi
 87c:	56                   	push   %esi
 87d:	e8 92 fd ff ff       	call   614 <write>
        while(*s != 0){
 882:	0f b6 03             	movzbl (%ebx),%eax
 885:	83 c4 10             	add    $0x10,%esp
 888:	84 c0                	test   %al,%al
 88a:	75 e4                	jne    870 <printf+0x110>
      state = 0;
 88c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 88f:	31 c9                	xor    %ecx,%ecx
 891:	e9 1c ff ff ff       	jmp    7b2 <printf+0x52>
 896:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8a0:	83 ec 0c             	sub    $0xc,%esp
 8a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8a8:	6a 01                	push   $0x1
 8aa:	e9 7b ff ff ff       	jmp    82a <printf+0xca>
 8af:	90                   	nop
        putc(fd, *ap);
 8b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8b6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8b8:	6a 01                	push   $0x1
 8ba:	57                   	push   %edi
 8bb:	56                   	push   %esi
        putc(fd, *ap);
 8bc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8bf:	e8 50 fd ff ff       	call   614 <write>
        ap++;
 8c4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8c8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8cb:	31 c9                	xor    %ecx,%ecx
 8cd:	e9 e0 fe ff ff       	jmp    7b2 <printf+0x52>
 8d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8d8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8db:	83 ec 04             	sub    $0x4,%esp
 8de:	e9 2a ff ff ff       	jmp    80d <printf+0xad>
 8e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8e7:	90                   	nop
          s = "(null)";
 8e8:	ba 2b 0b 00 00       	mov    $0xb2b,%edx
        while(*s != 0){
 8ed:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8f0:	b8 28 00 00 00       	mov    $0x28,%eax
 8f5:	89 d3                	mov    %edx,%ebx
 8f7:	e9 74 ff ff ff       	jmp    870 <printf+0x110>
 8fc:	66 90                	xchg   %ax,%ax
 8fe:	66 90                	xchg   %ax,%ax

00000900 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 900:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 901:	a1 1c 0f 00 00       	mov    0xf1c,%eax
{
 906:	89 e5                	mov    %esp,%ebp
 908:	57                   	push   %edi
 909:	56                   	push   %esi
 90a:	53                   	push   %ebx
 90b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 90e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 911:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 918:	89 c2                	mov    %eax,%edx
 91a:	8b 00                	mov    (%eax),%eax
 91c:	39 ca                	cmp    %ecx,%edx
 91e:	73 30                	jae    950 <free+0x50>
 920:	39 c1                	cmp    %eax,%ecx
 922:	72 04                	jb     928 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 924:	39 c2                	cmp    %eax,%edx
 926:	72 f0                	jb     918 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 928:	8b 73 fc             	mov    -0x4(%ebx),%esi
 92b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 92e:	39 f8                	cmp    %edi,%eax
 930:	74 30                	je     962 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 932:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 935:	8b 42 04             	mov    0x4(%edx),%eax
 938:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 93b:	39 f1                	cmp    %esi,%ecx
 93d:	74 3a                	je     979 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 93f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 941:	5b                   	pop    %ebx
  freep = p;
 942:	89 15 1c 0f 00 00    	mov    %edx,0xf1c
}
 948:	5e                   	pop    %esi
 949:	5f                   	pop    %edi
 94a:	5d                   	pop    %ebp
 94b:	c3                   	ret    
 94c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 950:	39 c2                	cmp    %eax,%edx
 952:	72 c4                	jb     918 <free+0x18>
 954:	39 c1                	cmp    %eax,%ecx
 956:	73 c0                	jae    918 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 958:	8b 73 fc             	mov    -0x4(%ebx),%esi
 95b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 95e:	39 f8                	cmp    %edi,%eax
 960:	75 d0                	jne    932 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 962:	03 70 04             	add    0x4(%eax),%esi
 965:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 968:	8b 02                	mov    (%edx),%eax
 96a:	8b 00                	mov    (%eax),%eax
 96c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 96f:	8b 42 04             	mov    0x4(%edx),%eax
 972:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 975:	39 f1                	cmp    %esi,%ecx
 977:	75 c6                	jne    93f <free+0x3f>
    p->s.size += bp->s.size;
 979:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 97c:	89 15 1c 0f 00 00    	mov    %edx,0xf1c
    p->s.size += bp->s.size;
 982:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 985:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 988:	89 0a                	mov    %ecx,(%edx)
}
 98a:	5b                   	pop    %ebx
 98b:	5e                   	pop    %esi
 98c:	5f                   	pop    %edi
 98d:	5d                   	pop    %ebp
 98e:	c3                   	ret    
 98f:	90                   	nop

00000990 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 990:	55                   	push   %ebp
 991:	89 e5                	mov    %esp,%ebp
 993:	57                   	push   %edi
 994:	56                   	push   %esi
 995:	53                   	push   %ebx
 996:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 999:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 99c:	8b 3d 1c 0f 00 00    	mov    0xf1c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9a2:	8d 70 07             	lea    0x7(%eax),%esi
 9a5:	c1 ee 03             	shr    $0x3,%esi
 9a8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9ab:	85 ff                	test   %edi,%edi
 9ad:	0f 84 9d 00 00 00    	je     a50 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9b3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9b5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9b8:	39 f1                	cmp    %esi,%ecx
 9ba:	73 6a                	jae    a26 <malloc+0x96>
 9bc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9c1:	39 de                	cmp    %ebx,%esi
 9c3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9c6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9cd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9d0:	eb 17                	jmp    9e9 <malloc+0x59>
 9d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9da:	8b 48 04             	mov    0x4(%eax),%ecx
 9dd:	39 f1                	cmp    %esi,%ecx
 9df:	73 4f                	jae    a30 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9e1:	8b 3d 1c 0f 00 00    	mov    0xf1c,%edi
 9e7:	89 c2                	mov    %eax,%edx
 9e9:	39 d7                	cmp    %edx,%edi
 9eb:	75 eb                	jne    9d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9ed:	83 ec 0c             	sub    $0xc,%esp
 9f0:	ff 75 e4             	push   -0x1c(%ebp)
 9f3:	e8 84 fc ff ff       	call   67c <sbrk>
  if(p == (char*)-1)
 9f8:	83 c4 10             	add    $0x10,%esp
 9fb:	83 f8 ff             	cmp    $0xffffffff,%eax
 9fe:	74 1c                	je     a1c <malloc+0x8c>
  hp->s.size = nu;
 a00:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a03:	83 ec 0c             	sub    $0xc,%esp
 a06:	83 c0 08             	add    $0x8,%eax
 a09:	50                   	push   %eax
 a0a:	e8 f1 fe ff ff       	call   900 <free>
  return freep;
 a0f:	8b 15 1c 0f 00 00    	mov    0xf1c,%edx
      if((p = morecore(nunits)) == 0)
 a15:	83 c4 10             	add    $0x10,%esp
 a18:	85 d2                	test   %edx,%edx
 a1a:	75 bc                	jne    9d8 <malloc+0x48>
        return 0;
  }
}
 a1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a1f:	31 c0                	xor    %eax,%eax
}
 a21:	5b                   	pop    %ebx
 a22:	5e                   	pop    %esi
 a23:	5f                   	pop    %edi
 a24:	5d                   	pop    %ebp
 a25:	c3                   	ret    
    if(p->s.size >= nunits){
 a26:	89 d0                	mov    %edx,%eax
 a28:	89 fa                	mov    %edi,%edx
 a2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a30:	39 ce                	cmp    %ecx,%esi
 a32:	74 4c                	je     a80 <malloc+0xf0>
        p->s.size -= nunits;
 a34:	29 f1                	sub    %esi,%ecx
 a36:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a39:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a3c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a3f:	89 15 1c 0f 00 00    	mov    %edx,0xf1c
}
 a45:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a48:	83 c0 08             	add    $0x8,%eax
}
 a4b:	5b                   	pop    %ebx
 a4c:	5e                   	pop    %esi
 a4d:	5f                   	pop    %edi
 a4e:	5d                   	pop    %ebp
 a4f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a50:	c7 05 1c 0f 00 00 20 	movl   $0xf20,0xf1c
 a57:	0f 00 00 
    base.s.size = 0;
 a5a:	bf 20 0f 00 00       	mov    $0xf20,%edi
    base.s.ptr = freep = prevp = &base;
 a5f:	c7 05 20 0f 00 00 20 	movl   $0xf20,0xf20
 a66:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a69:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a6b:	c7 05 24 0f 00 00 00 	movl   $0x0,0xf24
 a72:	00 00 00 
    if(p->s.size >= nunits){
 a75:	e9 42 ff ff ff       	jmp    9bc <malloc+0x2c>
 a7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a80:	8b 08                	mov    (%eax),%ecx
 a82:	89 0a                	mov    %ecx,(%edx)
 a84:	eb b9                	jmp    a3f <malloc+0xaf>
