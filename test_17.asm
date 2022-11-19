
_test_17:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}

void merge_sort(void *array, void *size);

int main(int argc, char *argv[])
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
  12:	e8 2d 07 00 00       	call   744 <getpid>
   4. Merge function
   */


    int size = 11;
    global = (int*)malloc(size * sizeof(int));
  17:	83 ec 0c             	sub    $0xc,%esp
    int size = 11;
  1a:	c7 45 f4 0b 00 00 00 	movl   $0xb,-0xc(%ebp)
    global = (int*)malloc(size * sizeof(int));
  21:	6a 2c                	push   $0x2c
   ppid = getpid();
  23:	a3 04 10 00 00       	mov    %eax,0x1004
    global = (int*)malloc(size * sizeof(int));
  28:	e8 33 0a 00 00       	call   a60 <malloc>
    for(int i = 0; i < size; i++){
  2d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  30:	83 c4 10             	add    $0x10,%esp
    global = (int*)malloc(size * sizeof(int));
  33:	a3 00 10 00 00       	mov    %eax,0x1000
    for(int i = 0; i < size; i++){
  38:	85 d2                	test   %edx,%edx
  3a:	7e 1b                	jle    57 <main+0x57>
  3c:	31 c9                	xor    %ecx,%ecx
  3e:	eb 05                	jmp    45 <main+0x45>
        global[i] = size - i - 1;
    }

   int thread_pid = thread_create(merge_sort, global, &size);
  40:	a1 00 10 00 00       	mov    0x1000,%eax
        global[i] = size - i - 1;
  45:	29 ca                	sub    %ecx,%edx
  47:	83 ea 01             	sub    $0x1,%edx
  4a:	89 14 88             	mov    %edx,(%eax,%ecx,4)
    for(int i = 0; i < size; i++){
  4d:	8b 55 f4             	mov    -0xc(%ebp),%edx
  50:	83 c1 01             	add    $0x1,%ecx
  53:	39 ca                	cmp    %ecx,%edx
  55:	7f e9                	jg     40 <main+0x40>
   int thread_pid = thread_create(merge_sort, global, &size);
  57:	83 ec 04             	sub    $0x4,%esp
  5a:	8d 45 f4             	lea    -0xc(%ebp),%eax
  5d:	50                   	push   %eax
  5e:	ff 35 00 10 00 00    	push   0x1000
  64:	68 50 02 00 00       	push   $0x250
  69:	e8 c2 04 00 00       	call   530 <thread_create>
   assert(thread_pid > 0);
  6e:	83 c4 10             	add    $0x10,%esp
   int thread_pid = thread_create(merge_sort, global, &size);
  71:	89 c3                	mov    %eax,%ebx
   assert(thread_pid > 0);
  73:	85 c0                	test   %eax,%eax
  75:	0f 8e 84 00 00 00    	jle    ff <main+0xff>

   int join_pid = thread_join();
  7b:	e8 40 05 00 00       	call   5c0 <thread_join>
   assert(join_pid == thread_pid);
  80:	39 c3                	cmp    %eax,%ebx
  82:	75 35                	jne    b9 <main+0xb9>
   assert(global[0] == 0);
  84:	a1 00 10 00 00       	mov    0x1000,%eax
  89:	83 38 00             	cmpl   $0x0,(%eax)
  8c:	0f 85 9d 00 00 00    	jne    12f <main+0x12f>
   assert(global[10] == 10); 
  92:	83 78 28 0a          	cmpl   $0xa,0x28(%eax)
  96:	0f 84 80 00 00 00    	je     11c <main+0x11c>
  9c:	6a 35                	push   $0x35
  9e:	68 58 0b 00 00       	push   $0xb58
  a3:	68 62 0b 00 00       	push   $0xb62
  a8:	6a 01                	push   $0x1
  aa:	e8 81 07 00 00       	call   830 <printf>
  af:	83 c4 0c             	add    $0xc,%esp
  b2:	68 c0 0b 00 00       	push   $0xbc0
  b7:	eb 1b                	jmp    d4 <main+0xd4>
   assert(join_pid == thread_pid);
  b9:	6a 33                	push   $0x33
  bb:	68 58 0b 00 00       	push   $0xb58
  c0:	68 62 0b 00 00       	push   $0xb62
  c5:	6a 01                	push   $0x1
  c7:	e8 64 07 00 00       	call   830 <printf>
  cc:	83 c4 0c             	add    $0xc,%esp
  cf:	68 9a 0b 00 00       	push   $0xb9a
  d4:	68 79 0b 00 00       	push   $0xb79
  d9:	6a 01                	push   $0x1
  db:	e8 50 07 00 00       	call   830 <printf>
  e0:	5a                   	pop    %edx
  e1:	59                   	pop    %ecx
  e2:	68 8d 0b 00 00       	push   $0xb8d
  e7:	6a 01                	push   $0x1
  e9:	e8 42 07 00 00       	call   830 <printf>
  ee:	5b                   	pop    %ebx
  ef:	ff 35 04 10 00 00    	push   0x1004
  f5:	e8 fa 05 00 00       	call   6f4 <kill>
  fa:	e8 c5 05 00 00       	call   6c4 <exit>
   assert(thread_pid > 0);
  ff:	6a 30                	push   $0x30
 101:	68 58 0b 00 00       	push   $0xb58
 106:	68 62 0b 00 00       	push   $0xb62
 10b:	6a 01                	push   $0x1
 10d:	e8 1e 07 00 00       	call   830 <printf>
 112:	83 c4 0c             	add    $0xc,%esp
 115:	68 6a 0b 00 00       	push   $0xb6a
 11a:	eb b8                	jmp    d4 <main+0xd4>

   printf(1, "TEST PASSED\n");
 11c:	50                   	push   %eax
 11d:	50                   	push   %eax
 11e:	68 d1 0b 00 00       	push   $0xbd1
 123:	6a 01                	push   $0x1
 125:	e8 06 07 00 00       	call   830 <printf>
   exit();
 12a:	e8 95 05 00 00       	call   6c4 <exit>
   assert(global[0] == 0);
 12f:	6a 34                	push   $0x34
 131:	68 58 0b 00 00       	push   $0xb58
 136:	68 62 0b 00 00       	push   $0xb62
 13b:	6a 01                	push   $0x1
 13d:	e8 ee 06 00 00       	call   830 <printf>
 142:	83 c4 0c             	add    $0xc,%esp
 145:	68 b1 0b 00 00       	push   $0xbb1
 14a:	eb 88                	jmp    d4 <main+0xd4>
 14c:	66 90                	xchg   %ax,%ax
 14e:	66 90                	xchg   %ax,%ax

00000150 <merge>:
}

void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 150:	55                   	push   %ebp
    int i = 0;
    int j = 0;
    int k = 0;
 151:	31 d2                	xor    %edx,%edx
    int i = 0;
 153:	31 c9                	xor    %ecx,%ecx
void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 155:	89 e5                	mov    %esp,%ebp
 157:	57                   	push   %edi
 158:	56                   	push   %esi
 159:	53                   	push   %ebx
    int j = 0;
 15a:	31 db                	xor    %ebx,%ebx
void merge(int* array, int* array_right,int size_left, int size_right,int*temp_array){
 15c:	83 ec 0c             	sub    $0xc,%esp
 15f:	8b 7d 10             	mov    0x10(%ebp),%edi
    while(i < size_left && j < size_right){
 162:	85 ff                	test   %edi,%edi
 164:	7e 41                	jle    1a7 <merge+0x57>
 166:	8b 45 14             	mov    0x14(%ebp),%eax
 169:	85 c0                	test   %eax,%eax
 16b:	7f 18                	jg     185 <merge+0x35>
 16d:	eb 38                	jmp    1a7 <merge+0x57>
 16f:	90                   	nop
        if(array[i] < array_right[j]){
            temp_array[k] = array[i];
 170:	8b 75 18             	mov    0x18(%ebp),%esi
            i++;
 173:	83 c1 01             	add    $0x1,%ecx
            temp_array[k] = array[i];
 176:	89 04 96             	mov    %eax,(%esi,%edx,4)
        }
        else{
            temp_array[k] = array_right[j];
            j++;
        }
        k++;
 179:	83 c2 01             	add    $0x1,%edx
    while(i < size_left && j < size_right){
 17c:	39 f9                	cmp    %edi,%ecx
 17e:	7d 27                	jge    1a7 <merge+0x57>
 180:	3b 5d 14             	cmp    0x14(%ebp),%ebx
 183:	7d 22                	jge    1a7 <merge+0x57>
        if(array[i] < array_right[j]){
 185:	8b 45 08             	mov    0x8(%ebp),%eax
 188:	8b 75 0c             	mov    0xc(%ebp),%esi
 18b:	8b 04 88             	mov    (%eax,%ecx,4),%eax
 18e:	8b 34 9e             	mov    (%esi,%ebx,4),%esi
 191:	39 f0                	cmp    %esi,%eax
 193:	7c db                	jl     170 <merge+0x20>
            j++;
 195:	89 f0                	mov    %esi,%eax
            temp_array[k] = array[i];
 197:	8b 75 18             	mov    0x18(%ebp),%esi
            j++;
 19a:	83 c3 01             	add    $0x1,%ebx
            temp_array[k] = array[i];
 19d:	89 04 96             	mov    %eax,(%esi,%edx,4)
        k++;
 1a0:	83 c2 01             	add    $0x1,%edx
    while(i < size_left && j < size_right){
 1a3:	39 f9                	cmp    %edi,%ecx
 1a5:	7c d9                	jl     180 <merge+0x30>
    }
    while(i < size_left){
 1a7:	39 cf                	cmp    %ecx,%edi
 1a9:	7e 3e                	jle    1e9 <merge+0x99>
 1ab:	8b 45 08             	mov    0x8(%ebp),%eax
 1ae:	8b 75 18             	mov    0x18(%ebp),%esi
 1b1:	89 55 e8             	mov    %edx,-0x18(%ebp)
 1b4:	8d 04 88             	lea    (%eax,%ecx,4),%eax
 1b7:	8d 34 96             	lea    (%esi,%edx,4),%esi
 1ba:	89 45 f0             	mov    %eax,-0x10(%ebp)
 1bd:	8b 45 08             	mov    0x8(%ebp),%eax
 1c0:	8d 04 b8             	lea    (%eax,%edi,4),%eax
 1c3:	89 45 ec             	mov    %eax,-0x14(%ebp)
 1c6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 1c9:	89 4d f0             	mov    %ecx,-0x10(%ebp)
 1cc:	8b 4d ec             	mov    -0x14(%ebp),%ecx
 1cf:	90                   	nop
        temp_array[k] = array[i];
 1d0:	8b 10                	mov    (%eax),%edx
    while(i < size_left){
 1d2:	83 c0 04             	add    $0x4,%eax
 1d5:	83 c6 04             	add    $0x4,%esi
        temp_array[k] = array[i];
 1d8:	89 56 fc             	mov    %edx,-0x4(%esi)
    while(i < size_left){
 1db:	39 c8                	cmp    %ecx,%eax
 1dd:	75 f1                	jne    1d0 <merge+0x80>
        i++;
        k++;
 1df:	8b 55 e8             	mov    -0x18(%ebp),%edx
 1e2:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 1e5:	01 fa                	add    %edi,%edx
 1e7:	29 ca                	sub    %ecx,%edx
    }
    while(j < size_right){
 1e9:	39 5d 14             	cmp    %ebx,0x14(%ebp)
 1ec:	7e 29                	jle    217 <merge+0xc7>
 1ee:	8b 45 0c             	mov    0xc(%ebp),%eax
 1f1:	8b 4d 14             	mov    0x14(%ebp),%ecx
 1f4:	8d 04 98             	lea    (%eax,%ebx,4),%eax
 1f7:	8b 5d 18             	mov    0x18(%ebp),%ebx
 1fa:	8d 14 93             	lea    (%ebx,%edx,4),%edx
 1fd:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 200:	8d 0c 8b             	lea    (%ebx,%ecx,4),%ecx
 203:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 207:	90                   	nop
        temp_array[k] = array_right[j];
 208:	8b 18                	mov    (%eax),%ebx
    while(j < size_right){
 20a:	83 c0 04             	add    $0x4,%eax
 20d:	83 c2 04             	add    $0x4,%edx
        temp_array[k] = array_right[j];
 210:	89 5a fc             	mov    %ebx,-0x4(%edx)
    while(j < size_right){
 213:	39 c1                	cmp    %eax,%ecx
 215:	75 f1                	jne    208 <merge+0xb8>
        j++;
        k++;
    }
    for(int i = 0; i < size_left + size_right; i++){
 217:	03 7d 14             	add    0x14(%ebp),%edi
 21a:	85 ff                	test   %edi,%edi
 21c:	7e 21                	jle    23f <merge+0xef>
 21e:	8b 45 18             	mov    0x18(%ebp),%eax
 221:	8b 55 08             	mov    0x8(%ebp),%edx
 224:	8d 1c b8             	lea    (%eax,%edi,4),%ebx
 227:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 22e:	66 90                	xchg   %ax,%ax
        array[i] = temp_array[i];
 230:	8b 08                	mov    (%eax),%ecx
    for(int i = 0; i < size_left + size_right; i++){
 232:	83 c0 04             	add    $0x4,%eax
 235:	83 c2 04             	add    $0x4,%edx
        array[i] = temp_array[i];
 238:	89 4a fc             	mov    %ecx,-0x4(%edx)
    for(int i = 0; i < size_left + size_right; i++){
 23b:	39 d8                	cmp    %ebx,%eax
 23d:	75 f1                	jne    230 <merge+0xe0>
    }
   
}
 23f:	83 c4 0c             	add    $0xc,%esp
 242:	5b                   	pop    %ebx
 243:	5e                   	pop    %esi
 244:	5f                   	pop    %edi
 245:	5d                   	pop    %ebp
 246:	c3                   	ret    
 247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 24e:	66 90                	xchg   %ax,%ax

00000250 <merge_sort>:

void merge_sort(void *arg1, void *arg2) {
 250:	55                   	push   %ebp
 251:	89 e5                	mov    %esp,%ebp
 253:	57                   	push   %edi
 254:	56                   	push   %esi
 255:	53                   	push   %ebx
 256:	83 ec 1c             	sub    $0x1c,%esp
   int *array = (int*)arg1;
   int size = *(int*)arg2;
 259:	8b 45 0c             	mov    0xc(%ebp),%eax
void merge_sort(void *arg1, void *arg2) {
 25c:	8b 75 08             	mov    0x8(%ebp),%esi
   int size = *(int*)arg2;
 25f:	8b 18                	mov    (%eax),%ebx

   if (size==1){
 261:	83 fb 01             	cmp    $0x1,%ebx
 264:	74 6e                	je     2d4 <merge_sort+0x84>
       exit();
   }

   
   int size_left = size/2;
 266:	89 d8                	mov    %ebx,%eax
 268:	b9 02 00 00 00       	mov    $0x2,%ecx
 26d:	99                   	cltd   
 26e:	f7 f9                	idiv   %ecx
   int size_right = size-size/2;
 270:	89 da                	mov    %ebx,%edx
 

//    int nested_join_pid_1 = thread_join();
//    int nested_join_pid_2 = thread_join();

   int* temp_array = malloc(size*sizeof(int));
 272:	c1 e3 02             	shl    $0x2,%ebx
   int size_right = size-size/2;
 275:	29 c2                	sub    %eax,%edx
   int* array_right = (int*)(array + size_left);
 277:	8d 3c 86             	lea    (%esi,%eax,4),%edi
   int size_left = size/2;
 27a:	89 45 e0             	mov    %eax,-0x20(%ebp)
   thread_create(merge_sort, array, &size_left);
 27d:	50                   	push   %eax
 27e:	8d 45 e0             	lea    -0x20(%ebp),%eax
 281:	50                   	push   %eax
 282:	56                   	push   %esi
 283:	68 50 02 00 00       	push   $0x250
   int size_right = size-size/2;
 288:	89 55 e4             	mov    %edx,-0x1c(%ebp)
   thread_create(merge_sort, array, &size_left);
 28b:	e8 a0 02 00 00       	call   530 <thread_create>
   thread_create(merge_sort, array_right, &size_right);
 290:	83 c4 0c             	add    $0xc,%esp
 293:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 296:	50                   	push   %eax
 297:	57                   	push   %edi
 298:	68 50 02 00 00       	push   $0x250
 29d:	e8 8e 02 00 00       	call   530 <thread_create>
   thread_join();
 2a2:	e8 19 03 00 00       	call   5c0 <thread_join>
   thread_join();
 2a7:	e8 14 03 00 00       	call   5c0 <thread_join>
   int* temp_array = malloc(size*sizeof(int));
 2ac:	89 1c 24             	mov    %ebx,(%esp)
 2af:	e8 ac 07 00 00       	call   a60 <malloc>

   merge(array,array_right,size_left,size_right,temp_array);
 2b4:	89 04 24             	mov    %eax,(%esp)
   int* temp_array = malloc(size*sizeof(int));
 2b7:	89 c3                	mov    %eax,%ebx
   merge(array,array_right,size_left,size_right,temp_array);
 2b9:	ff 75 e4             	push   -0x1c(%ebp)
 2bc:	ff 75 e0             	push   -0x20(%ebp)
 2bf:	57                   	push   %edi
 2c0:	56                   	push   %esi
 2c1:	e8 8a fe ff ff       	call   150 <merge>

   free(temp_array);
 2c6:	83 c4 14             	add    $0x14,%esp
 2c9:	53                   	push   %ebx
 2ca:	e8 01 07 00 00       	call   9d0 <free>

//    assert(nested_thread_pid_l == nested_join_pid_1 || nested_thread_pid_l == nested_join_pid_2);
//    assert(nested_thread_pid_r == nested_join_pid_1 || nested_thread_pid_r == nested_join_pid_2);
   exit();
 2cf:	e8 f0 03 00 00       	call   6c4 <exit>
       exit();
 2d4:	e8 eb 03 00 00       	call   6c4 <exit>
 2d9:	66 90                	xchg   %ax,%ax
 2db:	66 90                	xchg   %ax,%ax
 2dd:	66 90                	xchg   %ax,%ax
 2df:	90                   	nop

000002e0 <strcpy>:
#include "x86.h"
#include "mmu.h"

char*
strcpy(char *s, const char *t)
{
 2e0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2e1:	31 c0                	xor    %eax,%eax
{
 2e3:	89 e5                	mov    %esp,%ebp
 2e5:	53                   	push   %ebx
 2e6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2e9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2f7:	83 c0 01             	add    $0x1,%eax
 2fa:	84 d2                	test   %dl,%dl
 2fc:	75 f2                	jne    2f0 <strcpy+0x10>
    ;
  return os;
}
 2fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 301:	89 c8                	mov    %ecx,%eax
 303:	c9                   	leave  
 304:	c3                   	ret    
 305:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 30c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000310 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	53                   	push   %ebx
 314:	8b 55 08             	mov    0x8(%ebp),%edx
 317:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 31a:	0f b6 02             	movzbl (%edx),%eax
 31d:	84 c0                	test   %al,%al
 31f:	75 17                	jne    338 <strcmp+0x28>
 321:	eb 3a                	jmp    35d <strcmp+0x4d>
 323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 327:	90                   	nop
 328:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 32c:	83 c2 01             	add    $0x1,%edx
 32f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 332:	84 c0                	test   %al,%al
 334:	74 1a                	je     350 <strcmp+0x40>
    p++, q++;
 336:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 338:	0f b6 19             	movzbl (%ecx),%ebx
 33b:	38 c3                	cmp    %al,%bl
 33d:	74 e9                	je     328 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 33f:	29 d8                	sub    %ebx,%eax
}
 341:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 344:	c9                   	leave  
 345:	c3                   	ret    
 346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 350:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 354:	31 c0                	xor    %eax,%eax
 356:	29 d8                	sub    %ebx,%eax
}
 358:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 35b:	c9                   	leave  
 35c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 35d:	0f b6 19             	movzbl (%ecx),%ebx
 360:	31 c0                	xor    %eax,%eax
 362:	eb db                	jmp    33f <strcmp+0x2f>
 364:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 36b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 36f:	90                   	nop

00000370 <strlen>:

uint
strlen(const char *s)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 376:	80 3a 00             	cmpb   $0x0,(%edx)
 379:	74 15                	je     390 <strlen+0x20>
 37b:	31 c0                	xor    %eax,%eax
 37d:	8d 76 00             	lea    0x0(%esi),%esi
 380:	83 c0 01             	add    $0x1,%eax
 383:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 387:	89 c1                	mov    %eax,%ecx
 389:	75 f5                	jne    380 <strlen+0x10>
    ;
  return n;
}
 38b:	89 c8                	mov    %ecx,%eax
 38d:	5d                   	pop    %ebp
 38e:	c3                   	ret    
 38f:	90                   	nop
  for(n = 0; s[n]; n++)
 390:	31 c9                	xor    %ecx,%ecx
}
 392:	5d                   	pop    %ebp
 393:	89 c8                	mov    %ecx,%eax
 395:	c3                   	ret    
 396:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39d:	8d 76 00             	lea    0x0(%esi),%esi

000003a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	57                   	push   %edi
 3a4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3aa:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ad:	89 d7                	mov    %edx,%edi
 3af:	fc                   	cld    
 3b0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3b2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3b5:	89 d0                	mov    %edx,%eax
 3b7:	c9                   	leave  
 3b8:	c3                   	ret    
 3b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003c0 <strchr>:

char*
strchr(const char *s, char c)
{
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	8b 45 08             	mov    0x8(%ebp),%eax
 3c6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3ca:	0f b6 10             	movzbl (%eax),%edx
 3cd:	84 d2                	test   %dl,%dl
 3cf:	75 12                	jne    3e3 <strchr+0x23>
 3d1:	eb 1d                	jmp    3f0 <strchr+0x30>
 3d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3d7:	90                   	nop
 3d8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3dc:	83 c0 01             	add    $0x1,%eax
 3df:	84 d2                	test   %dl,%dl
 3e1:	74 0d                	je     3f0 <strchr+0x30>
    if(*s == c)
 3e3:	38 d1                	cmp    %dl,%cl
 3e5:	75 f1                	jne    3d8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3e7:	5d                   	pop    %ebp
 3e8:	c3                   	ret    
 3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3f0:	31 c0                	xor    %eax,%eax
}
 3f2:	5d                   	pop    %ebp
 3f3:	c3                   	ret    
 3f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <gets>:

char*
gets(char *buf, int max)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 405:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 408:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 409:	31 db                	xor    %ebx,%ebx
{
 40b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 40e:	eb 27                	jmp    437 <gets+0x37>
    cc = read(0, &c, 1);
 410:	83 ec 04             	sub    $0x4,%esp
 413:	6a 01                	push   $0x1
 415:	57                   	push   %edi
 416:	6a 00                	push   $0x0
 418:	e8 bf 02 00 00       	call   6dc <read>
    if(cc < 1)
 41d:	83 c4 10             	add    $0x10,%esp
 420:	85 c0                	test   %eax,%eax
 422:	7e 1d                	jle    441 <gets+0x41>
      break;
    buf[i++] = c;
 424:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 428:	8b 55 08             	mov    0x8(%ebp),%edx
 42b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 42f:	3c 0a                	cmp    $0xa,%al
 431:	74 1d                	je     450 <gets+0x50>
 433:	3c 0d                	cmp    $0xd,%al
 435:	74 19                	je     450 <gets+0x50>
  for(i=0; i+1 < max; ){
 437:	89 de                	mov    %ebx,%esi
 439:	83 c3 01             	add    $0x1,%ebx
 43c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 43f:	7c cf                	jl     410 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 441:	8b 45 08             	mov    0x8(%ebp),%eax
 444:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 448:	8d 65 f4             	lea    -0xc(%ebp),%esp
 44b:	5b                   	pop    %ebx
 44c:	5e                   	pop    %esi
 44d:	5f                   	pop    %edi
 44e:	5d                   	pop    %ebp
 44f:	c3                   	ret    
  buf[i] = '\0';
 450:	8b 45 08             	mov    0x8(%ebp),%eax
 453:	89 de                	mov    %ebx,%esi
 455:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 459:	8d 65 f4             	lea    -0xc(%ebp),%esp
 45c:	5b                   	pop    %ebx
 45d:	5e                   	pop    %esi
 45e:	5f                   	pop    %edi
 45f:	5d                   	pop    %ebp
 460:	c3                   	ret    
 461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 468:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 46f:	90                   	nop

00000470 <stat>:

int
stat(const char *n, struct stat *st)
{
 470:	55                   	push   %ebp
 471:	89 e5                	mov    %esp,%ebp
 473:	56                   	push   %esi
 474:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 475:	83 ec 08             	sub    $0x8,%esp
 478:	6a 00                	push   $0x0
 47a:	ff 75 08             	push   0x8(%ebp)
 47d:	e8 82 02 00 00       	call   704 <open>
  if(fd < 0)
 482:	83 c4 10             	add    $0x10,%esp
 485:	85 c0                	test   %eax,%eax
 487:	78 27                	js     4b0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 489:	83 ec 08             	sub    $0x8,%esp
 48c:	ff 75 0c             	push   0xc(%ebp)
 48f:	89 c3                	mov    %eax,%ebx
 491:	50                   	push   %eax
 492:	e8 85 02 00 00       	call   71c <fstat>
  close(fd);
 497:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 49a:	89 c6                	mov    %eax,%esi
  close(fd);
 49c:	e8 4b 02 00 00       	call   6ec <close>
  return r;
 4a1:	83 c4 10             	add    $0x10,%esp
}
 4a4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4a7:	89 f0                	mov    %esi,%eax
 4a9:	5b                   	pop    %ebx
 4aa:	5e                   	pop    %esi
 4ab:	5d                   	pop    %ebp
 4ac:	c3                   	ret    
 4ad:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4b0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4b5:	eb ed                	jmp    4a4 <stat+0x34>
 4b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4be:	66 90                	xchg   %ax,%ax

000004c0 <atoi>:

int
atoi(const char *s)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	53                   	push   %ebx
 4c4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4c7:	0f be 02             	movsbl (%edx),%eax
 4ca:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4cd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4d0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4d5:	77 1e                	ja     4f5 <atoi+0x35>
 4d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4de:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4e0:	83 c2 01             	add    $0x1,%edx
 4e3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4e6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4ea:	0f be 02             	movsbl (%edx),%eax
 4ed:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4f0:	80 fb 09             	cmp    $0x9,%bl
 4f3:	76 eb                	jbe    4e0 <atoi+0x20>
  return n;
}
 4f5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4f8:	89 c8                	mov    %ecx,%eax
 4fa:	c9                   	leave  
 4fb:	c3                   	ret    
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	8b 45 10             	mov    0x10(%ebp),%eax
 507:	8b 55 08             	mov    0x8(%ebp),%edx
 50a:	56                   	push   %esi
 50b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 50e:	85 c0                	test   %eax,%eax
 510:	7e 13                	jle    525 <memmove+0x25>
 512:	01 d0                	add    %edx,%eax
  dst = vdst;
 514:	89 d7                	mov    %edx,%edi
 516:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 51d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 520:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 521:	39 f8                	cmp    %edi,%eax
 523:	75 fb                	jne    520 <memmove+0x20>
  return vdst;
}
 525:	5e                   	pop    %esi
 526:	89 d0                	mov    %edx,%eax
 528:	5f                   	pop    %edi
 529:	5d                   	pop    %ebp
 52a:	c3                   	ret    
 52b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 52f:	90                   	nop

00000530 <thread_create>:


//Create thread_Create & thread_join
int
thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2)
{
 530:	55                   	push   %ebp
  asm volatile("lock; xaddl %%eax, %2;" :
 531:	b8 01 00 00 00       	mov    $0x1,%eax
 536:	89 e5                	mov    %esp,%ebp
 538:	53                   	push   %ebx
 539:	83 ec 14             	sub    $0x14,%esp

	return result;
}

void lock_init(lock_t *lock) {
  lock->ticket = 0;
 53c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  lock->turn = 0;
 543:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 54a:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
}

void lock_acquire(lock_t *lock){
  int myturn = FetchAndAdd(&lock->ticket,1);
  while(lock->turn != myturn){
 54f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 552:	39 c2                	cmp    %eax,%edx
 554:	74 24                	je     57a <thread_create+0x4a>
 556:	89 c3                	mov    %eax,%ebx
 558:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 560:	83 ec 04             	sub    $0x4,%esp
 563:	52                   	push   %edx
 564:	68 de 0b 00 00       	push   $0xbde
 569:	6a 01                	push   $0x1
 56b:	e8 c0 02 00 00       	call   830 <printf>
  while(lock->turn != myturn){
 570:	8b 55 f4             	mov    -0xc(%ebp),%edx
 573:	83 c4 10             	add    $0x10,%esp
 576:	39 d3                	cmp    %edx,%ebx
 578:	75 e6                	jne    560 <thread_create+0x30>
	void *stack= malloc(PGSIZE*2);
 57a:	83 ec 0c             	sub    $0xc,%esp
 57d:	68 00 20 00 00       	push   $0x2000
 582:	e8 d9 04 00 00       	call   a60 <malloc>
  }
}

void lock_release(lock_t *lock){
  lock->turn = lock->turn + 1;
 587:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
	if((uint)stack % PGSIZE)
 58b:	83 c4 10             	add    $0x10,%esp
 58e:	89 c2                	mov    %eax,%edx
 590:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 596:	74 07                	je     59f <thread_create+0x6f>
		stack = stack + PGSIZE - (uint)stack % PGSIZE;
 598:	29 d0                	sub    %edx,%eax
 59a:	05 00 10 00 00       	add    $0x1000,%eax
	int result = clone(start_routine,arg1, arg2 ,stack);
 59f:	50                   	push   %eax
 5a0:	ff 75 10             	push   0x10(%ebp)
 5a3:	ff 75 0c             	push   0xc(%ebp)
 5a6:	ff 75 08             	push   0x8(%ebp)
 5a9:	e8 b6 01 00 00       	call   764 <clone>
}
 5ae:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5b1:	c9                   	leave  
 5b2:	c3                   	ret    
 5b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000005c0 <thread_join>:
int thread_join(){
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	56                   	push   %esi
 5c4:	53                   	push   %ebx
 5c5:	83 ec 1c             	sub    $0x1c,%esp
	void *stack = malloc(sizeof(void*));
 5c8:	6a 04                	push   $0x4
 5ca:	e8 91 04 00 00       	call   a60 <malloc>
 5cf:	89 45 ec             	mov    %eax,-0x14(%ebp)
	int result= join(&stack);
 5d2:	8d 45 ec             	lea    -0x14(%ebp),%eax
 5d5:	89 04 24             	mov    %eax,(%esp)
 5d8:	e8 8f 01 00 00       	call   76c <join>
  lock->ticket = 0;
 5dd:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
	int result= join(&stack);
 5e4:	89 c6                	mov    %eax,%esi
  lock->turn = 0;
 5e6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 5ed:	b8 01 00 00 00       	mov    $0x1,%eax
 5f2:	f0 0f c1 45 f0       	lock xadd %eax,-0x10(%ebp)
  while(lock->turn != myturn){
 5f7:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5fa:	83 c4 10             	add    $0x10,%esp
 5fd:	39 c2                	cmp    %eax,%edx
 5ff:	74 21                	je     622 <thread_join+0x62>
 601:	89 c3                	mov    %eax,%ebx
 603:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 607:	90                   	nop
    printf(1,"ulib lock value %d\n",lock->turn);
 608:	83 ec 04             	sub    $0x4,%esp
 60b:	52                   	push   %edx
 60c:	68 de 0b 00 00       	push   $0xbde
 611:	6a 01                	push   $0x1
 613:	e8 18 02 00 00       	call   830 <printf>
  while(lock->turn != myturn){
 618:	8b 55 f4             	mov    -0xc(%ebp),%edx
 61b:	83 c4 10             	add    $0x10,%esp
 61e:	39 d3                	cmp    %edx,%ebx
 620:	75 e6                	jne    608 <thread_join+0x48>
	free(stack);
 622:	83 ec 0c             	sub    $0xc,%esp
 625:	ff 75 ec             	push   -0x14(%ebp)
 628:	e8 a3 03 00 00       	call   9d0 <free>
}
 62d:	8d 65 f8             	lea    -0x8(%ebp),%esp
 630:	89 f0                	mov    %esi,%eax
 632:	5b                   	pop    %ebx
 633:	5e                   	pop    %esi
 634:	5d                   	pop    %ebp
 635:	c3                   	ret    
 636:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 63d:	8d 76 00             	lea    0x0(%esi),%esi

00000640 <lock_init>:
void lock_init(lock_t *lock) {
 640:	55                   	push   %ebp
 641:	89 e5                	mov    %esp,%ebp
 643:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->ticket = 0;
 646:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lock->turn = 0;
 64c:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
}
 653:	5d                   	pop    %ebp
 654:	c3                   	ret    
 655:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 65c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000660 <lock_acquire>:
void lock_acquire(lock_t *lock){
 660:	55                   	push   %ebp
 661:	b8 01 00 00 00       	mov    $0x1,%eax
 666:	89 e5                	mov    %esp,%ebp
 668:	56                   	push   %esi
 669:	8b 75 08             	mov    0x8(%ebp),%esi
 66c:	53                   	push   %ebx
 66d:	f0 0f c1 06          	lock xadd %eax,(%esi)
  while(lock->turn != myturn){
 671:	8b 56 04             	mov    0x4(%esi),%edx
 674:	39 d0                	cmp    %edx,%eax
 676:	74 22                	je     69a <lock_acquire+0x3a>
 678:	89 c3                	mov    %eax,%ebx
 67a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1,"ulib lock value %d\n",lock->turn);
 680:	83 ec 04             	sub    $0x4,%esp
 683:	52                   	push   %edx
 684:	68 de 0b 00 00       	push   $0xbde
 689:	6a 01                	push   $0x1
 68b:	e8 a0 01 00 00       	call   830 <printf>
  while(lock->turn != myturn){
 690:	8b 56 04             	mov    0x4(%esi),%edx
 693:	83 c4 10             	add    $0x10,%esp
 696:	39 da                	cmp    %ebx,%edx
 698:	75 e6                	jne    680 <lock_acquire+0x20>
}
 69a:	8d 65 f8             	lea    -0x8(%ebp),%esp
 69d:	5b                   	pop    %ebx
 69e:	5e                   	pop    %esi
 69f:	5d                   	pop    %ebp
 6a0:	c3                   	ret    
 6a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6af:	90                   	nop

000006b0 <lock_release>:
void lock_release(lock_t *lock){
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	8b 45 08             	mov    0x8(%ebp),%eax
  lock->turn = lock->turn + 1;
 6b6:	83 40 04 01          	addl   $0x1,0x4(%eax)
 6ba:	5d                   	pop    %ebp
 6bb:	c3                   	ret    

000006bc <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6bc:	b8 01 00 00 00       	mov    $0x1,%eax
 6c1:	cd 40                	int    $0x40
 6c3:	c3                   	ret    

000006c4 <exit>:
SYSCALL(exit)
 6c4:	b8 02 00 00 00       	mov    $0x2,%eax
 6c9:	cd 40                	int    $0x40
 6cb:	c3                   	ret    

000006cc <wait>:
SYSCALL(wait)
 6cc:	b8 03 00 00 00       	mov    $0x3,%eax
 6d1:	cd 40                	int    $0x40
 6d3:	c3                   	ret    

000006d4 <pipe>:
SYSCALL(pipe)
 6d4:	b8 04 00 00 00       	mov    $0x4,%eax
 6d9:	cd 40                	int    $0x40
 6db:	c3                   	ret    

000006dc <read>:
SYSCALL(read)
 6dc:	b8 05 00 00 00       	mov    $0x5,%eax
 6e1:	cd 40                	int    $0x40
 6e3:	c3                   	ret    

000006e4 <write>:
SYSCALL(write)
 6e4:	b8 10 00 00 00       	mov    $0x10,%eax
 6e9:	cd 40                	int    $0x40
 6eb:	c3                   	ret    

000006ec <close>:
SYSCALL(close)
 6ec:	b8 15 00 00 00       	mov    $0x15,%eax
 6f1:	cd 40                	int    $0x40
 6f3:	c3                   	ret    

000006f4 <kill>:
SYSCALL(kill)
 6f4:	b8 06 00 00 00       	mov    $0x6,%eax
 6f9:	cd 40                	int    $0x40
 6fb:	c3                   	ret    

000006fc <exec>:
SYSCALL(exec)
 6fc:	b8 07 00 00 00       	mov    $0x7,%eax
 701:	cd 40                	int    $0x40
 703:	c3                   	ret    

00000704 <open>:
SYSCALL(open)
 704:	b8 0f 00 00 00       	mov    $0xf,%eax
 709:	cd 40                	int    $0x40
 70b:	c3                   	ret    

0000070c <mknod>:
SYSCALL(mknod)
 70c:	b8 11 00 00 00       	mov    $0x11,%eax
 711:	cd 40                	int    $0x40
 713:	c3                   	ret    

00000714 <unlink>:
SYSCALL(unlink)
 714:	b8 12 00 00 00       	mov    $0x12,%eax
 719:	cd 40                	int    $0x40
 71b:	c3                   	ret    

0000071c <fstat>:
SYSCALL(fstat)
 71c:	b8 08 00 00 00       	mov    $0x8,%eax
 721:	cd 40                	int    $0x40
 723:	c3                   	ret    

00000724 <link>:
SYSCALL(link)
 724:	b8 13 00 00 00       	mov    $0x13,%eax
 729:	cd 40                	int    $0x40
 72b:	c3                   	ret    

0000072c <mkdir>:
SYSCALL(mkdir)
 72c:	b8 14 00 00 00       	mov    $0x14,%eax
 731:	cd 40                	int    $0x40
 733:	c3                   	ret    

00000734 <chdir>:
SYSCALL(chdir)
 734:	b8 09 00 00 00       	mov    $0x9,%eax
 739:	cd 40                	int    $0x40
 73b:	c3                   	ret    

0000073c <dup>:
SYSCALL(dup)
 73c:	b8 0a 00 00 00       	mov    $0xa,%eax
 741:	cd 40                	int    $0x40
 743:	c3                   	ret    

00000744 <getpid>:
SYSCALL(getpid)
 744:	b8 0b 00 00 00       	mov    $0xb,%eax
 749:	cd 40                	int    $0x40
 74b:	c3                   	ret    

0000074c <sbrk>:
SYSCALL(sbrk)
 74c:	b8 0c 00 00 00       	mov    $0xc,%eax
 751:	cd 40                	int    $0x40
 753:	c3                   	ret    

00000754 <sleep>:
SYSCALL(sleep)
 754:	b8 0d 00 00 00       	mov    $0xd,%eax
 759:	cd 40                	int    $0x40
 75b:	c3                   	ret    

0000075c <uptime>:
SYSCALL(uptime)
 75c:	b8 0e 00 00 00       	mov    $0xe,%eax
 761:	cd 40                	int    $0x40
 763:	c3                   	ret    

00000764 <clone>:
SYSCALL(clone)
 764:	b8 16 00 00 00       	mov    $0x16,%eax
 769:	cd 40                	int    $0x40
 76b:	c3                   	ret    

0000076c <join>:
SYSCALL(join)
 76c:	b8 17 00 00 00       	mov    $0x17,%eax
 771:	cd 40                	int    $0x40
 773:	c3                   	ret    
 774:	66 90                	xchg   %ax,%ax
 776:	66 90                	xchg   %ax,%ax
 778:	66 90                	xchg   %ax,%ax
 77a:	66 90                	xchg   %ax,%ax
 77c:	66 90                	xchg   %ax,%ax
 77e:	66 90                	xchg   %ax,%ax

00000780 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 3c             	sub    $0x3c,%esp
 789:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 78c:	89 d1                	mov    %edx,%ecx
{
 78e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 791:	85 d2                	test   %edx,%edx
 793:	0f 89 7f 00 00 00    	jns    818 <printint+0x98>
 799:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 79d:	74 79                	je     818 <printint+0x98>
    neg = 1;
 79f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 7a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 7a8:	31 db                	xor    %ebx,%ebx
 7aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 7b0:	89 c8                	mov    %ecx,%eax
 7b2:	31 d2                	xor    %edx,%edx
 7b4:	89 cf                	mov    %ecx,%edi
 7b6:	f7 75 c4             	divl   -0x3c(%ebp)
 7b9:	0f b6 92 54 0c 00 00 	movzbl 0xc54(%edx),%edx
 7c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 7c3:	89 d8                	mov    %ebx,%eax
 7c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 7c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 7cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 7ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 7d1:	76 dd                	jbe    7b0 <printint+0x30>
  if(neg)
 7d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 7d6:	85 c9                	test   %ecx,%ecx
 7d8:	74 0c                	je     7e6 <printint+0x66>
    buf[i++] = '-';
 7da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 7df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 7e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 7e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 7e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 7ed:	eb 07                	jmp    7f6 <printint+0x76>
 7ef:	90                   	nop
    putc(fd, buf[i]);
 7f0:	0f b6 13             	movzbl (%ebx),%edx
 7f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 7f6:	83 ec 04             	sub    $0x4,%esp
 7f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 7fc:	6a 01                	push   $0x1
 7fe:	56                   	push   %esi
 7ff:	57                   	push   %edi
 800:	e8 df fe ff ff       	call   6e4 <write>
  while(--i >= 0)
 805:	83 c4 10             	add    $0x10,%esp
 808:	39 de                	cmp    %ebx,%esi
 80a:	75 e4                	jne    7f0 <printint+0x70>
}
 80c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80f:	5b                   	pop    %ebx
 810:	5e                   	pop    %esi
 811:	5f                   	pop    %edi
 812:	5d                   	pop    %ebp
 813:	c3                   	ret    
 814:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 818:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 81f:	eb 87                	jmp    7a8 <printint+0x28>
 821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 828:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 82f:	90                   	nop

00000830 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 830:	55                   	push   %ebp
 831:	89 e5                	mov    %esp,%ebp
 833:	57                   	push   %edi
 834:	56                   	push   %esi
 835:	53                   	push   %ebx
 836:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 839:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 83c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 83f:	0f b6 13             	movzbl (%ebx),%edx
 842:	84 d2                	test   %dl,%dl
 844:	74 6a                	je     8b0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 846:	8d 45 10             	lea    0x10(%ebp),%eax
 849:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 84c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 84f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 851:	89 45 d0             	mov    %eax,-0x30(%ebp)
 854:	eb 36                	jmp    88c <printf+0x5c>
 856:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85d:	8d 76 00             	lea    0x0(%esi),%esi
 860:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 863:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 868:	83 f8 25             	cmp    $0x25,%eax
 86b:	74 15                	je     882 <printf+0x52>
  write(fd, &c, 1);
 86d:	83 ec 04             	sub    $0x4,%esp
 870:	88 55 e7             	mov    %dl,-0x19(%ebp)
 873:	6a 01                	push   $0x1
 875:	57                   	push   %edi
 876:	56                   	push   %esi
 877:	e8 68 fe ff ff       	call   6e4 <write>
 87c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 87f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 882:	0f b6 13             	movzbl (%ebx),%edx
 885:	83 c3 01             	add    $0x1,%ebx
 888:	84 d2                	test   %dl,%dl
 88a:	74 24                	je     8b0 <printf+0x80>
    c = fmt[i] & 0xff;
 88c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 88f:	85 c9                	test   %ecx,%ecx
 891:	74 cd                	je     860 <printf+0x30>
      }
    } else if(state == '%'){
 893:	83 f9 25             	cmp    $0x25,%ecx
 896:	75 ea                	jne    882 <printf+0x52>
      if(c == 'd'){
 898:	83 f8 25             	cmp    $0x25,%eax
 89b:	0f 84 07 01 00 00    	je     9a8 <printf+0x178>
 8a1:	83 e8 63             	sub    $0x63,%eax
 8a4:	83 f8 15             	cmp    $0x15,%eax
 8a7:	77 17                	ja     8c0 <printf+0x90>
 8a9:	ff 24 85 fc 0b 00 00 	jmp    *0xbfc(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 8b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 8b3:	5b                   	pop    %ebx
 8b4:	5e                   	pop    %esi
 8b5:	5f                   	pop    %edi
 8b6:	5d                   	pop    %ebp
 8b7:	c3                   	ret    
 8b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8bf:	90                   	nop
  write(fd, &c, 1);
 8c0:	83 ec 04             	sub    $0x4,%esp
 8c3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 8c6:	6a 01                	push   $0x1
 8c8:	57                   	push   %edi
 8c9:	56                   	push   %esi
 8ca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 8ce:	e8 11 fe ff ff       	call   6e4 <write>
        putc(fd, c);
 8d3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 8d7:	83 c4 0c             	add    $0xc,%esp
 8da:	88 55 e7             	mov    %dl,-0x19(%ebp)
 8dd:	6a 01                	push   $0x1
 8df:	57                   	push   %edi
 8e0:	56                   	push   %esi
 8e1:	e8 fe fd ff ff       	call   6e4 <write>
        putc(fd, c);
 8e6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8e9:	31 c9                	xor    %ecx,%ecx
 8eb:	eb 95                	jmp    882 <printf+0x52>
 8ed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 8f0:	83 ec 0c             	sub    $0xc,%esp
 8f3:	b9 10 00 00 00       	mov    $0x10,%ecx
 8f8:	6a 00                	push   $0x0
 8fa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8fd:	8b 10                	mov    (%eax),%edx
 8ff:	89 f0                	mov    %esi,%eax
 901:	e8 7a fe ff ff       	call   780 <printint>
        ap++;
 906:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 90a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 90d:	31 c9                	xor    %ecx,%ecx
 90f:	e9 6e ff ff ff       	jmp    882 <printf+0x52>
 914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 918:	8b 45 d0             	mov    -0x30(%ebp),%eax
 91b:	8b 10                	mov    (%eax),%edx
        ap++;
 91d:	83 c0 04             	add    $0x4,%eax
 920:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 923:	85 d2                	test   %edx,%edx
 925:	0f 84 8d 00 00 00    	je     9b8 <printf+0x188>
        while(*s != 0){
 92b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 92e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 930:	84 c0                	test   %al,%al
 932:	0f 84 4a ff ff ff    	je     882 <printf+0x52>
 938:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 93b:	89 d3                	mov    %edx,%ebx
 93d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 940:	83 ec 04             	sub    $0x4,%esp
          s++;
 943:	83 c3 01             	add    $0x1,%ebx
 946:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 949:	6a 01                	push   $0x1
 94b:	57                   	push   %edi
 94c:	56                   	push   %esi
 94d:	e8 92 fd ff ff       	call   6e4 <write>
        while(*s != 0){
 952:	0f b6 03             	movzbl (%ebx),%eax
 955:	83 c4 10             	add    $0x10,%esp
 958:	84 c0                	test   %al,%al
 95a:	75 e4                	jne    940 <printf+0x110>
      state = 0;
 95c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 95f:	31 c9                	xor    %ecx,%ecx
 961:	e9 1c ff ff ff       	jmp    882 <printf+0x52>
 966:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 96d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 970:	83 ec 0c             	sub    $0xc,%esp
 973:	b9 0a 00 00 00       	mov    $0xa,%ecx
 978:	6a 01                	push   $0x1
 97a:	e9 7b ff ff ff       	jmp    8fa <printf+0xca>
 97f:	90                   	nop
        putc(fd, *ap);
 980:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 983:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 986:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 988:	6a 01                	push   $0x1
 98a:	57                   	push   %edi
 98b:	56                   	push   %esi
        putc(fd, *ap);
 98c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 98f:	e8 50 fd ff ff       	call   6e4 <write>
        ap++;
 994:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 998:	83 c4 10             	add    $0x10,%esp
      state = 0;
 99b:	31 c9                	xor    %ecx,%ecx
 99d:	e9 e0 fe ff ff       	jmp    882 <printf+0x52>
 9a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 9a8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 9ab:	83 ec 04             	sub    $0x4,%esp
 9ae:	e9 2a ff ff ff       	jmp    8dd <printf+0xad>
 9b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 9b7:	90                   	nop
          s = "(null)";
 9b8:	ba f2 0b 00 00       	mov    $0xbf2,%edx
        while(*s != 0){
 9bd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 9c0:	b8 28 00 00 00       	mov    $0x28,%eax
 9c5:	89 d3                	mov    %edx,%ebx
 9c7:	e9 74 ff ff ff       	jmp    940 <printf+0x110>
 9cc:	66 90                	xchg   %ax,%ax
 9ce:	66 90                	xchg   %ax,%ax

000009d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 9d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9d1:	a1 08 10 00 00       	mov    0x1008,%eax
{
 9d6:	89 e5                	mov    %esp,%ebp
 9d8:	57                   	push   %edi
 9d9:	56                   	push   %esi
 9da:	53                   	push   %ebx
 9db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 9de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 9e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 9e8:	89 c2                	mov    %eax,%edx
 9ea:	8b 00                	mov    (%eax),%eax
 9ec:	39 ca                	cmp    %ecx,%edx
 9ee:	73 30                	jae    a20 <free+0x50>
 9f0:	39 c1                	cmp    %eax,%ecx
 9f2:	72 04                	jb     9f8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 9f4:	39 c2                	cmp    %eax,%edx
 9f6:	72 f0                	jb     9e8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 9f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 9fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 9fe:	39 f8                	cmp    %edi,%eax
 a00:	74 30                	je     a32 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 a02:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 a05:	8b 42 04             	mov    0x4(%edx),%eax
 a08:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a0b:	39 f1                	cmp    %esi,%ecx
 a0d:	74 3a                	je     a49 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 a0f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 a11:	5b                   	pop    %ebx
  freep = p;
 a12:	89 15 08 10 00 00    	mov    %edx,0x1008
}
 a18:	5e                   	pop    %esi
 a19:	5f                   	pop    %edi
 a1a:	5d                   	pop    %ebp
 a1b:	c3                   	ret    
 a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a20:	39 c2                	cmp    %eax,%edx
 a22:	72 c4                	jb     9e8 <free+0x18>
 a24:	39 c1                	cmp    %eax,%ecx
 a26:	73 c0                	jae    9e8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 a28:	8b 73 fc             	mov    -0x4(%ebx),%esi
 a2b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 a2e:	39 f8                	cmp    %edi,%eax
 a30:	75 d0                	jne    a02 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 a32:	03 70 04             	add    0x4(%eax),%esi
 a35:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 a38:	8b 02                	mov    (%edx),%eax
 a3a:	8b 00                	mov    (%eax),%eax
 a3c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 a3f:	8b 42 04             	mov    0x4(%edx),%eax
 a42:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 a45:	39 f1                	cmp    %esi,%ecx
 a47:	75 c6                	jne    a0f <free+0x3f>
    p->s.size += bp->s.size;
 a49:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 a4c:	89 15 08 10 00 00    	mov    %edx,0x1008
    p->s.size += bp->s.size;
 a52:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 a55:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 a58:	89 0a                	mov    %ecx,(%edx)
}
 a5a:	5b                   	pop    %ebx
 a5b:	5e                   	pop    %esi
 a5c:	5f                   	pop    %edi
 a5d:	5d                   	pop    %ebp
 a5e:	c3                   	ret    
 a5f:	90                   	nop

00000a60 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 a60:	55                   	push   %ebp
 a61:	89 e5                	mov    %esp,%ebp
 a63:	57                   	push   %edi
 a64:	56                   	push   %esi
 a65:	53                   	push   %ebx
 a66:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a69:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 a6c:	8b 3d 08 10 00 00    	mov    0x1008,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 a72:	8d 70 07             	lea    0x7(%eax),%esi
 a75:	c1 ee 03             	shr    $0x3,%esi
 a78:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 a7b:	85 ff                	test   %edi,%edi
 a7d:	0f 84 9d 00 00 00    	je     b20 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a83:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 a85:	8b 4a 04             	mov    0x4(%edx),%ecx
 a88:	39 f1                	cmp    %esi,%ecx
 a8a:	73 6a                	jae    af6 <malloc+0x96>
 a8c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 a91:	39 de                	cmp    %ebx,%esi
 a93:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 a96:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 a9d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 aa0:	eb 17                	jmp    ab9 <malloc+0x59>
 aa2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 aa8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 aaa:	8b 48 04             	mov    0x4(%eax),%ecx
 aad:	39 f1                	cmp    %esi,%ecx
 aaf:	73 4f                	jae    b00 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 ab1:	8b 3d 08 10 00 00    	mov    0x1008,%edi
 ab7:	89 c2                	mov    %eax,%edx
 ab9:	39 d7                	cmp    %edx,%edi
 abb:	75 eb                	jne    aa8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 abd:	83 ec 0c             	sub    $0xc,%esp
 ac0:	ff 75 e4             	push   -0x1c(%ebp)
 ac3:	e8 84 fc ff ff       	call   74c <sbrk>
  if(p == (char*)-1)
 ac8:	83 c4 10             	add    $0x10,%esp
 acb:	83 f8 ff             	cmp    $0xffffffff,%eax
 ace:	74 1c                	je     aec <malloc+0x8c>
  hp->s.size = nu;
 ad0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 ad3:	83 ec 0c             	sub    $0xc,%esp
 ad6:	83 c0 08             	add    $0x8,%eax
 ad9:	50                   	push   %eax
 ada:	e8 f1 fe ff ff       	call   9d0 <free>
  return freep;
 adf:	8b 15 08 10 00 00    	mov    0x1008,%edx
      if((p = morecore(nunits)) == 0)
 ae5:	83 c4 10             	add    $0x10,%esp
 ae8:	85 d2                	test   %edx,%edx
 aea:	75 bc                	jne    aa8 <malloc+0x48>
        return 0;
  }
}
 aec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 aef:	31 c0                	xor    %eax,%eax
}
 af1:	5b                   	pop    %ebx
 af2:	5e                   	pop    %esi
 af3:	5f                   	pop    %edi
 af4:	5d                   	pop    %ebp
 af5:	c3                   	ret    
    if(p->s.size >= nunits){
 af6:	89 d0                	mov    %edx,%eax
 af8:	89 fa                	mov    %edi,%edx
 afa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 b00:	39 ce                	cmp    %ecx,%esi
 b02:	74 4c                	je     b50 <malloc+0xf0>
        p->s.size -= nunits;
 b04:	29 f1                	sub    %esi,%ecx
 b06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 b09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 b0c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 b0f:	89 15 08 10 00 00    	mov    %edx,0x1008
}
 b15:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 b18:	83 c0 08             	add    $0x8,%eax
}
 b1b:	5b                   	pop    %ebx
 b1c:	5e                   	pop    %esi
 b1d:	5f                   	pop    %edi
 b1e:	5d                   	pop    %ebp
 b1f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 b20:	c7 05 08 10 00 00 0c 	movl   $0x100c,0x1008
 b27:	10 00 00 
    base.s.size = 0;
 b2a:	bf 0c 10 00 00       	mov    $0x100c,%edi
    base.s.ptr = freep = prevp = &base;
 b2f:	c7 05 0c 10 00 00 0c 	movl   $0x100c,0x100c
 b36:	10 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 b39:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 b3b:	c7 05 10 10 00 00 00 	movl   $0x0,0x1010
 b42:	00 00 00 
    if(p->s.size >= nunits){
 b45:	e9 42 ff ff ff       	jmp    a8c <malloc+0x2c>
 b4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 b50:	8b 08                	mov    (%eax),%ecx
 b52:	89 0a                	mov    %ecx,(%edx)
 b54:	eb b9                	jmp    b0f <malloc+0xaf>
