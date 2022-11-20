
_grep:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  }
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
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 01                	mov    (%ecx),%eax
  16:	8b 59 04             	mov    0x4(%ecx),%ebx
  19:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  int fd, i;
  char *pattern;

  if(argc <= 1){
  1c:	83 f8 01             	cmp    $0x1,%eax
  1f:	7e 6f                	jle    90 <main+0x90>
    printf(2, "usage: grep pattern [file ...]\n");
    exit();
  }
  pattern = argv[1];
  21:	8b 43 04             	mov    0x4(%ebx),%eax
  24:	83 c3 08             	add    $0x8,%ebx

  if(argc <= 2){
  27:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    grep(pattern, 0);
    exit();
  }

  for(i = 2; i < argc; i++){
  2b:	be 02 00 00 00       	mov    $0x2,%esi
  pattern = argv[1];
  30:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(argc <= 2){
  33:	75 2d                	jne    62 <main+0x62>
  35:	eb 6c                	jmp    a3 <main+0xa3>
  37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  3e:	66 90                	xchg   %ax,%ax
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "grep: cannot open %s\n", argv[i]);
      exit();
    }
    grep(pattern, fd);
  40:	83 ec 08             	sub    $0x8,%esp
  for(i = 2; i < argc; i++){
  43:	83 c6 01             	add    $0x1,%esi
  46:	83 c3 04             	add    $0x4,%ebx
    grep(pattern, fd);
  49:	50                   	push   %eax
  4a:	ff 75 e0             	push   -0x20(%ebp)
  4d:	e8 7e 01 00 00       	call   1d0 <grep>
    close(fd);
  52:	89 3c 24             	mov    %edi,(%esp)
  55:	e8 d4 06 00 00       	call   72e <close>
  for(i = 2; i < argc; i++){
  5a:	83 c4 10             	add    $0x10,%esp
  5d:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
  60:	7e 29                	jle    8b <main+0x8b>
    if((fd = open(argv[i], 0)) < 0){
  62:	83 ec 08             	sub    $0x8,%esp
  65:	6a 00                	push   $0x0
  67:	ff 33                	push   (%ebx)
  69:	e8 d8 06 00 00       	call   746 <open>
  6e:	83 c4 10             	add    $0x10,%esp
  71:	89 c7                	mov    %eax,%edi
  73:	85 c0                	test   %eax,%eax
  75:	79 c9                	jns    40 <main+0x40>
      printf(1, "grep: cannot open %s\n", argv[i]);
  77:	50                   	push   %eax
  78:	ff 33                	push   (%ebx)
  7a:	68 b8 0b 00 00       	push   $0xbb8
  7f:	6a 01                	push   $0x1
  81:	e8 ea 07 00 00       	call   870 <printf>
      exit();
  86:	e8 7b 06 00 00       	call   706 <exit>
  }
  exit();
  8b:	e8 76 06 00 00       	call   706 <exit>
    printf(2, "usage: grep pattern [file ...]\n");
  90:	51                   	push   %ecx
  91:	51                   	push   %ecx
  92:	68 98 0b 00 00       	push   $0xb98
  97:	6a 02                	push   $0x2
  99:	e8 d2 07 00 00       	call   870 <printf>
    exit();
  9e:	e8 63 06 00 00       	call   706 <exit>
    grep(pattern, 0);
  a3:	52                   	push   %edx
  a4:	52                   	push   %edx
  a5:	6a 00                	push   $0x0
  a7:	50                   	push   %eax
  a8:	e8 23 01 00 00       	call   1d0 <grep>
    exit();
  ad:	e8 54 06 00 00       	call   706 <exit>
  b2:	66 90                	xchg   %ax,%ax
  b4:	66 90                	xchg   %ax,%ax
  b6:	66 90                	xchg   %ax,%ax
  b8:	66 90                	xchg   %ax,%ax
  ba:	66 90                	xchg   %ax,%ax
  bc:	66 90                	xchg   %ax,%ax
  be:	66 90                	xchg   %ax,%ax

000000c0 <matchhere>:
  return 0;
}

// matchhere: search for re at beginning of text
int matchhere(char *re, char *text)
{
  c0:	55                   	push   %ebp
  c1:	89 e5                	mov    %esp,%ebp
  c3:	57                   	push   %edi
  c4:	56                   	push   %esi
  c5:	53                   	push   %ebx
  c6:	83 ec 0c             	sub    $0xc,%esp
  c9:	8b 75 08             	mov    0x8(%ebp),%esi
  cc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(re[0] == '\0')
  cf:	0f b6 06             	movzbl (%esi),%eax
  d2:	84 c0                	test   %al,%al
  d4:	75 2d                	jne    103 <matchhere+0x43>
  d6:	e9 7d 00 00 00       	jmp    158 <matchhere+0x98>
  db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  df:	90                   	nop
    return 1;
  if(re[1] == '*')
    return matchstar(re[0], re+2, text);
  if(re[0] == '$' && re[1] == '\0')
    return *text == '\0';
  e0:	0f b6 0f             	movzbl (%edi),%ecx
  if(re[0] == '$' && re[1] == '\0')
  e3:	80 fb 24             	cmp    $0x24,%bl
  e6:	75 04                	jne    ec <matchhere+0x2c>
  e8:	84 c0                	test   %al,%al
  ea:	74 79                	je     165 <matchhere+0xa5>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
  ec:	84 c9                	test   %cl,%cl
  ee:	74 58                	je     148 <matchhere+0x88>
  f0:	38 d9                	cmp    %bl,%cl
  f2:	74 05                	je     f9 <matchhere+0x39>
  f4:	80 fb 2e             	cmp    $0x2e,%bl
  f7:	75 4f                	jne    148 <matchhere+0x88>
    return matchhere(re+1, text+1);
  f9:	83 c7 01             	add    $0x1,%edi
  fc:	83 c6 01             	add    $0x1,%esi
  if(re[0] == '\0')
  ff:	84 c0                	test   %al,%al
 101:	74 55                	je     158 <matchhere+0x98>
  if(re[1] == '*')
 103:	0f be d8             	movsbl %al,%ebx
 106:	0f b6 46 01          	movzbl 0x1(%esi),%eax
 10a:	3c 2a                	cmp    $0x2a,%al
 10c:	75 d2                	jne    e0 <matchhere+0x20>
    return matchstar(re[0], re+2, text);
 10e:	83 c6 02             	add    $0x2,%esi
  return 0;
}

// matchstar: search for c*re at beginning of text
int matchstar(int c, char *re, char *text)
 111:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
{
  do{  // a * matches zero or more instances
    if(matchhere(re, text))
 118:	83 ec 08             	sub    $0x8,%esp
 11b:	57                   	push   %edi
 11c:	56                   	push   %esi
 11d:	e8 9e ff ff ff       	call   c0 <matchhere>
 122:	83 c4 10             	add    $0x10,%esp
 125:	85 c0                	test   %eax,%eax
 127:	75 2f                	jne    158 <matchhere+0x98>
      return 1;
  }while(*text!='\0' && (*text++==c || c=='.'));
 129:	0f be 17             	movsbl (%edi),%edx
 12c:	84 d2                	test   %dl,%dl
 12e:	74 0c                	je     13c <matchhere+0x7c>
 130:	83 c7 01             	add    $0x1,%edi
 133:	83 fb 2e             	cmp    $0x2e,%ebx
 136:	74 e0                	je     118 <matchhere+0x58>
 138:	39 da                	cmp    %ebx,%edx
 13a:	74 dc                	je     118 <matchhere+0x58>
}
 13c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 13f:	5b                   	pop    %ebx
 140:	5e                   	pop    %esi
 141:	5f                   	pop    %edi
 142:	5d                   	pop    %ebp
 143:	c3                   	ret    
 144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 148:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
 14b:	31 c0                	xor    %eax,%eax
}
 14d:	5b                   	pop    %ebx
 14e:	5e                   	pop    %esi
 14f:	5f                   	pop    %edi
 150:	5d                   	pop    %ebp
 151:	c3                   	ret    
 152:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 158:	8d 65 f4             	lea    -0xc(%ebp),%esp
    return 1;
 15b:	b8 01 00 00 00       	mov    $0x1,%eax
}
 160:	5b                   	pop    %ebx
 161:	5e                   	pop    %esi
 162:	5f                   	pop    %edi
 163:	5d                   	pop    %ebp
 164:	c3                   	ret    
    return *text == '\0';
 165:	31 c0                	xor    %eax,%eax
 167:	84 c9                	test   %cl,%cl
 169:	0f 94 c0             	sete   %al
 16c:	eb ce                	jmp    13c <matchhere+0x7c>
 16e:	66 90                	xchg   %ax,%ax

