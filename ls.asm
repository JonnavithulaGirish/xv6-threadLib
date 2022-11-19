
_ls:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  close(fd);
}

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
  10:	bb 01 00 00 00       	mov    $0x1,%ebx
  15:	51                   	push   %ecx
  16:	83 ec 08             	sub    $0x8,%esp
  19:	8b 31                	mov    (%ecx),%esi
  1b:	8b 79 04             	mov    0x4(%ecx),%edi
  int i;

  if(argc < 2){
  1e:	83 fe 01             	cmp    $0x1,%esi
  21:	7e 1f                	jle    42 <main+0x42>
  23:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  27:	90                   	nop
    ls(".");
    exit();
  }
  for(i=1; i<argc; i++)
    ls(argv[i]);
  28:	83 ec 0c             	sub    $0xc,%esp
  2b:	ff 34 9f             	push   (%edi,%ebx,4)
  for(i=1; i<argc; i++)
  2e:	83 c3 01             	add    $0x1,%ebx
    ls(argv[i]);
  31:	e8 ca 00 00 00       	call   100 <ls>
  for(i=1; i<argc; i++)
  36:	83 c4 10             	add    $0x10,%esp
  39:	39 de                	cmp    %ebx,%esi
  3b:	75 eb                	jne    28 <main+0x28>
  exit();
  3d:	e8 e2 06 00 00       	call   724 <exit>
    ls(".");
  42:	83 ec 0c             	sub    $0xc,%esp
  45:	68 00 0c 00 00       	push   $0xc00
  4a:	e8 b1 00 00 00       	call   100 <ls>
    exit();
  4f:	e8 d0 06 00 00       	call   724 <exit>
  54:	66 90                	xchg   %ax,%ax
  56:	66 90                	xchg   %ax,%ax
  58:	66 90                	xchg   %ax,%ax
  5a:	66 90                	xchg   %ax,%ax
  5c:	66 90                	xchg   %ax,%ax
  5e:	66 90                	xchg   %ax,%ax

