#ifndef __GLOBALS_HPP__   // if x.h hasn't been included yet...
#define __GLOBALS_HPP__


#include <mutex>
#include <vector>


#include "galapagos_kernel.hpp"



extern std::mutex gp_mutex;
extern std::vector <galapagos_packet *> gp_ptr;
extern std::vector <kern_info>  kernel_info_table;


#endif