00000170 <match>:
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	56                   	push   %esi
 174:	53                   	push   %ebx
 175:	8b 5d 08             	mov    0x8(%ebp),%ebx
 178:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(re[0] == '^')
 17b:	80 3b 5e             	cmpb   $0x5e,(%ebx)
 17e:	75 11                	jne    191 <match+0x21>
 180:	eb 2e                	jmp    1b0 <match+0x40>
 182:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  }while(*text++ != '\0');
 188:	83 c6 01             	add    $0x1,%esi
 18b:	80 7e ff 00          	cmpb   $0x0,-0x1(%esi)
 18f:	74 16                	je     1a7 <match+0x37>
    if(matchhere(re, text))
 191:	83 ec 08             	sub    $0x8,%esp
 194:	56                   	push   %esi
 195:	53                   	push   %ebx
 196:	e8 25 ff ff ff       	call   c0 <matchhere>
 19b:	83 c4 10             	add    $0x10,%esp
 19e:	85 c0                	test   %eax,%eax
 1a0:	74 e6                	je     188 <match+0x18>
      return 1;
 1a2:	b8 01 00 00 00       	mov    $0x1,%eax
}
 1a7:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1aa:	5b                   	pop    %ebx
 1ab:	5e                   	pop    %esi
 1ac:	5d                   	pop    %ebp
 1ad:	c3                   	ret    
 1ae:	66 90                	xchg   %ax,%ax
    return matchhere(re+1, text);
 1b0:	83 c3 01             	add    $0x1,%ebx
 1b3:	89 5d 08             	mov    %ebx,0x8(%ebp)
}
 1b6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1b9:	5b                   	pop    %ebx
 1ba:	5e                   	pop    %esi
 1bb:	5d                   	pop    %ebp
    return matchhere(re+1, text);
 1bc:	e9 ff fe ff ff       	jmp    c0 <matchhere>
 1c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1cf:	90                   	nop

