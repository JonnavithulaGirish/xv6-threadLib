
_test_3:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}

void worker(void *arg1, void *arg2);

int main(int argc, char *argv[])
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
  13:	e8 2e 06 00 00       	call   646 <getpid>
   void *stack, *p = malloc(PGSIZE * 2);
  18:	83 ec 0c             	sub    $0xc,%esp
  1b:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  20:	a3 10 0f 00 00       	mov    %eax,0xf10
   void *stack, *p = malloc(PGSIZE * 2);
  25:	e8 36 09 00 00       	call   960 <malloc>
   assert(p != NULL);
  2a:	83 c4 10             	add    $0x10,%esp
  2d:	85 c0                	test   %eax,%eax
  2f:	0f 84 1f 01 00 00    	je     154 <main+0x154>
  35:	89 c3                	mov    %eax,%ebx
   if((uint)p % PGSIZE)
  37:	89 c6                	mov    %eax,%esi
  39:	25 ff 0f 00 00       	and    $0xfff,%eax
  3e:	75 60                	jne    a0 <main+0xa0>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
   else
     stack = p;

   int fd = open("tmp", O_WRONLY|O_CREATE);
  40:	83 ec 08             	sub    $0x8,%esp
  43:	68 01 02 00 00       	push   $0x201
  48:	68 bc 0a 00 00       	push   $0xabc
  4d:	e8 b4 05 00 00       	call   606 <open>
   assert(fd == 3);
  52:	83 c4 10             	add    $0x10,%esp
  55:	83 f8 03             	cmp    $0x3,%eax
  58:	74 52                	je     ac <main+0xac>
  5a:	6a 24                	push   $0x24
  5c:	68 5f 0a 00 00       	push   $0xa5f
  61:	68 68 0a 00 00       	push   $0xa68
  66:	6a 01                	push   $0x1
  68:	e8 c3 06 00 00       	call   730 <printf>
  6d:	83 c4 0c             	add    $0xc,%esp
  70:	68 c0 0a 00 00       	push   $0xac0
  75:	68 8c 0a 00 00       	push   $0xa8c
  7a:	6a 01                	push   $0x1
  7c:	e8 af 06 00 00       	call   730 <printf>
  81:	59                   	pop    %ecx
  82:	5b                   	pop    %ebx
  83:	68 a0 0a 00 00       	push   $0xaa0
  88:	6a 01                	push   $0x1
  8a:	e8 a1 06 00 00       	call   730 <printf>
  8f:	5e                   	pop    %esi
  90:	ff 35 10 0f 00 00    	push   0xf10
  96:	e8 5b 05 00 00       	call   5f6 <kill>
  9b:	e8 26 05 00 00       	call   5c6 <exit>
     stack = p + (PGSIZE - (uint)p % PGSIZE);
  a0:	89 da                	mov    %ebx,%edx
  a2:	29 c2                	sub    %eax,%edx
  a4:	8d b2 00 10 00 00    	lea    0x1000(%edx),%esi
  aa:	eb 94                	jmp    40 <main+0x40>
   int clone_pid = clone(worker, 0, 0, stack);
  ac:	56                   	push   %esi
  ad:	6a 00                	push   $0x0
  af:	6a 00                	push   $0x0
  b1:	68 b0 01 00 00       	push   $0x1b0
  b6:	e8 ab 05 00 00       	call   666 <clone>
   assert(clone_pid > 0);
  bb:	83 c4 10             	add    $0x10,%esp
   int clone_pid = clone(worker, 0, 0, stack);
  be:	89 c6                	mov    %eax,%esi
   assert(clone_pid > 0);
  c0:	85 c0                	test   %eax,%eax
  c2:	0f 8e ac 00 00 00    	jle    174 <main+0x174>
  c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  cf:	90                   	nop
   while(!newfd);
  d0:	a1 0c 0f 00 00       	mov    0xf0c,%eax
  d5:	85 c0                	test   %eax,%eax
  d7:	74 f7                	je     d0 <main+0xd0>
   assert(write(newfd, "goodbye\n", 8) == -1);
  d9:	a1 0c 0f 00 00       	mov    0xf0c,%eax
  de:	52                   	push   %edx
  df:	6a 08                	push   $0x8
  e1:	68 d6 0a 00 00       	push   $0xad6
  e6:	50                   	push   %eax
  e7:	e8 fa 04 00 00       	call   5e6 <write>
  ec:	83 c4 10             	add    $0x10,%esp
  ef:	83 c0 01             	add    $0x1,%eax
  f2:	74 20                	je     114 <main+0x114>
  f4:	6a 28                	push   $0x28
  f6:	68 5f 0a 00 00       	push   $0xa5f
  fb:	68 68 0a 00 00       	push   $0xa68
 100:	6a 01                	push   $0x1
 102:	e8 29 06 00 00       	call   730 <printf>
 107:	83 c4 0c             	add    $0xc,%esp
 10a:	68 04 0b 00 00       	push   $0xb04
 10f:	e9 61 ff ff ff       	jmp    75 <main+0x75>
   printf(1, "TEST PASSED\n");
 114:	50                   	push   %eax
 115:	50                   	push   %eax
 116:	68 df 0a 00 00       	push   $0xadf
 11b:	6a 01                	push   $0x1
 11d:	e8 0e 06 00 00       	call   730 <printf>

   void *join_stack;
   int join_pid = join(&join_stack);
 122:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 125:	89 04 24             	mov    %eax,(%esp)
 128:	e8 41 05 00 00       	call   66e <join>
   assert(join_pid == clone_pid);
 12d:	83 c4 10             	add    $0x10,%esp
 130:	39 c6                	cmp    %eax,%esi
 132:	74 60                	je     194 <main+0x194>
 134:	6a 2d                	push   $0x2d
 136:	68 5f 0a 00 00       	push   $0xa5f
 13b:	68 68 0a 00 00       	push   $0xa68
 140:	6a 01                	push   $0x1
 142:	e8 e9 05 00 00       	call   730 <printf>
 147:	83 c4 0c             	add    $0xc,%esp
 14a:	68 ec 0a 00 00       	push   $0xaec
 14f:	e9 21 ff ff ff       	jmp    75 <main+0x75>
   assert(p != NULL);
 154:	6a 1d                	push   $0x1d
 156:	68 5f 0a 00 00       	push   $0xa5f
 15b:	68 68 0a 00 00       	push   $0xa68
 160:	6a 01                	push   $0x1
 162:	e8 c9 05 00 00       	call   730 <printf>
 167:	83 c4 0c             	add    $0xc,%esp
 16a:	68 b2 0a 00 00       	push   $0xab2
 16f:	e9 01 ff ff ff       	jmp    75 <main+0x75>
   assert(clone_pid > 0);
 174:	6a 26                	push   $0x26
 176:	68 5f 0a 00 00       	push   $0xa5f
 17b:	68 68 0a 00 00       	push   $0xa68
 180:	6a 01                	push   $0x1
 182:	e8 a9 05 00 00       	call   730 <printf>
 187:	83 c4 0c             	add    $0xc,%esp
 18a:	68 c8 0a 00 00       	push   $0xac8
 18f:	e9 e1 fe ff ff       	jmp    75 <main+0x75>
   free(p);
 194:	83 ec 0c             	sub    $0xc,%esp
 197:	53                   	push   %ebx
 198:	e8 33 07 00 00       	call   8d0 <free>
   exit();
 19d:	e8 24 04 00 00       	call   5c6 <exit>
 1a2:	66 90                	xchg   %ax,%ax
 1a4:	66 90                	xchg   %ax,%ax
 1a6:	66 90                	xchg   %ax,%ax
 1a8:	66 90                	xchg   %ax,%ax
 1aa:	66 90                	xchg   %ax,%ax
 1ac:	66 90                	xchg   %ax,%ax
 1ae:	66 90                	xchg   %ax,%ax

