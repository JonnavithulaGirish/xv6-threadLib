
_test_19:     file format elf32-i386


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
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	83 ec 10             	sub    $0x10,%esp
   ppid = getpid();
  12:	e8 ff 06 00 00       	call   716 <getpid>

   int arg1 = 42, arg2 = 24;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 42, arg2 = 24;
  1a:	c7 45 f0 2a 00 00 00 	movl   $0x2a,-0x10(%ebp)
   ppid = getpid();
  21:	a3 2c 10 00 00       	mov    %eax,0x102c
   int thread_pid = thread_create(worker, &arg1, &arg2);
  26:	8d 45 f4             	lea    -0xc(%ebp),%eax
  29:	50                   	push   %eax
  2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2d:	50                   	push   %eax
  2e:	68 b0 01 00 00       	push   $0x1b0
   int arg1 = 42, arg2 = 24;
  33:	c7 45 f4 18 00 00 00 	movl   $0x18,-0xc(%ebp)
   int thread_pid = thread_create(worker, &arg1, &arg2);
  3a:	e8 11 05 00 00       	call   550 <thread_create>
   assert(thread_pid > 0);
  3f:	83 c4 10             	add    $0x10,%esp
  42:	85 c0                	test   %eax,%eax
  44:	7e 7b                	jle    c1 <main+0xc1>
  46:	89 c3                	mov    %eax,%ebx

   int join_pid = thread_join();
  48:	e8 73 05 00 00       	call   5c0 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d 28 10 00 00 03 	cmpl   $0x3,0x1028
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 22                	push   $0x22
  60:	68 28 0b 00 00       	push   $0xb28
  65:	68 32 0b 00 00       	push   $0xb32
  6a:	6a 01                	push   $0x1
  6c:	e8 8f 07 00 00       	call   800 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 e4 0b 00 00       	push   $0xbe4
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 21                	push   $0x21
  7d:	68 28 0b 00 00       	push   $0xb28
  82:	68 32 0b 00 00       	push   $0xb32
  87:	6a 01                	push   $0x1
  89:	e8 72 07 00 00       	call   800 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 cd 0b 00 00       	push   $0xbcd
  96:	68 49 0b 00 00       	push   $0xb49
  9b:	6a 01                	push   $0x1
  9d:	e8 5e 07 00 00       	call   800 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 5d 0b 00 00       	push   $0xb5d
  a9:	6a 01                	push   $0x1
  ab:	e8 50 07 00 00       	call   800 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 2c 10 00 00    	push   0x102c
  b7:	e8 0a 06 00 00       	call   6c6 <kill>
  bc:	e8 d5 05 00 00       	call   696 <exit>
   assert(thread_pid > 0);
  c1:	6a 1e                	push   $0x1e
  c3:	68 28 0b 00 00       	push   $0xb28
  c8:	68 32 0b 00 00       	push   $0xb32
  cd:	6a 01                	push   $0x1
  cf:	e8 2c 07 00 00       	call   800 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 ae 0b 00 00       	push   $0xbae
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 f0 0b 00 00       	push   $0xbf0
  e5:	6a 01                	push   $0x1
  e7:	e8 14 07 00 00       	call   800 <printf>
   exit();
  ec:	e8 a5 05 00 00       	call   696 <exit>
  f1:	66 90                	xchg   %ax,%ax
  f3:	66 90                	xchg   %ax,%ax
  f5:	66 90                	xchg   %ax,%ax
  f7:	66 90                	xchg   %ax,%ax
  f9:	66 90                	xchg   %ax,%ax
  fb:	66 90                	xchg   %ax,%ax
  fd:	66 90                	xchg   %ax,%ax
  ff:	90                   	nop

00000100 <nested_worker>:
}

void nested_worker(void *arg1, void *arg2){
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	83 ec 08             	sub    $0x8,%esp
   int arg1_int = *(int*)arg1;
   int arg2_int = *(int*)arg2;
 106:	8b 45 0c             	mov    0xc(%ebp),%eax
 109:	8b 10                	mov    (%eax),%edx
   assert(arg1_int == 42);
 10b:	8b 45 08             	mov    0x8(%ebp),%eax
 10e:	83 38 2a             	cmpl   $0x2a,(%eax)
 111:	75 1a                	jne    12d <nested_worker+0x2d>
   assert(arg2_int == 24);
 113:	83 fa 18             	cmp    $0x18,%edx
 116:	75 78                	jne    190 <nested_worker+0x90>
   assert(global == 2);
 118:	83 3d 28 10 00 00 02 	cmpl   $0x2,0x1028
 11f:	75 52                	jne    173 <nested_worker+0x73>
   global++;
 121:	c7 05 28 10 00 00 03 	movl   $0x3,0x1028
 128:	00 00 00 
   // no exit() in thread
}
 12b:	c9                   	leave  
 12c:	c3                   	ret    
   assert(arg1_int == 42);
 12d:	6a 2b                	push   $0x2b
 12f:	68 28 0b 00 00       	push   $0xb28
 134:	68 32 0b 00 00       	push   $0xb32
 139:	6a 01                	push   $0x1
 13b:	e8 c0 06 00 00       	call   800 <printf>
 140:	83 c4 0c             	add    $0xc,%esp
 143:	68 3a 0b 00 00       	push   $0xb3a
   assert(arg2_int == 24);
 148:	68 49 0b 00 00       	push   $0xb49
 14d:	6a 01                	push   $0x1
 14f:	e8 ac 06 00 00       	call   800 <printf>
 154:	58                   	pop    %eax
 155:	5a                   	pop    %edx
 156:	68 5d 0b 00 00       	push   $0xb5d
 15b:	6a 01                	push   $0x1
 15d:	e8 9e 06 00 00       	call   800 <printf>
 162:	59                   	pop    %ecx
 163:	ff 35 2c 10 00 00    	push   0x102c
 169:	e8 58 05 00 00       	call   6c6 <kill>
 16e:	e8 23 05 00 00       	call   696 <exit>
   assert(global == 2);
 173:	6a 2d                	push   $0x2d
 175:	68 28 0b 00 00       	push   $0xb28
 17a:	68 32 0b 00 00       	push   $0xb32
 17f:	6a 01                	push   $0x1
 181:	e8 7a 06 00 00       	call   800 <printf>
 186:	83 c4 0c             	add    $0xc,%esp
 189:	68 79 0b 00 00       	push   $0xb79
 18e:	eb b8                	jmp    148 <nested_worker+0x48>
   assert(arg2_int == 24);
 190:	6a 2c                	push   $0x2c
 192:	68 28 0b 00 00       	push   $0xb28
 197:	68 32 0b 00 00       	push   $0xb32
 19c:	6a 01                	push   $0x1
 19e:	e8 5d 06 00 00       	call   800 <printf>
 1a3:	83 c4 0c             	add    $0xc,%esp
 1a6:	68 6a 0b 00 00       	push   $0xb6a
 1ab:	eb 9b                	jmp    148 <nested_worker+0x48>
 1ad:	8d 76 00             	lea    0x0(%esi),%esi

