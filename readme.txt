In this project we have created kernel thread in xv6.
we have created 2 sycalls 
1) clone : It will create a new process but won't copy the complete address space and uses the same page directory. We update the stack location, esp, ebp and eip register. 
2) join : It is same as wait syscall except in this we won't delete the complete address space because other threads might be using the parent address space. we just return the stack address space which used by this thread and remove it.

we have also created a spin lock and thread library in ulib.c  which helps in creating and joining the threads. 
thread library functions :
1) int thread_create(void (*start_routine)(void *, void *), void *arg1, void *arg2);
2) int thread_join();
3) void lock_acquire(lock_t *);
4) void lock_release(lock_t *);
5) void lock_init(lock_t *);