00000060 <fmtname>:
{
  60:	55                   	push   %ebp
  61:	89 e5                	mov    %esp,%ebp
  63:	56                   	push   %esi
  64:	53                   	push   %ebx
  65:	8b 75 08             	mov    0x8(%ebp),%esi
  for(p=path+strlen(path); p >= path && *p != '/'; p--)
  68:	83 ec 0c             	sub    $0xc,%esp
  6b:	56                   	push   %esi
  6c:	e8 5f 03 00 00       	call   3d0 <strlen>
  71:	83 c4 10             	add    $0x10,%esp
  74:	01 f0                	add    %esi,%eax
  76:	89 c3                	mov    %eax,%ebx
  78:	73 0f                	jae    89 <fmtname+0x29>
  7a:	eb 12                	jmp    8e <fmtname+0x2e>
  7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  80:	8d 43 ff             	lea    -0x1(%ebx),%eax
  83:	39 c6                	cmp    %eax,%esi
  85:	77 0a                	ja     91 <fmtname+0x31>
  87:	89 c3                	mov    %eax,%ebx
  89:	80 3b 2f             	cmpb   $0x2f,(%ebx)
  8c:	75 f2                	jne    80 <fmtname+0x20>
  p++;
  8e:	83 c3 01             	add    $0x1,%ebx
  if(strlen(p) >= DIRSIZ)
  91:	83 ec 0c             	sub    $0xc,%esp
  94:	53                   	push   %ebx
  95:	e8 36 03 00 00       	call   3d0 <strlen>
  9a:	83 c4 10             	add    $0x10,%esp
  9d:	83 f8 0d             	cmp    $0xd,%eax
  a0:	77 4a                	ja     ec <fmtname+0x8c>
  memmove(buf, p, strlen(p));
  a2:	83 ec 0c             	sub    $0xc,%esp
  a5:	53                   	push   %ebx
  a6:	e8 25 03 00 00       	call   3d0 <strlen>
  ab:	83 c4 0c             	add    $0xc,%esp
  ae:	50                   	push   %eax
  af:	53                   	push   %ebx
  b0:	68 5c 10 00 00       	push   $0x105c
  b5:	e8 a6 04 00 00       	call   560 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ba:	89 1c 24             	mov    %ebx,(%esp)
  bd:	e8 0e 03 00 00       	call   3d0 <strlen>
  c2:	89 1c 24             	mov    %ebx,(%esp)
  return buf;
  c5:	bb 5c 10 00 00       	mov    $0x105c,%ebx
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ca:	89 c6                	mov    %eax,%esi
  cc:	e8 ff 02 00 00       	call   3d0 <strlen>
  d1:	ba 0e 00 00 00       	mov    $0xe,%edx
  d6:	83 c4 0c             	add    $0xc,%esp
  d9:	29 f2                	sub    %esi,%edx
  db:	05 5c 10 00 00       	add    $0x105c,%eax
  e0:	52                   	push   %edx
  e1:	6a 20                	push   $0x20
  e3:	50                   	push   %eax
  e4:	e8 17 03 00 00       	call   400 <memset>
  return buf;
  e9:	83 c4 10             	add    $0x10,%esp
}
  ec:	8d 65 f8             	lea    -0x8(%ebp),%esp
  ef:	89 d8                	mov    %ebx,%eax
  f1:	5b                   	pop    %ebx
  f2:	5e                   	pop    %esi
  f3:	5d                   	pop    %ebp
  f4:	c3                   	ret    
  f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000100 <ls>:
{
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	57                   	push   %edi
 104:	56                   	push   %esi
 105:	53                   	push   %ebx
 106:	81 ec 64 02 00 00    	sub    $0x264,%esp
 10c:	8b 7d 08             	mov    0x8(%ebp),%edi
  if((fd = open(path, 0)) < 0){
 10f:	6a 00                	push   $0x0
 111:	57                   	push   %edi
 112:	e8 4d 06 00 00       	call   764 <open>
 117:	83 c4 10             	add    $0x10,%esp
 11a:	85 c0                	test   %eax,%eax
 11c:	0f 88 9e 01 00 00    	js     2c0 <ls+0x1c0>
  if(fstat(fd, &st) < 0){
 122:	83 ec 08             	sub    $0x8,%esp
 125:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 12b:	89 c3                	mov    %eax,%ebx
 12d:	56                   	push   %esi
 12e:	50                   	push   %eax
 12f:	e8 48 06 00 00       	call   77c <fstat>
 134:	83 c4 10             	add    $0x10,%esp
 137:	85 c0                	test   %eax,%eax
 139:	0f 88 c1 01 00 00    	js     300 <ls+0x200>
  switch(st.type){
 13f:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 146:	66 83 f8 01          	cmp    $0x1,%ax
 14a:	74 64                	je     1b0 <ls+0xb0>
 14c:	66 83 f8 02          	cmp    $0x2,%ax
 150:	74 1e                	je     170 <ls+0x70>
  close(fd);
 152:	83 ec 0c             	sub    $0xc,%esp
 155:	53                   	push   %ebx
 156:	e8 f1 05 00 00       	call   74c <close>
 15b:	83 c4 10             	add    $0x10,%esp
}
 15e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 161:	5b                   	pop    %ebx
 162:	5e                   	pop    %esi
 163:	5f                   	pop    %edi
 164:	5d                   	pop    %ebp
 165:	c3                   	ret    
 166:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 16d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(1, "%s %d %d %d\n", fmtname(path), st.type, st.ino, st.size);
 170:	83 ec 0c             	sub    $0xc,%esp
 173:	8b 95 e4 fd ff ff    	mov    -0x21c(%ebp),%edx
 179:	8b b5 dc fd ff ff    	mov    -0x224(%ebp),%esi
 17f:	57                   	push   %edi
 180:	89 95 b4 fd ff ff    	mov    %edx,-0x24c(%ebp)
 186:	e8 d5 fe ff ff       	call   60 <fmtname>
 18b:	8b 95 b4 fd ff ff    	mov    -0x24c(%ebp),%edx
 191:	59                   	pop    %ecx
 192:	5f                   	pop    %edi
 193:	52                   	push   %edx
 194:	56                   	push   %esi
 195:	6a 02                	push   $0x2
 197:	50                   	push   %eax
 198:	68 e0 0b 00 00       	push   $0xbe0
 19d:	6a 01                	push   $0x1
 19f:	e8 ec 06 00 00       	call   890 <printf>
    break;
 1a4:	83 c4 20             	add    $0x20,%esp
 1a7:	eb a9                	jmp    152 <ls+0x52>
 1a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
 1b0:	83 ec 0c             	sub    $0xc,%esp
 1b3:	57                   	push   %edi
 1b4:	e8 17 02 00 00       	call   3d0 <strlen>
 1b9:	83 c4 10             	add    $0x10,%esp
 1bc:	83 c0 10             	add    $0x10,%eax
 1bf:	3d 00 02 00 00       	cmp    $0x200,%eax
 1c4:	0f 87 16 01 00 00    	ja     2e0 <ls+0x1e0>
    strcpy(buf, path);
 1ca:	83 ec 08             	sub    $0x8,%esp
 1cd:	57                   	push   %edi
 1ce:	8d bd e8 fd ff ff    	lea    -0x218(%ebp),%edi
 1d4:	57                   	push   %edi
 1d5:	e8 66 01 00 00       	call   340 <strcpy>
    p = buf+strlen(buf);
 1da:	89 3c 24             	mov    %edi,(%esp)
 1dd:	e8 ee 01 00 00       	call   3d0 <strlen>
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 1e2:	83 c4 10             	add    $0x10,%esp
    p = buf+strlen(buf);
 1e5:	01 f8                	add    %edi,%eax
    *p++ = '/';
 1e7:	8d 48 01             	lea    0x1(%eax),%ecx
    p = buf+strlen(buf);
 1ea:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
    *p++ = '/';
 1f0:	89 8d a4 fd ff ff    	mov    %ecx,-0x25c(%ebp)
 1f6:	c6 00 2f             	movb   $0x2f,(%eax)
    while(read(fd, &de, sizeof(de)) == sizeof(de)){
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 200:	83 ec 04             	sub    $0x4,%esp
 203:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 209:	6a 10                	push   $0x10
 20b:	50                   	push   %eax
 20c:	53                   	push   %ebx
 20d:	e8 2a 05 00 00       	call   73c <read>
 212:	83 c4 10             	add    $0x10,%esp
 215:	83 f8 10             	cmp    $0x10,%eax
 218:	0f 85 34 ff ff ff    	jne    152 <ls+0x52>
      if(de.inum == 0)
 21e:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 225:	00 
 226:	74 d8                	je     200 <ls+0x100>
      memmove(p, de.name, DIRSIZ);
 228:	83 ec 04             	sub    $0x4,%esp
 22b:	8d 85 c6 fd ff ff    	lea    -0x23a(%ebp),%eax
 231:	6a 0e                	push   $0xe
 233:	50                   	push   %eax
 234:	ff b5 a4 fd ff ff    	push   -0x25c(%ebp)
 23a:	e8 21 03 00 00       	call   560 <memmove>
      p[DIRSIZ] = 0;
 23f:	8b 85 a8 fd ff ff    	mov    -0x258(%ebp),%eax
 245:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
      if(stat(buf, &st) < 0){
 249:	58                   	pop    %eax
 24a:	5a                   	pop    %edx
 24b:	56                   	push   %esi
 24c:	57                   	push   %edi
 24d:	e8 7e 02 00 00       	call   4d0 <stat>
 252:	83 c4 10             	add    $0x10,%esp
 255:	85 c0                	test   %eax,%eax
 257:	0f 88 cb 00 00 00    	js     328 <ls+0x228>
      printf(1, "%s %d %d %d\n", fmtname(buf), st.type, st.ino, st.size);
 25d:	83 ec 0c             	sub    $0xc,%esp
 260:	8b 8d e4 fd ff ff    	mov    -0x21c(%ebp),%ecx
 266:	8b 95 dc fd ff ff    	mov    -0x224(%ebp),%edx
 26c:	57                   	push   %edi
 26d:	0f bf 85 d4 fd ff ff 	movswl -0x22c(%ebp),%eax
 274:	89 8d ac fd ff ff    	mov    %ecx,-0x254(%ebp)
 27a:	89 95 b0 fd ff ff    	mov    %edx,-0x250(%ebp)
 280:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 286:	e8 d5 fd ff ff       	call   60 <fmtname>
 28b:	5a                   	pop    %edx
 28c:	8b 95 b0 fd ff ff    	mov    -0x250(%ebp),%edx
 292:	59                   	pop    %ecx
 293:	8b 8d ac fd ff ff    	mov    -0x254(%ebp),%ecx
 299:	51                   	push   %ecx
 29a:	52                   	push   %edx
 29b:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 2a1:	50                   	push   %eax
 2a2:	68 e0 0b 00 00       	push   $0xbe0
 2a7:	6a 01                	push   $0x1
 2a9:	e8 e2 05 00 00       	call   890 <printf>
 2ae:	83 c4 20             	add    $0x20,%esp
 2b1:	e9 4a ff ff ff       	jmp    200 <ls+0x100>
 2b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "ls: cannot open %s\n", path);
 2c0:	83 ec 04             	sub    $0x4,%esp
 2c3:	57                   	push   %edi
 2c4:	68 b8 0b 00 00       	push   $0xbb8
 2c9:	6a 02                	push   $0x2
 2cb:	e8 c0 05 00 00       	call   890 <printf>
    return;
 2d0:	83 c4 10             	add    $0x10,%esp
}
 2d3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2d6:	5b                   	pop    %ebx
 2d7:	5e                   	pop    %esi
 2d8:	5f                   	pop    %edi
 2d9:	5d                   	pop    %ebp
 2da:	c3                   	ret    
 2db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 2df:	90                   	nop
      printf(1, "ls: path too long\n");
 2e0:	83 ec 08             	sub    $0x8,%esp
 2e3:	68 ed 0b 00 00       	push   $0xbed
 2e8:	6a 01                	push   $0x1
 2ea:	e8 a1 05 00 00       	call   890 <printf>
      break;
 2ef:	83 c4 10             	add    $0x10,%esp
 2f2:	e9 5b fe ff ff       	jmp    152 <ls+0x52>
 2f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fe:	66 90                	xchg   %ax,%ax
    printf(2, "ls: cannot stat %s\n", path);
 300:	83 ec 04             	sub    $0x4,%esp
 303:	57                   	push   %edi
 304:	68 cc 0b 00 00       	push   $0xbcc
 309:	6a 02                	push   $0x2
 30b:	e8 80 05 00 00       	call   890 <printf>
    close(fd);
 310:	89 1c 24             	mov    %ebx,(%esp)
 313:	e8 34 04 00 00       	call   74c <close>
    return;
 318:	83 c4 10             	add    $0x10,%esp
}
 31b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 31e:	5b                   	pop    %ebx
 31f:	5e                   	pop    %esi
 320:	5f                   	pop    %edi
 321:	5d                   	pop    %ebp
 322:	c3                   	ret    
 323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 327:	90                   	nop
        printf(1, "ls: cannot stat %s\n", buf);
 328:	83 ec 04             	sub    $0x4,%esp
 32b:	57                   	push   %edi
 32c:	68 cc 0b 00 00       	push   $0xbcc
 331:	6a 01                	push   $0x1
 333:	e8 58 05 00 00       	call   890 <printf>
        continue;
 338:	83 c4 10             	add    $0x10,%esp
 33b:	e9 c0 fe ff ff       	jmp    200 <ls+0x100>

00000340 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 340:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 341:	31 c0                	xor    %eax,%eax
{
 343:	89 e5                	mov    %esp,%ebp
 345:	53                   	push   %ebx
 346:	8b 4d 08             	mov    0x8(%ebp),%ecx
 349:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 34c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 350:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 354:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 357:	83 c0 01             	add    $0x1,%eax
 35a:	84 d2                	test   %dl,%dl
 35c:	75 f2                	jne    350 <strcpy+0x10>
    ;
  return os;
}
 35e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 361:	89 c8                	mov    %ecx,%eax
 363:	c9                   	leave  
 364:	c3                   	ret    
 365:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000370 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
 374:	8b 55 08             	mov    0x8(%ebp),%edx
 377:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 37a:	0f b6 02             	movzbl (%edx),%eax
 37d:	84 c0                	test   %al,%al
 37f:	75 17                	jne    398 <strcmp+0x28>
 381:	eb 3a                	jmp    3bd <strcmp+0x4d>
 383:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 387:	90                   	nop
 388:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 38c:	83 c2 01             	add    $0x1,%edx
 38f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 392:	84 c0                	test   %al,%al
 394:	74 1a                	je     3b0 <strcmp+0x40>
    p++, q++;
 396:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 398:	0f b6 19             	movzbl (%ecx),%ebx
 39b:	38 c3                	cmp    %al,%bl
 39d:	74 e9                	je     388 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 39f:	29 d8                	sub    %ebx,%eax
}
 3a1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3a4:	c9                   	leave  
 3a5:	c3                   	ret    
 3a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ad:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 3b0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3b4:	31 c0                	xor    %eax,%eax
 3b6:	29 d8                	sub    %ebx,%eax
}
 3b8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3bb:	c9                   	leave  
 3bc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 3bd:	0f b6 19             	movzbl (%ecx),%ebx
 3c0:	31 c0                	xor    %eax,%eax
 3c2:	eb db                	jmp    39f <strcmp+0x2f>
 3c4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3cf:	90                   	nop