000001b0 <worker>:

void
worker(void *arg1, void *arg2) {
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	53                   	push   %ebx
 1b4:	83 ec 14             	sub    $0x14,%esp
   int tmp1 = *(int*)arg1;
 1b7:	8b 45 08             	mov    0x8(%ebp),%eax
   int tmp2 = *(int*)arg2;
 1ba:	8b 55 0c             	mov    0xc(%ebp),%edx
   int tmp1 = *(int*)arg1;
 1bd:	8b 00                	mov    (%eax),%eax
   int tmp2 = *(int*)arg2;
 1bf:	8b 12                	mov    (%edx),%edx
   int tmp1 = *(int*)arg1;
 1c1:	89 45 f0             	mov    %eax,-0x10(%ebp)
   int tmp2 = *(int*)arg2;
 1c4:	89 55 f4             	mov    %edx,-0xc(%ebp)
   assert(tmp1 == 42);
 1c7:	83 f8 2a             	cmp    $0x2a,%eax
 1ca:	75 75                	jne    241 <worker+0x91>
   assert(tmp2 == 24);
 1cc:	83 fa 18             	cmp    $0x18,%edx
 1cf:	75 2a                	jne    1fb <worker+0x4b>
   assert(global == 1);
 1d1:	83 3d 28 10 00 00 01 	cmpl   $0x1,0x1028
 1d8:	0f 84 80 00 00 00    	je     25e <worker+0xae>
 1de:	6a 38                	push   $0x38
 1e0:	68 28 0b 00 00       	push   $0xb28
 1e5:	68 32 0b 00 00       	push   $0xb32
 1ea:	6a 01                	push   $0x1
 1ec:	e8 0f 06 00 00       	call   800 <printf>
 1f1:	83 c4 0c             	add    $0xc,%esp
 1f4:	68 9b 0b 00 00       	push   $0xb9b
 1f9:	eb 1b                	jmp    216 <worker+0x66>
   assert(tmp2 == 24);
 1fb:	6a 37                	push   $0x37
 1fd:	68 28 0b 00 00       	push   $0xb28
 202:	68 32 0b 00 00       	push   $0xb32
 207:	6a 01                	push   $0x1
 209:	e8 f2 05 00 00       	call   800 <printf>
 20e:	83 c4 0c             	add    $0xc,%esp
 211:	68 90 0b 00 00       	push   $0xb90
 216:	68 49 0b 00 00       	push   $0xb49
 21b:	6a 01                	push   $0x1
 21d:	e8 de 05 00 00       	call   800 <printf>
 222:	5a                   	pop    %edx
 223:	59                   	pop    %ecx
 224:	68 5d 0b 00 00       	push   $0xb5d
 229:	6a 01                	push   $0x1
 22b:	e8 d0 05 00 00       	call   800 <printf>
 230:	5b                   	pop    %ebx
 231:	ff 35 2c 10 00 00    	push   0x102c
 237:	e8 8a 04 00 00       	call   6c6 <kill>
 23c:	e8 55 04 00 00       	call   696 <exit>
   assert(tmp1 == 42);
 241:	6a 36                	push   $0x36
 243:	68 28 0b 00 00       	push   $0xb28
 248:	68 32 0b 00 00       	push   $0xb32
 24d:	6a 01                	push   $0x1
 24f:	e8 ac 05 00 00       	call   800 <printf>
 254:	83 c4 0c             	add    $0xc,%esp
 257:	68 85 0b 00 00       	push   $0xb85
 25c:	eb b8                	jmp    216 <worker+0x66>
   global++;

   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 25e:	50                   	push   %eax
 25f:	8d 45 f4             	lea    -0xc(%ebp),%eax
 262:	50                   	push   %eax
 263:	8d 45 f0             	lea    -0x10(%ebp),%eax
 266:	50                   	push   %eax
 267:	68 00 01 00 00       	push   $0x100
   global++;
 26c:	c7 05 28 10 00 00 02 	movl   $0x2,0x1028
 273:	00 00 00 
   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 276:	e8 d5 02 00 00       	call   550 <thread_create>
   assert(nested_thread_pid > 0);
 27b:	83 c4 10             	add    $0x10,%esp
   int nested_thread_pid = thread_create(nested_worker, &tmp1, &tmp2);
 27e:	89 c3                	mov    %eax,%ebx
   assert(nested_thread_pid > 0);
 280:	85 c0                	test   %eax,%eax
 282:	7e 4d                	jle    2d1 <worker+0x121>
   for(int j=0;j<10000;j++);

   int nested_join_pid = thread_join();
 284:	e8 37 03 00 00       	call   5c0 <thread_join>
   assert(nested_join_pid)
 289:	85 c0                	test   %eax,%eax
 28b:	74 24                	je     2b1 <worker+0x101>
   assert(nested_join_pid == nested_thread_pid);
 28d:	39 c3                	cmp    %eax,%ebx
 28f:	74 60                	je     2f1 <worker+0x141>
 291:	6a 41                	push   $0x41
 293:	68 28 0b 00 00       	push   $0xb28
 298:	68 32 0b 00 00       	push   $0xb32
 29d:	6a 01                	push   $0x1
 29f:	e8 5c 05 00 00       	call   800 <printf>
 2a4:	83 c4 0c             	add    $0xc,%esp
 2a7:	68 00 0c 00 00       	push   $0xc00
 2ac:	e9 65 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_join_pid)
 2b1:	6a 40                	push   $0x40
 2b3:	68 28 0b 00 00       	push   $0xb28
 2b8:	68 32 0b 00 00       	push   $0xb32
 2bd:	6a 01                	push   $0x1
 2bf:	e8 3c 05 00 00       	call   800 <printf>
 2c4:	83 c4 0c             	add    $0xc,%esp
 2c7:	68 bd 0b 00 00       	push   $0xbbd
 2cc:	e9 45 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_thread_pid > 0);
 2d1:	6a 3c                	push   $0x3c
 2d3:	68 28 0b 00 00       	push   $0xb28
 2d8:	68 32 0b 00 00       	push   $0xb32
 2dd:	6a 01                	push   $0x1
 2df:	e8 1c 05 00 00       	call   800 <printf>
 2e4:	83 c4 0c             	add    $0xc,%esp
 2e7:	68 a7 0b 00 00       	push   $0xba7
 2ec:	e9 25 ff ff ff       	jmp    216 <worker+0x66>
   exit();
 2f1:	e8 a0 03 00 00       	call   696 <exit>
 2f6:	66 90                	xchg   %ax,%ax
 2f8:	66 90                	xchg   %ax,%ax
 2fa:	66 90                	xchg   %ax,%ax
 2fc:	66 90                	xchg   %ax,%ax
 2fe:	66 90                	xchg   %ax,%ax

