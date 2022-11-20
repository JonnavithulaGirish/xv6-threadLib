typedef unsigned int   uint;
typedef unsigned short ushort;
typedef unsigned char  uchar;
typedef uint pde_t;
// typedef struct __lock_t {
//   uint ticket;
//   uint turn;
//   // uint mutex;
// } lock_t;

typedef struct __lock_t {
  uint mutex;
} lock_t;