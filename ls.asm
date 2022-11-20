
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
  3d:	e8 94 06 00 00       	call   6d6 <exit>
    ls(".");
  42:	83 ec 0c             	sub    $0xc,%esp
  45:	68 b0 0b 00 00       	push   $0xbb0
  4a:	e8 b1 00 00 00       	call   100 <ls>
    exit();
  4f:	e8 82 06 00 00       	call   6d6 <exit>
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
  b0:	68 fc 0f 00 00       	push   $0xffc
  b5:	e8 a6 04 00 00       	call   560 <memmove>
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ba:	89 1c 24             	mov    %ebx,(%esp)
  bd:	e8 0e 03 00 00       	call   3d0 <strlen>
  c2:	89 1c 24             	mov    %ebx,(%esp)
  return buf;
  c5:	bb fc 0f 00 00       	mov    $0xffc,%ebx
  memset(buf+strlen(p), ' ', DIRSIZ-strlen(p));
  ca:	89 c6                	mov    %eax,%esi
  cc:	e8 ff 02 00 00       	call   3d0 <strlen>
  d1:	ba 0e 00 00 00       	mov    $0xe,%edx
  d6:	83 c4 0c             	add    $0xc,%esp
  d9:	29 f2                	sub    %esi,%edx
  db:	05 fc 0f 00 00       	add    $0xffc,%eax
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
 112:	e8 ff 05 00 00       	call   716 <open>
 117:	83 c4 10             	add    $0x10,%esp
 11a:	85 c0                	test   %eax,%eax
 11c:	0f 88 9e 01 00 00    	js     2c0 <ls+0x1c0>
  if(fstat(fd, &st) < 0){
 122:	83 ec 08             	sub    $0x8,%esp
 125:	8d b5 d4 fd ff ff    	lea    -0x22c(%ebp),%esi
 12b:	89 c3                	mov    %eax,%ebx
 12d:	56                   	push   %esi
 12e:	50                   	push   %eax
 12f:	e8 fa 05 00 00       	call   72e <fstat>
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
 156:	e8 a3 05 00 00       	call   6fe <close>
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
 198:	68 90 0b 00 00       	push   $0xb90
 19d:	6a 01                	push   $0x1
 19f:	e8 9c 06 00 00       	call   840 <printf>
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
 20d:	e8 dc 04 00 00       	call   6ee <read>
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
 2a2:	68 90 0b 00 00       	push   $0xb90
 2a7:	6a 01                	push   $0x1
 2a9:	e8 92 05 00 00       	call   840 <printf>
 2ae:	83 c4 20             	add    $0x20,%esp
 2b1:	e9 4a ff ff ff       	jmp    200 <ls+0x100>
 2b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2bd:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "ls: cannot open %s\n", path);
 2c0:	83 ec 04             	sub    $0x4,%esp
 2c3:	57                   	push   %edi
 2c4:	68 68 0b 00 00       	push   $0xb68
 2c9:	6a 02                	push   $0x2
 2cb:	e8 70 05 00 00       	call   840 <printf>
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
 2e3:	68 9d 0b 00 00       	push   $0xb9d
 2e8:	6a 01                	push   $0x1
 2ea:	e8 51 05 00 00       	call   840 <printf>
      break;
 2ef:	83 c4 10             	add    $0x10,%esp
 2f2:	e9 5b fe ff ff       	jmp    152 <ls+0x52>
 2f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2fe:	66 90                	xchg   %ax,%ax
    printf(2, "ls: cannot stat %s\n", path);
 300:	83 ec 04             	sub    $0x4,%esp
 303:	57                   	push   %edi
 304:	68 7c 0b 00 00       	push   $0xb7c
 309:	6a 02                	push   $0x2
 30b:	e8 30 05 00 00       	call   840 <printf>
    close(fd);
 310:	89 1c 24             	mov    %ebx,(%esp)
 313:	e8 e6 03 00 00       	call   6fe <close>
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
 32c:	68 7c 0b 00 00       	push   $0xb7c
 331:	6a 01                	push   $0x1
 333:	e8 08 05 00 00       	call   840 <printf>
        continue;
 338:	83 c4 10             	add    $0x10,%esp
 33b:	e9 c0 fe ff ff       	jmp    200 <ls+0x100>

00000340 <strcpy>:

lock_t lk_create,lk_join;

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
 478:	e8 71 02 00 00       	call   6ee <read>
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
 4dd:	e8 34 02 00 00       	call   716 <open>
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
 4f2:	e8 37 02 00 00       	call   72e <fstat>
  close(fd);
 4f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4fa:	89 c6                	mov    %eax,%esi
  close(fd);
 4fc:	e8 fd 01 00 00       	call   6fe <close>
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
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 591:	ba 01 00 00 00       	mov    $0x1,%edx
 596:	89 e5                	mov    %esp,%ebp
 598:	83 ec 08             	sub    $0x8,%esp
 59b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 59f:	90                   	nop
 5a0:	89 d0                	mov    %edx,%eax
 5a2:	f0 87 05 10 10 00 00 	lock xchg %eax,0x1010
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 5a9:	85 c0                	test   %eax,%eax
 5ab:	75 f3                	jne    5a0 <thread_create+0x10>
    __sync_synchronize();
 5ad:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 5b2:	83 ec 0c             	sub    $0xc,%esp
 5b5:	68 00 20 00 00       	push   $0x2000
 5ba:	e8 b1 04 00 00       	call   a70 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 5bf:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 5c4:	c7 05 10 10 00 00 00 	movl   $0x0,0x1010
 5cb:	00 00 00 
	if((uint)stack % PGSIZE)
 5ce:	89 c2                	mov    %eax,%edx
 5d0:	83 c4 10             	add    $0x10,%esp
 5d3:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 5d9:	74 07                	je     5e2 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 5db:	29 d0                	sub    %edx,%eax
 5dd:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 5e2:	50                   	push   %eax
 5e3:	ff 75 10             	push   0x10(%ebp)
 5e6:	ff 75 0c             	push   0xc(%ebp)
 5e9:	ff 75 08             	push   0x8(%ebp)
 5ec:	e8 85 01 00 00       	call   776 <clone>
}
 5f1:	c9                   	leave  
 5f2:	c3                   	ret    
 5f3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000600 <thread_join>:
int thread_join(){
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	53                   	push   %ebx
	int result= join(&stack);
 604:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 607:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 60a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 611:	50                   	push   %eax
 612:	e8 67 01 00 00       	call   77e <join>
    while(xchg(&(lock->mutex), 1) != 0);
 617:	83 c4 10             	add    $0x10,%esp
 61a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 61f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 628:	89 d0                	mov    %edx,%eax
 62a:	f0 87 05 0c 10 00 00 	lock xchg %eax,0x100c
 631:	85 c0                	test   %eax,%eax
 633:	75 f3                	jne    628 <thread_join+0x28>
    __sync_synchronize();
 635:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 63a:	83 ec 0c             	sub    $0xc,%esp
 63d:	ff 75 f4             	push   -0xc(%ebp)
 640:	e8 9b 03 00 00       	call   9e0 <free>
   __sync_synchronize();
 645:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 64a:	c7 05 0c 10 00 00 00 	movl   $0x0,0x100c
 651:	00 00 00 
}
 654:	89 d8                	mov    %ebx,%eax
 656:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 659:	c9                   	leave  
 65a:	c3                   	ret    
 65b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 65f:	90                   	nop

00000660 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 660:	c7 05 10 10 00 00 00 	movl   $0x0,0x1010
 667:	00 00 00 
 66a:	c7 05 0c 10 00 00 00 	movl   $0x0,0x100c
 671:	00 00 00 
}
 674:	c3                   	ret    
 675:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 67c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000680 <lock_acquire>:
void lock_acquire(lock_t *lock){
 680:	55                   	push   %ebp
 681:	b9 01 00 00 00       	mov    $0x1,%ecx
 686:	89 e5                	mov    %esp,%ebp
 688:	8b 55 08             	mov    0x8(%ebp),%edx
 68b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 68f:	90                   	nop
 690:	89 c8                	mov    %ecx,%eax
 692:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 695:	85 c0                	test   %eax,%eax
 697:	75 f7                	jne    690 <lock_acquire+0x10>
    __sync_synchronize();
 699:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 69e:	5d                   	pop    %ebp
 69f:	c3                   	ret    

000006a0 <lock_release>:
void lock_release(lock_t *lock){
 6a0:	55                   	push   %ebp
 6a1:	89 e5                	mov    %esp,%ebp
 6a3:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 6a6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 6ab:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 6b1:	5d                   	pop    %ebp
 6b2:	c3                   	ret    
 6b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000006c0 <lock_init>:
void lock_init(lock_t *lock) {
 6c0:	55                   	push   %ebp
 6c1:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 6c3:	8b 45 08             	mov    0x8(%ebp),%eax
 6c6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 6cc:	5d                   	pop    %ebp
 6cd:	c3                   	ret    

000006ce <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6ce:	b8 01 00 00 00       	mov    $0x1,%eax
 6d3:	cd 40                	int    $0x40
 6d5:	c3                   	ret    

000006d6 <exit>:
SYSCALL(exit)
 6d6:	b8 02 00 00 00       	mov    $0x2,%eax
 6db:	cd 40                	int    $0x40
 6dd:	c3                   	ret    

000006de <wait>:
SYSCALL(wait)
 6de:	b8 03 00 00 00       	mov    $0x3,%eax
 6e3:	cd 40                	int    $0x40
 6e5:	c3                   	ret    

000006e6 <pipe>:
SYSCALL(pipe)
 6e6:	b8 04 00 00 00       	mov    $0x4,%eax
 6eb:	cd 40                	int    $0x40
 6ed:	c3                   	ret    

000006ee <read>:
SYSCALL(read)
 6ee:	b8 05 00 00 00       	mov    $0x5,%eax
 6f3:	cd 40                	int    $0x40
 6f5:	c3                   	ret    

000006f6 <write>:
SYSCALL(write)
 6f6:	b8 10 00 00 00       	mov    $0x10,%eax
 6fb:	cd 40                	int    $0x40
 6fd:	c3                   	ret    

000006fe <close>:
SYSCALL(close)
 6fe:	b8 15 00 00 00       	mov    $0x15,%eax
 703:	cd 40                	int    $0x40
 705:	c3                   	ret    

00000706 <kill>:
SYSCALL(kill)
 706:	b8 06 00 00 00       	mov    $0x6,%eax
 70b:	cd 40                	int    $0x40
 70d:	c3                   	ret    

0000070e <exec>:
SYSCALL(exec)
 70e:	b8 07 00 00 00       	mov    $0x7,%eax
 713:	cd 40                	int    $0x40
 715:	c3                   	ret    

00000716 <open>:
SYSCALL(open)
 716:	b8 0f 00 00 00       	mov    $0xf,%eax
 71b:	cd 40                	int    $0x40
 71d:	c3                   	ret    

0000071e <mknod>:
SYSCALL(mknod)
 71e:	b8 11 00 00 00       	mov    $0x11,%eax
 723:	cd 40                	int    $0x40
 725:	c3                   	ret    

00000726 <unlink>:
SYSCALL(unlink)
 726:	b8 12 00 00 00       	mov    $0x12,%eax
 72b:	cd 40                	int    $0x40
 72d:	c3                   	ret    

0000072e <fstat>:
SYSCALL(fstat)
 72e:	b8 08 00 00 00       	mov    $0x8,%eax
 733:	cd 40                	int    $0x40
 735:	c3                   	ret    

00000736 <link>:
SYSCALL(link)
 736:	b8 13 00 00 00       	mov    $0x13,%eax
 73b:	cd 40                	int    $0x40
 73d:	c3                   	ret    

0000073e <mkdir>:
SYSCALL(mkdir)
 73e:	b8 14 00 00 00       	mov    $0x14,%eax
 743:	cd 40                	int    $0x40
 745:	c3                   	ret    

00000746 <chdir>:
SYSCALL(chdir)
 746:	b8 09 00 00 00       	mov    $0x9,%eax
 74b:	cd 40                	int    $0x40
 74d:	c3                   	ret    

0000074e <dup>:
SYSCALL(dup)
 74e:	b8 0a 00 00 00       	mov    $0xa,%eax
 753:	cd 40                	int    $0x40
 755:	c3                   	ret    

00000756 <getpid>:
SYSCALL(getpid)
 756:	b8 0b 00 00 00       	mov    $0xb,%eax
 75b:	cd 40                	int    $0x40
 75d:	c3                   	ret    

0000075e <sbrk>:
SYSCALL(sbrk)
 75e:	b8 0c 00 00 00       	mov    $0xc,%eax
 763:	cd 40                	int    $0x40
 765:	c3                   	ret    

00000766 <sleep>:
SYSCALL(sleep)
 766:	b8 0d 00 00 00       	mov    $0xd,%eax
 76b:	cd 40                	int    $0x40
 76d:	c3                   	ret    

0000076e <uptime>:
SYSCALL(uptime)
 76e:	b8 0e 00 00 00       	mov    $0xe,%eax
 773:	cd 40                	int    $0x40
 775:	c3                   	ret    

00000776 <clone>:
SYSCALL(clone)
 776:	b8 16 00 00 00       	mov    $0x16,%eax
 77b:	cd 40                	int    $0x40
 77d:	c3                   	ret    

0000077e <join>:
SYSCALL(join)
 77e:	b8 17 00 00 00       	mov    $0x17,%eax
 783:	cd 40                	int    $0x40
 785:	c3                   	ret    
 786:	66 90                	xchg   %ax,%ax
 788:	66 90                	xchg   %ax,%ax
 78a:	66 90                	xchg   %ax,%ax
 78c:	66 90                	xchg   %ax,%ax
 78e:	66 90                	xchg   %ax,%ax

00000790 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 790:	55                   	push   %ebp
 791:	89 e5                	mov    %esp,%ebp
 793:	57                   	push   %edi
 794:	56                   	push   %esi
 795:	53                   	push   %ebx
 796:	83 ec 3c             	sub    $0x3c,%esp
 799:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 79c:	89 d1                	mov    %edx,%ecx
{
 79e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 7a1:	85 d2                	test   %edx,%edx
 7a3:	0f 89 7f 00 00 00    	jns    828 <printint+0x98>
 7a9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7ad:	74 79                	je     828 <printint+0x98>
    neg = 1;
 7af:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7b6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7b8:	31 db                	xor    %ebx,%ebx
 7ba:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7bd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7c0:	89 c8                	mov    %ecx,%eax
 7c2:	31 d2                	xor    %edx,%edx
 7c4:	89 cf                	mov    %ecx,%edi
 7c6:	f7 75 c4             	divl   -0x3c(%ebp)
 7c9:	0f b6 92 14 0c 00 00 	movzbl 0xc14(%edx),%edx
 7d0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7d3:	89 d8                	mov    %ebx,%eax
 7d5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7d8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7db:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7de:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7e1:	76 dd                	jbe    7c0 <printint+0x30>
  if(neg)
 7e3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7e6:	85 c9                	test   %ecx,%ecx
 7e8:	74 0c                	je     7f6 <printint+0x66>
    buf[i++] = '-';
 7ea:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7ef:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7f1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7f6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7f9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7fd:	eb 07                	jmp    806 <printint+0x76>
 7ff:	90                   	nop
    putc(fd, buf[i]);
 800:	0f b6 13             	movzbl (%ebx),%edx
 803:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 806:	83 ec 04             	sub    $0x4,%esp
 809:	88 55 d7             	mov    %dl,-0x29(%ebp)
 80c:	6a 01                	push   $0x1
 80e:	56                   	push   %esi
 80f:	57                   	push   %edi
 810:	e8 e1 fe ff ff       	call   6f6 <write>
  while(--i >= 0)
 815:	83 c4 10             	add    $0x10,%esp
 818:	39 de                	cmp    %ebx,%esi
 81a:	75 e4                	jne    800 <printint+0x70>
}
 81c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 81f:	5b                   	pop    %ebx
 820:	5e                   	pop    %esi
 821:	5f                   	pop    %edi
 822:	5d                   	pop    %ebp
 823:	c3                   	ret    
 824:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 828:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 82f:	eb 87                	jmp    7b8 <printint+0x28>
 831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 838:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 83f:	90                   	nop

00000840 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 840:	55                   	push   %ebp
 841:	89 e5                	mov    %esp,%ebp
 843:	57                   	push   %edi
 844:	56                   	push   %esi
 845:	53                   	push   %ebx
 846:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 849:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 84c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 84f:	0f b6 13             	movzbl (%ebx),%edx
 852:	84 d2                	test   %dl,%dl
 854:	74 6a                	je     8c0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 856:	8d 45 10             	lea    0x10(%ebp),%eax
 859:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 85c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 85f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 861:	89 45 d0             	mov    %eax,-0x30(%ebp)
 864:	eb 36                	jmp    89c <printf+0x5c>
 866:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 86d:	8d 76 00             	lea    0x0(%esi),%esi
 870:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 873:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 878:	83 f8 25             	cmp    $0x25,%eax
 87b:	74 15                	je     892 <printf+0x52>
  write(fd, &c, 1);
 87d:	83 ec 04             	sub    $0x4,%esp
 880:	88 55 e7             	mov    %dl,-0x19(%ebp)
 883:	6a 01                	push   $0x1
 885:	57                   	push   %edi
 886:	56                   	push   %esi
 887:	e8 6a fe ff ff       	call   6f6 <write>
 88c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 88f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 892:	0f b6 13             	movzbl (%ebx),%edx
 895:	83 c3 01             	add    $0x1,%ebx
 898:	84 d2                	test   %dl,%dl
 89a:	74 24                	je     8c0 <printf+0x80>
    c = fmt[i] & 0xff;
 89c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 89f:	85 c9                	test   %ecx,%ecx
 8a1:	74 cd                	je     870 <printf+0x30>
      }
    } else if(state == '%'){
 8a3:	83 f9 25             	cmp    $0x25,%ecx
 8a6:	75 ea                	jne    892 <printf+0x52>
      if(c == 'd'){
 8a8:	83 f8 25             	cmp    $0x25,%eax
 8ab:	0f 84 07 01 00 00    	je     9b8 <printf+0x178>
 8b1:	83 e8 63             	sub    $0x63,%eax
 8b4:	83 f8 15             	cmp    $0x15,%eax
 8b7:	77 17                	ja     8d0 <printf+0x90>
 8b9:	ff 24 85 bc 0b 00 00 	jmp    *0xbbc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8c3:	5b                   	pop    %ebx
 8c4:	5e                   	pop    %esi
 8c5:	5f                   	pop    %edi
 8c6:	5d                   	pop    %ebp
 8c7:	c3                   	ret    
 8c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8cf:	90                   	nop
  write(fd, &c, 1);
 8d0:	83 ec 04             	sub    $0x4,%esp
 8d3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8d6:	6a 01                	push   $0x1
 8d8:	57                   	push   %edi
 8d9:	56                   	push   %esi
 8da:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8de:	e8 13 fe ff ff       	call   6f6 <write>
        putc(fd, c);
 8e3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8e7:	83 c4 0c             	add    $0xc,%esp
 8ea:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8ed:	6a 01                	push   $0x1
 8ef:	57                   	push   %edi
 8f0:	56                   	push   %esi
 8f1:	e8 00 fe ff ff       	call   6f6 <write>
        putc(fd, c);
 8f6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8f9:	31 c9                	xor    %ecx,%ecx
 8fb:	eb 95                	jmp    892 <printf+0x52>
 8fd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 900:	83 ec 0c             	sub    $0xc,%esp
 903:	b9 10 00 00 00       	mov    $0x10,%ecx
 908:	6a 00                	push   $0x0
 90a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 90d:	8b 10                	mov    (%eax),%edx
 90f:	89 f0                	mov    %esi,%eax
 911:	e8 7a fe ff ff       	call   790 <printint>
        ap++;
 916:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 91a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 91d:	31 c9                	xor    %ecx,%ecx
 91f:	e9 6e ff ff ff       	jmp    892 <printf+0x52>
 924:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 928:	8b 45 d0             	mov    -0x30(%ebp),%eax
 92b:	8b 10                	mov    (%eax),%edx
        ap++;
 92d:	83 c0 04             	add    $0x4,%eax
 930:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 933:	85 d2                	test   %edx,%edx
 935:	0f 84 8d 00 00 00    	je     9c8 <printf+0x188>
        while(*s != 0){
 93b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 93e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 940:	84 c0                	test   %al,%al
 942:	0f 84 4a ff ff ff    	je     892 <printf+0x52>
 948:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 94b:	89 d3                	mov    %edx,%ebx
 94d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 950:	83 ec 04             	sub    $0x4,%esp
          s++;
 953:	83 c3 01             	add    $0x1,%ebx
 956:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 959:	6a 01                	push   $0x1
 95b:	57                   	push   %edi
 95c:	56                   	push   %esi
 95d:	e8 94 fd ff ff       	call   6f6 <write>
        while(*s != 0){
 962:	0f b6 03             	movzbl (%ebx),%eax
 965:	83 c4 10             	add    $0x10,%esp
 968:	84 c0                	test   %al,%al
 96a:	75 e4                	jne    950 <printf+0x110>
      state = 0;
 96c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 96f:	31 c9                	xor    %ecx,%ecx
 971:	e9 1c ff ff ff       	jmp    892 <printf+0x52>
 976:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 97d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 980:	83 ec 0c             	sub    $0xc,%esp
 983:	b9 0a 00 00 00       	mov    $0xa,%ecx
 988:	6a 01                	push   $0x1
 98a:	e9 7b ff ff ff       	jmp    90a <printf+0xca>
 98f:	90                   	nop
        putc(fd, *ap);
 990:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 993:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 996:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 998:	6a 01                	push   $0x1
 99a:	57                   	push   %edi
 99b:	56                   	push   %esi
        putc(fd, *ap);
 99c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 99f:	e8 52 fd ff ff       	call   6f6 <write>
        ap++;
 9a4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9a8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9ab:	31 c9                	xor    %ecx,%ecx
 9ad:	e9 e0 fe ff ff       	jmp    892 <printf+0x52>
 9b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9b8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9bb:	83 ec 04             	sub    $0x4,%esp
 9be:	e9 2a ff ff ff       	jmp    8ed <printf+0xad>
 9c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9c7:	90                   	nop
          s = "(null)";
 9c8:	ba b2 0b 00 00       	mov    $0xbb2,%edx
        while(*s != 0){
 9cd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9d0:	b8 28 00 00 00       	mov    $0x28,%eax
 9d5:	89 d3                	mov    %edx,%ebx
 9d7:	e9 74 ff ff ff       	jmp    950 <printf+0x110>
 9dc:	66 90                	xchg   %ax,%ax
 9de:	66 90                	xchg   %ax,%ax

000009e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9e1:	a1 14 10 00 00       	mov    0x1014,%eax
{
 9e6:	89 e5                	mov    %esp,%ebp
 9e8:	57                   	push   %edi
 9e9:	56                   	push   %esi
 9ea:	53                   	push   %ebx
 9eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9ee:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9f8:	89 c2                	mov    %eax,%edx
 9fa:	8b 00                	mov    (%eax),%eax
 9fc:	39 ca                	cmp    %ecx,%edx
 9fe:	73 30                	jae    a30 <free+0x50>
 a00:	39 c1                	cmp    %eax,%ecx
 a02:	72 04                	jb     a08 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a04:	39 c2                	cmp    %eax,%edx
 a06:	72 f0                	jb     9f8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a08:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a0b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a0e:	39 f8                	cmp    %edi,%eax
 a10:	74 30                	je     a42 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a12:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a15:	8b 42 04             	mov    0x4(%edx),%eax
 a18:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a1b:	39 f1                	cmp    %esi,%ecx
 a1d:	74 3a                	je     a59 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a1f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a21:	5b                   	pop    %ebx
  freep = p;
 a22:	89 15 14 10 00 00    	mov    %edx,0x1014
}
 a28:	5e                   	pop    %esi
 a29:	5f                   	pop    %edi
 a2a:	5d                   	pop    %ebp
 a2b:	c3                   	ret    
 a2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a30:	39 c2                	cmp    %eax,%edx
 a32:	72 c4                	jb     9f8 <free+0x18>
 a34:	39 c1                	cmp    %eax,%ecx
 a36:	73 c0                	jae    9f8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a38:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a3b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a3e:	39 f8                	cmp    %edi,%eax
 a40:	75 d0                	jne    a12 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a42:	03 70 04             	add    0x4(%eax),%esi
 a45:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a48:	8b 02                	mov    (%edx),%eax
 a4a:	8b 00                	mov    (%eax),%eax
 a4c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a4f:	8b 42 04             	mov    0x4(%edx),%eax
 a52:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a55:	39 f1                	cmp    %esi,%ecx
 a57:	75 c6                	jne    a1f <free+0x3f>
    p->s.size += bp->s.size;
 a59:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a5c:	89 15 14 10 00 00    	mov    %edx,0x1014
    p->s.size += bp->s.size;
 a62:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a65:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a68:	89 0a                	mov    %ecx,(%edx)
}
 a6a:	5b                   	pop    %ebx
 a6b:	5e                   	pop    %esi
 a6c:	5f                   	pop    %edi
 a6d:	5d                   	pop    %ebp
 a6e:	c3                   	ret    
 a6f:	90                   	nop

00000a70 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a70:	55                   	push   %ebp
 a71:	89 e5                	mov    %esp,%ebp
 a73:	57                   	push   %edi
 a74:	56                   	push   %esi
 a75:	53                   	push   %ebx
 a76:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a79:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a7c:	8b 3d 14 10 00 00    	mov    0x1014,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a82:	8d 70 07             	lea    0x7(%eax),%esi
 a85:	c1 ee 03             	shr    $0x3,%esi
 a88:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a8b:	85 ff                	test   %edi,%edi
 a8d:	0f 84 9d 00 00 00    	je     b30 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a93:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a95:	8b 4a 04             	mov    0x4(%edx),%ecx
 a98:	39 f1                	cmp    %esi,%ecx
 a9a:	73 6a                	jae    b06 <malloc+0x96>
 a9c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 aa1:	39 de                	cmp    %ebx,%esi
 aa3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 aa6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 aad:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ab0:	eb 17                	jmp    ac9 <malloc+0x59>
 ab2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ab8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aba:	8b 48 04             	mov    0x4(%eax),%ecx
 abd:	39 f1                	cmp    %esi,%ecx
 abf:	73 4f                	jae    b10 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ac1:	8b 3d 14 10 00 00    	mov    0x1014,%edi
 ac7:	89 c2                	mov    %eax,%edx
 ac9:	39 d7                	cmp    %edx,%edi
 acb:	75 eb                	jne    ab8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 acd:	83 ec 0c             	sub    $0xc,%esp
 ad0:	ff 75 e4             	push   -0x1c(%ebp)
 ad3:	e8 86 fc ff ff       	call   75e <sbrk>
  if(p == (char*)-1)
 ad8:	83 c4 10             	add    $0x10,%esp
 adb:	83 f8 ff             	cmp    $0xffffffff,%eax
 ade:	74 1c                	je     afc <malloc+0x8c>
  hp->s.size = nu;
 ae0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ae3:	83 ec 0c             	sub    $0xc,%esp
 ae6:	83 c0 08             	add    $0x8,%eax
 ae9:	50                   	push   %eax
 aea:	e8 f1 fe ff ff       	call   9e0 <free>
  return freep;
 aef:	8b 15 14 10 00 00    	mov    0x1014,%edx
      if((p = morecore(nunits)) == 0)
 af5:	83 c4 10             	add    $0x10,%esp
 af8:	85 d2                	test   %edx,%edx
 afa:	75 bc                	jne    ab8 <malloc+0x48>
        return 0;
  }
}
 afc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 aff:	31 c0                	xor    %eax,%eax
}
 b01:	5b                   	pop    %ebx
 b02:	5e                   	pop    %esi
 b03:	5f                   	pop    %edi
 b04:	5d                   	pop    %ebp
 b05:	c3                   	ret    
    if(p->s.size >= nunits){
 b06:	89 d0                	mov    %edx,%eax
 b08:	89 fa                	mov    %edi,%edx
 b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b10:	39 ce                	cmp    %ecx,%esi
 b12:	74 4c                	je     b60 <malloc+0xf0>
        p->s.size -= nunits;
 b14:	29 f1                	sub    %esi,%ecx
 b16:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b19:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b1c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b1f:	89 15 14 10 00 00    	mov    %edx,0x1014
}
 b25:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b28:	83 c0 08             	add    $0x8,%eax
}
 b2b:	5b                   	pop    %ebx
 b2c:	5e                   	pop    %esi
 b2d:	5f                   	pop    %edi
 b2e:	5d                   	pop    %ebp
 b2f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b30:	c7 05 14 10 00 00 18 	movl   $0x1018,0x1014
 b37:	10 00 00 
    base.s.size = 0;
 b3a:	bf 18 10 00 00       	mov    $0x1018,%edi
    base.s.ptr = freep = prevp = &base;
 b3f:	c7 05 18 10 00 00 18 	movl   $0x1018,0x1018
 b46:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b49:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b4b:	c7 05 1c 10 00 00 00 	movl   $0x0,0x101c
 b52:	00 00 00 
    if(p->s.size >= nunits){
 b55:	e9 42 ff ff ff       	jmp    a9c <malloc+0x2c>
 b5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b60:	8b 08                	mov    (%eax),%ecx
 b62:	89 0a                	mov    %ecx,(%edx)
 b64:	eb b9                	jmp    b1f <malloc+0xaf>