00000300 <strcpy>:

lock_t lk_create,lk_join;

char*
strcpy(char *s, const char *t)
{
 300:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 301:	31 c0                	xor    %eax,%eax
{
 303:	89 e5                	mov    %esp,%ebp
 305:	53                   	push   %ebx
 306:	8b 4d 08             	mov    0x8(%ebp),%ecx
 309:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 310:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 314:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 317:	83 c0 01             	add    $0x1,%eax
 31a:	84 d2                	test   %dl,%dl
 31c:	75 f2                	jne    310 <strcpy+0x10>
    ;
  return os;
}
 31e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 321:	89 c8                	mov    %ecx,%eax
 323:	c9                   	leave  
 324:	c3                   	ret    
 325:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000330 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	53                   	push   %ebx
 334:	8b 55 08             	mov    0x8(%ebp),%edx
 337:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 33a:	0f b6 02             	movzbl (%edx),%eax
 33d:	84 c0                	test   %al,%al
 33f:	75 17                	jne    358 <strcmp+0x28>
 341:	eb 3a                	jmp    37d <strcmp+0x4d>
 343:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 347:	90                   	nop
 348:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 34c:	83 c2 01             	add    $0x1,%edx
 34f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 352:	84 c0                	test   %al,%al
 354:	74 1a                	je     370 <strcmp+0x40>
    p++, q++;
 356:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 358:	0f b6 19             	movzbl (%ecx),%ebx
 35b:	38 c3                	cmp    %al,%bl
 35d:	74 e9                	je     348 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 35f:	29 d8                	sub    %ebx,%eax
}
 361:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 364:	c9                   	leave  
 365:	c3                   	ret    
 366:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 370:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 374:	31 c0                	xor    %eax,%eax
 376:	29 d8                	sub    %ebx,%eax
}
 378:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 37b:	c9                   	leave  
 37c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 37d:	0f b6 19             	movzbl (%ecx),%ebx
 380:	31 c0                	xor    %eax,%eax
 382:	eb db                	jmp    35f <strcmp+0x2f>
 384:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 38b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 38f:	90                   	nop

00000390 <strlen>:

uint
strlen(const char *s)
{
 390:	55                   	push   %ebp
 391:	89 e5                	mov    %esp,%ebp
 393:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 396:	80 3a 00             	cmpb   $0x0,(%edx)
 399:	74 15                	je     3b0 <strlen+0x20>
 39b:	31 c0                	xor    %eax,%eax
 39d:	8d 76 00             	lea    0x0(%esi),%esi
 3a0:	83 c0 01             	add    $0x1,%eax
 3a3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 3a7:	89 c1                	mov    %eax,%ecx
 3a9:	75 f5                	jne    3a0 <strlen+0x10>
    ;
  return n;
}
 3ab:	89 c8                	mov    %ecx,%eax
 3ad:	5d                   	pop    %ebp
 3ae:	c3                   	ret    
 3af:	90                   	nop
  for(n = 0; s[n]; n++)
 3b0:	31 c9                	xor    %ecx,%ecx
}
 3b2:	5d                   	pop    %ebp
 3b3:	89 c8                	mov    %ecx,%eax
 3b5:	c3                   	ret    
 3b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3bd:	8d 76 00             	lea    0x0(%esi),%esi

000003c0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	57                   	push   %edi
 3c4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3ca:	8b 45 0c             	mov    0xc(%ebp),%eax
 3cd:	89 d7                	mov    %edx,%edi
 3cf:	fc                   	cld    
 3d0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3d2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3d5:	89 d0                	mov    %edx,%eax
 3d7:	c9                   	leave  
 3d8:	c3                   	ret    
 3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003e0 <strchr>:

char*
strchr(const char *s, char c)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	8b 45 08             	mov    0x8(%ebp),%eax
 3e6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3ea:	0f b6 10             	movzbl (%eax),%edx
 3ed:	84 d2                	test   %dl,%dl
 3ef:	75 12                	jne    403 <strchr+0x23>
 3f1:	eb 1d                	jmp    410 <strchr+0x30>
 3f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3f7:	90                   	nop
 3f8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3fc:	83 c0 01             	add    $0x1,%eax
 3ff:	84 d2                	test   %dl,%dl
 401:	74 0d                	je     410 <strchr+0x30>
    if(*s == c)
 403:	38 d1                	cmp    %dl,%cl
 405:	75 f1                	jne    3f8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 407:	5d                   	pop    %ebp
 408:	c3                   	ret    
 409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 410:	31 c0                	xor    %eax,%eax
}
 412:	5d                   	pop    %ebp
 413:	c3                   	ret    
 414:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 41b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 41f:	90                   	nop