000001d0 <grep>:
{
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	56                   	push   %esi
 1d5:	53                   	push   %ebx
 1d6:	83 ec 1c             	sub    $0x1c,%esp
 1d9:	8b 7d 08             	mov    0x8(%ebp),%edi
  m = 0;
 1dc:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    return matchhere(re+1, text);
 1e3:	8d 47 01             	lea    0x1(%edi),%eax
 1e6:	89 45 d8             	mov    %eax,-0x28(%ebp)
 1e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf+m, sizeof(buf)-m-1)) > 0){
 1f0:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 1f3:	b8 ff 03 00 00       	mov    $0x3ff,%eax
 1f8:	83 ec 04             	sub    $0x4,%esp
 1fb:	29 c8                	sub    %ecx,%eax
 1fd:	50                   	push   %eax
 1fe:	8d 81 a0 10 00 00    	lea    0x10a0(%ecx),%eax
 204:	50                   	push   %eax
 205:	ff 75 0c             	push   0xc(%ebp)
 208:	e8 11 05 00 00       	call   71e <read>
 20d:	83 c4 10             	add    $0x10,%esp
 210:	85 c0                	test   %eax,%eax
 212:	0f 8e e5 00 00 00    	jle    2fd <grep+0x12d>
    m += n;
 218:	01 45 dc             	add    %eax,-0x24(%ebp)
 21b:	8b 4d dc             	mov    -0x24(%ebp),%ecx
    p = buf;
 21e:	c7 45 e4 a0 10 00 00 	movl   $0x10a0,-0x1c(%ebp)
    buf[m] = '\0';
 225:	c6 81 a0 10 00 00 00 	movb   $0x0,0x10a0(%ecx)
    while((q = strchr(p, '\n')) != 0){
 22c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 230:	83 ec 08             	sub    $0x8,%esp
 233:	6a 0a                	push   $0xa
 235:	ff 75 e4             	push   -0x1c(%ebp)
 238:	e8 13 02 00 00       	call   450 <strchr>
 23d:	83 c4 10             	add    $0x10,%esp
 240:	89 c3                	mov    %eax,%ebx
 242:	85 c0                	test   %eax,%eax
 244:	74 72                	je     2b8 <grep+0xe8>
      *q = 0;
 246:	c6 03 00             	movb   $0x0,(%ebx)
        write(1, p, q+1 - p);
 249:	8d 43 01             	lea    0x1(%ebx),%eax
  if(re[0] == '^')
 24c:	80 3f 5e             	cmpb   $0x5e,(%edi)
        write(1, p, q+1 - p);
 24f:	89 45 e0             	mov    %eax,-0x20(%ebp)
 252:	8b 75 e4             	mov    -0x1c(%ebp),%esi
  if(re[0] == '^')
 255:	75 12                	jne    269 <grep+0x99>
 257:	eb 47                	jmp    2a0 <grep+0xd0>
 259:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  }while(*text++ != '\0');
 260:	83 c6 01             	add    $0x1,%esi
 263:	80 7e ff 00          	cmpb   $0x0,-0x1(%esi)
 267:	74 2b                	je     294 <grep+0xc4>
    if(matchhere(re, text))
 269:	83 ec 08             	sub    $0x8,%esp
 26c:	56                   	push   %esi
 26d:	57                   	push   %edi
 26e:	e8 4d fe ff ff       	call   c0 <matchhere>
 273:	83 c4 10             	add    $0x10,%esp
 276:	85 c0                	test   %eax,%eax
 278:	74 e6                	je     260 <grep+0x90>
        write(1, p, q+1 - p);
 27a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 27d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 280:	83 ec 04             	sub    $0x4,%esp
        *q = '\n';
 283:	c6 03 0a             	movb   $0xa,(%ebx)
        write(1, p, q+1 - p);
 286:	29 d0                	sub    %edx,%eax
 288:	50                   	push   %eax
 289:	52                   	push   %edx
 28a:	6a 01                	push   $0x1
 28c:	e8 95 04 00 00       	call   726 <write>
 291:	83 c4 10             	add    $0x10,%esp
      p = q+1;
 294:	8b 45 e0             	mov    -0x20(%ebp),%eax
 297:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 29a:	eb 94                	jmp    230 <grep+0x60>
 29c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return matchhere(re+1, text);
 2a0:	83 ec 08             	sub    $0x8,%esp
 2a3:	56                   	push   %esi
 2a4:	ff 75 d8             	push   -0x28(%ebp)
 2a7:	e8 14 fe ff ff       	call   c0 <matchhere>
 2ac:	83 c4 10             	add    $0x10,%esp
      if(match(pattern, p)){
 2af:	85 c0                	test   %eax,%eax
 2b1:	74 e1                	je     294 <grep+0xc4>
 2b3:	eb c5                	jmp    27a <grep+0xaa>
 2b5:	8d 76 00             	lea    0x0(%esi),%esi
    if(p == buf)
 2b8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 2bb:	81 fa a0 10 00 00    	cmp    $0x10a0,%edx
 2c1:	74 2e                	je     2f1 <grep+0x121>
    if(m > 0){
 2c3:	8b 4d dc             	mov    -0x24(%ebp),%ecx
 2c6:	85 c9                	test   %ecx,%ecx
 2c8:	0f 8e 22 ff ff ff    	jle    1f0 <grep+0x20>
      m -= p - buf;
 2ce:	89 d0                	mov    %edx,%eax
      memmove(buf, p, m);
 2d0:	83 ec 04             	sub    $0x4,%esp
      m -= p - buf;
 2d3:	2d a0 10 00 00       	sub    $0x10a0,%eax
 2d8:	29 c1                	sub    %eax,%ecx
      memmove(buf, p, m);
 2da:	51                   	push   %ecx
 2db:	52                   	push   %edx
 2dc:	68 a0 10 00 00       	push   $0x10a0
      m -= p - buf;
 2e1:	89 4d dc             	mov    %ecx,-0x24(%ebp)
      memmove(buf, p, m);
 2e4:	e8 a7 02 00 00       	call   590 <memmove>
 2e9:	83 c4 10             	add    $0x10,%esp
 2ec:	e9 ff fe ff ff       	jmp    1f0 <grep+0x20>
      m = 0;
 2f1:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 2f8:	e9 f3 fe ff ff       	jmp    1f0 <grep+0x20>
}
 2fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 300:	5b                   	pop    %ebx
 301:	5e                   	pop    %esi
 302:	5f                   	pop    %edi
 303:	5d                   	pop    %ebp
 304:	c3                   	ret    
 305:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000310 <matchstar>:
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	57                   	push   %edi
 314:	56                   	push   %esi
 315:	53                   	push   %ebx
 316:	83 ec 0c             	sub    $0xc,%esp
 319:	8b 5d 08             	mov    0x8(%ebp),%ebx
 31c:	8b 75 0c             	mov    0xc(%ebp),%esi
 31f:	8b 7d 10             	mov    0x10(%ebp),%edi
 322:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(matchhere(re, text))
 328:	83 ec 08             	sub    $0x8,%esp
 32b:	57                   	push   %edi
 32c:	56                   	push   %esi
 32d:	e8 8e fd ff ff       	call   c0 <matchhere>
 332:	83 c4 10             	add    $0x10,%esp
 335:	85 c0                	test   %eax,%eax
 337:	75 1f                	jne    358 <matchstar+0x48>
  }while(*text!='\0' && (*text++==c || c=='.'));
 339:	0f be 17             	movsbl (%edi),%edx
 33c:	84 d2                	test   %dl,%dl
 33e:	74 0c                	je     34c <matchstar+0x3c>
 340:	83 c7 01             	add    $0x1,%edi
 343:	39 da                	cmp    %ebx,%edx
 345:	74 e1                	je     328 <matchstar+0x18>
 347:	83 fb 2e             	cmp    $0x2e,%ebx
 34a:	74 dc                	je     328 <matchstar+0x18>
}
 34c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 34f:	5b                   	pop    %ebx
 350:	5e                   	pop    %esi
 351:	5f                   	pop    %edi
 352:	5d                   	pop    %ebp
 353:	c3                   	ret    
 354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 358:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return 1;
 35b:	b8 01 00 00 00       	mov    $0x1,%eax
}
 360:	5b                   	pop    %ebx
 361:	5e                   	pop    %esi
 362:	5f                   	pop    %edi
 363:	5d                   	pop    %ebp
 364:	c3                   	ret    
 365:	66 90                	xchg   %ax,%ax
 367:	66 90                	xchg   %ax,%ax
 369:	66 90                	xchg   %ax,%ax
 36b:	66 90                	xchg   %ax,%ax
 36d:	66 90                	xchg   %ax,%ax
 36f:	90                   	nop

00000370 <strcpy>:

lock_t lk_create,lk_join;

char*
strcpy(char *s, const char *t)
{
 370:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 371:	31 c0                	xor    %eax,%eax
{
 373:	89 e5                	mov    %esp,%ebp
 375:	53                   	push   %ebx
 376:	8b 4d 08             	mov    0x8(%ebp),%ecx
 379:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 37c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 380:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 384:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 387:	83 c0 01             	add    $0x1,%eax
 38a:	84 d2                	test   %dl,%dl
 38c:	75 f2                	jne    380 <strcpy+0x10>
    ;
  return os;
}
 38e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 391:	89 c8                	mov    %ecx,%eax
 393:	c9                   	leave  
 394:	c3                   	ret    
 395:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	53                   	push   %ebx
 3a4:	8b 55 08             	mov    0x8(%ebp),%edx
 3a7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3aa:	0f b6 02             	movzbl (%edx),%eax
 3ad:	84 c0                	test   %al,%al
 3af:	75 17                	jne    3c8 <strcmp+0x28>
 3b1:	eb 3a                	jmp    3ed <strcmp+0x4d>
 3b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3b7:	90                   	nop
 3b8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3bc:	83 c2 01             	add    $0x1,%edx
 3bf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3c2:	84 c0                	test   %al,%al
 3c4:	74 1a                	je     3e0 <strcmp+0x40>
    p++, q++;
 3c6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 3c8:	0f b6 19             	movzbl (%ecx),%ebx
 3cb:	38 c3                	cmp    %al,%bl
 3cd:	74 e9                	je     3b8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3cf:	29 d8                	sub    %ebx,%eax
}
 3d1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3d4:	c9                   	leave  
 3d5:	c3                   	ret    
 3d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3dd:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 3e0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 3e4:	31 c0                	xor    %eax,%eax
 3e6:	29 d8                	sub    %ebx,%eax
}
 3e8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3eb:	c9                   	leave  
 3ec:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 3ed:	0f b6 19             	movzbl (%ecx),%ebx
 3f0:	31 c0                	xor    %eax,%eax
 3f2:	eb db                	jmp    3cf <strcmp+0x2f>
 3f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <strlen>:

uint
strlen(const char *s)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 406:	80 3a 00             	cmpb   $0x0,(%edx)
 409:	74 15                	je     420 <strlen+0x20>
 40b:	31 c0                	xor    %eax,%eax
 40d:	8d 76 00             	lea    0x0(%esi),%esi
 410:	83 c0 01             	add    $0x1,%eax
 413:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 417:	89 c1                	mov    %eax,%ecx
 419:	75 f5                	jne    410 <strlen+0x10>
    ;
  return n;
}
 41b:	89 c8                	mov    %ecx,%eax
 41d:	5d                   	pop    %ebp
 41e:	c3                   	ret    
 41f:	90                   	nop
  for(n = 0; s[n]; n++)
 420:	31 c9                	xor    %ecx,%ecx
}
 422:	5d                   	pop    %ebp
 423:	89 c8                	mov    %ecx,%eax
 425:	c3                   	ret    
 426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42d:	8d 76 00             	lea    0x0(%esi),%esi

00000430 <memset>:

void*
memset(void *dst, int c, uint n)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 437:	8b 4d 10             	mov    0x10(%ebp),%ecx
 43a:	8b 45 0c             	mov    0xc(%ebp),%eax
 43d:	89 d7                	mov    %edx,%edi
 43f:	fc                   	cld    
 440:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 442:	8b 7d fc             	mov    -0x4(%ebp),%edi
 445:	89 d0                	mov    %edx,%eax
 447:	c9                   	leave  
 448:	c3                   	ret    
 449:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000450 <strchr>:

char*
strchr(const char *s, char c)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	8b 45 08             	mov    0x8(%ebp),%eax
 456:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 45a:	0f b6 10             	movzbl (%eax),%edx
 45d:	84 d2                	test   %dl,%dl
 45f:	75 12                	jne    473 <strchr+0x23>
 461:	eb 1d                	jmp    480 <strchr+0x30>
 463:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 467:	90                   	nop
 468:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 46c:	83 c0 01             	add    $0x1,%eax
 46f:	84 d2                	test   %dl,%dl
 471:	74 0d                	je     480 <strchr+0x30>
    if(*s == c)
 473:	38 d1                	cmp    %dl,%cl
 475:	75 f1                	jne    468 <strchr+0x18>
      return (char*)s;
  return 0;
}
 477:	5d                   	pop    %ebp
 478:	c3                   	ret    
 479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 480:	31 c0                	xor    %eax,%eax
}
 482:	5d                   	pop    %ebp
 483:	c3                   	ret    
 484:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop

00000490 <gets>:

char*
gets(char *buf, int max)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 495:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 498:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 499:	31 db                	xor    %ebx,%ebx
{
 49b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 49e:	eb 27                	jmp    4c7 <gets+0x37>
    cc = read(0, &c, 1);
 4a0:	83 ec 04             	sub    $0x4,%esp
 4a3:	6a 01                	push   $0x1
 4a5:	57                   	push   %edi
 4a6:	6a 00                	push   $0x0
 4a8:	e8 71 02 00 00       	call   71e <read>
    if(cc < 1)
 4ad:	83 c4 10             	add    $0x10,%esp
 4b0:	85 c0                	test   %eax,%eax
 4b2:	7e 1d                	jle    4d1 <gets+0x41>
      break;
    buf[i++] = c;
 4b4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4b8:	8b 55 08             	mov    0x8(%ebp),%edx
 4bb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4bf:	3c 0a                	cmp    $0xa,%al
 4c1:	74 1d                	je     4e0 <gets+0x50>
 4c3:	3c 0d                	cmp    $0xd,%al
 4c5:	74 19                	je     4e0 <gets+0x50>
  for(i=0; i+1 < max; ){
 4c7:	89 de                	mov    %ebx,%esi
 4c9:	83 c3 01             	add    $0x1,%ebx
 4cc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4cf:	7c cf                	jl     4a0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 4d1:	8b 45 08             	mov    0x8(%ebp),%eax
 4d4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 4d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4db:	5b                   	pop    %ebx
 4dc:	5e                   	pop    %esi
 4dd:	5f                   	pop    %edi
 4de:	5d                   	pop    %ebp
 4df:	c3                   	ret    
  buf[i] = '\0';
 4e0:	8b 45 08             	mov    0x8(%ebp),%eax
 4e3:	89 de                	mov    %ebx,%esi
 4e5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 4e9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4ec:	5b                   	pop    %ebx
 4ed:	5e                   	pop    %esi
 4ee:	5f                   	pop    %edi
 4ef:	5d                   	pop    %ebp
 4f0:	c3                   	ret    
 4f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ff:	90                   	nop

00000500 <stat>:

int
stat(const char *n, struct stat *st)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	56                   	push   %esi
 504:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 505:	83 ec 08             	sub    $0x8,%esp
 508:	6a 00                	push   $0x0
 50a:	ff 75 08             	push   0x8(%ebp)
 50d:	e8 34 02 00 00       	call   746 <open>
  if(fd < 0)
 512:	83 c4 10             	add    $0x10,%esp
 515:	85 c0                	test   %eax,%eax
 517:	78 27                	js     540 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 519:	83 ec 08             	sub    $0x8,%esp
 51c:	ff 75 0c             	push   0xc(%ebp)
 51f:	89 c3                	mov    %eax,%ebx
 521:	50                   	push   %eax
 522:	e8 37 02 00 00       	call   75e <fstat>
  close(fd);
 527:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 52a:	89 c6                	mov    %eax,%esi
  close(fd);
 52c:	e8 fd 01 00 00       	call   72e <close>
  return r;
 531:	83 c4 10             	add    $0x10,%esp
}
 534:	8d 65 f8             	lea    -0x8(%ebp),%esp
 537:	89 f0                	mov    %esi,%eax
 539:	5b                   	pop    %ebx
 53a:	5e                   	pop    %esi
 53b:	5d                   	pop    %ebp
 53c:	c3                   	ret    
 53d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 540:	be ff ff ff ff       	mov    $0xffffffff,%esi
 545:	eb ed                	jmp    534 <stat+0x34>
 547:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54e:	66 90                	xchg   %ax,%ax

00000550 <atoi>:

int
atoi(const char *s)
{
 550:	55                   	push   %ebp
 551:	89 e5                	mov    %esp,%ebp
 553:	53                   	push   %ebx
 554:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 557:	0f be 02             	movsbl (%edx),%eax
 55a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 55d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 560:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 565:	77 1e                	ja     585 <atoi+0x35>
 567:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 56e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 570:	83 c2 01             	add    $0x1,%edx
 573:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 576:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 57a:	0f be 02             	movsbl (%edx),%eax
 57d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 580:	80 fb 09             	cmp    $0x9,%bl
 583:	76 eb                	jbe    570 <atoi+0x20>
  return n;
}
 585:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 588:	89 c8                	mov    %ecx,%eax
 58a:	c9                   	leave  
 58b:	c3                   	ret    
 58c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000590 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	57                   	push   %edi
 594:	8b 45 10             	mov    0x10(%ebp),%eax
 597:	8b 55 08             	mov    0x8(%ebp),%edx
 59a:	56                   	push   %esi
 59b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 59e:	85 c0                	test   %eax,%eax
 5a0:	7e 13                	jle    5b5 <memmove+0x25>
 5a2:	01 d0                	add    %edx,%eax
  dst = vdst;
 5a4:	89 d7                	mov    %edx,%edi
 5a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ad:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 5b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 5b1:	39 f8                	cmp    %edi,%eax
 5b3:	75 fb                	jne    5b0 <memmove+0x20>
  return vdst;
}
 5b5:	5e                   	pop    %esi
 5b6:	89 d0                	mov    %edx,%eax
 5b8:	5f                   	pop    %edi
 5b9:	5d                   	pop    %ebp
 5ba:	c3                   	ret    
 5bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5bf:	90                   	nop

