
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
  13:	e8 7c 05 00 00       	call   594 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 14 0e 00 00       	mov    %eax,0xe14
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 86 08 00 00       	call   8b0 <malloc>
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
  46:	68 0c 0e 00 00       	push   $0xe0c
  4b:	68 10 0e 00 00       	push   $0xe10
  50:	68 90 01 00 00       	push   $0x190
  55:	e8 5a 05 00 00       	call   5b4 <clone>
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
  70:	a1 08 0e 00 00       	mov    0xe08,%eax
  75:	83 f8 21             	cmp    $0x21,%eax
  78:	75 f6                	jne    70 <main+0x70>
   assert(arg1 == 44);
  7a:	a1 10 0e 00 00       	mov    0xe10,%eax
  7f:	83 f8 2c             	cmp    $0x2c,%eax
  82:	75 60                	jne    e4 <main+0xe4>
   assert(arg2 == 55);
  84:	a1 0c 0e 00 00       	mov    0xe0c,%eax
  89:	83 f8 37             	cmp    $0x37,%eax
  8c:	0f 84 ac 00 00 00    	je     13e <main+0x13e>
  92:	6a 28                	push   $0x28
  94:	68 a8 09 00 00       	push   $0x9a8
  99:	68 b1 09 00 00       	push   $0x9b1
  9e:	6a 01                	push   $0x1
  a0:	e8 db 05 00 00       	call   680 <printf>
  a5:	83 c4 0c             	add    $0xc,%esp
  a8:	68 09 0a 00 00       	push   $0xa09
   assert(clone_pid > 0);
  ad:	68 c5 09 00 00       	push   $0x9c5
  b2:	6a 01                	push   $0x1
  b4:	e8 c7 05 00 00       	call   680 <printf>
  b9:	5a                   	pop    %edx
  ba:	59                   	pop    %ecx
  bb:	68 d9 09 00 00       	push   $0x9d9
  c0:	6a 01                	push   $0x1
  c2:	e8 b9 05 00 00       	call   680 <printf>
  c7:	5b                   	pop    %ebx
  c8:	ff 35 14 0e 00 00    	push   0xe14
  ce:	e8 71 04 00 00       	call   544 <kill>
  d3:	e8 3c 04 00 00       	call   514 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  d8:	29 d0                	sub    %edx,%eax
  da:	05 00 10 00 00       	add    $0x1000,%eax
  df:	e9 61 ff ff ff       	jmp    45 <main+0x45>
   assert(arg1 == 44);
  e4:	6a 27                	push   $0x27
  e6:	68 a8 09 00 00       	push   $0x9a8
  eb:	68 b1 09 00 00       	push   $0x9b1
  f0:	6a 01                	push   $0x1
  f2:	e8 89 05 00 00       	call   680 <printf>
  f7:	83 c4 0c             	add    $0xc,%esp
  fa:	68 fe 09 00 00       	push   $0x9fe
  ff:	eb ac                	jmp    ad <main+0xad>
   assert(clone_pid > 0);
 101:	6a 25                	push   $0x25
 103:	68 a8 09 00 00       	push   $0x9a8
 108:	68 b1 09 00 00       	push   $0x9b1
 10d:	6a 01                	push   $0x1
 10f:	e8 6c 05 00 00       	call   680 <printf>
 114:	83 c4 0c             	add    $0xc,%esp
 117:	68 f0 09 00 00       	push   $0x9f0
 11c:	eb 8f                	jmp    ad <main+0xad>
   assert(p != NULL);
 11e:	6a 1e                	push   $0x1e
 120:	68 a8 09 00 00       	push   $0x9a8
 125:	68 b1 09 00 00       	push   $0x9b1
 12a:	6a 01                	push   $0x1
 12c:	e8 4f 05 00 00       	call   680 <printf>
 131:	83 c4 0c             	add    $0xc,%esp
 134:	68 e6 09 00 00       	push   $0x9e6
 139:	e9 6f ff ff ff       	jmp    ad <main+0xad>
   printf(1, "TEST PASSED\n");
 13e:	50                   	push   %eax
 13f:	50                   	push   %eax
 140:	68 14 0a 00 00       	push   $0xa14
 145:	6a 01                	push   $0x1
 147:	e8 34 05 00 00       	call   680 <printf>
   
   void *join_stack;
   int join_pid = join(&join_stack);
 14c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 14f:	89 04 24             	mov    %eax,(%esp)
 152:	e8 65 04 00 00       	call   5bc <join>
   assert(join_pid == clone_pid);
 157:	83 c4 10             	add    $0x10,%esp
 15a:	39 c6                	cmp    %eax,%esi
 15c:	74 20                	je     17e <main+0x17e>
 15e:	6a 2d                	push   $0x2d
 160:	68 a8 09 00 00       	push   $0x9a8
 165:	68 b1 09 00 00       	push   $0x9b1
 16a:	6a 01                	push   $0x1
 16c:	e8 0f 05 00 00       	call   680 <printf>
 171:	83 c4 0c             	add    $0xc,%esp
 174:	68 21 0a 00 00       	push   $0xa21
 179:	e9 2f ff ff ff       	jmp    ad <main+0xad>
   free(p);
 17e:	83 ec 0c             	sub    $0xc,%esp
 181:	53                   	push   %ebx
 182:	e8 99 06 00 00       	call   820 <free>
   exit();
 187:	e8 88 03 00 00       	call   514 <exit>
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
 1ad:	a1 08 0e 00 00       	mov    0xe08,%eax
 1b2:	83 f8 01             	cmp    $0x1,%eax
 1b5:	74 46                	je     1fd <worker+0x6d>
 1b7:	6a 38                	push   $0x38
 1b9:	68 a8 09 00 00       	push   $0x9a8
 1be:	68 b1 09 00 00       	push   $0x9b1
 1c3:	6a 01                	push   $0x1
 1c5:	e8 b6 04 00 00       	call   680 <printf>
 1ca:	83 c4 0c             	add    $0xc,%esp
 1cd:	68 b9 09 00 00       	push   $0x9b9
 1d2:	68 c5 09 00 00       	push   $0x9c5
 1d7:	6a 01                	push   $0x1
 1d9:	e8 a2 04 00 00       	call   680 <printf>
 1de:	58                   	pop    %eax
 1df:	5a                   	pop    %edx
 1e0:	68 d9 09 00 00       	push   $0x9d9
 1e5:	6a 01                	push   $0x1
 1e7:	e8 94 04 00 00       	call   680 <printf>
 1ec:	59                   	pop    %ecx
 1ed:	ff 35 14 0e 00 00    	push   0xe14
 1f3:	e8 4c 03 00 00       	call   544 <kill>
 1f8:	e8 17 03 00 00       	call   514 <exit>
   global = tmp1 + tmp2;
 1fd:	01 d9                	add    %ebx,%ecx
 1ff:	89 0d 08 0e 00 00    	mov    %ecx,0xe08
   exit();
 205:	e8 0a 03 00 00       	call   514 <exit>
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
 348:	e8 df 01 00 00       	call   52c <read>
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
 3ad:	e8 a2 01 00 00       	call   554 <open>
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
 3c2:	e8 a5 01 00 00       	call   56c <fstat>
  close(fd);
 3c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3ca:	89 c6                	mov    %eax,%esi
  close(fd);
 3cc:	e8 6b 01 00 00       	call   53c <close>
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