000003d0 <strlen>:

uint
strlen(const char *s)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 3d6:	80 3a 00             	cmpb   $0x0,(%edx)
 3d9:	74 15                	je     3f0 <strlen+0x20>
 3db:	31 c0                	xor    %eax,%eax
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
 3e0:	83 c0 01             	add    $0x1,%eax
 3e3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 3e7:	89 c1                	mov    %eax,%ecx
 3e9:	75 f5                	jne    3e0 <strlen+0x10>
    ;
  return n;
}
 3eb:	89 c8                	mov    %ecx,%eax
 3ed:	5d                   	pop    %ebp
 3ee:	c3                   	ret    
 3ef:	90                   	nop
  for(n = 0; s[n]; n++)
 3f0:	31 c9                	xor    %ecx,%ecx
}
 3f2:	5d                   	pop    %ebp
 3f3:	89 c8                	mov    %ecx,%eax
 3f5:	c3                   	ret    
 3f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fd:	8d 76 00             	lea    0x0(%esi),%esi

00000400 <memset>:

void*
memset(void *dst, int c, uint n)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 407:	8b 4d 10             	mov    0x10(%ebp),%ecx
 40a:	8b 45 0c             	mov    0xc(%ebp),%eax
 40d:	89 d7                	mov    %edx,%edi
 40f:	fc                   	cld    
 410:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 412:	8b 7d fc             	mov    -0x4(%ebp),%edi
 415:	89 d0                	mov    %edx,%eax
 417:	c9                   	leave  
 418:	c3                   	ret    
 419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000420 <strchr>:

char*
strchr(const char *s, char c)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	8b 45 08             	mov    0x8(%ebp),%eax
 426:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 42a:	0f b6 10             	movzbl (%eax),%edx
 42d:	84 d2                	test   %dl,%dl
 42f:	75 12                	jne    443 <strchr+0x23>
 431:	eb 1d                	jmp    450 <strchr+0x30>
 433:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 437:	90                   	nop
 438:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 43c:	83 c0 01             	add    $0x1,%eax
 43f:	84 d2                	test   %dl,%dl
 441:	74 0d                	je     450 <strchr+0x30>
    if(*s == c)
 443:	38 d1                	cmp    %dl,%cl
 445:	75 f1                	jne    438 <strchr+0x18>
      return (char*)s;
  return 0;
}
 447:	5d                   	pop    %ebp
 448:	c3                   	ret    
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 450:	31 c0                	xor    %eax,%eax
}
 452:	5d                   	pop    %ebp
 453:	c3                   	ret    
 454:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 45f:	90                   	nop