000005c0 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 5c0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 5c1:	ba 01 00 00 00       	mov    $0x1,%edx
 5c6:	89 e5                	mov    %esp,%ebp
 5c8:	83 ec 08             	sub    $0x8,%esp
 5cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5cf:	90                   	nop
 5d0:	89 d0                	mov    %edx,%eax
 5d2:	f0 87 05 a4 14 00 00 	lock xchg %eax,0x14a4
  lock_init(&lk_join);
}

void lock_acquire(lock_t *lock){
  // The xchg is atomic.
    while(xchg(&(lock->mutex), 1) != 0);
 5d9:	85 c0                	test   %eax,%eax
 5db:	75 f3                	jne    5d0 <thread_create+0x10>
    __sync_synchronize();
 5dd:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	void *stack= malloc(PGSIZE*2);
 5e2:	83 ec 0c             	sub    $0xc,%esp
 5e5:	68 00 20 00 00       	push   $0x2000
 5ea:	e8 b1 04 00 00       	call   aa0 <malloc>
}

void lock_release(lock_t *lock){
   __sync_synchronize();
 5ef:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 5f4:	c7 05 a4 14 00 00 00 	movl   $0x0,0x14a4
 5fb:	00 00 00 
	if((uint)stack % PGSIZE)
 5fe:	89 c2                	mov    %eax,%edx
 600:	83 c4 10             	add    $0x10,%esp
 603:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 609:	74 07                	je     612 <thread_create+0x52>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 60b:	29 d0                	sub    %edx,%eax
 60d:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 612:	50                   	push   %eax
 613:	ff 75 10             	push   0x10(%ebp)
 616:	ff 75 0c             	push   0xc(%ebp)
 619:	ff 75 08             	push   0x8(%ebp)
 61c:	e8 85 01 00 00       	call   7a6 <clone>
}
 621:	c9                   	leave  
 622:	c3                   	ret    
 623:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 62a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000630 <thread_join>:
int thread_join(){
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	53                   	push   %ebx
	int result= join(&stack);
 634:	8d 45 f4             	lea    -0xc(%ebp),%eax
int thread_join(){
 637:	83 ec 20             	sub    $0x20,%esp
	void *stack = 0;
 63a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
	int result= join(&stack);
 641:	50                   	push   %eax
 642:	e8 67 01 00 00       	call   7ae <join>
    while(xchg(&(lock->mutex), 1) != 0);
 647:	83 c4 10             	add    $0x10,%esp
 64a:	ba 01 00 00 00       	mov    $0x1,%edx
	int result= join(&stack);
 64f:	89 c3                	mov    %eax,%ebx
    while(xchg(&(lock->mutex), 1) != 0);
 651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 658:	89 d0                	mov    %edx,%eax
 65a:	f0 87 05 a0 14 00 00 	lock xchg %eax,0x14a0
 661:	85 c0                	test   %eax,%eax
 663:	75 f3                	jne    658 <thread_join+0x28>
    __sync_synchronize();
 665:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
	free(stack);
 66a:	83 ec 0c             	sub    $0xc,%esp
 66d:	ff 75 f4             	push   -0xc(%ebp)
 670:	e8 9b 03 00 00       	call   a10 <free>
   __sync_synchronize();
 675:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 67a:	c7 05 a0 14 00 00 00 	movl   $0x0,0x14a0
 681:	00 00 00 
}
 684:	89 d8                	mov    %ebx,%eax
 686:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 689:	c9                   	leave  
 68a:	c3                   	ret    
 68b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 68f:	90                   	nop

00000690 <threadSync>:
    return;
}

void lock_init(lock_t *lock) {
  lock->mutex = 0;
 690:	c7 05 a4 14 00 00 00 	movl   $0x0,0x14a4
 697:	00 00 00 
 69a:	c7 05 a0 14 00 00 00 	movl   $0x0,0x14a0
 6a1:	00 00 00 
}
 6a4:	c3                   	ret    
 6a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006b0 <lock_acquire>:
void lock_acquire(lock_t *lock){
 6b0:	55                   	push   %ebp
 6b1:	b9 01 00 00 00       	mov    $0x1,%ecx
 6b6:	89 e5                	mov    %esp,%ebp
 6b8:	8b 55 08             	mov    0x8(%ebp),%edx
 6bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6bf:	90                   	nop
 6c0:	89 c8                	mov    %ecx,%eax
 6c2:	f0 87 02             	lock xchg %eax,(%edx)
    while(xchg(&(lock->mutex), 1) != 0);
 6c5:	85 c0                	test   %eax,%eax
 6c7:	75 f7                	jne    6c0 <lock_acquire+0x10>
    __sync_synchronize();
 6c9:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
}
 6ce:	5d                   	pop    %ebp
 6cf:	c3                   	ret    