int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2){
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	83 ec 14             	sub    $0x14,%esp
   void *stack = malloc(PGSIZE);
 466:	68 00 10 00 00       	push   $0x1000
 46b:	e8 40 04 00 00       	call   8b0 <malloc>
   return clone(start_routine, arg1, arg2, stack);
 470:	50                   	push   %eax
 471:	ff 75 10             	push   0x10(%ebp)
 474:	ff 75 0c             	push   0xc(%ebp)
 477:	ff 75 08             	push   0x8(%ebp)
 47a:	e8 35 01 00 00       	call   5b4 <clone>
}
 47f:	c9                   	leave  
 480:	c3                   	ret    
 481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 488:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <thread_join>:

int thread_join(){
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
  void *stack;
  int pid= join(&stack);
 494:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 497:	83 ec 20             	sub    $0x20,%esp
  int pid= join(&stack);
 49a:	50                   	push   %eax
 49b:	e8 1c 01 00 00       	call   5bc <join>
  if(pid >0 ){
 4a0:	83 c4 10             	add    $0x10,%esp
  int pid= join(&stack);
 4a3:	89 c2                	mov    %eax,%edx
  if(pid >0 ){
 4a5:	85 c0                	test   %eax,%eax
 4a7:	7e 0d                	jle    4b6 <thread_join+0x26>
 4a9:	8b 7d f4             	mov    -0xc(%ebp),%edi
 4ac:	b9 00 10 00 00       	mov    $0x1000,%ecx
 4b1:	31 c0                	xor    %eax,%eax
 4b3:	fc                   	cld    
 4b4:	f3 aa                	rep stos %al,%es:(%edi)
    memset(stack,0,PGSIZE);
  }
  return pid;
}
 4b6:	8b 7d fc             	mov    -0x4(%ebp),%edi
 4b9:	89 d0                	mov    %edx,%eax
 4bb:	c9                   	leave  
 4bc:	c3                   	ret    
 4bd:	8d 76 00             	lea    0x0(%esi),%esi

000004c0 <lock_init>:

void lock_init(lock_t *lock) {
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 4c6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 4cc:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 4d3:	5d                   	pop    %ebp
 4d4:	c3                   	ret    
 4d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <lock_acquire>:

void lock_acquire(lock_t *lock){
 4e0:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 4e1:	b8 01 00 00 00       	mov    $0x1,%eax
 4e6:	89 e5                	mov    %esp,%ebp
 4e8:	8b 55 08             	mov    0x8(%ebp),%edx
 4eb:	f0 0f c1 02          	lock xadd %eax,(%edx)
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn);
 4ef:	8b 52 04             	mov    0x4(%edx),%edx
 4f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 4f8:	39 c2                	cmp    %eax,%edx
 4fa:	75 fc                	jne    4f8 <lock_acquire+0x18>
}
 4fc:	5d                   	pop    %ebp
 4fd:	c3                   	ret    
 4fe:	66 90                	xchg   %ax,%ax

00000500 <lock_release>:

void lock_release(lock_t *lock){
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 506:	83 40 04 01          	addl   $0x1,0x4(%eax)
 50a:	5d                   	pop    %ebp
 50b:	c3                   	ret    

0000050c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 50c:	b8 01 00 00 00       	mov    $0x1,%eax
 511:	cd 40                	int    $0x40
 513:	c3                   	ret    

00000514 <exit>:
SYSCALL(exit)
 514:	b8 02 00 00 00       	mov    $0x2,%eax
 519:	cd 40                	int    $0x40
 51b:	c3                   	ret    

0000051c <wait>:
SYSCALL(wait)
 51c:	b8 03 00 00 00       	mov    $0x3,%eax
 521:	cd 40                	int    $0x40
 523:	c3                   	ret    

00000524 <pipe>:
SYSCALL(pipe)
 524:	b8 04 00 00 00       	mov    $0x4,%eax
 529:	cd 40                	int    $0x40
 52b:	c3                   	ret    

0000052c <read>:
SYSCALL(read)
 52c:	b8 05 00 00 00       	mov    $0x5,%eax
 531:	cd 40                	int    $0x40
 533:	c3                   	ret    

00000534 <write>:
SYSCALL(write)
 534:	b8 10 00 00 00       	mov    $0x10,%eax
 539:	cd 40                	int    $0x40
 53b:	c3                   	ret    

0000053c <close>:
SYSCALL(close)
 53c:	b8 15 00 00 00       	mov    $0x15,%eax
 541:	cd 40                	int    $0x40
 543:	c3                   	ret    

00000544 <kill>:
SYSCALL(kill)
 544:	b8 06 00 00 00       	mov    $0x6,%eax
 549:	cd 40                	int    $0x40
 54b:	c3                   	ret    

0000054c <exec>:
SYSCALL(exec)
 54c:	b8 07 00 00 00       	mov    $0x7,%eax
 551:	cd 40                	int    $0x40
 553:	c3                   	ret    

00000554 <open>:
SYSCALL(open)
 554:	b8 0f 00 00 00       	mov    $0xf,%eax
 559:	cd 40                	int    $0x40
 55b:	c3                   	ret    

0000055c <mknod>:
SYSCALL(mknod)
 55c:	b8 11 00 00 00       	mov    $0x11,%eax
 561:	cd 40                	int    $0x40
 563:	c3                   	ret    

00000564 <unlink>:
SYSCALL(unlink)
 564:	b8 12 00 00 00       	mov    $0x12,%eax
 569:	cd 40                	int    $0x40
 56b:	c3                   	ret    

0000056c <fstat>:
SYSCALL(fstat)
 56c:	b8 08 00 00 00       	mov    $0x8,%eax
 571:	cd 40                	int    $0x40
 573:	c3                   	ret    

00000574 <link>:
SYSCALL(link)
 574:	b8 13 00 00 00       	mov    $0x13,%eax
 579:	cd 40                	int    $0x40
 57b:	c3                   	ret    

0000057c <mkdir>:
SYSCALL(mkdir)
 57c:	b8 14 00 00 00       	mov    $0x14,%eax
 581:	cd 40                	int    $0x40
 583:	c3                   	ret    

00000584 <chdir>:
SYSCALL(chdir)
 584:	b8 09 00 00 00       	mov    $0x9,%eax
 589:	cd 40                	int    $0x40
 58b:	c3                   	ret    

0000058c <dup>:
SYSCALL(dup)
 58c:	b8 0a 00 00 00       	mov    $0xa,%eax
 591:	cd 40                	int    $0x40
 593:	c3                   	ret    

00000594 <getpid>:
SYSCALL(getpid)
 594:	b8 0b 00 00 00       	mov    $0xb,%eax
 599:	cd 40                	int    $0x40
 59b:	c3                   	ret    

0000059c <sbrk>:
SYSCALL(sbrk)
 59c:	b8 0c 00 00 00       	mov    $0xc,%eax
 5a1:	cd 40                	int    $0x40
 5a3:	c3                   	ret    

000005a4 <sleep>:
SYSCALL(sleep)
 5a4:	b8 0d 00 00 00       	mov    $0xd,%eax
 5a9:	cd 40                	int    $0x40
 5ab:	c3                   	ret    

000005ac <uptime>:
SYSCALL(uptime)
 5ac:	b8 0e 00 00 00       	mov    $0xe,%eax
 5b1:	cd 40                	int    $0x40
 5b3:	c3                   	ret    

000005b4 <clone>:
SYSCALL(clone)
 5b4:	b8 16 00 00 00       	mov    $0x16,%eax
 5b9:	cd 40                	int    $0x40
 5bb:	c3                   	ret    

000005bc <join>:
SYSCALL(join)
 5bc:	b8 17 00 00 00       	mov    $0x17,%eax
 5c1:	cd 40                	int    $0x40
 5c3:	c3                   	ret    
 5c4:	66 90                	xchg   %ax,%ax
 5c6:	66 90                	xchg   %ax,%ax
 5c8:	66 90                	xchg   %ax,%ax
 5ca:	66 90                	xchg   %ax,%ax
 5cc:	66 90                	xchg   %ax,%ax
 5ce:	66 90                	xchg   %ax,%ax

000005d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 5d0:	55                   	push   %ebp
 5d1:	89 e5                	mov    %esp,%ebp
 5d3:	57                   	push   %edi
 5d4:	56                   	push   %esi
 5d5:	53                   	push   %ebx
 5d6:	83 ec 3c             	sub    $0x3c,%esp
 5d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 5dc:	89 d1                	mov    %edx,%ecx
{
 5de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 5e1:	85 d2                	test   %edx,%edx
 5e3:	0f 89 7f 00 00 00    	jns    668 <printint+0x98>
 5e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 5ed:	74 79                	je     668 <printint+0x98>
    neg = 1;
 5ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 5f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 5f8:	31 db                	xor    %ebx,%ebx
 5fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 5fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 600:	89 c8                	mov    %ecx,%eax
 602:	31 d2                	xor    %edx,%edx
 604:	89 cf                	mov    %ecx,%edi
 606:	f7 75 c4             	divl   -0x3c(%ebp)
 609:	0f b6 92 98 0a 00 00 	movzbl 0xa98(%edx),%edx
 610:	89 45 c0             	mov    %eax,-0x40(%ebp)
 613:	89 d8                	mov    %ebx,%eax
 615:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 618:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 61b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 61e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 621:	76 dd                	jbe    600 <printint+0x30>
  if(neg)
 623:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 626:	85 c9                	test   %ecx,%ecx
 628:	74 0c                	je     636 <printint+0x66>
    buf[i++] = '-';
 62a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 62f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 631:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 636:	8b 7d b8             	mov    -0x48(%ebp),%edi
 639:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 63d:	eb 07                	jmp    646 <printint+0x76>
 63f:	90                   	nop
    putc(fd, buf[i]);
 640:	0f b6 13             	movzbl (%ebx),%edx
 643:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 646:	83 ec 04             	sub    $0x4,%esp
 649:	88 55 d7             	mov    %dl,-0x29(%ebp)
 64c:	6a 01                	push   $0x1
 64e:	56                   	push   %esi
 64f:	57                   	push   %edi
 650:	e8 df fe ff ff       	call   534 <write>
  while(--i >= 0)
 655:	83 c4 10             	add    $0x10,%esp
 658:	39 de                	cmp    %ebx,%esi
 65a:	75 e4                	jne    640 <printint+0x70>
}
 65c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 65f:	5b                   	pop    %ebx
 660:	5e                   	pop    %esi
 661:	5f                   	pop    %edi
 662:	5d                   	pop    %ebp
 663:	c3                   	ret    
 664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 668:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 66f:	eb 87                	jmp    5f8 <printint+0x28>
 671:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 678:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67f:	90                   	nop

00000680 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	53                   	push   %ebx
 686:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 689:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 68c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 68f:	0f b6 13             	movzbl (%ebx),%edx
 692:	84 d2                	test   %dl,%dl
 694:	74 6a                	je     700 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 696:	8d 45 10             	lea    0x10(%ebp),%eax
 699:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 69c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 69f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 6a1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6a4:	eb 36                	jmp    6dc <printf+0x5c>
 6a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
 6b0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 6b3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 6b8:	83 f8 25             	cmp    $0x25,%eax
 6bb:	74 15                	je     6d2 <printf+0x52>
  write(fd, &c, 1);
 6bd:	83 ec 04             	sub    $0x4,%esp
 6c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 6c3:	6a 01                	push   $0x1
 6c5:	57                   	push   %edi
 6c6:	56                   	push   %esi
 6c7:	e8 68 fe ff ff       	call   534 <write>
 6cc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 6cf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6d2:	0f b6 13             	movzbl (%ebx),%edx
 6d5:	83 c3 01             	add    $0x1,%ebx
 6d8:	84 d2                	test   %dl,%dl
 6da:	74 24                	je     700 <printf+0x80>
    c = fmt[i] & 0xff;
 6dc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 6df:	85 c9                	test   %ecx,%ecx
 6e1:	74 cd                	je     6b0 <printf+0x30>
      }
    } else if(state == '%'){
 6e3:	83 f9 25             	cmp    $0x25,%ecx
 6e6:	75 ea                	jne    6d2 <printf+0x52>
      if(c == 'd'){
 6e8:	83 f8 25             	cmp    $0x25,%eax
 6eb:	0f 84 07 01 00 00    	je     7f8 <printf+0x178>
 6f1:	83 e8 63             	sub    $0x63,%eax
 6f4:	83 f8 15             	cmp    $0x15,%eax
 6f7:	77 17                	ja     710 <printf+0x90>
 6f9:	ff 24 85 40 0a 00 00 	jmp    *0xa40(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 700:	8d 65 f4             	lea    -0xc(%ebp),%esp
 703:	5b                   	pop    %ebx
 704:	5e                   	pop    %esi
 705:	5f                   	pop    %edi
 706:	5d                   	pop    %ebp
 707:	c3                   	ret    
 708:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70f:	90                   	nop
  write(fd, &c, 1);
 710:	83 ec 04             	sub    $0x4,%esp
 713:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 716:	6a 01                	push   $0x1
 718:	57                   	push   %edi
 719:	56                   	push   %esi
 71a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 71e:	e8 11 fe ff ff       	call   534 <write>
        putc(fd, c);
 723:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 727:	83 c4 0c             	add    $0xc,%esp
 72a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 72d:	6a 01                	push   $0x1
 72f:	57                   	push   %edi
 730:	56                   	push   %esi
 731:	e8 fe fd ff ff       	call   534 <write>
        putc(fd, c);
 736:	83 c4 10             	add    $0x10,%esp
      state = 0;
 739:	31 c9                	xor    %ecx,%ecx
 73b:	eb 95                	jmp    6d2 <printf+0x52>
 73d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 740:	83 ec 0c             	sub    $0xc,%esp
 743:	b9 10 00 00 00       	mov    $0x10,%ecx
 748:	6a 00                	push   $0x0
 74a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 74d:	8b 10                	mov    (%eax),%edx
 74f:	89 f0                	mov    %esi,%eax
 751:	e8 7a fe ff ff       	call   5d0 <printint>
        ap++;
 756:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 75a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 75d:	31 c9                	xor    %ecx,%ecx
 75f:	e9 6e ff ff ff       	jmp    6d2 <printf+0x52>
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 768:	8b 45 d0             	mov    -0x30(%ebp),%eax
 76b:	8b 10                	mov    (%eax),%edx
        ap++;
 76d:	83 c0 04             	add    $0x4,%eax
 770:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 773:	85 d2                	test   %edx,%edx
 775:	0f 84 8d 00 00 00    	je     808 <printf+0x188>
        while(*s != 0){
 77b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 77e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 780:	84 c0                	test   %al,%al
 782:	0f 84 4a ff ff ff    	je     6d2 <printf+0x52>
 788:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 78b:	89 d3                	mov    %edx,%ebx
 78d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 790:	83 ec 04             	sub    $0x4,%esp
          s++;
 793:	83 c3 01             	add    $0x1,%ebx
 796:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 799:	6a 01                	push   $0x1
 79b:	57                   	push   %edi
 79c:	56                   	push   %esi
 79d:	e8 92 fd ff ff       	call   534 <write>
        while(*s != 0){
 7a2:	0f b6 03             	movzbl (%ebx),%eax
 7a5:	83 c4 10             	add    $0x10,%esp
 7a8:	84 c0                	test   %al,%al
 7aa:	75 e4                	jne    790 <printf+0x110>
      state = 0;
 7ac:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 7af:	31 c9                	xor    %ecx,%ecx
 7b1:	e9 1c ff ff ff       	jmp    6d2 <printf+0x52>
 7b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 7c0:	83 ec 0c             	sub    $0xc,%esp
 7c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 7c8:	6a 01                	push   $0x1
 7ca:	e9 7b ff ff ff       	jmp    74a <printf+0xca>
 7cf:	90                   	nop
        putc(fd, *ap);
 7d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 7d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 7d6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 7d8:	6a 01                	push   $0x1
 7da:	57                   	push   %edi
 7db:	56                   	push   %esi
        putc(fd, *ap);
 7dc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 7df:	e8 50 fd ff ff       	call   534 <write>
        ap++;
 7e4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7eb:	31 c9                	xor    %ecx,%ecx
 7ed:	e9 e0 fe ff ff       	jmp    6d2 <printf+0x52>
 7f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 7f8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 7fb:	83 ec 04             	sub    $0x4,%esp
 7fe:	e9 2a ff ff ff       	jmp    72d <printf+0xad>
 803:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 807:	90                   	nop
          s = "(null)";
 808:	ba 37 0a 00 00       	mov    $0xa37,%edx
        while(*s != 0){
 80d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 810:	b8 28 00 00 00       	mov    $0x28,%eax
 815:	89 d3                	mov    %edx,%ebx
 817:	e9 74 ff ff ff       	jmp    790 <printf+0x110>
 81c:	66 90                	xchg   %ax,%ax
 81e:	66 90                	xchg   %ax,%ax

00000820 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 820:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 821:	a1 18 0e 00 00       	mov    0xe18,%eax
{
 826:	89 e5                	mov    %esp,%ebp
 828:	57                   	push   %edi
 829:	56                   	push   %esi
 82a:	53                   	push   %ebx
 82b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 82e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 838:	89 c2                	mov    %eax,%edx
 83a:	8b 00                	mov    (%eax),%eax
 83c:	39 ca                	cmp    %ecx,%edx
 83e:	73 30                	jae    870 <free+0x50>
 840:	39 c1                	cmp    %eax,%ecx
 842:	72 04                	jb     848 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 844:	39 c2                	cmp    %eax,%edx
 846:	72 f0                	jb     838 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 848:	8b 73 fc             	mov    -0x4(%ebx),%esi
 84b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 84e:	39 f8                	cmp    %edi,%eax
 850:	74 30                	je     882 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 852:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 855:	8b 42 04             	mov    0x4(%edx),%eax
 858:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 85b:	39 f1                	cmp    %esi,%ecx
 85d:	74 3a                	je     899 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 85f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 861:	5b                   	pop    %ebx
  freep = p;
 862:	89 15 18 0e 00 00    	mov    %edx,0xe18
}
 868:	5e                   	pop    %esi
 869:	5f                   	pop    %edi
 86a:	5d                   	pop    %ebp
 86b:	c3                   	ret    
 86c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 870:	39 c2                	cmp    %eax,%edx
 872:	72 c4                	jb     838 <free+0x18>
 874:	39 c1                	cmp    %eax,%ecx
 876:	73 c0                	jae    838 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 878:	8b 73 fc             	mov    -0x4(%ebx),%esi
 87b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 87e:	39 f8                	cmp    %edi,%eax
 880:	75 d0                	jne    852 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 882:	03 70 04             	add    0x4(%eax),%esi
 885:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 888:	8b 02                	mov    (%edx),%eax
 88a:	8b 00                	mov    (%eax),%eax
 88c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 88f:	8b 42 04             	mov    0x4(%edx),%eax
 892:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 895:	39 f1                	cmp    %esi,%ecx
 897:	75 c6                	jne    85f <free+0x3f>
    p->s.size += bp->s.size;
 899:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 89c:	89 15 18 0e 00 00    	mov    %edx,0xe18
    p->s.size += bp->s.size;
 8a2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 8a5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 8a8:	89 0a                	mov    %ecx,(%edx)
}
 8aa:	5b                   	pop    %ebx
 8ab:	5e                   	pop    %esi
 8ac:	5f                   	pop    %edi
 8ad:	5d                   	pop    %ebp
 8ae:	c3                   	ret    
 8af:	90                   	nop

000008b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 8b0:	55                   	push   %ebp
 8b1:	89 e5                	mov    %esp,%ebp
 8b3:	57                   	push   %edi
 8b4:	56                   	push   %esi
 8b5:	53                   	push   %ebx
 8b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 8bc:	8b 3d 18 0e 00 00    	mov    0xe18,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 8c2:	8d 70 07             	lea    0x7(%eax),%esi
 8c5:	c1 ee 03             	shr    $0x3,%esi
 8c8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 8cb:	85 ff                	test   %edi,%edi
 8cd:	0f 84 9d 00 00 00    	je     970 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8d3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 8d5:	8b 4a 04             	mov    0x4(%edx),%ecx
 8d8:	39 f1                	cmp    %esi,%ecx
 8da:	73 6a                	jae    946 <malloc+0x96>
 8dc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 8e1:	39 de                	cmp    %ebx,%esi
 8e3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 8e6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 8ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8f0:	eb 17                	jmp    909 <malloc+0x59>
 8f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8fa:	8b 48 04             	mov    0x4(%eax),%ecx
 8fd:	39 f1                	cmp    %esi,%ecx
 8ff:	73 4f                	jae    950 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 901:	8b 3d 18 0e 00 00    	mov    0xe18,%edi
 907:	89 c2                	mov    %eax,%edx
 909:	39 d7                	cmp    %edx,%edi
 90b:	75 eb                	jne    8f8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 90d:	83 ec 0c             	sub    $0xc,%esp
 910:	ff 75 e4             	push   -0x1c(%ebp)
 913:	e8 84 fc ff ff       	call   59c <sbrk>
  if(p == (char*)-1)
 918:	83 c4 10             	add    $0x10,%esp
 91b:	83 f8 ff             	cmp    $0xffffffff,%eax
 91e:	74 1c                	je     93c <malloc+0x8c>
  hp->s.size = nu;
 920:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 923:	83 ec 0c             	sub    $0xc,%esp
 926:	83 c0 08             	add    $0x8,%eax
 929:	50                   	push   %eax
 92a:	e8 f1 fe ff ff       	call   820 <free>
  return freep;
 92f:	8b 15 18 0e 00 00    	mov    0xe18,%edx
      if((p = morecore(nunits)) == 0)
 935:	83 c4 10             	add    $0x10,%esp
 938:	85 d2                	test   %edx,%edx
 93a:	75 bc                	jne    8f8 <malloc+0x48>
        return 0;
  }
}
 93c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 93f:	31 c0                	xor    %eax,%eax
}
 941:	5b                   	pop    %ebx
 942:	5e                   	pop    %esi
 943:	5f                   	pop    %edi
 944:	5d                   	pop    %ebp
 945:	c3                   	ret    
    if(p->s.size >= nunits){
 946:	89 d0                	mov    %edx,%eax
 948:	89 fa                	mov    %edi,%edx
 94a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 950:	39 ce                	cmp    %ecx,%esi
 952:	74 4c                	je     9a0 <malloc+0xf0>
        p->s.size -= nunits;
 954:	29 f1                	sub    %esi,%ecx
 956:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 959:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 95c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 95f:	89 15 18 0e 00 00    	mov    %edx,0xe18
}
 965:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 968:	83 c0 08             	add    $0x8,%eax
}
 96b:	5b                   	pop    %ebx
 96c:	5e                   	pop    %esi
 96d:	5f                   	pop    %edi
 96e:	5d                   	pop    %ebp
 96f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 970:	c7 05 18 0e 00 00 1c 	movl   $0xe1c,0xe18
 977:	0e 00 00 
    base.s.size = 0;
 97a:	bf 1c 0e 00 00       	mov    $0xe1c,%edi
    base.s.ptr = freep = prevp = &base;
 97f:	c7 05 1c 0e 00 00 1c 	movl   $0xe1c,0xe1c
 986:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 989:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 98b:	c7 05 20 0e 00 00 00 	movl   $0x0,0xe20
 992:	00 00 00 
    if(p->s.size >= nunits){
 995:	e9 42 ff ff ff       	jmp    8dc <malloc+0x2c>
 99a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 9a0:	8b 08                	mov    (%eax),%ecx
 9a2:	89 0a                	mov    %ecx,(%edx)
 9a4:	eb b9                	jmp    95f <malloc+0xaf>