000001b0 <worker>:
}

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	83 ec 0c             	sub    $0xc,%esp
   assert(write(3, "hello\n", 6) == 6);
 1b6:	6a 06                	push   $0x6
 1b8:	68 58 0a 00 00       	push   $0xa58
 1bd:	6a 03                	push   $0x3
 1bf:	e8 22 04 00 00       	call   5e6 <write>
 1c4:	83 c4 10             	add    $0x10,%esp
 1c7:	83 f8 06             	cmp    $0x6,%eax
 1ca:	74 46                	je     212 <worker+0x62>
 1cc:	6a 34                	push   $0x34
 1ce:	68 5f 0a 00 00       	push   $0xa5f
 1d3:	68 68 0a 00 00       	push   $0xa68
 1d8:	6a 01                	push   $0x1
 1da:	e8 51 05 00 00       	call   730 <printf>
 1df:	83 c4 0c             	add    $0xc,%esp
 1e2:	68 70 0a 00 00       	push   $0xa70
 1e7:	68 8c 0a 00 00       	push   $0xa8c
 1ec:	6a 01                	push   $0x1
 1ee:	e8 3d 05 00 00       	call   730 <printf>
 1f3:	5a                   	pop    %edx
 1f4:	59                   	pop    %ecx
 1f5:	68 a0 0a 00 00       	push   $0xaa0
 1fa:	6a 01                	push   $0x1
 1fc:	e8 2f 05 00 00       	call   730 <printf>
 201:	58                   	pop    %eax
 202:	ff 35 10 0f 00 00    	push   0xf10
 208:	e8 e9 03 00 00       	call   5f6 <kill>
 20d:	e8 b4 03 00 00       	call   5c6 <exit>
   xchg(&newfd, open("tmp2", O_WRONLY|O_CREATE));
 212:	50                   	push   %eax
 213:	50                   	push   %eax
 214:	68 01 02 00 00       	push   $0x201
 219:	68 ad 0a 00 00       	push   $0xaad
 21e:	e8 e3 03 00 00       	call   606 <open>
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 223:	f0 87 05 0c 0f 00 00 	lock xchg %eax,0xf0c
   exit();
 22a:	e8 97 03 00 00       	call   5c6 <exit>
 22f:	90                   	nop

00000230 <strcpy>:

lock_t lk_create,lk_join;

char*
strcpy(char *s, const char *t)
{
 230:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 231:	31 c0                	xor    %eax,%eax
{
 233:	89 e5                	mov    %esp,%ebp
 235:	53                   	push   %ebx
 236:	8b 4d 08             	mov    0x8(%ebp),%ecx
 239:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 240:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 244:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 247:	83 c0 01             	add    $0x1,%eax
 24a:	84 d2                	test   %dl,%dl
 24c:	75 f2                	jne    240 <strcpy+0x10>
    ;
  return os;
}
 24e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 251:	89 c8                	mov    %ecx,%eax
 253:	c9                   	leave  
 254:	c3                   	ret    
 255:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000260 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	53                   	push   %ebx
 264:	8b 55 08             	mov    0x8(%ebp),%edx
 267:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 26a:	0f b6 02             	movzbl (%edx),%eax
 26d:	84 c0                	test   %al,%al
 26f:	75 17                	jne    288 <strcmp+0x28>
 271:	eb 3a                	jmp    2ad <strcmp+0x4d>
 273:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 277:	90                   	nop
 278:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 27c:	83 c2 01             	add    $0x1,%edx
 27f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 282:	84 c0                	test   %al,%al
 284:	74 1a                	je     2a0 <strcmp+0x40>
    p++, q++;
 286:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 288:	0f b6 19             	movzbl (%ecx),%ebx
 28b:	38 c3                	cmp    %al,%bl
 28d:	74 e9                	je     278 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 28f:	29 d8                	sub    %ebx,%eax
}
 291:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 294:	c9                   	leave  
 295:	c3                   	ret    
 296:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 29d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 2a0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 2a4:	31 c0                	xor    %eax,%eax
 2a6:	29 d8                	sub    %ebx,%eax
}
 2a8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2ab:	c9                   	leave  
 2ac:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 2ad:	0f b6 19             	movzbl (%ecx),%ebx
 2b0:	31 c0                	xor    %eax,%eax
 2b2:	eb db                	jmp    28f <strcmp+0x2f>
 2b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2bf:	90                   	nop