00000460 <gets>:

char*
gets(char *buf, int max)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 465:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 468:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 469:	31 db                	xor    %ebx,%ebx
{
 46b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 46e:	eb 27                	jmp    497 <gets+0x37>
    cc = read(0, &c, 1);
 470:	83 ec 04             	sub    $0x4,%esp
 473:	6a 01                	push   $0x1
 475:	57                   	push   %edi
 476:	6a 00                	push   $0x0
 478:	e8 bf 02 00 00       	call   73c <read>
    if(cc < 1)
 47d:	83 c4 10             	add    $0x10,%esp
 480:	85 c0                	test   %eax,%eax
 482:	7e 1d                	jle    4a1 <gets+0x41>
      break;
    buf[i++] = c;
 484:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 488:	8b 55 08             	mov    0x8(%ebp),%edx
 48b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 48f:	3c 0a                	cmp    $0xa,%al
 491:	74 1d                	je     4b0 <gets+0x50>
 493:	3c 0d                	cmp    $0xd,%al
 495:	74 19                	je     4b0 <gets+0x50>
  for(i=0; i+1 < max; ){
 497:	89 de                	mov    %ebx,%esi
 499:	83 c3 01             	add    $0x1,%ebx
 49c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 49f:	7c cf                	jl     470 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4a1:	8b 45 08             	mov    0x8(%ebp),%eax
 4a4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ab:	5b                   	pop    %ebx
 4ac:	5e                   	pop    %esi
 4ad:	5f                   	pop    %edi
 4ae:	5d                   	pop    %ebp
 4af:	c3                   	ret    
  buf[i] = '\0';
 4b0:	8b 45 08             	mov    0x8(%ebp),%eax
 4b3:	89 de                	mov    %ebx,%esi
 4b5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 4b9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4bc:	5b                   	pop    %ebx
 4bd:	5e                   	pop    %esi
 4be:	5f                   	pop    %edi
 4bf:	5d                   	pop    %ebp
 4c0:	c3                   	ret    
 4c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4cf:	90                   	nop

000004d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	56                   	push   %esi
 4d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4d5:	83 ec 08             	sub    $0x8,%esp
 4d8:	6a 00                	push   $0x0
 4da:	ff 75 08             	push   0x8(%ebp)
 4dd:	e8 82 02 00 00       	call   764 <open>
  if(fd < 0)
 4e2:	83 c4 10             	add    $0x10,%esp
 4e5:	85 c0                	test   %eax,%eax
 4e7:	78 27                	js     510 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4e9:	83 ec 08             	sub    $0x8,%esp
 4ec:	ff 75 0c             	push   0xc(%ebp)
 4ef:	89 c3                	mov    %eax,%ebx
 4f1:	50                   	push   %eax
 4f2:	e8 85 02 00 00       	call   77c <fstat>
  close(fd);
 4f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4fa:	89 c6                	mov    %eax,%esi
  close(fd);
 4fc:	e8 4b 02 00 00       	call   74c <close>
  return r;
 501:	83 c4 10             	add    $0x10,%esp
}
 504:	8d 65 f8             	lea    -0x8(%ebp),%esp
 507:	89 f0                	mov    %esi,%eax
 509:	5b                   	pop    %ebx
 50a:	5e                   	pop    %esi
 50b:	5d                   	pop    %ebp
 50c:	c3                   	ret    
 50d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 510:	be ff ff ff ff       	mov    $0xffffffff,%esi
 515:	eb ed                	jmp    504 <stat+0x34>
 517:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51e:	66 90                	xchg   %ax,%ax

00000520 <atoi>:

int
atoi(const char *s)
{
 520:	55                   	push   %ebp
 521:	89 e5                	mov    %esp,%ebp
 523:	53                   	push   %ebx
 524:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 527:	0f be 02             	movsbl (%edx),%eax
 52a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 52d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 530:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 535:	77 1e                	ja     555 <atoi+0x35>
 537:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 540:	83 c2 01             	add    $0x1,%edx
 543:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 546:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 54a:	0f be 02             	movsbl (%edx),%eax
 54d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 550:	80 fb 09             	cmp    $0x9,%bl
 553:	76 eb                	jbe    540 <atoi+0x20>
  return n;
}
 555:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 558:	89 c8                	mov    %ecx,%eax
 55a:	c9                   	leave  
 55b:	c3                   	ret    
 55c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000560 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
 564:	8b 45 10             	mov    0x10(%ebp),%eax
 567:	8b 55 08             	mov    0x8(%ebp),%edx
 56a:	56                   	push   %esi
 56b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 56e:	85 c0                	test   %eax,%eax
 570:	7e 13                	jle    585 <memmove+0x25>
 572:	01 d0                	add    %edx,%eax
  dst = vdst;
 574:	89 d7                	mov    %edx,%edi
 576:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 580:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 581:	39 f8                	cmp    %edi,%eax
 583:	75 fb                	jne    580 <memmove+0x20>
  return vdst;
}
 585:	5e                   	pop    %esi
 586:	89 d0                	mov    %edx,%eax
 588:	5f                   	pop    %edi
 589:	5d                   	pop    %ebp
 58a:	c3                   	ret    
 58b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop

00000590 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 590:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 591:	b8 01 00 00 00       	mov    $0x1,%eax
 596:	89 e5                	mov    %esp,%ebp
 598:	53                   	push   %ebx
 599:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 59c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 5a3:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 5aa:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 5af:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5b2:	39 c2                	cmp    %eax,%edx
 5b4:	74 24                	je     5da <thread_create+0x4a>
 5b6:	89 c3                	mov    %eax,%ebx
 5b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 5c0:	83 ec 04             	sub    $0x4,%esp
 5c3:	52                   	push   %edx
 5c4:	68 02 0c 00 00       	push   $0xc02
 5c9:	6a 01                	push   $0x1
 5cb:	e8 c0 02 00 00       	call   890 <printf>
  while(lock->turn != myturn){
 5d0:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5d3:	83 c4 10             	add    $0x10,%esp
 5d6:	39 d3                	cmp    %edx,%ebx
 5d8:	75 e6                	jne    5c0 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 5da:	83 ec 0c             	sub    $0xc,%esp
 5dd:	68 00 20 00 00       	push   $0x2000
 5e2:	e8 d9 04 00 00       	call   ac0 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 5e7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 5eb:	83 c4 10             	add    $0x10,%esp
 5ee:	89 c2                	mov    %eax,%edx
 5f0:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 5f6:	74 07                	je     5ff <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 5f8:	29 d0                	sub    %edx,%eax
 5fa:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 5ff:	50                   	push   %eax
 600:	ff 75 10             	push   0x10(%ebp)
 603:	ff 75 0c             	push   0xc(%ebp)
 606:	ff 75 08             	push   0x8(%ebp)
 609:	e8 b6 01 00 00       	call   7c4 <clone>
}
 60e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 611:	c9                   	leave  
 612:	c3                   	ret    
 613:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 61a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000620 <thread_join>:
int thread_join(){
 620:	55                   	push   %ebp
 621:	89 e5                	mov    %esp,%ebp
 623:	56                   	push   %esi
 624:	53                   	push   %ebx
 625:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 628:	6a 04                	push   $0x4
 62a:	e8 91 04 00 00       	call   ac0 <malloc>
 62f:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 632:	8d 45 ec             	lea    -0x14(%ebp),%eax
 635:	89 04 24             	mov    %eax,(%esp)
 638:	e8 8f 01 00 00       	call   7cc <join>
  lock->ticket = 0;
 63d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 644:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 646:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 64d:	b8 01 00 00 00       	mov    $0x1,%eax
 652:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 657:	8b 55 f4             	mov    -0xc(%ebp),%edx
 65a:	83 c4 10             	add    $0x10,%esp
 65d:	39 c2                	cmp    %eax,%edx
 65f:	74 21                	je     682 <thread_join+0x62>
 661:	89 c3                	mov    %eax,%ebx
 663:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 667:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 668:	83 ec 04             	sub    $0x4,%esp
 66b:	52                   	push   %edx
 66c:	68 02 0c 00 00       	push   $0xc02
 671:	6a 01                	push   $0x1
 673:	e8 18 02 00 00       	call   890 <printf>
  while(lock->turn != myturn){
 678:	8b 55 f4             	mov    -0xc(%ebp),%edx
 67b:	83 c4 10             	add    $0x10,%esp
 67e:	39 d3                	cmp    %edx,%ebx
 680:	75 e6                	jne    668 <thread_join+0x48>
	free(stack);
 682:	83 ec 0c             	sub    $0xc,%esp
 685:	ff 75 ec             	push   -0x14(%ebp)
 688:	e8 a3 03 00 00       	call   a30 <free>
}
 68d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 690:	89 f0                	mov    %esi,%eax
 692:	5b                   	pop    %ebx
 693:	5e                   	pop    %esi
 694:	5d                   	pop    %ebp
 695:	c3                   	ret    
 696:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 69d:	8d 76 00             	lea    0x0(%esi),%esi

000006a0 <lock_init>:
void lock_init(lock_t *lock) {
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 6a6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 6ac:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 6b3:	5d                   	pop    %ebp
 6b4:	c3                   	ret    
 6b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006c0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 6c0:	55                   	push   %ebp
 6c1:	b8 01 00 00 00       	mov    $0x1,%eax
 6c6:	89 e5                	mov    %esp,%ebp
 6c8:	56                   	push   %esi
 6c9:	8b 75 08             	mov    0x8(%ebp),%esi
 6cc:	53                   	push   %ebx
 6cd:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 6d1:	8b 56 04             	mov    0x4(%esi),%edx
 6d4:	39 d0                	cmp    %edx,%eax
 6d6:	74 22                	je     6fa <lock_acquire+0x3a>
 6d8:	89 c3                	mov    %eax,%ebx
 6da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 6e0:	83 ec 04             	sub    $0x4,%esp
 6e3:	52                   	push   %edx
 6e4:	68 02 0c 00 00       	push   $0xc02
 6e9:	6a 01                	push   $0x1
 6eb:	e8 a0 01 00 00       	call   890 <printf>
  while(lock->turn != myturn){
 6f0:	8b 56 04             	mov    0x4(%esi),%edx
 6f3:	83 c4 10             	add    $0x10,%esp
 6f6:	39 da                	cmp    %ebx,%edx
 6f8:	75 e6                	jne    6e0 <lock_acquire+0x20>
}
 6fa:	8d 65 f8             	lea    -0x8(%ebp),%esp
 6fd:	5b                   	pop    %ebx
 6fe:	5e                   	pop    %esi
 6ff:	5d                   	pop    %ebp
 700:	c3                   	ret    
 701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 708:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70f:	90                   	nop

00000710 <lock_release>:
void lock_release(lock_t *lock){
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 716:	83 40 04 01          	addl   $0x1,0x4(%eax)
 71a:	5d                   	pop    %ebp
 71b:	c3                   	ret    

0000071c <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 71c:	b8 01 00 00 00       	mov    $0x1,%eax
 721:	cd 40                	int    $0x40
 723:	c3                   	ret    

00000724 <exit>:
SYSCALL(exit)
 724:	b8 02 00 00 00       	mov    $0x2,%eax
 729:	cd 40                	int    $0x40
 72b:	c3                   	ret    

0000072c <wait>:
SYSCALL(wait)
 72c:	b8 03 00 00 00       	mov    $0x3,%eax
 731:	cd 40                	int    $0x40
 733:	c3                   	ret    

00000734 <pipe>:
SYSCALL(pipe)
 734:	b8 04 00 00 00       	mov    $0x4,%eax
 739:	cd 40                	int    $0x40
 73b:	c3                   	ret    

0000073c <read>:
SYSCALL(read)
 73c:	b8 05 00 00 00       	mov    $0x5,%eax
 741:	cd 40                	int    $0x40
 743:	c3                   	ret    

00000744 <write>:
SYSCALL(write)
 744:	b8 10 00 00 00       	mov    $0x10,%eax
 749:	cd 40                	int    $0x40
 74b:	c3                   	ret    

0000074c <close>:
SYSCALL(close)
 74c:	b8 15 00 00 00       	mov    $0x15,%eax
 751:	cd 40                	int    $0x40
 753:	c3                   	ret    

00000754 <kill>:
SYSCALL(kill)
 754:	b8 06 00 00 00       	mov    $0x6,%eax
 759:	cd 40                	int    $0x40
 75b:	c3                   	ret    

0000075c <exec>:
SYSCALL(exec)
 75c:	b8 07 00 00 00       	mov    $0x7,%eax
 761:	cd 40                	int    $0x40
 763:	c3                   	ret    

00000764 <open>:
SYSCALL(open)
 764:	b8 0f 00 00 00       	mov    $0xf,%eax
 769:	cd 40                	int    $0x40
 76b:	c3                   	ret    

0000076c <mknod>:
SYSCALL(mknod)
 76c:	b8 11 00 00 00       	mov    $0x11,%eax
 771:	cd 40                	int    $0x40
 773:	c3                   	ret    

00000774 <unlink>:
SYSCALL(unlink)
 774:	b8 12 00 00 00       	mov    $0x12,%eax
 779:	cd 40                	int    $0x40
 77b:	c3                   	ret    

0000077c <fstat>:
SYSCALL(fstat)
 77c:	b8 08 00 00 00       	mov    $0x8,%eax
 781:	cd 40                	int    $0x40
 783:	c3                   	ret    

00000784 <link>:
SYSCALL(link)
 784:	b8 13 00 00 00       	mov    $0x13,%eax
 789:	cd 40                	int    $0x40
 78b:	c3                   	ret    

0000078c <mkdir>:
SYSCALL(mkdir)
 78c:	b8 14 00 00 00       	mov    $0x14,%eax
 791:	cd 40                	int    $0x40
 793:	c3                   	ret    

00000794 <chdir>:
SYSCALL(chdir)
 794:	b8 09 00 00 00       	mov    $0x9,%eax
 799:	cd 40                	int    $0x40
 79b:	c3                   	ret    

0000079c <dup>:
SYSCALL(dup)
 79c:	b8 0a 00 00 00       	mov    $0xa,%eax
 7a1:	cd 40                	int    $0x40
 7a3:	c3                   	ret    

000007a4 <getpid>:
SYSCALL(getpid)
 7a4:	b8 0b 00 00 00       	mov    $0xb,%eax
 7a9:	cd 40                	int    $0x40
 7ab:	c3                   	ret    

000007ac <sbrk>:
SYSCALL(sbrk)
 7ac:	b8 0c 00 00 00       	mov    $0xc,%eax
 7b1:	cd 40                	int    $0x40
 7b3:	c3                   	ret    

000007b4 <sleep>:
SYSCALL(sleep)
 7b4:	b8 0d 00 00 00       	mov    $0xd,%eax
 7b9:	cd 40                	int    $0x40
 7bb:	c3                   	ret    

000007bc <uptime>:
SYSCALL(uptime)
 7bc:	b8 0e 00 00 00       	mov    $0xe,%eax
 7c1:	cd 40                	int    $0x40
 7c3:	c3                   	ret    

000007c4 <clone>:
SYSCALL(clone)
 7c4:	b8 16 00 00 00       	mov    $0x16,%eax
 7c9:	cd 40                	int    $0x40
 7cb:	c3                   	ret    

000007cc <join>:
SYSCALL(join)
 7cc:	b8 17 00 00 00       	mov    $0x17,%eax
 7d1:	cd 40                	int    $0x40
 7d3:	c3                   	ret    
 7d4:	66 90                	xchg   %ax,%ax
 7d6:	66 90                	xchg   %ax,%ax
 7d8:	66 90                	xchg   %ax,%ax
 7da:	66 90                	xchg   %ax,%ax
 7dc:	66 90                	xchg   %ax,%ax
 7de:	66 90                	xchg   %ax,%ax

000007e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7e0:	55                   	push   %ebp
 7e1:	89 e5                	mov    %esp,%ebp
 7e3:	57                   	push   %edi
 7e4:	56                   	push   %esi
 7e5:	53                   	push   %ebx
 7e6:	83 ec 3c             	sub    $0x3c,%esp
 7e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 7ec:	89 d1                	mov    %edx,%ecx
{
 7ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 7f1:	85 d2                	test   %edx,%edx
 7f3:	0f 89 7f 00 00 00    	jns    878 <printint+0x98>
 7f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7fd:	74 79                	je     878 <printint+0x98>
    neg = 1;
 7ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 806:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 808:	31 db                	xor    %ebx,%ebx
 80a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 80d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 810:	89 c8                	mov    %ecx,%eax
 812:	31 d2                	xor    %edx,%edx
 814:	89 cf                	mov    %ecx,%edi
 816:	f7 75 c4             	divl   -0x3c(%ebp)
 819:	0f b6 92 78 0c 00 00 	movzbl 0xc78(%edx),%edx
 820:	89 45 c0             	mov    %eax,-0x40(%ebp)
 823:	89 d8                	mov    %ebx,%eax
 825:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 828:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 82b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 82e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 831:	76 dd                	jbe    810 <printint+0x30>
  if(neg)
 833:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 836:	85 c9                	test   %ecx,%ecx
 838:	74 0c                	je     846 <printint+0x66>
    buf[i++] = '-';
 83a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 83f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 841:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 846:	8b 7d b8             	mov    -0x48(%ebp),%edi
 849:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 84d:	eb 07                	jmp    856 <printint+0x76>
 84f:	90                   	nop
    putc(fd, buf[i]);
 850:	0f b6 13             	movzbl (%ebx),%edx
 853:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 856:	83 ec 04             	sub    $0x4,%esp
 859:	88 55 d7             	mov    %dl,-0x29(%ebp)
 85c:	6a 01                	push   $0x1
 85e:	56                   	push   %esi
 85f:	57                   	push   %edi
 860:	e8 df fe ff ff       	call   744 <write>
  while(--i >= 0)
 865:	83 c4 10             	add    $0x10,%esp
 868:	39 de                	cmp    %ebx,%esi
 86a:	75 e4                	jne    850 <printint+0x70>
}
 86c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 86f:	5b                   	pop    %ebx
 870:	5e                   	pop    %esi
 871:	5f                   	pop    %edi
 872:	5d                   	pop    %ebp
 873:	c3                   	ret    
 874:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 878:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 87f:	eb 87                	jmp    808 <printint+0x28>
 881:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 888:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 88f:	90                   	nop

00000890 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 890:	55                   	push   %ebp
 891:	89 e5                	mov    %esp,%ebp
 893:	57                   	push   %edi
 894:	56                   	push   %esi
 895:	53                   	push   %ebx
 896:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 899:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 89c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 89f:	0f b6 13             	movzbl (%ebx),%edx
 8a2:	84 d2                	test   %dl,%dl
 8a4:	74 6a                	je     910 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 8a6:	8d 45 10             	lea    0x10(%ebp),%eax
 8a9:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 8ac:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 8af:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 8b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8b4:	eb 36                	jmp    8ec <printf+0x5c>
 8b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8bd:	8d 76 00             	lea    0x0(%esi),%esi
 8c0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 8c3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 8c8:	83 f8 25             	cmp    $0x25,%eax
 8cb:	74 15                	je     8e2 <printf+0x52>
  write(fd, &c, 1);
 8cd:	83 ec 04             	sub    $0x4,%esp
 8d0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8d3:	6a 01                	push   $0x1
 8d5:	57                   	push   %edi
 8d6:	56                   	push   %esi
 8d7:	e8 68 fe ff ff       	call   744 <write>
 8dc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 8df:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8e2:	0f b6 13             	movzbl (%ebx),%edx
 8e5:	83 c3 01             	add    $0x1,%ebx
 8e8:	84 d2                	test   %dl,%dl
 8ea:	74 24                	je     910 <printf+0x80>
    c = fmt[i] & 0xff;
 8ec:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 8ef:	85 c9                	test   %ecx,%ecx
 8f1:	74 cd                	je     8c0 <printf+0x30>
      }
    } else if(state == '%'){
 8f3:	83 f9 25             	cmp    $0x25,%ecx
 8f6:	75 ea                	jne    8e2 <printf+0x52>
      if(c == 'd'){
 8f8:	83 f8 25             	cmp    $0x25,%eax
 8fb:	0f 84 07 01 00 00    	je     a08 <printf+0x178>
 901:	83 e8 63             	sub    $0x63,%eax
 904:	83 f8 15             	cmp    $0x15,%eax
 907:	77 17                	ja     920 <printf+0x90>
 909:	ff 24 85 20 0c 00 00 	jmp    *0xc20(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 910:	8d 65 f4             	lea    -0xc(%ebp),%esp
 913:	5b                   	pop    %ebx
 914:	5e                   	pop    %esi
 915:	5f                   	pop    %edi
 916:	5d                   	pop    %ebp
 917:	c3                   	ret    
 918:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 91f:	90                   	nop
  write(fd, &c, 1);
 920:	83 ec 04             	sub    $0x4,%esp
 923:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 926:	6a 01                	push   $0x1
 928:	57                   	push   %edi
 929:	56                   	push   %esi
 92a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 92e:	e8 11 fe ff ff       	call   744 <write>
        putc(fd, c);
 933:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 937:	83 c4 0c             	add    $0xc,%esp
 93a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 93d:	6a 01                	push   $0x1
 93f:	57                   	push   %edi
 940:	56                   	push   %esi
 941:	e8 fe fd ff ff       	call   744 <write>
        putc(fd, c);
 946:	83 c4 10             	add    $0x10,%esp
      state = 0;
 949:	31 c9                	xor    %ecx,%ecx
 94b:	eb 95                	jmp    8e2 <printf+0x52>
 94d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 950:	83 ec 0c             	sub    $0xc,%esp
 953:	b9 10 00 00 00       	mov    $0x10,%ecx
 958:	6a 00                	push   $0x0
 95a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 95d:	8b 10                	mov    (%eax),%edx
 95f:	89 f0                	mov    %esi,%eax
 961:	e8 7a fe ff ff       	call   7e0 <printint>
        ap++;
 966:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 96a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 96d:	31 c9                	xor    %ecx,%ecx
 96f:	e9 6e ff ff ff       	jmp    8e2 <printf+0x52>
 974:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 978:	8b 45 d0             	mov    -0x30(%ebp),%eax
 97b:	8b 10                	mov    (%eax),%edx
        ap++;
 97d:	83 c0 04             	add    $0x4,%eax
 980:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 983:	85 d2                	test   %edx,%edx
 985:	0f 84 8d 00 00 00    	je     a18 <printf+0x188>
        while(*s != 0){
 98b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 98e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 990:	84 c0                	test   %al,%al
 992:	0f 84 4a ff ff ff    	je     8e2 <printf+0x52>
 998:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 99b:	89 d3                	mov    %edx,%ebx
 99d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 9a0:	83 ec 04             	sub    $0x4,%esp
          s++;
 9a3:	83 c3 01             	add    $0x1,%ebx
 9a6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9a9:	6a 01                	push   $0x1
 9ab:	57                   	push   %edi
 9ac:	56                   	push   %esi
 9ad:	e8 92 fd ff ff       	call   744 <write>
        while(*s != 0){
 9b2:	0f b6 03             	movzbl (%ebx),%eax
 9b5:	83 c4 10             	add    $0x10,%esp
 9b8:	84 c0                	test   %al,%al
 9ba:	75 e4                	jne    9a0 <printf+0x110>
      state = 0;
 9bc:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 9bf:	31 c9                	xor    %ecx,%ecx
 9c1:	e9 1c ff ff ff       	jmp    8e2 <printf+0x52>
 9c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 9d0:	83 ec 0c             	sub    $0xc,%esp
 9d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9d8:	6a 01                	push   $0x1
 9da:	e9 7b ff ff ff       	jmp    95a <printf+0xca>
 9df:	90                   	nop
        putc(fd, *ap);
 9e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 9e3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9e6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 9e8:	6a 01                	push   $0x1
 9ea:	57                   	push   %edi
 9eb:	56                   	push   %esi
        putc(fd, *ap);
 9ec:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9ef:	e8 50 fd ff ff       	call   744 <write>
        ap++;
 9f4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9f8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9fb:	31 c9                	xor    %ecx,%ecx
 9fd:	e9 e0 fe ff ff       	jmp    8e2 <printf+0x52>
 a02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 a08:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 a0b:	83 ec 04             	sub    $0x4,%esp
 a0e:	e9 2a ff ff ff       	jmp    93d <printf+0xad>
 a13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 a17:	90                   	nop
          s = "(null)";
 a18:	ba 16 0c 00 00       	mov    $0xc16,%edx
        while(*s != 0){
 a1d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a20:	b8 28 00 00 00       	mov    $0x28,%eax
 a25:	89 d3                	mov    %edx,%ebx
 a27:	e9 74 ff ff ff       	jmp    9a0 <printf+0x110>
 a2c:	66 90                	xchg   %ax,%ax
 a2e:	66 90                	xchg   %ax,%ax

00000a30 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a30:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a31:	a1 6c 10 00 00       	mov    0x106c,%eax
{
 a36:	89 e5                	mov    %esp,%ebp
 a38:	57                   	push   %edi
 a39:	56                   	push   %esi
 a3a:	53                   	push   %ebx
 a3b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a3e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a48:	89 c2                	mov    %eax,%edx
 a4a:	8b 00                	mov    (%eax),%eax
 a4c:	39 ca                	cmp    %ecx,%edx
 a4e:	73 30                	jae    a80 <free+0x50>
 a50:	39 c1                	cmp    %eax,%ecx
 a52:	72 04                	jb     a58 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a54:	39 c2                	cmp    %eax,%edx
 a56:	72 f0                	jb     a48 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a58:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a5b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a5e:	39 f8                	cmp    %edi,%eax
 a60:	74 30                	je     a92 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a62:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a65:	8b 42 04             	mov    0x4(%edx),%eax
 a68:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a6b:	39 f1                	cmp    %esi,%ecx
 a6d:	74 3a                	je     aa9 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a6f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a71:	5b                   	pop    %ebx
  freep = p;
 a72:	89 15 6c 10 00 00    	mov    %edx,0x106c
}
 a78:	5e                   	pop    %esi
 a79:	5f                   	pop    %edi
 a7a:	5d                   	pop    %ebp
 a7b:	c3                   	ret    
 a7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a80:	39 c2                	cmp    %eax,%edx
 a82:	72 c4                	jb     a48 <free+0x18>
 a84:	39 c1                	cmp    %eax,%ecx
 a86:	73 c0                	jae    a48 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a88:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a8b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a8e:	39 f8                	cmp    %edi,%eax
 a90:	75 d0                	jne    a62 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a92:	03 70 04             	add    0x4(%eax),%esi
 a95:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a98:	8b 02                	mov    (%edx),%eax
 a9a:	8b 00                	mov    (%eax),%eax
 a9c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a9f:	8b 42 04             	mov    0x4(%edx),%eax
 aa2:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 aa5:	39 f1                	cmp    %esi,%ecx
 aa7:	75 c6                	jne    a6f <free+0x3f>
    p->s.size += bp->s.size;
 aa9:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 aac:	89 15 6c 10 00 00    	mov    %edx,0x106c
    p->s.size += bp->s.size;
 ab2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 ab5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 ab8:	89 0a                	mov    %ecx,(%edx)
}
 aba:	5b                   	pop    %ebx
 abb:	5e                   	pop    %esi
 abc:	5f                   	pop    %edi
 abd:	5d                   	pop    %ebp
 abe:	c3                   	ret    
 abf:	90                   	nop

00000ac0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 ac0:	55                   	push   %ebp
 ac1:	89 e5                	mov    %esp,%ebp
 ac3:	57                   	push   %edi
 ac4:	56                   	push   %esi
 ac5:	53                   	push   %ebx
 ac6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ac9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 acc:	8b 3d 6c 10 00 00    	mov    0x106c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ad2:	8d 70 07             	lea    0x7(%eax),%esi
 ad5:	c1 ee 03             	shr    $0x3,%esi
 ad8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 adb:	85 ff                	test   %edi,%edi
 add:	0f 84 9d 00 00 00    	je     b80 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ae3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 ae5:	8b 4a 04             	mov    0x4(%edx),%ecx
 ae8:	39 f1                	cmp    %esi,%ecx
 aea:	73 6a                	jae    b56 <malloc+0x96>
 aec:	bb 00 10 00 00       	mov    $0x1000,%ebx
 af1:	39 de                	cmp    %ebx,%esi
 af3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 af6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 afd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 b00:	eb 17                	jmp    b19 <malloc+0x59>
 b02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b08:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 b0a:	8b 48 04             	mov    0x4(%eax),%ecx
 b0d:	39 f1                	cmp    %esi,%ecx
 b0f:	73 4f                	jae    b60 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 b11:	8b 3d 6c 10 00 00    	mov    0x106c,%edi
 b17:	89 c2                	mov    %eax,%edx
 b19:	39 d7                	cmp    %edx,%edi
 b1b:	75 eb                	jne    b08 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 b1d:	83 ec 0c             	sub    $0xc,%esp
 b20:	ff 75 e4             	push   -0x1c(%ebp)
 b23:	e8 84 fc ff ff       	call   7ac <sbrk>
  if(p == (char*)-1)
 b28:	83 c4 10             	add    $0x10,%esp
 b2b:	83 f8 ff             	cmp    $0xffffffff,%eax
 b2e:	74 1c                	je     b4c <malloc+0x8c>
  hp->s.size = nu;
 b30:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b33:	83 ec 0c             	sub    $0xc,%esp
 b36:	83 c0 08             	add    $0x8,%eax
 b39:	50                   	push   %eax
 b3a:	e8 f1 fe ff ff       	call   a30 <free>
  return freep;
 b3f:	8b 15 6c 10 00 00    	mov    0x106c,%edx
      if((p = morecore(nunits)) == 0)
 b45:	83 c4 10             	add    $0x10,%esp
 b48:	85 d2                	test   %edx,%edx
 b4a:	75 bc                	jne    b08 <malloc+0x48>
        return 0;
  }
}
 b4c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b4f:	31 c0                	xor    %eax,%eax
}
 b51:	5b                   	pop    %ebx
 b52:	5e                   	pop    %esi
 b53:	5f                   	pop    %edi
 b54:	5d                   	pop    %ebp
 b55:	c3                   	ret    
    if(p->s.size >= nunits){
 b56:	89 d0                	mov    %edx,%eax
 b58:	89 fa                	mov    %edi,%edx
 b5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b60:	39 ce                	cmp    %ecx,%esi
 b62:	74 4c                	je     bb0 <malloc+0xf0>
        p->s.size -= nunits;
 b64:	29 f1                	sub    %esi,%ecx
 b66:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b69:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b6c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b6f:	89 15 6c 10 00 00    	mov    %edx,0x106c
}
 b75:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b78:	83 c0 08             	add    $0x8,%eax
}
 b7b:	5b                   	pop    %ebx
 b7c:	5e                   	pop    %esi
 b7d:	5f                   	pop    %edi
 b7e:	5d                   	pop    %ebp
 b7f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b80:	c7 05 6c 10 00 00 70 	movl   $0x1070,0x106c
 b87:	10 00 00 
    base.s.size = 0;
 b8a:	bf 70 10 00 00       	mov    $0x1070,%edi
    base.s.ptr = freep = prevp = &base;
 b8f:	c7 05 70 10 00 00 70 	movl   $0x1070,0x1070
 b96:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b99:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b9b:	c7 05 74 10 00 00 00 	movl   $0x0,0x1074
 ba2:	00 00 00 
    if(p->s.size >= nunits){
 ba5:	e9 42 ff ff ff       	jmp    aec <malloc+0x2c>
 baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 bb0:	8b 08                	mov    (%eax),%ecx
 bb2:	89 0a                	mov    %ecx,(%edx)
 bb4:	eb b9                	jmp    b6f <malloc+0xaf>
