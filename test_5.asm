
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
  14:	e8 3d 06 00 00       	call   656 <getpid>

   void *stack, *p = malloc(PGSIZE * 2);
  19:	83 ec 0c             	sub    $0xc,%esp
  1c:	68 00 20 00 00       	push   $0x2000
   ppid = getpid();
  21:	a3 04 0f 00 00       	mov    %eax,0xf04
   void *stack, *p = malloc(PGSIZE * 2);
  26:	e8 45 09 00 00       	call   970 <malloc>
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
  67:	e8 0a 06 00 00       	call   676 <clone>
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
  7c:	e8 fd 05 00 00       	call   67e <join>
   assert(join_pid == clone_pid);
  81:	83 c4 10             	add    $0x10,%esp
  84:	39 c6                	cmp    %eax,%esi
  86:	74 63                	je     eb <main+0xeb>
  88:	6a 29                	push   $0x29
  8a:	68 68 0a 00 00       	push   $0xa68
  8f:	68 71 0a 00 00       	push   $0xa71
  94:	6a 01                	push   $0x1
  96:	e8 a5 06 00 00       	call   740 <printf>
  9b:	83 c4 0c             	add    $0xc,%esp
  9e:	68 d4 0a 00 00       	push   $0xad4
   assert(clone_pid > 0);
  a3:	68 84 0a 00 00       	push   $0xa84
  a8:	6a 01                	push   $0x1
  aa:	e8 91 06 00 00       	call   740 <printf>
  af:	5a                   	pop    %edx
  b0:	59                   	pop    %ecx
  b1:	68 98 0a 00 00       	push   $0xa98
  b6:	6a 01                	push   $0x1
  b8:	e8 83 06 00 00       	call   740 <printf>
  bd:	5b                   	pop    %ebx
  be:	ff 35 04 0f 00 00    	push   0xf04
  c4:	e8 3d 05 00 00       	call   606 <kill>
  c9:	e8 08 05 00 00       	call   5d6 <exit>
  ce:	6a 25                	push   $0x25
  d0:	68 68 0a 00 00       	push   $0xa68
  d5:	68 71 0a 00 00       	push   $0xa71
  da:	6a 01                	push   $0x1
  dc:	e8 5f 06 00 00       	call   740 <printf>
  e1:	83 c4 0c             	add    $0xc,%esp
  e4:	68 c6 0a 00 00       	push   $0xac6
  e9:	eb b8                	jmp    a3 <main+0xa3>
   assert(stack == join_stack);
  eb:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
  ee:	74 1d                	je     10d <main+0x10d>
  f0:	6a 2a                	push   $0x2a
  f2:	68 68 0a 00 00       	push   $0xa68
  f7:	68 71 0a 00 00       	push   $0xa71
  fc:	6a 01                	push   $0x1
  fe:	e8 3d 06 00 00       	call   740 <printf>
 103:	83 c4 0c             	add    $0xc,%esp
 106:	68 ea 0a 00 00       	push   $0xaea
 10b:	eb 96                	jmp    a3 <main+0xa3>
   assert(global == 2);
 10d:	83 3d 00 0f 00 00 02 	cmpl   $0x2,0xf00
 114:	74 40                	je     156 <main+0x156>
 116:	6a 2b                	push   $0x2b
 118:	68 68 0a 00 00       	push   $0xa68
 11d:	68 71 0a 00 00       	push   $0xa71
 122:	6a 01                	push   $0x1
 124:	e8 17 06 00 00       	call   740 <printf>
 129:	83 c4 0c             	add    $0xc,%esp
 12c:	68 fe 0a 00 00       	push   $0xafe
 131:	e9 6d ff ff ff       	jmp    a3 <main+0xa3>
   assert(p != NULL);
 136:	6a 1d                	push   $0x1d
 138:	68 68 0a 00 00       	push   $0xa68
 13d:	68 71 0a 00 00       	push   $0xa71
 142:	6a 01                	push   $0x1
 144:	e8 f7 05 00 00       	call   740 <printf>
 149:	83 c4 0c             	add    $0xc,%esp
 14c:	68 bc 0a 00 00       	push   $0xabc
 151:	e9 4d ff ff ff       	jmp    a3 <main+0xa3>
   
   printf(1, "TEST PASSED\n");
 156:	50                   	push   %eax
 157:	50                   	push   %eax
 158:	68 0a 0b 00 00       	push   $0xb0a
 15d:	6a 01                	push   $0x1
 15f:	e8 dc 05 00 00       	call   740 <printf>
   free(p);
 164:	89 1c 24             	mov    %ebx,(%esp)
 167:	e8 74 07 00 00       	call   8e0 <free>
   exit();
 16c:	e8 65 04 00 00       	call   5d6 <exit>
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
 198:	83 3d 00 0f 00 00 01 	cmpl   $0x1,0xf00
 19f:	0f 84 80 00 00 00    	je     225 <worker+0xa5>
 1a5:	6a 38                	push   $0x38
 1a7:	68 68 0a 00 00       	push   $0xa68
 1ac:	68 71 0a 00 00       	push   $0xa71
 1b1:	6a 01                	push   $0x1
 1b3:	e8 88 05 00 00       	call   740 <printf>
 1b8:	83 c4 0c             	add    $0xc,%esp
 1bb:	68 b0 0a 00 00       	push   $0xab0
 1c0:	eb 1b                	jmp    1dd <worker+0x5d>
   assert(tmp2 == 24);
 1c2:	6a 37                	push   $0x37
 1c4:	68 68 0a 00 00       	push   $0xa68
 1c9:	68 71 0a 00 00       	push   $0xa71
 1ce:	6a 01                	push   $0x1
 1d0:	e8 6b 05 00 00       	call   740 <printf>
 1d5:	83 c4 0c             	add    $0xc,%esp
 1d8:	68 a5 0a 00 00       	push   $0xaa5
 1dd:	68 84 0a 00 00       	push   $0xa84
 1e2:	6a 01                	push   $0x1
 1e4:	e8 57 05 00 00       	call   740 <printf>
 1e9:	58                   	pop    %eax
 1ea:	5a                   	pop    %edx
 1eb:	68 98 0a 00 00       	push   $0xa98
 1f0:	6a 01                	push   $0x1
 1f2:	e8 49 05 00 00       	call   740 <printf>
 1f7:	59                   	pop    %ecx
 1f8:	ff 35 04 0f 00 00    	push   0xf04
 1fe:	e8 03 04 00 00       	call   606 <kill>
 203:	e8 ce 03 00 00       	call   5d6 <exit>
   assert(tmp1 == 42);
 208:	6a 36                	push   $0x36
 20a:	68 68 0a 00 00       	push   $0xa68
 20f:	68 71 0a 00 00       	push   $0xa71
 214:	6a 01                	push   $0x1
 216:	e8 25 05 00 00       	call   740 <printf>
 21b:	83 c4 0c             	add    $0xc,%esp
 21e:	68 79 0a 00 00       	push   $0xa79
 223:	eb b8                	jmp    1dd <worker+0x5d>
   global++;
 225:	c7 05 00 0f 00 00 02 	movl   $0x2,0xf00
 22c:	00 00 00 
   exit();
 22f:	e8 a2 03 00 00       	call   5d6 <exit>
 234:	66 90                	xchg   %ax,%ax
 236:	66 90                	xchg   %ax,%ax
 238:	66 90                	xchg   %ax,%ax
 23a:	66 90                	xchg   %ax,%ax
 23c:	66 90                	xchg   %ax,%ax
 23e:	66 90                	xchg   %ax,%ax