000002c0 <strlen>:

uint
strlen(const char *s)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 2c6:	80 3a 00             	cmpb   $0x0,(%edx)
 2c9:	74 15                	je     2e0 <strlen+0x20>
 2cb:	31 c0                	xor    %eax,%eax
 2cd:	8d 76 00             	lea    0x0(%esi),%esi
 2d0:	83 c0 01             	add    $0x1,%eax
 2d3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 2d7:	89 c1                	mov    %eax,%ecx
 2d9:	75 f5                	jne    2d0 <strlen+0x10>
    ;
  return n;
}
 2db:	89 c8                	mov    %ecx,%eax
 2dd:	5d                   	pop    %ebp
 2de:	c3                   	ret    
 2df:	90                   	nop
  for(n = 0; s[n]; n++)
 2e0:	31 c9                	xor    %ecx,%ecx
}
 2e2:	5d                   	pop    %ebp
 2e3:	89 c8                	mov    %ecx,%eax
 2e5:	c3                   	ret    
 2e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ed:	8d 76 00             	lea    0x0(%esi),%esi

000002f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	57                   	push   %edi
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
  asm volatile("cld; rep stosb" :
 2f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 2fd:	89 d7                	mov    %edx,%edi
 2ff:	fc                   	cld    
 300:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 302:	8b 7d fc             	mov    -0x4(%ebp),%edi
 305:	89 d0                	mov    %edx,%eax
 307:	c9                   	leave  
 308:	c3                   	ret    
 309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000310 <strchr>:

char*
strchr(const char *s, char c)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	8b 45 08             	mov    0x8(%ebp),%eax
 316:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 31a:	0f b6 10             	movzbl (%eax),%edx
 31d:	84 d2                	test   %dl,%dl
 31f:	75 12                	jne    333 <strchr+0x23>
 321:	eb 1d                	jmp    340 <strchr+0x30>
 323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 327:	90                   	nop
 328:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 32c:	83 c0 01             	add    $0x1,%eax
 32f:	84 d2                	test   %dl,%dl
 331:	74 0d                	je     340 <strchr+0x30>
    if(*s == c)
 333:	38 d1                	cmp    %dl,%cl
 335:	75 f1                	jne    328 <strchr+0x18>
      return (char*)s;
  return 0;
}
 337:	5d                   	pop    %ebp
 338:	c3                   	ret    
 339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 340:	31 c0                	xor    %eax,%eax
}
 342:	5d                   	pop    %ebp
 343:	c3                   	ret    
 344:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop

00000350 <gets>:

char*
gets(char *buf, int max)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 355:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 358:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 359:	31 db                	xor    %ebx,%ebx
{
 35b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 35e:	eb 27                	jmp    387 <gets+0x37>
    cc = read(0, &c, 1);
 360:	83 ec 04             	sub    $0x4,%esp
 363:	6a 01                	push   $0x1
 365:	57                   	push   %edi
 366:	6a 00                	push   $0x0
 368:	e8 71 02 00 00       	call   5de <read>
    if(cc < 1)
 36d:	83 c4 10             	add    $0x10,%esp
 370:	85 c0                	test   %eax,%eax
 372:	7e 1d                	jle    391 <gets+0x41>
      break;
    buf[i++] = c;
 374:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 378:	8b 55 08             	mov    0x8(%ebp),%edx
 37b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 37f:	3c 0a                	cmp    $0xa,%al
 381:	74 1d                	je     3a0 <gets+0x50>
 383:	3c 0d                	cmp    $0xd,%al
 385:	74 19                	je     3a0 <gets+0x50>
  for(i=0; i+1 < max; ){
 387:	89 de                	mov    %ebx,%esi
 389:	83 c3 01             	add    $0x1,%ebx
 38c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 38f:	7c cf                	jl     360 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 391:	8b 45 08             	mov    0x8(%ebp),%eax
 394:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 398:	8d 65 f4             	lea    -0xc(%ebp),%esp
 39b:	5b                   	pop    %ebx
 39c:	5e                   	pop    %esi
 39d:	5f                   	pop    %edi
 39e:	5d                   	pop    %ebp
 39f:	c3                   	ret    
  buf[i] = '\0';
 3a0:	8b 45 08             	mov    0x8(%ebp),%eax
 3a3:	89 de                	mov    %ebx,%esi
 3a5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 3a9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3ac:	5b                   	pop    %ebx
 3ad:	5e                   	pop    %esi
 3ae:	5f                   	pop    %edi
 3af:	5d                   	pop    %ebp
 3b0:	c3                   	ret    
 3b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bf:	90                   	nop

000003c0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	56                   	push   %esi
 3c4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3c5:	83 ec 08             	sub    $0x8,%esp
 3c8:	6a 00                	push   $0x0
 3ca:	ff 75 08             	push   0x8(%ebp)
 3cd:	e8 34 02 00 00       	call   606 <open>
  if(fd < 0)
 3d2:	83 c4 10             	add    $0x10,%esp
 3d5:	85 c0                	test   %eax,%eax
 3d7:	78 27                	js     400 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3d9:	83 ec 08             	sub    $0x8,%esp
 3dc:	ff 75 0c             	push   0xc(%ebp)
 3df:	89 c3                	mov    %eax,%ebx
 3e1:	50                   	push   %eax
 3e2:	e8 37 02 00 00       	call   61e <fstat>
  close(fd);
 3e7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3ea:	89 c6                	mov    %eax,%esi
  close(fd);
 3ec:	e8 fd 01 00 00       	call   5ee <close>
  return r;
 3f1:	83 c4 10             	add    $0x10,%esp
}
 3f4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 3f7:	89 f0                	mov    %esi,%eax
 3f9:	5b                   	pop    %ebx
 3fa:	5e                   	pop    %esi
 3fb:	5d                   	pop    %ebp
 3fc:	c3                   	ret    
 3fd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 400:	be ff ff ff ff       	mov    $0xffffffff,%esi
 405:	eb ed                	jmp    3f4 <stat+0x34>
 407:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40e:	66 90                	xchg   %ax,%ax

00000410 <atoi>:

int
atoi(const char *s)
{
 410:	55                   	push   %ebp
 411:	89 e5                	mov    %esp,%ebp
 413:	53                   	push   %ebx
 414:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 417:	0f be 02             	movsbl (%edx),%eax
 41a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 41d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 420:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 425:	77 1e                	ja     445 <atoi+0x35>
 427:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 430:	83 c2 01             	add    $0x1,%edx
 433:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 436:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 43a:	0f be 02             	movsbl (%edx),%eax
 43d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 440:	80 fb 09             	cmp    $0x9,%bl
 443:	76 eb                	jbe    430 <atoi+0x20>
  return n;
}
 445:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 448:	89 c8                	mov    %ecx,%eax
 44a:	c9                   	leave  
 44b:	c3                   	ret    
 44c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000450 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	57                   	push   %edi
 454:	8b 45 10             	mov    0x10(%ebp),%eax
 457:	8b 55 08             	mov    0x8(%ebp),%edx
 45a:	56                   	push   %esi
 45b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 45e:	85 c0                	test   %eax,%eax
 460:	7e 13                	jle    475 <memmove+0x25>
 462:	01 d0                	add    %edx,%eax
  dst = vdst;
 464:	89 d7                	mov    %edx,%edi
 466:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 470:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 471:	39 f8                	cmp    %edi,%eax
 473:	75 fb                	jne    470 <memmove+0x20>
  return vdst;
}
 475:	5e                   	pop    %esi
 476:	89 d0                	mov    %edx,%eax
 478:	5f                   	pop    %edi
 479:	5d                   	pop    %ebp
 47a:	c3                   	ret    
 47b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 47f:	90                   	nop

00000480 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 480:	55                   	push   %ebp
  asm volatile("lock; xchgl %0, %1" :
 481:	ba 01 00 00 00       	mov    $0x1,%edx
 486:	89 e5                	mov    %esp,%ebp
 488:	83 ec 08             	sub    $0x8,%esp
 48b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop
 490:	89 d0                	mov    %edx,%eax
 492:	f0 87 05 18 0f 00 00 	lock xchg %eax,0xf18
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 499:	85 c0                	test   %eax,%eax
 49b:	75 f3                	jne    490 <thread_create+0x10>
    __sync_synchronize();
 49d:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 4a2:	83 ec 0c             	sub    $0xc,%esp
 4a5:	68 00 20 00 00       	push   $0x2000
 4aa:	e8 b1 04 00 00       	call   960 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 4af:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 4b4:	c7 05 18 0f 00 00 00 	movl   $0x0,0xf18
 4bb:	00 00 00 
	if((uint)stack % PGSIZE)
 4be:	89 c2                	mov    %eax,%edx
 4c0:	83 c4 10             	add    $0x10,%esp
 4c3:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 4c9:	74 07                	je     4d2 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 4cb:	29 d0                	sub    %edx,%eax
 4cd:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 4d2:	50                   	push   %eax
 4d3:	ff 75 10             	push   0x10(%ebp)
 4d6:	ff 75 0c             	push   0xc(%ebp)
 4d9:	ff 75 08             	push   0x8(%ebp)
 4dc:	e8 85 01 00 00       	call   666 <clone>
}
 4e1:	c9                   	leave  
 4e2:	c3                   	ret    
 4e3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000004f0 <thread_join>:
int thread_join(){
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	53                   	push   %ebx
	int result= join(&stack);
 4f4:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 4f7:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 4fa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 501:	50                   	push   %eax
 502:	e8 67 01 00 00       	call   66e <join>
    while(xchg(&(lock->mutex), 1) != 0);
 507:	83 c4 10             	add    $0x10,%esp
 50a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 50f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 511:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 518:	89 d0                	mov    %edx,%eax
 51a:	f0 87 05 14 0f 00 00 	lock xchg %eax,0xf14
 521:	85 c0                	test   %eax,%eax
 523:	75 f3                	jne    518 <thread_join+0x28>
    __sync_synchronize();
 525:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 52a:	83 ec 0c             	sub    $0xc,%esp
 52d:	ff 75 f4             	push   -0xc(%ebp)
 530:	e8 9b 03 00 00       	call   8d0 <free>
   __sync_synchronize();
 535:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 53a:	c7 05 14 0f 00 00 00 	movl   $0x0,0xf14
 541:	00 00 00 
}
 544:	89 d8                	mov    %ebx,%eax
 546:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 549:	c9                   	leave  
 54a:	c3                   	ret    
 54b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop

00000550 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 550:	c7 05 18 0f 00 00 00 	movl   $0x0,0xf18
 557:	00 00 00 
 55a:	c7 05 14 0f 00 00 00 	movl   $0x0,0xf14
 561:	00 00 00 
}
 564:	c3                   	ret    
 565:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000570 <lock_acquire>:
void lock_acquire(lock_t *lock){
 570:	55                   	push   %ebp
 571:	b9 01 00 00 00       	mov    $0x1,%ecx
 576:	89 e5                	mov    %esp,%ebp
 578:	8b 55 08             	mov    0x8(%ebp),%edx
 57b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 57f:	90                   	nop
 580:	89 c8                	mov    %ecx,%eax
 582:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 585:	85 c0                	test   %eax,%eax
 587:	75 f7                	jne    580 <lock_acquire+0x10>
    __sync_synchronize();
 589:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 58e:	5d                   	pop    %ebp
 58f:	c3                   	ret    

00000590 <lock_release>:
void lock_release(lock_t *lock){
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 596:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 59b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 5a1:	5d                   	pop    %ebp
 5a2:	c3                   	ret    
 5a3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005b0 <lock_init>:
void lock_init(lock_t *lock) {
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 5b3:	8b 45 08             	mov    0x8(%ebp),%eax
 5b6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 5bc:	5d                   	pop    %ebp
 5bd:	c3                   	ret    

000005be <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5be:	b8 01 00 00 00       	mov    $0x1,%eax
 5c3:	cd 40                	int    $0x40
 5c5:	c3                   	ret    

000005c6 <exit>:
SYSCALL(exit)
 5c6:	b8 02 00 00 00       	mov    $0x2,%eax
 5cb:	cd 40                	int    $0x40
 5cd:	c3                   	ret    

000005ce <wait>:
SYSCALL(wait)
 5ce:	b8 03 00 00 00       	mov    $0x3,%eax
 5d3:	cd 40                	int    $0x40
 5d5:	c3                   	ret    

000005d6 <pipe>:
SYSCALL(pipe)
 5d6:	b8 04 00 00 00       	mov    $0x4,%eax
 5db:	cd 40                	int    $0x40
 5dd:	c3                   	ret    

000005de <read>:
SYSCALL(read)
 5de:	b8 05 00 00 00       	mov    $0x5,%eax
 5e3:	cd 40                	int    $0x40
 5e5:	c3                   	ret    

000005e6 <write>:
SYSCALL(write)
 5e6:	b8 10 00 00 00       	mov    $0x10,%eax
 5eb:	cd 40                	int    $0x40
 5ed:	c3                   	ret    

000005ee <close>:
SYSCALL(close)
 5ee:	b8 15 00 00 00       	mov    $0x15,%eax
 5f3:	cd 40                	int    $0x40
 5f5:	c3                   	ret    

000005f6 <kill>:
SYSCALL(kill)
 5f6:	b8 06 00 00 00       	mov    $0x6,%eax
 5fb:	cd 40                	int    $0x40
 5fd:	c3                   	ret    

000005fe <exec>:
SYSCALL(exec)
 5fe:	b8 07 00 00 00       	mov    $0x7,%eax
 603:	cd 40                	int    $0x40
 605:	c3                   	ret    

00000606 <open>:
SYSCALL(open)
 606:	b8 0f 00 00 00       	mov    $0xf,%eax
 60b:	cd 40                	int    $0x40
 60d:	c3                   	ret    

0000060e <mknod>:
SYSCALL(mknod)
 60e:	b8 11 00 00 00       	mov    $0x11,%eax
 613:	cd 40                	int    $0x40
 615:	c3                   	ret    

00000616 <unlink>:
SYSCALL(unlink)
 616:	b8 12 00 00 00       	mov    $0x12,%eax
 61b:	cd 40                	int    $0x40
 61d:	c3                   	ret    

0000061e <fstat>:
SYSCALL(fstat)
 61e:	b8 08 00 00 00       	mov    $0x8,%eax
 623:	cd 40                	int    $0x40
 625:	c3                   	ret    

00000626 <link>:
SYSCALL(link)
 626:	b8 13 00 00 00       	mov    $0x13,%eax
 62b:	cd 40                	int    $0x40
 62d:	c3                   	ret    

0000062e <mkdir>:
SYSCALL(mkdir)
 62e:	b8 14 00 00 00       	mov    $0x14,%eax
 633:	cd 40                	int    $0x40
 635:	c3                   	ret    

00000636 <chdir>:
SYSCALL(chdir)
 636:	b8 09 00 00 00       	mov    $0x9,%eax
 63b:	cd 40                	int    $0x40
 63d:	c3                   	ret    

0000063e <dup>:
SYSCALL(dup)
 63e:	b8 0a 00 00 00       	mov    $0xa,%eax
 643:	cd 40                	int    $0x40
 645:	c3                   	ret    

00000646 <getpid>:
SYSCALL(getpid)
 646:	b8 0b 00 00 00       	mov    $0xb,%eax
 64b:	cd 40                	int    $0x40
 64d:	c3                   	ret    

0000064e <sbrk>:
SYSCALL(sbrk)
 64e:	b8 0c 00 00 00       	mov    $0xc,%eax
 653:	cd 40                	int    $0x40
 655:	c3                   	ret    

00000656 <sleep>:
SYSCALL(sleep)
 656:	b8 0d 00 00 00       	mov    $0xd,%eax
 65b:	cd 40                	int    $0x40
 65d:	c3                   	ret    

0000065e <uptime>:
SYSCALL(uptime)
 65e:	b8 0e 00 00 00       	mov    $0xe,%eax
 663:	cd 40                	int    $0x40
 665:	c3                   	ret    

00000666 <clone>:
SYSCALL(clone)
 666:	b8 16 00 00 00       	mov    $0x16,%eax
 66b:	cd 40                	int    $0x40
 66d:	c3                   	ret    

0000066e <join>:
SYSCALL(join)
 66e:	b8 17 00 00 00       	mov    $0x17,%eax
 673:	cd 40                	int    $0x40
 675:	c3                   	ret    
 676:	66 90                	xchg   %ax,%ax
 678:	66 90                	xchg   %ax,%ax
 67a:	66 90                	xchg   %ax,%ax
 67c:	66 90                	xchg   %ax,%ax
 67e:	66 90                	xchg   %ax,%ax

00000680 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
 683:	57                   	push   %edi
 684:	56                   	push   %esi
 685:	53                   	push   %ebx
 686:	83 ec 3c             	sub    $0x3c,%esp
 689:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 68c:	89 d1                	mov    %edx,%ecx
{
 68e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 691:	85 d2                	test   %edx,%edx
 693:	0f 89 7f 00 00 00    	jns    718 <printint+0x98>
 699:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 69d:	74 79                	je     718 <printint+0x98>
    neg = 1;
 69f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6a8:	31 db                	xor    %ebx,%ebx
 6aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6b0:	89 c8                	mov    %ecx,%eax
 6b2:	31 d2                	xor    %edx,%edx
 6b4:	89 cf                	mov    %ecx,%edi
 6b6:	f7 75 c4             	divl   -0x3c(%ebp)
 6b9:	0f b6 92 88 0b 00 00 	movzbl 0xb88(%edx),%edx
 6c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6c3:	89 d8                	mov    %ebx,%eax
 6c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6d1:	76 dd                	jbe    6b0 <printint+0x30>
  if(neg)
 6d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6d6:	85 c9                	test   %ecx,%ecx
 6d8:	74 0c                	je     6e6 <printint+0x66>
    buf[i++] = '-';
 6da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6ed:	eb 07                	jmp    6f6 <printint+0x76>
 6ef:	90                   	nop
    putc(fd, buf[i]);
 6f0:	0f b6 13             	movzbl (%ebx),%edx
 6f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 6f6:	83 ec 04             	sub    $0x4,%esp
 6f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 6fc:	6a 01                	push   $0x1
 6fe:	56                   	push   %esi
 6ff:	57                   	push   %edi
 700:	e8 e1 fe ff ff       	call   5e6 <write>
  while(--i >= 0)
 705:	83 c4 10             	add    $0x10,%esp
 708:	39 de                	cmp    %ebx,%esi
 70a:	75 e4                	jne    6f0 <printint+0x70>
}
 70c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 70f:	5b                   	pop    %ebx
 710:	5e                   	pop    %esi
 711:	5f                   	pop    %edi
 712:	5d                   	pop    %ebp
 713:	c3                   	ret    
 714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 718:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 71f:	eb 87                	jmp    6a8 <printint+0x28>
 721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 728:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 72f:	90                   	nop

00000730 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 730:	55                   	push   %ebp
 731:	89 e5                	mov    %esp,%ebp
 733:	57                   	push   %edi
 734:	56                   	push   %esi
 735:	53                   	push   %ebx
 736:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 739:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 73c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 73f:	0f b6 13             	movzbl (%ebx),%edx
 742:	84 d2                	test   %dl,%dl
 744:	74 6a                	je     7b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 746:	8d 45 10             	lea    0x10(%ebp),%eax
 749:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 74c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 74f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 751:	89 45 d0             	mov    %eax,-0x30(%ebp)
 754:	eb 36                	jmp    78c <printf+0x5c>
 756:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75d:	8d 76 00             	lea    0x0(%esi),%esi
 760:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 763:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 768:	83 f8 25             	cmp    $0x25,%eax
 76b:	74 15                	je     782 <printf+0x52>
  write(fd, &c, 1);
 76d:	83 ec 04             	sub    $0x4,%esp
 770:	88 55 e7             	mov    %dl,-0x19(%ebp)
 773:	6a 01                	push   $0x1
 775:	57                   	push   %edi
 776:	56                   	push   %esi
 777:	e8 6a fe ff ff       	call   5e6 <write>
 77c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 77f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 782:	0f b6 13             	movzbl (%ebx),%edx
 785:	83 c3 01             	add    $0x1,%ebx
 788:	84 d2                	test   %dl,%dl
 78a:	74 24                	je     7b0 <printf+0x80>
    c = fmt[i] & 0xff;
 78c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 78f:	85 c9                	test   %ecx,%ecx
 791:	74 cd                	je     760 <printf+0x30>
      }
    } else if(state == '%'){
 793:	83 f9 25             	cmp    $0x25,%ecx
 796:	75 ea                	jne    782 <printf+0x52>
      if(c == 'd'){
 798:	83 f8 25             	cmp    $0x25,%eax
 79b:	0f 84 07 01 00 00    	je     8a8 <printf+0x178>
 7a1:	83 e8 63             	sub    $0x63,%eax
 7a4:	83 f8 15             	cmp    $0x15,%eax
 7a7:	77 17                	ja     7c0 <printf+0x90>
 7a9:	ff 24 85 30 0b 00 00 	jmp    *0xb30(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7b3:	5b                   	pop    %ebx
 7b4:	5e                   	pop    %esi
 7b5:	5f                   	pop    %edi
 7b6:	5d                   	pop    %ebp
 7b7:	c3                   	ret    
 7b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7bf:	90                   	nop
  write(fd, &c, 1);
 7c0:	83 ec 04             	sub    $0x4,%esp
 7c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7c6:	6a 01                	push   $0x1
 7c8:	57                   	push   %edi
 7c9:	56                   	push   %esi
 7ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7ce:	e8 13 fe ff ff       	call   5e6 <write>
        putc(fd, c);
 7d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7d7:	83 c4 0c             	add    $0xc,%esp
 7da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7dd:	6a 01                	push   $0x1
 7df:	57                   	push   %edi
 7e0:	56                   	push   %esi
 7e1:	e8 00 fe ff ff       	call   5e6 <write>
        putc(fd, c);
 7e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7e9:	31 c9                	xor    %ecx,%ecx
 7eb:	eb 95                	jmp    782 <printf+0x52>
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7f0:	83 ec 0c             	sub    $0xc,%esp
 7f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7f8:	6a 00                	push   $0x0
 7fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7fd:	8b 10                	mov    (%eax),%edx
 7ff:	89 f0                	mov    %esi,%eax
 801:	e8 7a fe ff ff       	call   680 <printint>
        ap++;
 806:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 80a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 80d:	31 c9                	xor    %ecx,%ecx
 80f:	e9 6e ff ff ff       	jmp    782 <printf+0x52>
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 818:	8b 45 d0             	mov    -0x30(%ebp),%eax
 81b:	8b 10                	mov    (%eax),%edx
        ap++;
 81d:	83 c0 04             	add    $0x4,%eax
 820:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 823:	85 d2                	test   %edx,%edx
 825:	0f 84 8d 00 00 00    	je     8b8 <printf+0x188>
        while(*s != 0){
 82b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 82e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 830:	84 c0                	test   %al,%al
 832:	0f 84 4a ff ff ff    	je     782 <printf+0x52>
 838:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 83b:	89 d3                	mov    %edx,%ebx
 83d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 840:	83 ec 04             	sub    $0x4,%esp
          s++;
 843:	83 c3 01             	add    $0x1,%ebx
 846:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 849:	6a 01                	push   $0x1
 84b:	57                   	push   %edi
 84c:	56                   	push   %esi
 84d:	e8 94 fd ff ff       	call   5e6 <write>
        while(*s != 0){
 852:	0f b6 03             	movzbl (%ebx),%eax
 855:	83 c4 10             	add    $0x10,%esp
 858:	84 c0                	test   %al,%al
 85a:	75 e4                	jne    840 <printf+0x110>
      state = 0;
 85c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 85f:	31 c9                	xor    %ecx,%ecx
 861:	e9 1c ff ff ff       	jmp    782 <printf+0x52>
 866:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 86d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 870:	83 ec 0c             	sub    $0xc,%esp
 873:	b9 0a 00 00 00       	mov    $0xa,%ecx
 878:	6a 01                	push   $0x1
 87a:	e9 7b ff ff ff       	jmp    7fa <printf+0xca>
 87f:	90                   	nop
        putc(fd, *ap);
 880:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 883:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 886:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 888:	6a 01                	push   $0x1
 88a:	57                   	push   %edi
 88b:	56                   	push   %esi
        putc(fd, *ap);
 88c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 88f:	e8 52 fd ff ff       	call   5e6 <write>
        ap++;
 894:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 898:	83 c4 10             	add    $0x10,%esp
      state = 0;
 89b:	31 c9                	xor    %ecx,%ecx
 89d:	e9 e0 fe ff ff       	jmp    782 <printf+0x52>
 8a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8ab:	83 ec 04             	sub    $0x4,%esp
 8ae:	e9 2a ff ff ff       	jmp    7dd <printf+0xad>
 8b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8b7:	90                   	nop
          s = "(null)";
 8b8:	ba 27 0b 00 00       	mov    $0xb27,%edx
        while(*s != 0){
 8bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8c0:	b8 28 00 00 00       	mov    $0x28,%eax
 8c5:	89 d3                	mov    %edx,%ebx
 8c7:	e9 74 ff ff ff       	jmp    840 <printf+0x110>
 8cc:	66 90                	xchg   %ax,%ax
 8ce:	66 90                	xchg   %ax,%ax

000008d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8d1:	a1 1c 0f 00 00       	mov    0xf1c,%eax
{
 8d6:	89 e5                	mov    %esp,%ebp
 8d8:	57                   	push   %edi
 8d9:	56                   	push   %esi
 8da:	53                   	push   %ebx
 8db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8e8:	89 c2                	mov    %eax,%edx
 8ea:	8b 00                	mov    (%eax),%eax
 8ec:	39 ca                	cmp    %ecx,%edx
 8ee:	73 30                	jae    920 <free+0x50>
 8f0:	39 c1                	cmp    %eax,%ecx
 8f2:	72 04                	jb     8f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8f4:	39 c2                	cmp    %eax,%edx
 8f6:	72 f0                	jb     8e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8fe:	39 f8                	cmp    %edi,%eax
 900:	74 30                	je     932 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 902:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 905:	8b 42 04             	mov    0x4(%edx),%eax
 908:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 90b:	39 f1                	cmp    %esi,%ecx
 90d:	74 3a                	je     949 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 90f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 911:	5b                   	pop    %ebx
  freep = p;
 912:	89 15 1c 0f 00 00    	mov    %edx,0xf1c
}
 918:	5e                   	pop    %esi
 919:	5f                   	pop    %edi
 91a:	5d                   	pop    %ebp
 91b:	c3                   	ret    
 91c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 920:	39 c2                	cmp    %eax,%edx
 922:	72 c4                	jb     8e8 <free+0x18>
 924:	39 c1                	cmp    %eax,%ecx
 926:	73 c0                	jae    8e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 928:	8b 73 fc             	mov    -0x4(%ebx),%esi
 92b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 92e:	39 f8                	cmp    %edi,%eax
 930:	75 d0                	jne    902 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 932:	03 70 04             	add    0x4(%eax),%esi
 935:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 938:	8b 02                	mov    (%edx),%eax
 93a:	8b 00                	mov    (%eax),%eax
 93c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 93f:	8b 42 04             	mov    0x4(%edx),%eax
 942:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 945:	39 f1                	cmp    %esi,%ecx
 947:	75 c6                	jne    90f <free+0x3f>
    p->s.size += bp->s.size;
 949:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 94c:	89 15 1c 0f 00 00    	mov    %edx,0xf1c
    p->s.size += bp->s.size;
 952:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 955:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 958:	89 0a                	mov    %ecx,(%edx)
}
 95a:	5b                   	pop    %ebx
 95b:	5e                   	pop    %esi
 95c:	5f                   	pop    %edi
 95d:	5d                   	pop    %ebp
 95e:	c3                   	ret    
 95f:	90                   	nop

00000960 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 960:	55                   	push   %ebp
 961:	89 e5                	mov    %esp,%ebp
 963:	57                   	push   %edi
 964:	56                   	push   %esi
 965:	53                   	push   %ebx
 966:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 969:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 96c:	8b 3d 1c 0f 00 00    	mov    0xf1c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 972:	8d 70 07             	lea    0x7(%eax),%esi
 975:	c1 ee 03             	shr    $0x3,%esi
 978:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 97b:	85 ff                	test   %edi,%edi
 97d:	0f 84 9d 00 00 00    	je     a20 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 983:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 985:	8b 4a 04             	mov    0x4(%edx),%ecx
 988:	39 f1                	cmp    %esi,%ecx
 98a:	73 6a                	jae    9f6 <malloc+0x96>
 98c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 991:	39 de                	cmp    %ebx,%esi
 993:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 996:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 99d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9a0:	eb 17                	jmp    9b9 <malloc+0x59>
 9a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9aa:	8b 48 04             	mov    0x4(%eax),%ecx
 9ad:	39 f1                	cmp    %esi,%ecx
 9af:	73 4f                	jae    a00 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9b1:	8b 3d 1c 0f 00 00    	mov    0xf1c,%edi
 9b7:	89 c2                	mov    %eax,%edx
 9b9:	39 d7                	cmp    %edx,%edi
 9bb:	75 eb                	jne    9a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9bd:	83 ec 0c             	sub    $0xc,%esp
 9c0:	ff 75 e4             	push   -0x1c(%ebp)
 9c3:	e8 86 fc ff ff       	call   64e <sbrk>
  if(p == (char*)-1)
 9c8:	83 c4 10             	add    $0x10,%esp
 9cb:	83 f8 ff             	cmp    $0xffffffff,%eax
 9ce:	74 1c                	je     9ec <malloc+0x8c>
  hp->s.size = nu;
 9d0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9d3:	83 ec 0c             	sub    $0xc,%esp
 9d6:	83 c0 08             	add    $0x8,%eax
 9d9:	50                   	push   %eax
 9da:	e8 f1 fe ff ff       	call   8d0 <free>
  return freep;
 9df:	8b 15 1c 0f 00 00    	mov    0xf1c,%edx
      if((p = morecore(nunits)) == 0)
 9e5:	83 c4 10             	add    $0x10,%esp
 9e8:	85 d2                	test   %edx,%edx
 9ea:	75 bc                	jne    9a8 <malloc+0x48>
        return 0;
  }
}
 9ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9ef:	31 c0                	xor    %eax,%eax
}
 9f1:	5b                   	pop    %ebx
 9f2:	5e                   	pop    %esi
 9f3:	5f                   	pop    %edi
 9f4:	5d                   	pop    %ebp
 9f5:	c3                   	ret    
    if(p->s.size >= nunits){
 9f6:	89 d0                	mov    %edx,%eax
 9f8:	89 fa                	mov    %edi,%edx
 9fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a00:	39 ce                	cmp    %ecx,%esi
 a02:	74 4c                	je     a50 <malloc+0xf0>
        p->s.size -= nunits;
 a04:	29 f1                	sub    %esi,%ecx
 a06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a0c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a0f:	89 15 1c 0f 00 00    	mov    %edx,0xf1c
}
 a15:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a18:	83 c0 08             	add    $0x8,%eax
}
 a1b:	5b                   	pop    %ebx
 a1c:	5e                   	pop    %esi
 a1d:	5f                   	pop    %edi
 a1e:	5d                   	pop    %ebp
 a1f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a20:	c7 05 1c 0f 00 00 20 	movl   $0xf20,0xf1c
 a27:	0f 00 00 
    base.s.size = 0;
 a2a:	bf 20 0f 00 00       	mov    $0xf20,%edi
    base.s.ptr = freep = prevp = &base;
 a2f:	c7 05 20 0f 00 00 20 	movl   $0xf20,0xf20
 a36:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a39:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a3b:	c7 05 24 0f 00 00 00 	movl   $0x0,0xf24
 a42:	00 00 00 
    if(p->s.size >= nunits){
 a45:	e9 42 ff ff ff       	jmp    98c <malloc+0x2c>
 a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a50:	8b 08                	mov    (%eax),%ecx
 a52:	89 0a                	mov    %ecx,(%edx)
 a54:	eb b9                	jmp    a0f <malloc+0xaf>
