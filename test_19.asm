
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
  12:	e8 4d 07 00 00       	call   764 <getpid>

   int arg1 = 42, arg2 = 24;
   int thread_pid = thread_create(worker, &arg1, &arg2);
  17:	83 ec 04             	sub    $0x4,%esp
   int arg1 = 42, arg2 = 24;
  1a:	c7 45 f0 2a 00 00 00 	movl   $0x2a,-0x10(%ebp)
   ppid = getpid();
  21:	a3 8c 10 00 00       	mov    %eax,0x108c
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
  48:	e8 93 05 00 00       	call   5e0 <thread_join>
   assert(join_pid == thread_pid);
  4d:	39 c3                	cmp    %eax,%ebx
  4f:	75 2a                	jne    7b <main+0x7b>
   assert(global == 3);
  51:	83 3d 88 10 00 00 03 	cmpl   $0x3,0x1088
  58:	0f 84 80 00 00 00    	je     de <main+0xde>
  5e:	6a 22                	push   $0x22
  60:	68 78 0b 00 00       	push   $0xb78
  65:	68 82 0b 00 00       	push   $0xb82
  6a:	6a 01                	push   $0x1
  6c:	e8 df 07 00 00       	call   850 <printf>
  71:	83 c4 0c             	add    $0xc,%esp
  74:	68 34 0c 00 00       	push   $0xc34
  79:	eb 1b                	jmp    96 <main+0x96>
   assert(join_pid == thread_pid);
  7b:	6a 21                	push   $0x21
  7d:	68 78 0b 00 00       	push   $0xb78
  82:	68 82 0b 00 00       	push   $0xb82
  87:	6a 01                	push   $0x1
  89:	e8 c2 07 00 00       	call   850 <printf>
  8e:	83 c4 0c             	add    $0xc,%esp
  91:	68 1d 0c 00 00       	push   $0xc1d
  96:	68 99 0b 00 00       	push   $0xb99
  9b:	6a 01                	push   $0x1
  9d:	e8 ae 07 00 00       	call   850 <printf>
  a2:	5a                   	pop    %edx
  a3:	59                   	pop    %ecx
  a4:	68 ad 0b 00 00       	push   $0xbad
  a9:	6a 01                	push   $0x1
  ab:	e8 a0 07 00 00       	call   850 <printf>
  b0:	5b                   	pop    %ebx
  b1:	ff 35 8c 10 00 00    	push   0x108c
  b7:	e8 58 06 00 00       	call   714 <kill>
  bc:	e8 23 06 00 00       	call   6e4 <exit>
   assert(thread_pid > 0);
  c1:	6a 1e                	push   $0x1e
  c3:	68 78 0b 00 00       	push   $0xb78
  c8:	68 82 0b 00 00       	push   $0xb82
  cd:	6a 01                	push   $0x1
  cf:	e8 7c 07 00 00       	call   850 <printf>
  d4:	83 c4 0c             	add    $0xc,%esp
  d7:	68 fe 0b 00 00       	push   $0xbfe
  dc:	eb b8                	jmp    96 <main+0x96>

   printf(1, "TEST PASSED\n");
  de:	50                   	push   %eax
  df:	50                   	push   %eax
  e0:	68 40 0c 00 00       	push   $0xc40
  e5:	6a 01                	push   $0x1
  e7:	e8 64 07 00 00       	call   850 <printf>
   exit();
  ec:	e8 f3 05 00 00       	call   6e4 <exit>
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
 118:	83 3d 88 10 00 00 02 	cmpl   $0x2,0x1088
 11f:	75 52                	jne    173 <nested_worker+0x73>
   global++;
 121:	c7 05 88 10 00 00 03 	movl   $0x3,0x1088
 128:	00 00 00 
   // no exit() in thread
}
 12b:	c9                   	leave  
 12c:	c3                   	ret    
   assert(arg1_int == 42);
 12d:	6a 2b                	push   $0x2b
 12f:	68 78 0b 00 00       	push   $0xb78
 134:	68 82 0b 00 00       	push   $0xb82
 139:	6a 01                	push   $0x1
 13b:	e8 10 07 00 00       	call   850 <printf>
 140:	83 c4 0c             	add    $0xc,%esp
 143:	68 8a 0b 00 00       	push   $0xb8a
   assert(arg2_int == 24);
 148:	68 99 0b 00 00       	push   $0xb99
 14d:	6a 01                	push   $0x1
 14f:	e8 fc 06 00 00       	call   850 <printf>
 154:	58                   	pop    %eax
 155:	5a                   	pop    %edx
 156:	68 ad 0b 00 00       	push   $0xbad
 15b:	6a 01                	push   $0x1
 15d:	e8 ee 06 00 00       	call   850 <printf>
 162:	59                   	pop    %ecx
 163:	ff 35 8c 10 00 00    	push   0x108c
 169:	e8 a6 05 00 00       	call   714 <kill>
 16e:	e8 71 05 00 00       	call   6e4 <exit>
   assert(global == 2);
 173:	6a 2d                	push   $0x2d
 175:	68 78 0b 00 00       	push   $0xb78
 17a:	68 82 0b 00 00       	push   $0xb82
 17f:	6a 01                	push   $0x1
 181:	e8 ca 06 00 00       	call   850 <printf>
 186:	83 c4 0c             	add    $0xc,%esp
 189:	68 c9 0b 00 00       	push   $0xbc9
 18e:	eb b8                	jmp    148 <nested_worker+0x48>
   assert(arg2_int == 24);
 190:	6a 2c                	push   $0x2c
 192:	68 78 0b 00 00       	push   $0xb78
 197:	68 82 0b 00 00       	push   $0xb82
 19c:	6a 01                	push   $0x1
 19e:	e8 ad 06 00 00       	call   850 <printf>
 1a3:	83 c4 0c             	add    $0xc,%esp
 1a6:	68 ba 0b 00 00       	push   $0xbba
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
 1d1:	83 3d 88 10 00 00 01 	cmpl   $0x1,0x1088
 1d8:	0f 84 80 00 00 00    	je     25e <worker+0xae>
 1de:	6a 38                	push   $0x38
 1e0:	68 78 0b 00 00       	push   $0xb78
 1e5:	68 82 0b 00 00       	push   $0xb82
 1ea:	6a 01                	push   $0x1
 1ec:	e8 5f 06 00 00       	call   850 <printf>
 1f1:	83 c4 0c             	add    $0xc,%esp
 1f4:	68 eb 0b 00 00       	push   $0xbeb
 1f9:	eb 1b                	jmp    216 <worker+0x66>
   assert(tmp2 == 24);
 1fb:	6a 37                	push   $0x37
 1fd:	68 78 0b 00 00       	push   $0xb78
 202:	68 82 0b 00 00       	push   $0xb82
 207:	6a 01                	push   $0x1
 209:	e8 42 06 00 00       	call   850 <printf>
 20e:	83 c4 0c             	add    $0xc,%esp
 211:	68 e0 0b 00 00       	push   $0xbe0
 216:	68 99 0b 00 00       	push   $0xb99
 21b:	6a 01                	push   $0x1
 21d:	e8 2e 06 00 00       	call   850 <printf>
 222:	5a                   	pop    %edx
 223:	59                   	pop    %ecx
 224:	68 ad 0b 00 00       	push   $0xbad
 229:	6a 01                	push   $0x1
 22b:	e8 20 06 00 00       	call   850 <printf>
 230:	5b                   	pop    %ebx
 231:	ff 35 8c 10 00 00    	push   0x108c
 237:	e8 d8 04 00 00       	call   714 <kill>
 23c:	e8 a3 04 00 00       	call   6e4 <exit>
   assert(tmp1 == 42);
 241:	6a 36                	push   $0x36
 243:	68 78 0b 00 00       	push   $0xb78
 248:	68 82 0b 00 00       	push   $0xb82
 24d:	6a 01                	push   $0x1
 24f:	e8 fc 05 00 00       	call   850 <printf>
 254:	83 c4 0c             	add    $0xc,%esp
 257:	68 d5 0b 00 00       	push   $0xbd5
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
 26c:	c7 05 88 10 00 00 02 	movl   $0x2,0x1088
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
 284:	e8 57 03 00 00       	call   5e0 <thread_join>
   assert(nested_join_pid)
 289:	85 c0                	test   %eax,%eax
 28b:	74 24                	je     2b1 <worker+0x101>
   assert(nested_join_pid == nested_thread_pid);
 28d:	39 c3                	cmp    %eax,%ebx
 28f:	74 60                	je     2f1 <worker+0x141>
 291:	6a 41                	push   $0x41
 293:	68 78 0b 00 00       	push   $0xb78
 298:	68 82 0b 00 00       	push   $0xb82
 29d:	6a 01                	push   $0x1
 29f:	e8 ac 05 00 00       	call   850 <printf>
 2a4:	83 c4 0c             	add    $0xc,%esp
 2a7:	68 50 0c 00 00       	push   $0xc50
 2ac:	e9 65 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_join_pid)
 2b1:	6a 40                	push   $0x40
 2b3:	68 78 0b 00 00       	push   $0xb78
 2b8:	68 82 0b 00 00       	push   $0xb82
 2bd:	6a 01                	push   $0x1
 2bf:	e8 8c 05 00 00       	call   850 <printf>
 2c4:	83 c4 0c             	add    $0xc,%esp
 2c7:	68 0d 0c 00 00       	push   $0xc0d
 2cc:	e9 45 ff ff ff       	jmp    216 <worker+0x66>
   assert(nested_thread_pid > 0);
 2d1:	6a 3c                	push   $0x3c
 2d3:	68 78 0b 00 00       	push   $0xb78
 2d8:	68 82 0b 00 00       	push   $0xb82
 2dd:	6a 01                	push   $0x1
 2df:	e8 6c 05 00 00       	call   850 <printf>
 2e4:	83 c4 0c             	add    $0xc,%esp
 2e7:	68 f7 0b 00 00       	push   $0xbf7
 2ec:	e9 25 ff ff ff       	jmp    216 <worker+0x66>
   exit();
 2f1:	e8 ee 03 00 00       	call   6e4 <exit>
 2f6:	66 90                	xchg   %ax,%ax
 2f8:	66 90                	xchg   %ax,%ax
 2fa:	66 90                	xchg   %ax,%ax
 2fc:	66 90                	xchg   %ax,%ax
 2fe:	66 90                	xchg   %ax,%ax