00000420 <gets>:

char*
gets(char *buf, int max)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	57                   	push   %edi
 424:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 425:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 428:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 429:	31 db                	xor    %ebx,%ebx
{
 42b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 42e:	eb 27                	jmp    457 <gets+0x37>
    cc = read(0, &c, 1);
 430:	83 ec 04             	sub    $0x4,%esp
 433:	6a 01                	push   $0x1
 435:	57                   	push   %edi
 436:	6a 00                	push   $0x0
 438:	e8 71 02 00 00       	call   6ae <read>
    if(cc < 1)
 43d:	83 c4 10             	add    $0x10,%esp
 440:	85 c0                	test   %eax,%eax
 442:	7e 1d                	jle    461 <gets+0x41>
      break;
    buf[i++] = c;
 444:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 448:	8b 55 08             	mov    0x8(%ebp),%edx
 44b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 44f:	3c 0a                	cmp    $0xa,%al
 451:	74 1d                	je     470 <gets+0x50>
 453:	3c 0d                	cmp    $0xd,%al
 455:	74 19                	je     470 <gets+0x50>
  for(i=0; i+1 < max; ){
 457:	89 de                	mov    %ebx,%esi
 459:	83 c3 01             	add    $0x1,%ebx
 45c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 45f:	7c cf                	jl     430 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 461:	8b 45 08             	mov    0x8(%ebp),%eax
 464:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 468:	8d 65 f4             	lea    -0xc(%ebp),%esp
 46b:	5b                   	pop    %ebx
 46c:	5e                   	pop    %esi
 46d:	5f                   	pop    %edi
 46e:	5d                   	pop    %ebp
 46f:	c3                   	ret    
  buf[i] = '\0';
 470:	8b 45 08             	mov    0x8(%ebp),%eax
 473:	89 de                	mov    %ebx,%esi
 475:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 479:	8d 65 f4             	lea    -0xc(%ebp),%esp
 47c:	5b                   	pop    %ebx
 47d:	5e                   	pop    %esi
 47e:	5f                   	pop    %edi
 47f:	5d                   	pop    %ebp
 480:	c3                   	ret    
 481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 488:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <stat>:

int
stat(const char *n, struct stat *st)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	56                   	push   %esi
 494:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 495:	83 ec 08             	sub    $0x8,%esp
 498:	6a 00                	push   $0x0
 49a:	ff 75 08             	push   0x8(%ebp)
 49d:	e8 34 02 00 00       	call   6d6 <open>
  if(fd < 0)
 4a2:	83 c4 10             	add    $0x10,%esp
 4a5:	85 c0                	test   %eax,%eax
 4a7:	78 27                	js     4d0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4a9:	83 ec 08             	sub    $0x8,%esp
 4ac:	ff 75 0c             	push   0xc(%ebp)
 4af:	89 c3                	mov    %eax,%ebx
 4b1:	50                   	push   %eax
 4b2:	e8 37 02 00 00       	call   6ee <fstat>
  close(fd);
 4b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4ba:	89 c6                	mov    %eax,%esi
  close(fd);
 4bc:	e8 fd 01 00 00       	call   6be <close>
  return r;
 4c1:	83 c4 10             	add    $0x10,%esp
}
 4c4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4c7:	89 f0                	mov    %esi,%eax
 4c9:	5b                   	pop    %ebx
 4ca:	5e                   	pop    %esi
 4cb:	5d                   	pop    %ebp
 4cc:	c3                   	ret    
 4cd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4d0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4d5:	eb ed                	jmp    4c4 <stat+0x34>
 4d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4de:	66 90                	xchg   %ax,%ax

000004e0 <atoi>:

int
atoi(const char *s)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	53                   	push   %ebx
 4e4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4e7:	0f be 02             	movsbl (%edx),%eax
 4ea:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4ed:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4f0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4f5:	77 1e                	ja     515 <atoi+0x35>
 4f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fe:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 500:	83 c2 01             	add    $0x1,%edx
 503:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 506:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 50a:	0f be 02             	movsbl (%edx),%eax
 50d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 510:	80 fb 09             	cmp    $0x9,%bl
 513:	76 eb                	jbe    500 <atoi+0x20>
  return n;
}
 515:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 518:	89 c8                	mov    %ecx,%eax
 51a:	c9                   	leave  
 51b:	c3                   	ret    
 51c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000520 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	57                   	push   %edi
 524:	8b 45 10             	mov    0x10(%ebp),%eax
 527:	8b 55 08             	mov    0x8(%ebp),%edx
 52a:	56                   	push   %esi
 52b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 52e:	85 c0                	test   %eax,%eax
 530:	7e 13                	jle    545 <memmove+0x25>
 532:	01 d0                	add    %edx,%eax
  dst = vdst;
 534:	89 d7                	mov    %edx,%edi
 536:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 540:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 541:	39 f8                	cmp    %edi,%eax
 543:	75 fb                	jne    540 <memmove+0x20>
  return vdst;
}
 545:	5e                   	pop    %esi
 546:	89 d0                	mov    %edx,%eax
 548:	5f                   	pop    %edi
 549:	5d                   	pop    %ebp
 54a:	c3                   	ret    
 54b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 54f:	90                   	nop

00000550 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 550:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 551:	ba 01 00 00 00       	mov    $0x1,%edx
 556:	89 e5                	mov    %esp,%ebp
 558:	83 ec 08             	sub    $0x8,%esp
 55b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop
 560:	89 d0                	mov    %edx,%eax
 562:	f0 87 05 34 10 00 00 	lock xchg %eax,0x1034
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 569:	85 c0                	test   %eax,%eax
 56b:	75 f3                	jne    560 <thread_create+0x10>
    __sync_synchronize();
 56d:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 572:	83 ec 0c             	sub    $0xc,%esp
 575:	68 00 20 00 00       	push   $0x2000
 57a:	e8 b1 04 00 00       	call   a30 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 57f:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 584:	c7 05 34 10 00 00 00 	movl   $0x0,0x1034
 58b:	00 00 00 
	if((uint)stack % PGSIZE)
 58e:	89 c2                	mov    %eax,%edx
 590:	83 c4 10             	add    $0x10,%esp
 593:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 599:	74 07                	je     5a2 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 59b:	29 d0                	sub    %edx,%eax
 59d:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 5a2:	50                   	push   %eax
 5a3:	ff 75 10             	push   0x10(%ebp)
 5a6:	ff 75 0c             	push   0xc(%ebp)
 5a9:	ff 75 08             	push   0x8(%ebp)
 5ac:	e8 85 01 00 00       	call   736 <clone>
}
 5b1:	c9                   	leave  
 5b2:	c3                   	ret    
 5b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005c0 <thread_join>:
int thread_join(){
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	53                   	push   %ebx
	int result= join(&stack);
 5c4:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 5c7:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 5ca:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 5d1:	50                   	push   %eax
 5d2:	e8 67 01 00 00       	call   73e <join>
    while(xchg(&(lock->mutex), 1) != 0);
 5d7:	83 c4 10             	add    $0x10,%esp
 5da:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 5df:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 5e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5e8:	89 d0                	mov    %edx,%eax
 5ea:	f0 87 05 30 10 00 00 	lock xchg %eax,0x1030
 5f1:	85 c0                	test   %eax,%eax
 5f3:	75 f3                	jne    5e8 <thread_join+0x28>
    __sync_synchronize();
 5f5:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 5fa:	83 ec 0c             	sub    $0xc,%esp
 5fd:	ff 75 f4             	push   -0xc(%ebp)
 600:	e8 9b 03 00 00       	call   9a0 <free>
   __sync_synchronize();
 605:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 60a:	c7 05 30 10 00 00 00 	movl   $0x0,0x1030
 611:	00 00 00 
}
 614:	89 d8                	mov    %ebx,%eax
 616:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 619:	c9                   	leave  
 61a:	c3                   	ret    
 61b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 61f:	90                   	nop

00000620 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 620:	c7 05 34 10 00 00 00 	movl   $0x0,0x1034
 627:	00 00 00 
 62a:	c7 05 30 10 00 00 00 	movl   $0x0,0x1030
 631:	00 00 00 
}
 634:	c3                   	ret    
 635:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000640 <lock_acquire>:
void lock_acquire(lock_t *lock){
 640:	55                   	push   %ebp
 641:	b9 01 00 00 00       	mov    $0x1,%ecx
 646:	89 e5                	mov    %esp,%ebp
 648:	8b 55 08             	mov    0x8(%ebp),%edx
 64b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 64f:	90                   	nop
 650:	89 c8                	mov    %ecx,%eax
 652:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 655:	85 c0                	test   %eax,%eax
 657:	75 f7                	jne    650 <lock_acquire+0x10>
    __sync_synchronize();
 659:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 65e:	5d                   	pop    %ebp
 65f:	c3                   	ret    

00000660 <lock_release>:
void lock_release(lock_t *lock){
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 666:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 66b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 671:	5d                   	pop    %ebp
 672:	c3                   	ret    
 673:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000680 <lock_init>:
void lock_init(lock_t *lock) {
 680:	55                   	push   %ebp
 681:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 683:	8b 45 08             	mov    0x8(%ebp),%eax
 686:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 68c:	5d                   	pop    %ebp
 68d:	c3                   	ret    

0000068e <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 68e:	b8 01 00 00 00       	mov    $0x1,%eax
 693:	cd 40                	int    $0x40
 695:	c3                   	ret    

00000696 <exit>:
SYSCALL(exit)
 696:	b8 02 00 00 00       	mov    $0x2,%eax
 69b:	cd 40                	int    $0x40
 69d:	c3                   	ret    

0000069e <wait>:
SYSCALL(wait)
 69e:	b8 03 00 00 00       	mov    $0x3,%eax
 6a3:	cd 40                	int    $0x40
 6a5:	c3                   	ret    

000006a6 <pipe>:
SYSCALL(pipe)
 6a6:	b8 04 00 00 00       	mov    $0x4,%eax
 6ab:	cd 40                	int    $0x40
 6ad:	c3                   	ret    

000006ae <read>:
SYSCALL(read)
 6ae:	b8 05 00 00 00       	mov    $0x5,%eax
 6b3:	cd 40                	int    $0x40
 6b5:	c3                   	ret    

000006b6 <write>:
SYSCALL(write)
 6b6:	b8 10 00 00 00       	mov    $0x10,%eax
 6bb:	cd 40                	int    $0x40
 6bd:	c3                   	ret    

000006be <close>:
SYSCALL(close)
 6be:	b8 15 00 00 00       	mov    $0x15,%eax
 6c3:	cd 40                	int    $0x40
 6c5:	c3                   	ret    

000006c6 <kill>:
SYSCALL(kill)
 6c6:	b8 06 00 00 00       	mov    $0x6,%eax
 6cb:	cd 40                	int    $0x40
 6cd:	c3                   	ret    

000006ce <exec>:
SYSCALL(exec)
 6ce:	b8 07 00 00 00       	mov    $0x7,%eax
 6d3:	cd 40                	int    $0x40
 6d5:	c3                   	ret    

000006d6 <open>:
SYSCALL(open)
 6d6:	b8 0f 00 00 00       	mov    $0xf,%eax
 6db:	cd 40                	int    $0x40
 6dd:	c3                   	ret    

000006de <mknod>:
SYSCALL(mknod)
 6de:	b8 11 00 00 00       	mov    $0x11,%eax
 6e3:	cd 40                	int    $0x40
 6e5:	c3                   	ret    

000006e6 <unlink>:
SYSCALL(unlink)
 6e6:	b8 12 00 00 00       	mov    $0x12,%eax
 6eb:	cd 40                	int    $0x40
 6ed:	c3                   	ret    

000006ee <fstat>:
SYSCALL(fstat)
 6ee:	b8 08 00 00 00       	mov    $0x8,%eax
 6f3:	cd 40                	int    $0x40
 6f5:	c3                   	ret    

000006f6 <link>:
SYSCALL(link)
 6f6:	b8 13 00 00 00       	mov    $0x13,%eax
 6fb:	cd 40                	int    $0x40
 6fd:	c3                   	ret    

000006fe <mkdir>:
SYSCALL(mkdir)
 6fe:	b8 14 00 00 00       	mov    $0x14,%eax
 703:	cd 40                	int    $0x40
 705:	c3                   	ret    

00000706 <chdir>:
SYSCALL(chdir)
 706:	b8 09 00 00 00       	mov    $0x9,%eax
 70b:	cd 40                	int    $0x40
 70d:	c3                   	ret    

0000070e <dup>:
SYSCALL(dup)
 70e:	b8 0a 00 00 00       	mov    $0xa,%eax
 713:	cd 40                	int    $0x40
 715:	c3                   	ret    

00000716 <getpid>:
SYSCALL(getpid)
 716:	b8 0b 00 00 00       	mov    $0xb,%eax
 71b:	cd 40                	int    $0x40
 71d:	c3                   	ret    

0000071e <sbrk>:
SYSCALL(sbrk)
 71e:	b8 0c 00 00 00       	mov    $0xc,%eax
 723:	cd 40                	int    $0x40
 725:	c3                   	ret    

00000726 <sleep>:
SYSCALL(sleep)
 726:	b8 0d 00 00 00       	mov    $0xd,%eax
 72b:	cd 40                	int    $0x40
 72d:	c3                   	ret    

0000072e <uptime>:
SYSCALL(uptime)
 72e:	b8 0e 00 00 00       	mov    $0xe,%eax
 733:	cd 40                	int    $0x40
 735:	c3                   	ret    

00000736 <clone>:
SYSCALL(clone)
 736:	b8 16 00 00 00       	mov    $0x16,%eax
 73b:	cd 40                	int    $0x40
 73d:	c3                   	ret    

0000073e <join>:
SYSCALL(join)
 73e:	b8 17 00 00 00       	mov    $0x17,%eax
 743:	cd 40                	int    $0x40
 745:	c3                   	ret    
 746:	66 90                	xchg   %ax,%ax
 748:	66 90                	xchg   %ax,%ax
 74a:	66 90                	xchg   %ax,%ax
 74c:	66 90                	xchg   %ax,%ax
 74e:	66 90                	xchg   %ax,%ax

00000750 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 750:	55                   	push   %ebp
 751:	89 e5                	mov    %esp,%ebp
 753:	57                   	push   %edi
 754:	56                   	push   %esi
 755:	53                   	push   %ebx
 756:	83 ec 3c             	sub    $0x3c,%esp
 759:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 75c:	89 d1                	mov    %edx,%ecx
{
 75e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 761:	85 d2                	test   %edx,%edx
 763:	0f 89 7f 00 00 00    	jns    7e8 <printint+0x98>
 769:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 76d:	74 79                	je     7e8 <printint+0x98>
    neg = 1;
 76f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 776:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 778:	31 db                	xor    %ebx,%ebx
 77a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 77d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 780:	89 c8                	mov    %ecx,%eax
 782:	31 d2                	xor    %edx,%edx
 784:	89 cf                	mov    %ecx,%edi
 786:	f7 75 c4             	divl   -0x3c(%ebp)
 789:	0f b6 92 84 0c 00 00 	movzbl 0xc84(%edx),%edx
 790:	89 45 c0             	mov    %eax,-0x40(%ebp)
 793:	89 d8                	mov    %ebx,%eax
 795:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 798:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 79b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 79e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7a1:	76 dd                	jbe    780 <printint+0x30>
  if(neg)
 7a3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7a6:	85 c9                	test   %ecx,%ecx
 7a8:	74 0c                	je     7b6 <printint+0x66>
    buf[i++] = '-';
 7aa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7af:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7b1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7b6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7b9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7bd:	eb 07                	jmp    7c6 <printint+0x76>
 7bf:	90                   	nop
    putc(fd, buf[i]);
 7c0:	0f b6 13             	movzbl (%ebx),%edx
 7c3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7c6:	83 ec 04             	sub    $0x4,%esp
 7c9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7cc:	6a 01                	push   $0x1
 7ce:	56                   	push   %esi
 7cf:	57                   	push   %edi
 7d0:	e8 e1 fe ff ff       	call   6b6 <write>
  while(--i >= 0)
 7d5:	83 c4 10             	add    $0x10,%esp
 7d8:	39 de                	cmp    %ebx,%esi
 7da:	75 e4                	jne    7c0 <printint+0x70>
}
 7dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7df:	5b                   	pop    %ebx
 7e0:	5e                   	pop    %esi
 7e1:	5f                   	pop    %edi
 7e2:	5d                   	pop    %ebp
 7e3:	c3                   	ret    
 7e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 7e8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 7ef:	eb 87                	jmp    778 <printint+0x28>
 7f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ff:	90                   	nop

00000800 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 800:	55                   	push   %ebp
 801:	89 e5                	mov    %esp,%ebp
 803:	57                   	push   %edi
 804:	56                   	push   %esi
 805:	53                   	push   %ebx
 806:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 809:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 80c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 80f:	0f b6 13             	movzbl (%ebx),%edx
 812:	84 d2                	test   %dl,%dl
 814:	74 6a                	je     880 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 816:	8d 45 10             	lea    0x10(%ebp),%eax
 819:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 81c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 81f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 821:	89 45 d0             	mov    %eax,-0x30(%ebp)
 824:	eb 36                	jmp    85c <printf+0x5c>
 826:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 82d:	8d 76 00             	lea    0x0(%esi),%esi
 830:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 833:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 838:	83 f8 25             	cmp    $0x25,%eax
 83b:	74 15                	je     852 <printf+0x52>
  write(fd, &c, 1);
 83d:	83 ec 04             	sub    $0x4,%esp
 840:	88 55 e7             	mov    %dl,-0x19(%ebp)
 843:	6a 01                	push   $0x1
 845:	57                   	push   %edi
 846:	56                   	push   %esi
 847:	e8 6a fe ff ff       	call   6b6 <write>
 84c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 84f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 852:	0f b6 13             	movzbl (%ebx),%edx
 855:	83 c3 01             	add    $0x1,%ebx
 858:	84 d2                	test   %dl,%dl
 85a:	74 24                	je     880 <printf+0x80>
    c = fmt[i] & 0xff;
 85c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 85f:	85 c9                	test   %ecx,%ecx
 861:	74 cd                	je     830 <printf+0x30>
      }
    } else if(state == '%'){
 863:	83 f9 25             	cmp    $0x25,%ecx
 866:	75 ea                	jne    852 <printf+0x52>
      if(c == 'd'){
 868:	83 f8 25             	cmp    $0x25,%eax
 86b:	0f 84 07 01 00 00    	je     978 <printf+0x178>
 871:	83 e8 63             	sub    $0x63,%eax
 874:	83 f8 15             	cmp    $0x15,%eax
 877:	77 17                	ja     890 <printf+0x90>
 879:	ff 24 85 2c 0c 00 00 	jmp    *0xc2c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 880:	8d 65 f4             	lea    -0xc(%ebp),%esp
 883:	5b                   	pop    %ebx
 884:	5e                   	pop    %esi
 885:	5f                   	pop    %edi
 886:	5d                   	pop    %ebp
 887:	c3                   	ret    
 888:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 88f:	90                   	nop
  write(fd, &c, 1);
 890:	83 ec 04             	sub    $0x4,%esp
 893:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 896:	6a 01                	push   $0x1
 898:	57                   	push   %edi
 899:	56                   	push   %esi
 89a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 89e:	e8 13 fe ff ff       	call   6b6 <write>
        putc(fd, c);
 8a3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8a7:	83 c4 0c             	add    $0xc,%esp
 8aa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8ad:	6a 01                	push   $0x1
 8af:	57                   	push   %edi
 8b0:	56                   	push   %esi
 8b1:	e8 00 fe ff ff       	call   6b6 <write>
        putc(fd, c);
 8b6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8b9:	31 c9                	xor    %ecx,%ecx
 8bb:	eb 95                	jmp    852 <printf+0x52>
 8bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8c0:	83 ec 0c             	sub    $0xc,%esp
 8c3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8c8:	6a 00                	push   $0x0
 8ca:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8cd:	8b 10                	mov    (%eax),%edx
 8cf:	89 f0                	mov    %esi,%eax
 8d1:	e8 7a fe ff ff       	call   750 <printint>
        ap++;
 8d6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8da:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8dd:	31 c9                	xor    %ecx,%ecx
 8df:	e9 6e ff ff ff       	jmp    852 <printf+0x52>
 8e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 8e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8eb:	8b 10                	mov    (%eax),%edx
        ap++;
 8ed:	83 c0 04             	add    $0x4,%eax
 8f0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 8f3:	85 d2                	test   %edx,%edx
 8f5:	0f 84 8d 00 00 00    	je     988 <printf+0x188>
        while(*s != 0){
 8fb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 8fe:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 900:	84 c0                	test   %al,%al
 902:	0f 84 4a ff ff ff    	je     852 <printf+0x52>
 908:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 90b:	89 d3                	mov    %edx,%ebx
 90d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 910:	83 ec 04             	sub    $0x4,%esp
          s++;
 913:	83 c3 01             	add    $0x1,%ebx
 916:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 919:	6a 01                	push   $0x1
 91b:	57                   	push   %edi
 91c:	56                   	push   %esi
 91d:	e8 94 fd ff ff       	call   6b6 <write>
        while(*s != 0){
 922:	0f b6 03             	movzbl (%ebx),%eax
 925:	83 c4 10             	add    $0x10,%esp
 928:	84 c0                	test   %al,%al
 92a:	75 e4                	jne    910 <printf+0x110>
      state = 0;
 92c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 92f:	31 c9                	xor    %ecx,%ecx
 931:	e9 1c ff ff ff       	jmp    852 <printf+0x52>
 936:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 93d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 940:	83 ec 0c             	sub    $0xc,%esp
 943:	b9 0a 00 00 00       	mov    $0xa,%ecx
 948:	6a 01                	push   $0x1
 94a:	e9 7b ff ff ff       	jmp    8ca <printf+0xca>
 94f:	90                   	nop
        putc(fd, *ap);
 950:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 953:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 956:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 958:	6a 01                	push   $0x1
 95a:	57                   	push   %edi
 95b:	56                   	push   %esi
        putc(fd, *ap);
 95c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 95f:	e8 52 fd ff ff       	call   6b6 <write>
        ap++;
 964:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 968:	83 c4 10             	add    $0x10,%esp
      state = 0;
 96b:	31 c9                	xor    %ecx,%ecx
 96d:	e9 e0 fe ff ff       	jmp    852 <printf+0x52>
 972:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 978:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 97b:	83 ec 04             	sub    $0x4,%esp
 97e:	e9 2a ff ff ff       	jmp    8ad <printf+0xad>
 983:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 987:	90                   	nop
          s = "(null)";
 988:	ba 25 0c 00 00       	mov    $0xc25,%edx
        while(*s != 0){
 98d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 990:	b8 28 00 00 00       	mov    $0x28,%eax
 995:	89 d3                	mov    %edx,%ebx
 997:	e9 74 ff ff ff       	jmp    910 <printf+0x110>
 99c:	66 90                	xchg   %ax,%ax
 99e:	66 90                	xchg   %ax,%ax

000009a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9a1:	a1 38 10 00 00       	mov    0x1038,%eax
{
 9a6:	89 e5                	mov    %esp,%ebp
 9a8:	57                   	push   %edi
 9a9:	56                   	push   %esi
 9aa:	53                   	push   %ebx
 9ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9ae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9b8:	89 c2                	mov    %eax,%edx
 9ba:	8b 00                	mov    (%eax),%eax
 9bc:	39 ca                	cmp    %ecx,%edx
 9be:	73 30                	jae    9f0 <free+0x50>
 9c0:	39 c1                	cmp    %eax,%ecx
 9c2:	72 04                	jb     9c8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9c4:	39 c2                	cmp    %eax,%edx
 9c6:	72 f0                	jb     9b8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9ce:	39 f8                	cmp    %edi,%eax
 9d0:	74 30                	je     a02 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 9d2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 9d5:	8b 42 04             	mov    0x4(%edx),%eax
 9d8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 9db:	39 f1                	cmp    %esi,%ecx
 9dd:	74 3a                	je     a19 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 9df:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 9e1:	5b                   	pop    %ebx
  freep = p;
 9e2:	89 15 38 10 00 00    	mov    %edx,0x1038
}
 9e8:	5e                   	pop    %esi
 9e9:	5f                   	pop    %edi
 9ea:	5d                   	pop    %ebp
 9eb:	c3                   	ret    
 9ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9f0:	39 c2                	cmp    %eax,%edx
 9f2:	72 c4                	jb     9b8 <free+0x18>
 9f4:	39 c1                	cmp    %eax,%ecx
 9f6:	73 c0                	jae    9b8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 9f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9fe:	39 f8                	cmp    %edi,%eax
 a00:	75 d0                	jne    9d2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a02:	03 70 04             	add    0x4(%eax),%esi
 a05:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a08:	8b 02                	mov    (%edx),%eax
 a0a:	8b 00                	mov    (%eax),%eax
 a0c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a0f:	8b 42 04             	mov    0x4(%edx),%eax
 a12:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a15:	39 f1                	cmp    %esi,%ecx
 a17:	75 c6                	jne    9df <free+0x3f>
    p->s.size += bp->s.size;
 a19:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a1c:	89 15 38 10 00 00    	mov    %edx,0x1038
    p->s.size += bp->s.size;
 a22:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a25:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a28:	89 0a                	mov    %ecx,(%edx)
}
 a2a:	5b                   	pop    %ebx
 a2b:	5e                   	pop    %esi
 a2c:	5f                   	pop    %edi
 a2d:	5d                   	pop    %ebp
 a2e:	c3                   	ret    
 a2f:	90                   	nop

00000a30 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a30:	55                   	push   %ebp
 a31:	89 e5                	mov    %esp,%ebp
 a33:	57                   	push   %edi
 a34:	56                   	push   %esi
 a35:	53                   	push   %ebx
 a36:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a39:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a3c:	8b 3d 38 10 00 00    	mov    0x1038,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a42:	8d 70 07             	lea    0x7(%eax),%esi
 a45:	c1 ee 03             	shr    $0x3,%esi
 a48:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a4b:	85 ff                	test   %edi,%edi
 a4d:	0f 84 9d 00 00 00    	je     af0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a53:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a55:	8b 4a 04             	mov    0x4(%edx),%ecx
 a58:	39 f1                	cmp    %esi,%ecx
 a5a:	73 6a                	jae    ac6 <malloc+0x96>
 a5c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a61:	39 de                	cmp    %ebx,%esi
 a63:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a66:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a6d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 a70:	eb 17                	jmp    a89 <malloc+0x59>
 a72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a78:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 a7a:	8b 48 04             	mov    0x4(%eax),%ecx
 a7d:	39 f1                	cmp    %esi,%ecx
 a7f:	73 4f                	jae    ad0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a81:	8b 3d 38 10 00 00    	mov    0x1038,%edi
 a87:	89 c2                	mov    %eax,%edx
 a89:	39 d7                	cmp    %edx,%edi
 a8b:	75 eb                	jne    a78 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a8d:	83 ec 0c             	sub    $0xc,%esp
 a90:	ff 75 e4             	push   -0x1c(%ebp)
 a93:	e8 86 fc ff ff       	call   71e <sbrk>
  if(p == (char*)-1)
 a98:	83 c4 10             	add    $0x10,%esp
 a9b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a9e:	74 1c                	je     abc <malloc+0x8c>
  hp->s.size = nu;
 aa0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 aa3:	83 ec 0c             	sub    $0xc,%esp
 aa6:	83 c0 08             	add    $0x8,%eax
 aa9:	50                   	push   %eax
 aaa:	e8 f1 fe ff ff       	call   9a0 <free>
  return freep;
 aaf:	8b 15 38 10 00 00    	mov    0x1038,%edx
      if((p = morecore(nunits)) == 0)
 ab5:	83 c4 10             	add    $0x10,%esp
 ab8:	85 d2                	test   %edx,%edx
 aba:	75 bc                	jne    a78 <malloc+0x48>
        return 0;
  }
}
 abc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 abf:	31 c0                	xor    %eax,%eax
}
 ac1:	5b                   	pop    %ebx
 ac2:	5e                   	pop    %esi
 ac3:	5f                   	pop    %edi
 ac4:	5d                   	pop    %ebp
 ac5:	c3                   	ret    
    if(p->s.size >= nunits){
 ac6:	89 d0                	mov    %edx,%eax
 ac8:	89 fa                	mov    %edi,%edx
 aca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 ad0:	39 ce                	cmp    %ecx,%esi
 ad2:	74 4c                	je     b20 <malloc+0xf0>
        p->s.size -= nunits;
 ad4:	29 f1                	sub    %esi,%ecx
 ad6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 ad9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 adc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 adf:	89 15 38 10 00 00    	mov    %edx,0x1038
}
 ae5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 ae8:	83 c0 08             	add    $0x8,%eax
}
 aeb:	5b                   	pop    %ebx
 aec:	5e                   	pop    %esi
 aed:	5f                   	pop    %edi
 aee:	5d                   	pop    %ebp
 aef:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 af0:	c7 05 38 10 00 00 3c 	movl   $0x103c,0x1038
 af7:	10 00 00 
    base.s.size = 0;
 afa:	bf 3c 10 00 00       	mov    $0x103c,%edi
    base.s.ptr = freep = prevp = &base;
 aff:	c7 05 3c 10 00 00 3c 	movl   $0x103c,0x103c
 b06:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b09:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b0b:	c7 05 40 10 00 00 00 	movl   $0x0,0x1040
 b12:	00 00 00 
    if(p->s.size >= nunits){
 b15:	e9 42 ff ff ff       	jmp    a5c <malloc+0x2c>
 b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b20:	8b 08                	mov    (%eax),%ecx
 b22:	89 0a                	mov    %ecx,(%edx)
 b24:	eb b9                	jmp    adf <malloc+0xaf>