000006d0 <lock_release>:
void lock_release(lock_t *lock){
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	8b 45 08             	mov    0x8(%ebp),%eax
   __sync_synchronize();
 6d6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
    asm volatile("movl $0, %0" : "+m" (lock->mutex) : );
 6db:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
 6e1:	5d                   	pop    %ebp
 6e2:	c3                   	ret    
 6e3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000006f0 <lock_init>:
void lock_init(lock_t *lock) {
 6f0:	55                   	push   %ebp
 6f1:	89 e5                	mov    %esp,%ebp
  lock->mutex = 0;
 6f3:	8b 45 08             	mov    0x8(%ebp),%eax
 6f6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 6fc:	5d                   	pop    %ebp
 6fd:	c3                   	ret    

000006fe <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6fe:	b8 01 00 00 00       	mov    $0x1,%eax
 703:	cd 40                	int    $0x40
 705:	c3                   	ret    

00000706 <exit>:
SYSCALL(exit)
 706:	b8 02 00 00 00       	mov    $0x2,%eax
 70b:	cd 40                	int    $0x40
 70d:	c3                   	ret    

0000070e <wait>:
SYSCALL(wait)
 70e:	b8 03 00 00 00       	mov    $0x3,%eax
 713:	cd 40                	int    $0x40
 715:	c3                   	ret    

00000716 <pipe>:
SYSCALL(pipe)
 716:	b8 04 00 00 00       	mov    $0x4,%eax
 71b:	cd 40                	int    $0x40
 71d:	c3                   	ret    

0000071e <read>:
SYSCALL(read)
 71e:	b8 05 00 00 00       	mov    $0x5,%eax
 723:	cd 40                	int    $0x40
 725:	c3                   	ret    

00000726 <write>:
SYSCALL(write)
 726:	b8 10 00 00 00       	mov    $0x10,%eax
 72b:	cd 40                	int    $0x40
 72d:	c3                   	ret    

0000072e <close>:
SYSCALL(close)
 72e:	b8 15 00 00 00       	mov    $0x15,%eax
 733:	cd 40                	int    $0x40
 735:	c3                   	ret    

00000736 <kill>:
SYSCALL(kill)
 736:	b8 06 00 00 00       	mov    $0x6,%eax
 73b:	cd 40                	int    $0x40
 73d:	c3                   	ret    

0000073e <exec>:
SYSCALL(exec)
 73e:	b8 07 00 00 00       	mov    $0x7,%eax
 743:	cd 40                	int    $0x40
 745:	c3                   	ret    

00000746 <open>:
SYSCALL(open)
 746:	b8 0f 00 00 00       	mov    $0xf,%eax
 74b:	cd 40                	int    $0x40
 74d:	c3                   	ret    

0000074e <mknod>:
SYSCALL(mknod)
 74e:	b8 11 00 00 00       	mov    $0x11,%eax
 753:	cd 40                	int    $0x40
 755:	c3                   	ret    

00000756 <unlink>:
SYSCALL(unlink)
 756:	b8 12 00 00 00       	mov    $0x12,%eax
 75b:	cd 40                	int    $0x40
 75d:	c3                   	ret    

0000075e <fstat>:
SYSCALL(fstat)
 75e:	b8 08 00 00 00       	mov    $0x8,%eax
 763:	cd 40                	int    $0x40
 765:	c3                   	ret    

00000766 <link>:
SYSCALL(link)
 766:	b8 13 00 00 00       	mov    $0x13,%eax
 76b:	cd 40                	int    $0x40
 76d:	c3                   	ret    

0000076e <mkdir>:
SYSCALL(mkdir)
 76e:	b8 14 00 00 00       	mov    $0x14,%eax
 773:	cd 40                	int    $0x40
 775:	c3                   	ret    

00000776 <chdir>:
SYSCALL(chdir)
 776:	b8 09 00 00 00       	mov    $0x9,%eax
 77b:	cd 40                	int    $0x40
 77d:	c3                   	ret    

0000077e <dup>:
SYSCALL(dup)
 77e:	b8 0a 00 00 00       	mov    $0xa,%eax
 783:	cd 40                	int    $0x40
 785:	c3                   	ret    

00000786 <getpid>:
SYSCALL(getpid)
 786:	b8 0b 00 00 00       	mov    $0xb,%eax
 78b:	cd 40                	int    $0x40
 78d:	c3                   	ret    

0000078e <sbrk>:
SYSCALL(sbrk)
 78e:	b8 0c 00 00 00       	mov    $0xc,%eax
 793:	cd 40                	int    $0x40
 795:	c3                   	ret    

00000796 <sleep>:
SYSCALL(sleep)
 796:	b8 0d 00 00 00       	mov    $0xd,%eax
 79b:	cd 40                	int    $0x40
 79d:	c3                   	ret    

0000079e <uptime>:
SYSCALL(uptime)
 79e:	b8 0e 00 00 00       	mov    $0xe,%eax
 7a3:	cd 40                	int    $0x40
 7a5:	c3                   	ret    

000007a6 <clone>:
SYSCALL(clone)
 7a6:	b8 16 00 00 00       	mov    $0x16,%eax
 7ab:	cd 40                	int    $0x40
 7ad:	c3                   	ret    

000007ae <join>:
SYSCALL(join)
 7ae:	b8 17 00 00 00       	mov    $0x17,%eax
 7b3:	cd 40                	int    $0x40
 7b5:	c3                   	ret    
 7b6:	66 90                	xchg   %ax,%ax
 7b8:	66 90                	xchg   %ax,%ax
 7ba:	66 90                	xchg   %ax,%ax
 7bc:	66 90                	xchg   %ax,%ax
 7be:	66 90                	xchg   %ax,%ax

000007c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 7c0:	55                   	push   %ebp
 7c1:	89 e5                	mov    %esp,%ebp
 7c3:	57                   	push   %edi
 7c4:	56                   	push   %esi
 7c5:	53                   	push   %ebx
 7c6:	83 ec 3c             	sub    $0x3c,%esp
 7c9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 7cc:	89 d1                	mov    %edx,%ecx
{
 7ce:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 7d1:	85 d2                	test   %edx,%edx
 7d3:	0f 89 7f 00 00 00    	jns    858 <printint+0x98>
 7d9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 7dd:	74 79                	je     858 <printint+0x98>
    neg = 1;
 7df:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7e6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7e8:	31 db                	xor    %ebx,%ebx
 7ea:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7ed:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7f0:	89 c8                	mov    %ecx,%eax
 7f2:	31 d2                	xor    %edx,%edx
 7f4:	89 cf                	mov    %ecx,%edi
 7f6:	f7 75 c4             	divl   -0x3c(%ebp)
 7f9:	0f b6 92 30 0c 00 00 	movzbl 0xc30(%edx),%edx
 800:	89 45 c0             	mov    %eax,-0x40(%ebp)
 803:	89 d8                	mov    %ebx,%eax
 805:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 808:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 80b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 80e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 811:	76 dd                	jbe    7f0 <printint+0x30>
  if(neg)
 813:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 816:	85 c9                	test   %ecx,%ecx
 818:	74 0c                	je     826 <printint+0x66>
    buf[i++] = '-';
 81a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 81f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 821:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 826:	8b 7d b8             	mov    -0x48(%ebp),%edi
 829:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 82d:	eb 07                	jmp    836 <printint+0x76>
 82f:	90                   	nop
    putc(fd, buf[i]);
 830:	0f b6 13             	movzbl (%ebx),%edx
 833:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 836:	83 ec 04             	sub    $0x4,%esp
 839:	88 55 d7             	mov    %dl,-0x29(%ebp)
 83c:	6a 01                	push   $0x1
 83e:	56                   	push   %esi
 83f:	57                   	push   %edi
 840:	e8 e1 fe ff ff       	call   726 <write>
  while(--i >= 0)
 845:	83 c4 10             	add    $0x10,%esp
 848:	39 de                	cmp    %ebx,%esi
 84a:	75 e4                	jne    830 <printint+0x70>
}
 84c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 84f:	5b                   	pop    %ebx
 850:	5e                   	pop    %esi
 851:	5f                   	pop    %edi
 852:	5d                   	pop    %ebp
 853:	c3                   	ret    
 854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 858:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 85f:	eb 87                	jmp    7e8 <printint+0x28>
 861:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 868:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 86f:	90                   	nop

00000870 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 870:	55                   	push   %ebp
 871:	89 e5                	mov    %esp,%ebp
 873:	57                   	push   %edi
 874:	56                   	push   %esi
 875:	53                   	push   %ebx
 876:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 879:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 87c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 87f:	0f b6 13             	movzbl (%ebx),%edx
 882:	84 d2                	test   %dl,%dl
 884:	74 6a                	je     8f0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 886:	8d 45 10             	lea    0x10(%ebp),%eax
 889:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 88c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 88f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 891:	89 45 d0             	mov    %eax,-0x30(%ebp)
 894:	eb 36                	jmp    8cc <printf+0x5c>
 896:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89d:	8d 76 00             	lea    0x0(%esi),%esi
 8a0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 8a3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 8a8:	83 f8 25             	cmp    $0x25,%eax
 8ab:	74 15                	je     8c2 <printf+0x52>
  write(fd, &c, 1);
 8ad:	83 ec 04             	sub    $0x4,%esp
 8b0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8b3:	6a 01                	push   $0x1
 8b5:	57                   	push   %edi
 8b6:	56                   	push   %esi
 8b7:	e8 6a fe ff ff       	call   726 <write>
 8bc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 8bf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 8c2:	0f b6 13             	movzbl (%ebx),%edx
 8c5:	83 c3 01             	add    $0x1,%ebx
 8c8:	84 d2                	test   %dl,%dl
 8ca:	74 24                	je     8f0 <printf+0x80>
    c = fmt[i] & 0xff;
 8cc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 8cf:	85 c9                	test   %ecx,%ecx
 8d1:	74 cd                	je     8a0 <printf+0x30>
      }
    } else if(state == '%'){
 8d3:	83 f9 25             	cmp    $0x25,%ecx
 8d6:	75 ea                	jne    8c2 <printf+0x52>
      if(c == 'd'){
 8d8:	83 f8 25             	cmp    $0x25,%eax
 8db:	0f 84 07 01 00 00    	je     9e8 <printf+0x178>
 8e1:	83 e8 63             	sub    $0x63,%eax
 8e4:	83 f8 15             	cmp    $0x15,%eax
 8e7:	77 17                	ja     900 <printf+0x90>
 8e9:	ff 24 85 d8 0b 00 00 	jmp    *0xbd8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8f3:	5b                   	pop    %ebx
 8f4:	5e                   	pop    %esi
 8f5:	5f                   	pop    %edi
 8f6:	5d                   	pop    %ebp
 8f7:	c3                   	ret    
 8f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8ff:	90                   	nop
  write(fd, &c, 1);
 900:	83 ec 04             	sub    $0x4,%esp
 903:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 906:	6a 01                	push   $0x1
 908:	57                   	push   %edi
 909:	56                   	push   %esi
 90a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 90e:	e8 13 fe ff ff       	call   726 <write>
        putc(fd, c);
 913:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 917:	83 c4 0c             	add    $0xc,%esp
 91a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 91d:	6a 01                	push   $0x1
 91f:	57                   	push   %edi
 920:	56                   	push   %esi
 921:	e8 00 fe ff ff       	call   726 <write>
        putc(fd, c);
 926:	83 c4 10             	add    $0x10,%esp
      state = 0;
 929:	31 c9                	xor    %ecx,%ecx
 92b:	eb 95                	jmp    8c2 <printf+0x52>
 92d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 930:	83 ec 0c             	sub    $0xc,%esp
 933:	b9 10 00 00 00       	mov    $0x10,%ecx
 938:	6a 00                	push   $0x0
 93a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 93d:	8b 10                	mov    (%eax),%edx
 93f:	89 f0                	mov    %esi,%eax
 941:	e8 7a fe ff ff       	call   7c0 <printint>
        ap++;
 946:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 94a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 94d:	31 c9                	xor    %ecx,%ecx
 94f:	e9 6e ff ff ff       	jmp    8c2 <printf+0x52>
 954:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 958:	8b 45 d0             	mov    -0x30(%ebp),%eax
 95b:	8b 10                	mov    (%eax),%edx
        ap++;
 95d:	83 c0 04             	add    $0x4,%eax
 960:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 963:	85 d2                	test   %edx,%edx
 965:	0f 84 8d 00 00 00    	je     9f8 <printf+0x188>
        while(*s != 0){
 96b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 96e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 970:	84 c0                	test   %al,%al
 972:	0f 84 4a ff ff ff    	je     8c2 <printf+0x52>
 978:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 97b:	89 d3                	mov    %edx,%ebx
 97d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 980:	83 ec 04             	sub    $0x4,%esp
          s++;
 983:	83 c3 01             	add    $0x1,%ebx
 986:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 989:	6a 01                	push   $0x1
 98b:	57                   	push   %edi
 98c:	56                   	push   %esi
 98d:	e8 94 fd ff ff       	call   726 <write>
        while(*s != 0){
 992:	0f b6 03             	movzbl (%ebx),%eax
 995:	83 c4 10             	add    $0x10,%esp
 998:	84 c0                	test   %al,%al
 99a:	75 e4                	jne    980 <printf+0x110>
      state = 0;
 99c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 99f:	31 c9                	xor    %ecx,%ecx
 9a1:	e9 1c ff ff ff       	jmp    8c2 <printf+0x52>
 9a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 9b0:	83 ec 0c             	sub    $0xc,%esp
 9b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 9b8:	6a 01                	push   $0x1
 9ba:	e9 7b ff ff ff       	jmp    93a <printf+0xca>
 9bf:	90                   	nop
        putc(fd, *ap);
 9c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 9c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 9c6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 9c8:	6a 01                	push   $0x1
 9ca:	57                   	push   %edi
 9cb:	56                   	push   %esi
        putc(fd, *ap);
 9cc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 9cf:	e8 52 fd ff ff       	call   726 <write>
        ap++;
 9d4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 9d8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 9db:	31 c9                	xor    %ecx,%ecx
 9dd:	e9 e0 fe ff ff       	jmp    8c2 <printf+0x52>
 9e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9e8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9eb:	83 ec 04             	sub    $0x4,%esp
 9ee:	e9 2a ff ff ff       	jmp    91d <printf+0xad>
 9f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9f7:	90                   	nop
          s = "(null)";
 9f8:	ba ce 0b 00 00       	mov    $0xbce,%edx
        while(*s != 0){
 9fd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 a00:	b8 28 00 00 00       	mov    $0x28,%eax
 a05:	89 d3                	mov    %edx,%ebx
 a07:	e9 74 ff ff ff       	jmp    980 <printf+0x110>
 a0c:	66 90                	xchg   %ax,%ax
 a0e:	66 90                	xchg   %ax,%ax

00000a10 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a10:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a11:	a1 a8 14 00 00       	mov    0x14a8,%eax
{
 a16:	89 e5                	mov    %esp,%ebp
 a18:	57                   	push   %edi
 a19:	56                   	push   %esi
 a1a:	53                   	push   %ebx
 a1b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 a1e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a28:	89 c2                	mov    %eax,%edx
 a2a:	8b 00                	mov    (%eax),%eax
 a2c:	39 ca                	cmp    %ecx,%edx
 a2e:	73 30                	jae    a60 <free+0x50>
 a30:	39 c1                	cmp    %eax,%ecx
 a32:	72 04                	jb     a38 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a34:	39 c2                	cmp    %eax,%edx
 a36:	72 f0                	jb     a28 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a38:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a3b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a3e:	39 f8                	cmp    %edi,%eax
 a40:	74 30                	je     a72 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a42:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a45:	8b 42 04             	mov    0x4(%edx),%eax
 a48:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a4b:	39 f1                	cmp    %esi,%ecx
 a4d:	74 3a                	je     a89 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a4f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a51:	5b                   	pop    %ebx
  freep = p;
 a52:	89 15 a8 14 00 00    	mov    %edx,0x14a8
}
 a58:	5e                   	pop    %esi
 a59:	5f                   	pop    %edi
 a5a:	5d                   	pop    %ebp
 a5b:	c3                   	ret    
 a5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a60:	39 c2                	cmp    %eax,%edx
 a62:	72 c4                	jb     a28 <free+0x18>
 a64:	39 c1                	cmp    %eax,%ecx
 a66:	73 c0                	jae    a28 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a68:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a6b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a6e:	39 f8                	cmp    %edi,%eax
 a70:	75 d0                	jne    a42 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a72:	03 70 04             	add    0x4(%eax),%esi
 a75:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a78:	8b 02                	mov    (%edx),%eax
 a7a:	8b 00                	mov    (%eax),%eax
 a7c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a7f:	8b 42 04             	mov    0x4(%edx),%eax
 a82:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a85:	39 f1                	cmp    %esi,%ecx
 a87:	75 c6                	jne    a4f <free+0x3f>
    p->s.size += bp->s.size;
 a89:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a8c:	89 15 a8 14 00 00    	mov    %edx,0x14a8
    p->s.size += bp->s.size;
 a92:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a95:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a98:	89 0a                	mov    %ecx,(%edx)
}
 a9a:	5b                   	pop    %ebx
 a9b:	5e                   	pop    %esi
 a9c:	5f                   	pop    %edi
 a9d:	5d                   	pop    %ebp
 a9e:	c3                   	ret    
 a9f:	90                   	nop

00000aa0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 aa0:	55                   	push   %ebp
 aa1:	89 e5                	mov    %esp,%ebp
 aa3:	57                   	push   %edi
 aa4:	56                   	push   %esi
 aa5:	53                   	push   %ebx
 aa6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 aa9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 aac:	8b 3d a8 14 00 00    	mov    0x14a8,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 ab2:	8d 70 07             	lea    0x7(%eax),%esi
 ab5:	c1 ee 03             	shr    $0x3,%esi
 ab8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 abb:	85 ff                	test   %edi,%edi
 abd:	0f 84 9d 00 00 00    	je     b60 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ac3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 ac5:	8b 4a 04             	mov    0x4(%edx),%ecx
 ac8:	39 f1                	cmp    %esi,%ecx
 aca:	73 6a                	jae    b36 <malloc+0x96>
 acc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 ad1:	39 de                	cmp    %ebx,%esi
 ad3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 ad6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 add:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ae0:	eb 17                	jmp    af9 <malloc+0x59>
 ae2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ae8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aea:	8b 48 04             	mov    0x4(%eax),%ecx
 aed:	39 f1                	cmp    %esi,%ecx
 aef:	73 4f                	jae    b40 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 af1:	8b 3d a8 14 00 00    	mov    0x14a8,%edi
 af7:	89 c2                	mov    %eax,%edx
 af9:	39 d7                	cmp    %edx,%edi
 afb:	75 eb                	jne    ae8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 afd:	83 ec 0c             	sub    $0xc,%esp
 b00:	ff 75 e4             	push   -0x1c(%ebp)
 b03:	e8 86 fc ff ff       	call   78e <sbrk>
  if(p == (char*)-1)
 b08:	83 c4 10             	add    $0x10,%esp
 b0b:	83 f8 ff             	cmp    $0xffffffff,%eax
 b0e:	74 1c                	je     b2c <malloc+0x8c>
  hp->s.size = nu;
 b10:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 b13:	83 ec 0c             	sub    $0xc,%esp
 b16:	83 c0 08             	add    $0x8,%eax
 b19:	50                   	push   %eax
 b1a:	e8 f1 fe ff ff       	call   a10 <free>
  return freep;
 b1f:	8b 15 a8 14 00 00    	mov    0x14a8,%edx
      if((p = morecore(nunits)) == 0)
 b25:	83 c4 10             	add    $0x10,%esp
 b28:	85 d2                	test   %edx,%edx
 b2a:	75 bc                	jne    ae8 <malloc+0x48>
        return 0;
  }
}
 b2c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 b2f:	31 c0                	xor    %eax,%eax
}
 b31:	5b                   	pop    %ebx
 b32:	5e                   	pop    %esi
 b33:	5f                   	pop    %edi
 b34:	5d                   	pop    %ebp
 b35:	c3                   	ret    
    if(p->s.size >= nunits){
 b36:	89 d0                	mov    %edx,%eax
 b38:	89 fa                	mov    %edi,%edx
 b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b40:	39 ce                	cmp    %ecx,%esi
 b42:	74 4c                	je     b90 <malloc+0xf0>
        p->s.size -= nunits;
 b44:	29 f1                	sub    %esi,%ecx
 b46:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b49:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b4c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b4f:	89 15 a8 14 00 00    	mov    %edx,0x14a8
}
 b55:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b58:	83 c0 08             	add    $0x8,%eax
}
 b5b:	5b                   	pop    %ebx
 b5c:	5e                   	pop    %esi
 b5d:	5f                   	pop    %edi
 b5e:	5d                   	pop    %ebp
 b5f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b60:	c7 05 a8 14 00 00 ac 	movl   $0x14ac,0x14a8
 b67:	14 00 00 
    base.s.size = 0;
 b6a:	bf ac 14 00 00       	mov    $0x14ac,%edi
    base.s.ptr = freep = prevp = &base;
 b6f:	c7 05 ac 14 00 00 ac 	movl   $0x14ac,0x14ac
 b76:	14 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b79:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b7b:	c7 05 b0 14 00 00 00 	movl   $0x0,0x14b0
 b82:	00 00 00 
    if(p->s.size >= nunits){
 b85:	e9 42 ff ff ff       	jmp    acc <malloc+0x2c>
 b8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b90:	8b 08                	mov    (%eax),%ecx
 b92:	89 0a                	mov    %ecx,(%edx)
 b94:	eb b9                	jmp    b4f <malloc+0xaf>