00000300 <strcpy>:
#include "x86.h"
#include "mmu.h"

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
 438:	e8 bf 02 00 00       	call   6fc <read>
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
 49d:	e8 82 02 00 00       	call   724 <open>
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
 4b2:	e8 85 02 00 00       	call   73c <fstat>
  close(fd);
 4b7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4ba:	89 c6                	mov    %eax,%esi
  close(fd);
 4bc:	e8 4b 02 00 00       	call   70c <close>
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
  asm volatile("lock; xaddl %%eax, %2;" :
 551:	b8 01 00 00 00       	mov    $0x1,%eax
 556:	89 e5                	mov    %esp,%ebp
 558:	53                   	push   %ebx
 559:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 55c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 563:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 56a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 56f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 572:	39 c2                	cmp    %eax,%edx
 574:	74 24                	je     59a <thread_create+0x4a>
 576:	89 c3                	mov    %eax,%ebx
 578:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 580:	83 ec 04             	sub    $0x4,%esp
 583:	52                   	push   %edx
 584:	68 75 0c 00 00       	push   $0xc75
 589:	6a 01                	push   $0x1
 58b:	e8 c0 02 00 00       	call   850 <printf>
  while(lock->turn != myturn){
 590:	8b 55 f4             	mov    -0xc(%ebp),%edx
 593:	83 c4 10             	add    $0x10,%esp
 596:	39 d3                	cmp    %edx,%ebx
 598:	75 e6                	jne    580 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 59a:	83 ec 0c             	sub    $0xc,%esp
 59d:	68 00 20 00 00       	push   $0x2000
 5a2:	e8 d9 04 00 00       	call   a80 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 5a7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 5ab:	83 c4 10             	add    $0x10,%esp
 5ae:	89 c2                	mov    %eax,%edx
 5b0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 5b6:	74 07                	je     5bf <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 5b8:	29 d0                	sub    %edx,%eax
 5ba:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 5bf:	50                   	push   %eax
 5c0:	ff 75 10             	push   0x10(%ebp)
 5c3:	ff 75 0c             	push   0xc(%ebp)
 5c6:	ff 75 08             	push   0x8(%ebp)
 5c9:	e8 b6 01 00 00       	call   784 <clone>
}
 5ce:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5d1:	c9                   	leave  
 5d2:	c3                   	ret    
 5d3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005e0 <thread_join>:
int thread_join(){
 5e0:	55                   	push   %ebp
 5e1:	89 e5                	mov    %esp,%ebp
 5e3:	56                   	push   %esi
 5e4:	53                   	push   %ebx
 5e5:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 5e8:	6a 04                	push   $0x4
 5ea:	e8 91 04 00 00       	call   a80 <malloc>
 5ef:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 5f2:	8d 45 ec             	lea    -0x14(%ebp),%eax
 5f5:	89 04 24             	mov    %eax,(%esp)
 5f8:	e8 8f 01 00 00       	call   78c <join>
  lock->ticket = 0;
 5fd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 604:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 606:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 60d:	b8 01 00 00 00       	mov    $0x1,%eax
 612:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 617:	8b 55 f4             	mov    -0xc(%ebp),%edx
 61a:	83 c4 10             	add    $0x10,%esp
 61d:	39 c2                	cmp    %eax,%edx
 61f:	74 21                	je     642 <thread_join+0x62>
 621:	89 c3                	mov    %eax,%ebx
 623:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 627:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 628:	83 ec 04             	sub    $0x4,%esp
 62b:	52                   	push   %edx
 62c:	68 75 0c 00 00       	push   $0xc75
 631:	6a 01                	push   $0x1
 633:	e8 18 02 00 00       	call   850 <printf>
  while(lock->turn != myturn){
 638:	8b 55 f4             	mov    -0xc(%ebp),%edx
 63b:	83 c4 10             	add    $0x10,%esp
 63e:	39 d3                	cmp    %edx,%ebx
 640:	75 e6                	jne    628 <thread_join+0x48>
	free(stack);
 642:	83 ec 0c             	sub    $0xc,%esp
 645:	ff 75 ec             	push   -0x14(%ebp)
 648:	e8 a3 03 00 00       	call   9f0 <free>
}
 64d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 650:	89 f0                	mov    %esi,%eax
 652:	5b                   	pop    %ebx
 653:	5e                   	pop    %esi
 654:	5d                   	pop    %ebp
 655:	c3                   	ret    
 656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65d:	8d 76 00             	lea    0x0(%esi),%esi

00000660 <lock_init>:
void lock_init(lock_t *lock) {
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 666:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 66c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 673:	5d                   	pop    %ebp
 674:	c3                   	ret    
 675:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000680 <lock_acquire>:
void lock_acquire(lock_t *lock){
 680:	55                   	push   %ebp
 681:	b8 01 00 00 00       	mov    $0x1,%eax
 686:	89 e5                	mov    %esp,%ebp
 688:	56                   	push   %esi
 689:	8b 75 08             	mov    0x8(%ebp),%esi
 68c:	53                   	push   %ebx
 68d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 691:	8b 56 04             	mov    0x4(%esi),%edx
 694:	39 d0                	cmp    %edx,%eax
 696:	74 22                	je     6ba <lock_acquire+0x3a>
 698:	89 c3                	mov    %eax,%ebx
 69a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 6a0:	83 ec 04             	sub    $0x4,%esp
 6a3:	52                   	push   %edx
 6a4:	68 75 0c 00 00       	push   $0xc75
 6a9:	6a 01                	push   $0x1
 6ab:	e8 a0 01 00 00       	call   850 <printf>
  while(lock->turn != myturn){
 6b0:	8b 56 04             	mov    0x4(%esi),%edx
 6b3:	83 c4 10             	add    $0x10,%esp
 6b6:	39 da                	cmp    %ebx,%edx
 6b8:	75 e6                	jne    6a0 <lock_acquire+0x20>
}
 6ba:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6bd:	5b                   	pop    %ebx
 6be:	5e                   	pop    %esi
 6bf:	5d                   	pop    %ebp
 6c0:	c3                   	ret    
 6c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6cf:	90                   	nop

000006d0 <lock_release>:
void lock_release(lock_t *lock){
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 6d6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 6da:	5d                   	pop    %ebp
 6db:	c3                   	ret    

000006dc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6dc:	b8 01 00 00 00       	mov    $0x1,%eax
 6e1:	cd 40                	int    $0x40
 6e3:	c3                   	ret    

000006e4 <exit>:
SYSCALL(exit)
 6e4:	b8 02 00 00 00       	mov    $0x2,%eax
 6e9:	cd 40                	int    $0x40
 6eb:	c3                   	ret    

000006ec <wait>:
SYSCALL(wait)
 6ec:	b8 03 00 00 00       	mov    $0x3,%eax
 6f1:	cd 40                	int    $0x40
 6f3:	c3                   	ret    

000006f4 <pipe>:
SYSCALL(pipe)
 6f4:	b8 04 00 00 00       	mov    $0x4,%eax
 6f9:	cd 40                	int    $0x40
 6fb:	c3                   	ret    

000006fc <read>:
SYSCALL(read)
 6fc:	b8 05 00 00 00       	mov    $0x5,%eax
 701:	cd 40                	int    $0x40
 703:	c3                   	ret    

00000704 <write>:
SYSCALL(write)
 704:	b8 10 00 00 00       	mov    $0x10,%eax
 709:	cd 40                	int    $0x40
 70b:	c3                   	ret    

0000070c <close>:
SYSCALL(close)
 70c:	b8 15 00 00 00       	mov    $0x15,%eax
 711:	cd 40                	int    $0x40
 713:	c3                   	ret    

00000714 <kill>:
SYSCALL(kill)
 714:	b8 06 00 00 00       	mov    $0x6,%eax
 719:	cd 40                	int    $0x40
 71b:	c3                   	ret    

0000071c <exec>:
SYSCALL(exec)
 71c:	b8 07 00 00 00       	mov    $0x7,%eax
 721:	cd 40                	int    $0x40
 723:	c3                   	ret    

00000724 <open>:
SYSCALL(open)
 724:	b8 0f 00 00 00       	mov    $0xf,%eax
 729:	cd 40                	int    $0x40
 72b:	c3                   	ret    

0000072c <mknod>:
SYSCALL(mknod)
 72c:	b8 11 00 00 00       	mov    $0x11,%eax
 731:	cd 40                	int    $0x40
 733:	c3                   	ret    

00000734 <unlink>:
SYSCALL(unlink)
 734:	b8 12 00 00 00       	mov    $0x12,%eax
 739:	cd 40                	int    $0x40
 73b:	c3                   	ret    

0000073c <fstat>:
SYSCALL(fstat)
 73c:	b8 08 00 00 00       	mov    $0x8,%eax
 741:	cd 40                	int    $0x40
 743:	c3                   	ret    

00000744 <link>:
SYSCALL(link)
 744:	b8 13 00 00 00       	mov    $0x13,%eax
 749:	cd 40                	int    $0x40
 74b:	c3                   	ret    

0000074c <mkdir>:
SYSCALL(mkdir)
 74c:	b8 14 00 00 00       	mov    $0x14,%eax
 751:	cd 40                	int    $0x40
 753:	c3                   	ret    

00000754 <chdir>:
SYSCALL(chdir)
 754:	b8 09 00 00 00       	mov    $0x9,%eax
 759:	cd 40                	int    $0x40
 75b:	c3                   	ret    

0000075c <dup>:
SYSCALL(dup)
 75c:	b8 0a 00 00 00       	mov    $0xa,%eax
 761:	cd 40                	int    $0x40
 763:	c3                   	ret    

00000764 <getpid>:
SYSCALL(getpid)
 764:	b8 0b 00 00 00       	mov    $0xb,%eax
 769:	cd 40                	int    $0x40
 76b:	c3                   	ret    

0000076c <sbrk>:
SYSCALL(sbrk)
 76c:	b8 0c 00 00 00       	mov    $0xc,%eax
 771:	cd 40                	int    $0x40
 773:	c3                   	ret    

00000774 <sleep>:
SYSCALL(sleep)
 774:	b8 0d 00 00 00       	mov    $0xd,%eax
 779:	cd 40                	int    $0x40
 77b:	c3                   	ret    

0000077c <uptime>:
SYSCALL(uptime)
 77c:	b8 0e 00 00 00       	mov    $0xe,%eax
 781:	cd 40                	int    $0x40
 783:	c3                   	ret    

00000784 <clone>:
SYSCALL(clone)
 784:	b8 16 00 00 00       	mov    $0x16,%eax
 789:	cd 40                	int    $0x40
 78b:	c3                   	ret    

0000078c <join>:
SYSCALL(join)
 78c:	b8 17 00 00 00       	mov    $0x17,%eax
 791:	cd 40                	int    $0x40
 793:	c3                   	ret    
 794:	66 90                	xchg   %ax,%ax
 796:	66 90                	xchg   %ax,%ax
 798:	66 90                	xchg   %ax,%ax
 79a:	66 90                	xchg   %ax,%ax
 79c:	66 90                	xchg   %ax,%ax
 79e:	66 90                	xchg   %ax,%ax

000007a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	57                   	push   %edi
 7a4:	56                   	push   %esi
 7a5:	53                   	push   %ebx
 7a6:	83 ec 3c             	sub    $0x3c,%esp
 7a9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 7ac:	89 d1                	mov    %edx,%ecx
{
 7ae:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 7b1:	85 d2                	test   %edx,%edx
 7b3:	0f 89 7f 00 00 00    	jns    838 <printint+0x98>
 7b9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7bd:	74 79                	je     838 <printint+0x98>
    neg = 1;
 7bf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7c6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7c8:	31 db                	xor    %ebx,%ebx
 7ca:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7d0:	89 c8                	mov    %ecx,%eax
 7d2:	31 d2                	xor    %edx,%edx
 7d4:	89 cf                	mov    %ecx,%edi
 7d6:	f7 75 c4             	divl   -0x3c(%ebp)
 7d9:	0f b6 92 e8 0c 00 00 	movzbl 0xce8(%edx),%edx
 7e0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7e3:	89 d8                	mov    %ebx,%eax
 7e5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7e8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7eb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7ee:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7f1:	76 dd                	jbe    7d0 <printint+0x30>
  if(neg)
 7f3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7f6:	85 c9                	test   %ecx,%ecx
 7f8:	74 0c                	je     806 <printint+0x66>
    buf[i++] = '-';
 7fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7ff:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 801:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 806:	8b 7d b8             	mov    -0x48(%ebp),%edi
 809:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 80d:	eb 07                	jmp    816 <printint+0x76>
 80f:	90                   	nop
    putc(fd, buf[i]);
 810:	0f b6 13             	movzbl (%ebx),%edx
 813:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 816:	83 ec 04             	sub    $0x4,%esp
 819:	88 55 d7             	mov    %dl,-0x29(%ebp)
 81c:	6a 01                	push   $0x1
 81e:	56                   	push   %esi
 81f:	57                   	push   %edi
 820:	e8 df fe ff ff       	call   704 <write>
  while(--i >= 0)
 825:	83 c4 10             	add    $0x10,%esp
 828:	39 de                	cmp    %ebx,%esi
 82a:	75 e4                	jne    810 <printint+0x70>
}
 82c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 82f:	5b                   	pop    %ebx
 830:	5e                   	pop    %esi
 831:	5f                   	pop    %edi
 832:	5d                   	pop    %ebp
 833:	c3                   	ret    
 834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 838:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 83f:	eb 87                	jmp    7c8 <printint+0x28>
 841:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 848:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84f:	90                   	nop

00000850 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 850:	55                   	push   %ebp
 851:	89 e5                	mov    %esp,%ebp
 853:	57                   	push   %edi
 854:	56                   	push   %esi
 855:	53                   	push   %ebx
 856:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 859:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 85c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 85f:	0f b6 13             	movzbl (%ebx),%edx
 862:	84 d2                	test   %dl,%dl
 864:	74 6a                	je     8d0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 866:	8d 45 10             	lea    0x10(%ebp),%eax
 869:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 86c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 86f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 871:	89 45 d0             	mov    %eax,-0x30(%ebp)
 874:	eb 36                	jmp    8ac <printf+0x5c>
 876:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 87d:	8d 76 00             	lea    0x0(%esi),%esi
 880:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 883:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 888:	83 f8 25             	cmp    $0x25,%eax
 88b:	74 15                	je     8a2 <printf+0x52>
  write(fd, &c, 1);
 88d:	83 ec 04             	sub    $0x4,%esp
 890:	88 55 e7             	mov    %dl,-0x19(%ebp)
 893:	6a 01                	push   $0x1
 895:	57                   	push   %edi
 896:	56                   	push   %esi
 897:	e8 68 fe ff ff       	call   704 <write>
 89c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 89f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8a2:	0f b6 13             	movzbl (%ebx),%edx
 8a5:	83 c3 01             	add    $0x1,%ebx
 8a8:	84 d2                	test   %dl,%dl
 8aa:	74 24                	je     8d0 <printf+0x80>
    c = fmt[i] & 0xff;
 8ac:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 8af:	85 c9                	test   %ecx,%ecx
 8b1:	74 cd                	je     880 <printf+0x30>
      }
    } else if(state == '%'){
 8b3:	83 f9 25             	cmp    $0x25,%ecx
 8b6:	75 ea                	jne    8a2 <printf+0x52>
      if(c == 'd'){
 8b8:	83 f8 25             	cmp    $0x25,%eax
 8bb:	0f 84 07 01 00 00    	je     9c8 <printf+0x178>
 8c1:	83 e8 63             	sub    $0x63,%eax
 8c4:	83 f8 15             	cmp    $0x15,%eax
 8c7:	77 17                	ja     8e0 <printf+0x90>
 8c9:	ff 24 85 90 0c 00 00 	jmp    *0xc90(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8d3:	5b                   	pop    %ebx
 8d4:	5e                   	pop    %esi
 8d5:	5f                   	pop    %edi
 8d6:	5d                   	pop    %ebp
 8d7:	c3                   	ret    
 8d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8df:	90                   	nop
  write(fd, &c, 1);
 8e0:	83 ec 04             	sub    $0x4,%esp
 8e3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8e6:	6a 01                	push   $0x1
 8e8:	57                   	push   %edi
 8e9:	56                   	push   %esi
 8ea:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8ee:	e8 11 fe ff ff       	call   704 <write>
        putc(fd, c);
 8f3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8f7:	83 c4 0c             	add    $0xc,%esp
 8fa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8fd:	6a 01                	push   $0x1
 8ff:	57                   	push   %edi
 900:	56                   	push   %esi
 901:	e8 fe fd ff ff       	call   704 <write>
        putc(fd, c);
 906:	83 c4 10             	add    $0x10,%esp
      state = 0;
 909:	31 c9                	xor    %ecx,%ecx
 90b:	eb 95                	jmp    8a2 <printf+0x52>
 90d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 910:	83 ec 0c             	sub    $0xc,%esp
 913:	b9 10 00 00 00       	mov    $0x10,%ecx
 918:	6a 00                	push   $0x0
 91a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 91d:	8b 10                	mov    (%eax),%edx
 91f:	89 f0                	mov    %esi,%eax
 921:	e8 7a fe ff ff       	call   7a0 <printint>
        ap++;
 926:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 92a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 92d:	31 c9                	xor    %ecx,%ecx
 92f:	e9 6e ff ff ff       	jmp    8a2 <printf+0x52>
 934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 938:	8b 45 d0             	mov    -0x30(%ebp),%eax
 93b:	8b 10                	mov    (%eax),%edx
        ap++;
 93d:	83 c0 04             	add    $0x4,%eax
 940:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 943:	85 d2                	test   %edx,%edx
 945:	0f 84 8d 00 00 00    	je     9d8 <printf+0x188>
        while(*s != 0){
 94b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 94e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 950:	84 c0                	test   %al,%al
 952:	0f 84 4a ff ff ff    	je     8a2 <printf+0x52>
 958:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 95b:	89 d3                	mov    %edx,%ebx
 95d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 960:	83 ec 04             	sub    $0x4,%esp
          s++;
 963:	83 c3 01             	add    $0x1,%ebx
 966:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 969:	6a 01                	push   $0x1
 96b:	57                   	push   %edi
 96c:	56                   	push   %esi
 96d:	e8 92 fd ff ff       	call   704 <write>
        while(*s != 0){
 972:	0f b6 03             	movzbl (%ebx),%eax
 975:	83 c4 10             	add    $0x10,%esp
 978:	84 c0                	test   %al,%al
 97a:	75 e4                	jne    960 <printf+0x110>
      state = 0;
 97c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 97f:	31 c9                	xor    %ecx,%ecx
 981:	e9 1c ff ff ff       	jmp    8a2 <printf+0x52>
 986:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 98d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 990:	83 ec 0c             	sub    $0xc,%esp
 993:	b9 0a 00 00 00       	mov    $0xa,%ecx
 998:	6a 01                	push   $0x1
 99a:	e9 7b ff ff ff       	jmp    91a <printf+0xca>
 99f:	90                   	nop
        putc(fd, *ap);
 9a0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 9a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9a6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 9a8:	6a 01                	push   $0x1
 9aa:	57                   	push   %edi
 9ab:	56                   	push   %esi
        putc(fd, *ap);
 9ac:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9af:	e8 50 fd ff ff       	call   704 <write>
        ap++;
 9b4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9b8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9bb:	31 c9                	xor    %ecx,%ecx
 9bd:	e9 e0 fe ff ff       	jmp    8a2 <printf+0x52>
 9c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9c8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9cb:	83 ec 04             	sub    $0x4,%esp
 9ce:	e9 2a ff ff ff       	jmp    8fd <printf+0xad>
 9d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9d7:	90                   	nop
          s = "(null)";
 9d8:	ba 89 0c 00 00       	mov    $0xc89,%edx
        while(*s != 0){
 9dd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9e0:	b8 28 00 00 00       	mov    $0x28,%eax
 9e5:	89 d3                	mov    %edx,%ebx
 9e7:	e9 74 ff ff ff       	jmp    960 <printf+0x110>
 9ec:	66 90                	xchg   %ax,%ax
 9ee:	66 90                	xchg   %ax,%ax

000009f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9f0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9f1:	a1 90 10 00 00       	mov    0x1090,%eax
{
 9f6:	89 e5                	mov    %esp,%ebp
 9f8:	57                   	push   %edi
 9f9:	56                   	push   %esi
 9fa:	53                   	push   %ebx
 9fb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9fe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a08:	89 c2                	mov    %eax,%edx
 a0a:	8b 00                	mov    (%eax),%eax
 a0c:	39 ca                	cmp    %ecx,%edx
 a0e:	73 30                	jae    a40 <free+0x50>
 a10:	39 c1                	cmp    %eax,%ecx
 a12:	72 04                	jb     a18 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a14:	39 c2                	cmp    %eax,%edx
 a16:	72 f0                	jb     a08 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a18:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a1b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a1e:	39 f8                	cmp    %edi,%eax
 a20:	74 30                	je     a52 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a22:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a25:	8b 42 04             	mov    0x4(%edx),%eax
 a28:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a2b:	39 f1                	cmp    %esi,%ecx
 a2d:	74 3a                	je     a69 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a2f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a31:	5b                   	pop    %ebx
  freep = p;
 a32:	89 15 90 10 00 00    	mov    %edx,0x1090
}
 a38:	5e                   	pop    %esi
 a39:	5f                   	pop    %edi
 a3a:	5d                   	pop    %ebp
 a3b:	c3                   	ret    
 a3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a40:	39 c2                	cmp    %eax,%edx
 a42:	72 c4                	jb     a08 <free+0x18>
 a44:	39 c1                	cmp    %eax,%ecx
 a46:	73 c0                	jae    a08 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a48:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a4b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a4e:	39 f8                	cmp    %edi,%eax
 a50:	75 d0                	jne    a22 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a52:	03 70 04             	add    0x4(%eax),%esi
 a55:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a58:	8b 02                	mov    (%edx),%eax
 a5a:	8b 00                	mov    (%eax),%eax
 a5c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a5f:	8b 42 04             	mov    0x4(%edx),%eax
 a62:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a65:	39 f1                	cmp    %esi,%ecx
 a67:	75 c6                	jne    a2f <free+0x3f>
    p->s.size += bp->s.size;
 a69:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a6c:	89 15 90 10 00 00    	mov    %edx,0x1090
    p->s.size += bp->s.size;
 a72:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a75:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a78:	89 0a                	mov    %ecx,(%edx)
}
 a7a:	5b                   	pop    %ebx
 a7b:	5e                   	pop    %esi
 a7c:	5f                   	pop    %edi
 a7d:	5d                   	pop    %ebp
 a7e:	c3                   	ret    
 a7f:	90                   	nop

00000a80 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a80:	55                   	push   %ebp
 a81:	89 e5                	mov    %esp,%ebp
 a83:	57                   	push   %edi
 a84:	56                   	push   %esi
 a85:	53                   	push   %ebx
 a86:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a89:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a8c:	8b 3d 90 10 00 00    	mov    0x1090,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a92:	8d 70 07             	lea    0x7(%eax),%esi
 a95:	c1 ee 03             	shr    $0x3,%esi
 a98:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a9b:	85 ff                	test   %edi,%edi
 a9d:	0f 84 9d 00 00 00    	je     b40 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 aa3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 aa5:	8b 4a 04             	mov    0x4(%edx),%ecx
 aa8:	39 f1                	cmp    %esi,%ecx
 aaa:	73 6a                	jae    b16 <malloc+0x96>
 aac:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ab1:	39 de                	cmp    %ebx,%esi
 ab3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 ab6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 abd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ac0:	eb 17                	jmp    ad9 <malloc+0x59>
 ac2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aca:	8b 48 04             	mov    0x4(%eax),%ecx
 acd:	39 f1                	cmp    %esi,%ecx
 acf:	73 4f                	jae    b20 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ad1:	8b 3d 90 10 00 00    	mov    0x1090,%edi
 ad7:	89 c2                	mov    %eax,%edx
 ad9:	39 d7                	cmp    %edx,%edi
 adb:	75 eb                	jne    ac8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 add:	83 ec 0c             	sub    $0xc,%esp
 ae0:	ff 75 e4             	push   -0x1c(%ebp)
 ae3:	e8 84 fc ff ff       	call   76c <sbrk>
  if(p == (char*)-1)
 ae8:	83 c4 10             	add    $0x10,%esp
 aeb:	83 f8 ff             	cmp    $0xffffffff,%eax
 aee:	74 1c                	je     b0c <malloc+0x8c>
  hp->s.size = nu;
 af0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 af3:	83 ec 0c             	sub    $0xc,%esp
 af6:	83 c0 08             	add    $0x8,%eax
 af9:	50                   	push   %eax
 afa:	e8 f1 fe ff ff       	call   9f0 <free>
  return freep;
 aff:	8b 15 90 10 00 00    	mov    0x1090,%edx
      if((p = morecore(nunits)) == 0)
 b05:	83 c4 10             	add    $0x10,%esp
 b08:	85 d2                	test   %edx,%edx
 b0a:	75 bc                	jne    ac8 <malloc+0x48>
        return 0;
  }
}
 b0c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b0f:	31 c0                	xor    %eax,%eax
}
 b11:	5b                   	pop    %ebx
 b12:	5e                   	pop    %esi
 b13:	5f                   	pop    %edi
 b14:	5d                   	pop    %ebp
 b15:	c3                   	ret    
    if(p->s.size >= nunits){
 b16:	89 d0                	mov    %edx,%eax
 b18:	89 fa                	mov    %edi,%edx
 b1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b20:	39 ce                	cmp    %ecx,%esi
 b22:	74 4c                	je     b70 <malloc+0xf0>
        p->s.size -= nunits;
 b24:	29 f1                	sub    %esi,%ecx
 b26:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b29:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b2c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b2f:	89 15 90 10 00 00    	mov    %edx,0x1090
}
 b35:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b38:	83 c0 08             	add    $0x8,%eax
}
 b3b:	5b                   	pop    %ebx
 b3c:	5e                   	pop    %esi
 b3d:	5f                   	pop    %edi
 b3e:	5d                   	pop    %ebp
 b3f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b40:	c7 05 90 10 00 00 94 	movl   $0x1094,0x1090
 b47:	10 00 00 
    base.s.size = 0;
 b4a:	bf 94 10 00 00       	mov    $0x1094,%edi
    base.s.ptr = freep = prevp = &base;
 b4f:	c7 05 94 10 00 00 94 	movl   $0x1094,0x1094
 b56:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b59:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b5b:	c7 05 98 10 00 00 00 	movl   $0x0,0x1098
 b62:	00 00 00 
    if(p->s.size >= nunits){
 b65:	e9 42 ff ff ff       	jmp    aac <malloc+0x2c>
 b6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b70:	8b 08                	mov    (%eax),%ecx
 b72:	89 0a                	mov    %ecx,(%edx)
 b74:	eb b9                	jmp    b2f <malloc+0xaf>
