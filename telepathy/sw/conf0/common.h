#ifndef _COMMON_H_
#define _COMMON_H_

// Enable or disable TIME_STAMP calculation, which might not be needed
// in simulation when testing 
#if defined(SIM)
#define TIME_STAMP() 0
#else
#define TIME_STAMP() MPI_Wtime()
#endif

// We don't want to simulate the stdout. The STDOUT_ENABLED flag is defined
// in the configuration .cfg file when compiling with ArchES-MPI flow. If using
// gcc in a Linux box then ignore this
#if defined(STDOUT_ENABLED) 
#   if defined(MICROBLAZE)
#       define PRINT(fmt,args...) {xil_printf(fmt,##args);fflush(stdout);}
#   else
#       define PRINT(fmt,args...) {printf(fmt,##args);fflush(stdout);}
#   endif
#else
#   define PRINT(fmt,args...) {printf(fmt,##args);fflush(stdout);}
#endif 

// Uncomment the VERBOSE flag to enable extra stdout information
//#define VERBOSE 


#endif // _COMMON_H_ 