00000240 <strcpy>:

lock_t lk_create,lk_join;

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
 378:	e8 71 02 00 00       	call   5ee <read>
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
 3dd:	e8 34 02 00 00       	call   616 <open>
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
 3f2:	e8 37 02 00 00       	call   62e <fstat>
  close(fd);
 3f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3fa:	89 c6                	mov    %eax,%esi
  close(fd);
 3fc:	e8 fd 01 00 00       	call   5fe <close>
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
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 491:	ba 01 00 00 00       	mov    $0x1,%edx
 496:	89 e5                	mov    %esp,%ebp
 498:	83 ec 08             	sub    $0x8,%esp
 49b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 49f:	90                   	nop
 4a0:	89 d0                	mov    %edx,%eax
 4a2:	f0 87 05 0c 0f 00 00 	lock xchg %eax,0xf0c
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 4a9:	85 c0                	test   %eax,%eax
 4ab:	75 f3                	jne    4a0 <thread_create+0x10>
    __sync_synchronize();
 4ad:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 4b2:	83 ec 0c             	sub    $0xc,%esp
 4b5:	68 00 20 00 00       	push   $0x2000
 4ba:	e8 b1 04 00 00       	call   970 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 4bf:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 4c4:	c7 05 0c 0f 00 00 00 	movl   $0x0,0xf0c
 4cb:	00 00 00 
	if((uint)stack % PGSIZE)
 4ce:	89 c2                	mov    %eax,%edx
 4d0:	83 c4 10             	add    $0x10,%esp
 4d3:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 4d9:	74 07                	je     4e2 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 4db:	29 d0                	sub    %edx,%eax
 4dd:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 4e2:	50                   	push   %eax
 4e3:	ff 75 10             	push   0x10(%ebp)
 4e6:	ff 75 0c             	push   0xc(%ebp)
 4e9:	ff 75 08             	push   0x8(%ebp)
 4ec:	e8 85 01 00 00       	call   676 <clone>
}
 4f1:	c9                   	leave  
 4f2:	c3                   	ret    
 4f3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000500 <thread_join>:
int thread_join(){
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	53                   	push   %ebx
	int result= join(&stack);
 504:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 507:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 50a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 511:	50                   	push   %eax
 512:	e8 67 01 00 00       	call   67e <join>
    while(xchg(&(lock->mutex), 1) != 0);
 517:	83 c4 10             	add    $0x10,%esp
 51a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 51f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 528:	89 d0                	mov    %edx,%eax
 52a:	f0 87 05 08 0f 00 00 	lock xchg %eax,0xf08
 531:	85 c0                	test   %eax,%eax
 533:	75 f3                	jne    528 <thread_join+0x28>
    __sync_synchronize();
 535:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 53a:	83 ec 0c             	sub    $0xc,%esp
 53d:	ff 75 f4             	push   -0xc(%ebp)
 540:	e8 9b 03 00 00       	call   8e0 <free>
   __sync_synchronize();
 545:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 54a:	c7 05 08 0f 00 00 00 	movl   $0x0,0xf08
 551:	00 00 00 
}
 554:	89 d8                	mov    %ebx,%eax
 556:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 559:	c9                   	leave  
 55a:	c3                   	ret    
 55b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop

00000560 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 560:	c7 05 0c 0f 00 00 00 	movl   $0x0,0xf0c
 567:	00 00 00 
 56a:	c7 05 08 0f 00 00 00 	movl   $0x0,0xf08
 571:	00 00 00 
}
 574:	c3                   	ret    
 575:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000580 <lock_acquire>:
void lock_acquire(lock_t *lock){
 580:	55                   	push   %ebp
 581:	b9 01 00 00 00       	mov    $0x1,%ecx
 586:	89 e5                	mov    %esp,%ebp
 588:	8b 55 08             	mov    0x8(%ebp),%edx
 58b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop
 590:	89 c8                	mov    %ecx,%eax
 592:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 595:	85 c0                	test   %eax,%eax
 597:	75 f7                	jne    590 <lock_acquire+0x10>
    __sync_synchronize();
 599:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 59e:	5d                   	pop    %ebp
 59f:	c3                   	ret    

000005a0 <lock_release>:
void lock_release(lock_t *lock){
 5a0:	55                   	push   %ebp
 5a1:	89 e5                	mov    %esp,%ebp
 5a3:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 5a6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 5ab:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 5b1:	5d                   	pop    %ebp
 5b2:	c3                   	ret    
 5b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005c0 <lock_init>:
void lock_init(lock_t *lock) {
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 5c3:	8b 45 08             	mov    0x8(%ebp),%eax
 5c6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 5cc:	5d                   	pop    %ebp
 5cd:	c3                   	ret    

000005ce <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5ce:	b8 01 00 00 00       	mov    $0x1,%eax
 5d3:	cd 40                	int    $0x40
 5d5:	c3                   	ret    

000005d6 <exit>:
SYSCALL(exit)
 5d6:	b8 02 00 00 00       	mov    $0x2,%eax
 5db:	cd 40                	int    $0x40
 5dd:	c3                   	ret    

000005de <wait>:
SYSCALL(wait)
 5de:	b8 03 00 00 00       	mov    $0x3,%eax
 5e3:	cd 40                	int    $0x40
 5e5:	c3                   	ret    

000005e6 <pipe>:
SYSCALL(pipe)
 5e6:	b8 04 00 00 00       	mov    $0x4,%eax
 5eb:	cd 40                	int    $0x40
 5ed:	c3                   	ret    

000005ee <read>:
SYSCALL(read)
 5ee:	b8 05 00 00 00       	mov    $0x5,%eax
 5f3:	cd 40                	int    $0x40
 5f5:	c3                   	ret    

000005f6 <write>:
SYSCALL(write)
 5f6:	b8 10 00 00 00       	mov    $0x10,%eax
 5fb:	cd 40                	int    $0x40
 5fd:	c3                   	ret    

000005fe <close>:
SYSCALL(close)
 5fe:	b8 15 00 00 00       	mov    $0x15,%eax
 603:	cd 40                	int    $0x40
 605:	c3                   	ret    

00000606 <kill>:
SYSCALL(kill)
 606:	b8 06 00 00 00       	mov    $0x6,%eax
 60b:	cd 40                	int    $0x40
 60d:	c3                   	ret    

0000060e <exec>:
SYSCALL(exec)
 60e:	b8 07 00 00 00       	mov    $0x7,%eax
 613:	cd 40                	int    $0x40
 615:	c3                   	ret    

00000616 <open>:
SYSCALL(open)
 616:	b8 0f 00 00 00       	mov    $0xf,%eax
 61b:	cd 40                	int    $0x40
 61d:	c3                   	ret    

0000061e <mknod>:
SYSCALL(mknod)
 61e:	b8 11 00 00 00       	mov    $0x11,%eax
 623:	cd 40                	int    $0x40
 625:	c3                   	ret    

00000626 <unlink>:
SYSCALL(unlink)
 626:	b8 12 00 00 00       	mov    $0x12,%eax
 62b:	cd 40                	int    $0x40
 62d:	c3                   	ret    

0000062e <fstat>:
SYSCALL(fstat)
 62e:	b8 08 00 00 00       	mov    $0x8,%eax
 633:	cd 40                	int    $0x40
 635:	c3                   	ret    

00000636 <link>:
SYSCALL(link)
 636:	b8 13 00 00 00       	mov    $0x13,%eax
 63b:	cd 40                	int    $0x40
 63d:	c3                   	ret    

0000063e <mkdir>:
SYSCALL(mkdir)
 63e:	b8 14 00 00 00       	mov    $0x14,%eax
 643:	cd 40                	int    $0x40
 645:	c3                   	ret    

00000646 <chdir>:
SYSCALL(chdir)
 646:	b8 09 00 00 00       	mov    $0x9,%eax
 64b:	cd 40                	int    $0x40
 64d:	c3                   	ret    

0000064e <dup>:
SYSCALL(dup)
 64e:	b8 0a 00 00 00       	mov    $0xa,%eax
 653:	cd 40                	int    $0x40
 655:	c3                   	ret    

00000656 <getpid>:
SYSCALL(getpid)
 656:	b8 0b 00 00 00       	mov    $0xb,%eax
 65b:	cd 40                	int    $0x40
 65d:	c3                   	ret    

0000065e <sbrk>:
SYSCALL(sbrk)
 65e:	b8 0c 00 00 00       	mov    $0xc,%eax
 663:	cd 40                	int    $0x40
 665:	c3                   	ret    

00000666 <sleep>:
SYSCALL(sleep)
 666:	b8 0d 00 00 00       	mov    $0xd,%eax
 66b:	cd 40                	int    $0x40
 66d:	c3                   	ret    

0000066e <uptime>:
SYSCALL(uptime)
 66e:	b8 0e 00 00 00       	mov    $0xe,%eax
 673:	cd 40                	int    $0x40
 675:	c3                   	ret    

00000676 <clone>:
SYSCALL(clone)
 676:	b8 16 00 00 00       	mov    $0x16,%eax
 67b:	cd 40                	int    $0x40
 67d:	c3                   	ret    

0000067e <join>:
SYSCALL(join)
 67e:	b8 17 00 00 00       	mov    $0x17,%eax
 683:	cd 40                	int    $0x40
 685:	c3                   	ret    
 686:	66 90                	xchg   %ax,%ax
 688:	66 90                	xchg   %ax,%ax
 68a:	66 90                	xchg   %ax,%ax
 68c:	66 90                	xchg   %ax,%ax
 68e:	66 90                	xchg   %ax,%ax

00000690 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 690:	55                   	push   %ebp
 691:	89 e5                	mov    %esp,%ebp
 693:	57                   	push   %edi
 694:	56                   	push   %esi
 695:	53                   	push   %ebx
 696:	83 ec 3c             	sub    $0x3c,%esp
 699:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 69c:	89 d1                	mov    %edx,%ecx
{
 69e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6a1:	85 d2                	test   %edx,%edx
 6a3:	0f 89 7f 00 00 00    	jns    728 <printint+0x98>
 6a9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6ad:	74 79                	je     728 <printint+0x98>
    neg = 1;
 6af:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6b6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6b8:	31 db                	xor    %ebx,%ebx
 6ba:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6bd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6c0:	89 c8                	mov    %ecx,%eax
 6c2:	31 d2                	xor    %edx,%edx
 6c4:	89 cf                	mov    %ecx,%edi
 6c6:	f7 75 c4             	divl   -0x3c(%ebp)
 6c9:	0f b6 92 78 0b 00 00 	movzbl 0xb78(%edx),%edx
 6d0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6d3:	89 d8                	mov    %ebx,%eax
 6d5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6d8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6db:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6de:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6e1:	76 dd                	jbe    6c0 <printint+0x30>
  if(neg)
 6e3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6e6:	85 c9                	test   %ecx,%ecx
 6e8:	74 0c                	je     6f6 <printint+0x66>
    buf[i++] = '-';
 6ea:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6ef:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6f1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6f6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6f9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6fd:	eb 07                	jmp    706 <printint+0x76>
 6ff:	90                   	nop
    putc(fd, buf[i]);
 700:	0f b6 13             	movzbl (%ebx),%edx
 703:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 706:	83 ec 04             	sub    $0x4,%esp
 709:	88 55 d7             	mov    %dl,-0x29(%ebp)
 70c:	6a 01                	push   $0x1
 70e:	56                   	push   %esi
 70f:	57                   	push   %edi
 710:	e8 e1 fe ff ff       	call   5f6 <write>
  while(--i >= 0)
 715:	83 c4 10             	add    $0x10,%esp
 718:	39 de                	cmp    %ebx,%esi
 71a:	75 e4                	jne    700 <printint+0x70>
}
 71c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 71f:	5b                   	pop    %ebx
 720:	5e                   	pop    %esi
 721:	5f                   	pop    %edi
 722:	5d                   	pop    %ebp
 723:	c3                   	ret    
 724:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 728:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 72f:	eb 87                	jmp    6b8 <printint+0x28>
 731:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 738:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73f:	90                   	nop

00000740 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	56                   	push   %esi
 745:	53                   	push   %ebx
 746:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 749:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 74c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 74f:	0f b6 13             	movzbl (%ebx),%edx
 752:	84 d2                	test   %dl,%dl
 754:	74 6a                	je     7c0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 756:	8d 45 10             	lea    0x10(%ebp),%eax
 759:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 75c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 75f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 761:	89 45 d0             	mov    %eax,-0x30(%ebp)
 764:	eb 36                	jmp    79c <printf+0x5c>
 766:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 76d:	8d 76 00             	lea    0x0(%esi),%esi
 770:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 773:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 778:	83 f8 25             	cmp    $0x25,%eax
 77b:	74 15                	je     792 <printf+0x52>
  write(fd, &c, 1);
 77d:	83 ec 04             	sub    $0x4,%esp
 780:	88 55 e7             	mov    %dl,-0x19(%ebp)
 783:	6a 01                	push   $0x1
 785:	57                   	push   %edi
 786:	56                   	push   %esi
 787:	e8 6a fe ff ff       	call   5f6 <write>
 78c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 78f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 792:	0f b6 13             	movzbl (%ebx),%edx
 795:	83 c3 01             	add    $0x1,%ebx
 798:	84 d2                	test   %dl,%dl
 79a:	74 24                	je     7c0 <printf+0x80>
    c = fmt[i] & 0xff;
 79c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 79f:	85 c9                	test   %ecx,%ecx
 7a1:	74 cd                	je     770 <printf+0x30>
      }
    } else if(state == '%'){
 7a3:	83 f9 25             	cmp    $0x25,%ecx
 7a6:	75 ea                	jne    792 <printf+0x52>
      if(c == 'd'){
 7a8:	83 f8 25             	cmp    $0x25,%eax
 7ab:	0f 84 07 01 00 00    	je     8b8 <printf+0x178>
 7b1:	83 e8 63             	sub    $0x63,%eax
 7b4:	83 f8 15             	cmp    $0x15,%eax
 7b7:	77 17                	ja     7d0 <printf+0x90>
 7b9:	ff 24 85 20 0b 00 00 	jmp    *0xb20(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7c3:	5b                   	pop    %ebx
 7c4:	5e                   	pop    %esi
 7c5:	5f                   	pop    %edi
 7c6:	5d                   	pop    %ebp
 7c7:	c3                   	ret    
 7c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7cf:	90                   	nop
  write(fd, &c, 1);
 7d0:	83 ec 04             	sub    $0x4,%esp
 7d3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7d6:	6a 01                	push   $0x1
 7d8:	57                   	push   %edi
 7d9:	56                   	push   %esi
 7da:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7de:	e8 13 fe ff ff       	call   5f6 <write>
        putc(fd, c);
 7e3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7e7:	83 c4 0c             	add    $0xc,%esp
 7ea:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7ed:	6a 01                	push   $0x1
 7ef:	57                   	push   %edi
 7f0:	56                   	push   %esi
 7f1:	e8 00 fe ff ff       	call   5f6 <write>
        putc(fd, c);
 7f6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7f9:	31 c9                	xor    %ecx,%ecx
 7fb:	eb 95                	jmp    792 <printf+0x52>
 7fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 800:	83 ec 0c             	sub    $0xc,%esp
 803:	b9 10 00 00 00       	mov    $0x10,%ecx
 808:	6a 00                	push   $0x0
 80a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 80d:	8b 10                	mov    (%eax),%edx
 80f:	89 f0                	mov    %esi,%eax
 811:	e8 7a fe ff ff       	call   690 <printint>
        ap++;
 816:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 81a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 81d:	31 c9                	xor    %ecx,%ecx
 81f:	e9 6e ff ff ff       	jmp    792 <printf+0x52>
 824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 828:	8b 45 d0             	mov    -0x30(%ebp),%eax
 82b:	8b 10                	mov    (%eax),%edx
        ap++;
 82d:	83 c0 04             	add    $0x4,%eax
 830:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 833:	85 d2                	test   %edx,%edx
 835:	0f 84 8d 00 00 00    	je     8c8 <printf+0x188>
        while(*s != 0){
 83b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 83e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 840:	84 c0                	test   %al,%al
 842:	0f 84 4a ff ff ff    	je     792 <printf+0x52>
 848:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 84b:	89 d3                	mov    %edx,%ebx
 84d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 850:	83 ec 04             	sub    $0x4,%esp
          s++;
 853:	83 c3 01             	add    $0x1,%ebx
 856:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 859:	6a 01                	push   $0x1
 85b:	57                   	push   %edi
 85c:	56                   	push   %esi
 85d:	e8 94 fd ff ff       	call   5f6 <write>
        while(*s != 0){
 862:	0f b6 03             	movzbl (%ebx),%eax
 865:	83 c4 10             	add    $0x10,%esp
 868:	84 c0                	test   %al,%al
 86a:	75 e4                	jne    850 <printf+0x110>
      state = 0;
 86c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 86f:	31 c9                	xor    %ecx,%ecx
 871:	e9 1c ff ff ff       	jmp    792 <printf+0x52>
 876:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 87d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 880:	83 ec 0c             	sub    $0xc,%esp
 883:	b9 0a 00 00 00       	mov    $0xa,%ecx
 888:	6a 01                	push   $0x1
 88a:	e9 7b ff ff ff       	jmp    80a <printf+0xca>
 88f:	90                   	nop
        putc(fd, *ap);
 890:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 893:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 896:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 898:	6a 01                	push   $0x1
 89a:	57                   	push   %edi
 89b:	56                   	push   %esi
        putc(fd, *ap);
 89c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 89f:	e8 52 fd ff ff       	call   5f6 <write>
        ap++;
 8a4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8a8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8ab:	31 c9                	xor    %ecx,%ecx
 8ad:	e9 e0 fe ff ff       	jmp    792 <printf+0x52>
 8b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8b8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8bb:	83 ec 04             	sub    $0x4,%esp
 8be:	e9 2a ff ff ff       	jmp    7ed <printf+0xad>
 8c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8c7:	90                   	nop
          s = "(null)";
 8c8:	ba 17 0b 00 00       	mov    $0xb17,%edx
        while(*s != 0){
 8cd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8d0:	b8 28 00 00 00       	mov    $0x28,%eax
 8d5:	89 d3                	mov    %edx,%ebx
 8d7:	e9 74 ff ff ff       	jmp    850 <printf+0x110>
 8dc:	66 90                	xchg   %ax,%ax
 8de:	66 90                	xchg   %ax,%ax

000008e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8e1:	a1 10 0f 00 00       	mov    0xf10,%eax
{
 8e6:	89 e5                	mov    %esp,%ebp
 8e8:	57                   	push   %edi
 8e9:	56                   	push   %esi
 8ea:	53                   	push   %ebx
 8eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8f8:	89 c2                	mov    %eax,%edx
 8fa:	8b 00                	mov    (%eax),%eax
 8fc:	39 ca                	cmp    %ecx,%edx
 8fe:	73 30                	jae    930 <free+0x50>
 900:	39 c1                	cmp    %eax,%ecx
 902:	72 04                	jb     908 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 904:	39 c2                	cmp    %eax,%edx
 906:	72 f0                	jb     8f8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 908:	8b 73 fc             	mov    -0x4(%ebx),%esi
 90b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 90e:	39 f8                	cmp    %edi,%eax
 910:	74 30                	je     942 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 912:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 915:	8b 42 04             	mov    0x4(%edx),%eax
 918:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 91b:	39 f1                	cmp    %esi,%ecx
 91d:	74 3a                	je     959 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 91f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 921:	5b                   	pop    %ebx
  freep = p;
 922:	89 15 10 0f 00 00    	mov    %edx,0xf10
}
 928:	5e                   	pop    %esi
 929:	5f                   	pop    %edi
 92a:	5d                   	pop    %ebp
 92b:	c3                   	ret    
 92c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 930:	39 c2                	cmp    %eax,%edx
 932:	72 c4                	jb     8f8 <free+0x18>
 934:	39 c1                	cmp    %eax,%ecx
 936:	73 c0                	jae    8f8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 938:	8b 73 fc             	mov    -0x4(%ebx),%esi
 93b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 93e:	39 f8                	cmp    %edi,%eax
 940:	75 d0                	jne    912 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 942:	03 70 04             	add    0x4(%eax),%esi
 945:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 948:	8b 02                	mov    (%edx),%eax
 94a:	8b 00                	mov    (%eax),%eax
 94c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 94f:	8b 42 04             	mov    0x4(%edx),%eax
 952:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 955:	39 f1                	cmp    %esi,%ecx
 957:	75 c6                	jne    91f <free+0x3f>
    p->s.size += bp->s.size;
 959:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 95c:	89 15 10 0f 00 00    	mov    %edx,0xf10
    p->s.size += bp->s.size;
 962:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 965:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 968:	89 0a                	mov    %ecx,(%edx)
}
 96a:	5b                   	pop    %ebx
 96b:	5e                   	pop    %esi
 96c:	5f                   	pop    %edi
 96d:	5d                   	pop    %ebp
 96e:	c3                   	ret    
 96f:	90                   	nop

00000970 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 970:	55                   	push   %ebp
 971:	89 e5                	mov    %esp,%ebp
 973:	57                   	push   %edi
 974:	56                   	push   %esi
 975:	53                   	push   %ebx
 976:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 979:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 97c:	8b 3d 10 0f 00 00    	mov    0xf10,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 982:	8d 70 07             	lea    0x7(%eax),%esi
 985:	c1 ee 03             	shr    $0x3,%esi
 988:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 98b:	85 ff                	test   %edi,%edi
 98d:	0f 84 9d 00 00 00    	je     a30 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 993:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 995:	8b 4a 04             	mov    0x4(%edx),%ecx
 998:	39 f1                	cmp    %esi,%ecx
 99a:	73 6a                	jae    a06 <malloc+0x96>
 99c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9a1:	39 de                	cmp    %ebx,%esi
 9a3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9a6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9ad:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9b0:	eb 17                	jmp    9c9 <malloc+0x59>
 9b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9b8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9ba:	8b 48 04             	mov    0x4(%eax),%ecx
 9bd:	39 f1                	cmp    %esi,%ecx
 9bf:	73 4f                	jae    a10 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9c1:	8b 3d 10 0f 00 00    	mov    0xf10,%edi
 9c7:	89 c2                	mov    %eax,%edx
 9c9:	39 d7                	cmp    %edx,%edi
 9cb:	75 eb                	jne    9b8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9cd:	83 ec 0c             	sub    $0xc,%esp
 9d0:	ff 75 e4             	push   -0x1c(%ebp)
 9d3:	e8 86 fc ff ff       	call   65e <sbrk>
  if(p == (char*)-1)
 9d8:	83 c4 10             	add    $0x10,%esp
 9db:	83 f8 ff             	cmp    $0xffffffff,%eax
 9de:	74 1c                	je     9fc <malloc+0x8c>
  hp->s.size = nu;
 9e0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9e3:	83 ec 0c             	sub    $0xc,%esp
 9e6:	83 c0 08             	add    $0x8,%eax
 9e9:	50                   	push   %eax
 9ea:	e8 f1 fe ff ff       	call   8e0 <free>
  return freep;
 9ef:	8b 15 10 0f 00 00    	mov    0xf10,%edx
      if((p = morecore(nunits)) == 0)
 9f5:	83 c4 10             	add    $0x10,%esp
 9f8:	85 d2                	test   %edx,%edx
 9fa:	75 bc                	jne    9b8 <malloc+0x48>
        return 0;
  }
}
 9fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9ff:	31 c0                	xor    %eax,%eax
}
 a01:	5b                   	pop    %ebx
 a02:	5e                   	pop    %esi
 a03:	5f                   	pop    %edi
 a04:	5d                   	pop    %ebp
 a05:	c3                   	ret    
    if(p->s.size >= nunits){
 a06:	89 d0                	mov    %edx,%eax
 a08:	89 fa                	mov    %edi,%edx
 a0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a10:	39 ce                	cmp    %ecx,%esi
 a12:	74 4c                	je     a60 <malloc+0xf0>
        p->s.size -= nunits;
 a14:	29 f1                	sub    %esi,%ecx
 a16:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a19:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a1c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a1f:	89 15 10 0f 00 00    	mov    %edx,0xf10
}
 a25:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a28:	83 c0 08             	add    $0x8,%eax
}
 a2b:	5b                   	pop    %ebx
 a2c:	5e                   	pop    %esi
 a2d:	5f                   	pop    %edi
 a2e:	5d                   	pop    %ebp
 a2f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a30:	c7 05 10 0f 00 00 14 	movl   $0xf14,0xf10
 a37:	0f 00 00 
    base.s.size = 0;
 a3a:	bf 14 0f 00 00       	mov    $0xf14,%edi
    base.s.ptr = freep = prevp = &base;
 a3f:	c7 05 14 0f 00 00 14 	movl   $0xf14,0xf14
 a46:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a49:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a4b:	c7 05 18 0f 00 00 00 	movl   $0x0,0xf18
 a52:	00 00 00 
    if(p->s.size >= nunits){
 a55:	e9 42 ff ff ff       	jmp    99c <malloc+0x2c>
 a5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a60:	8b 08                	mov    (%eax),%ecx
 a62:	89 0a                	mov    %ecx,(%edx)
 a64:	eb b9                	jmp    a1f <malloc+0xaf>
