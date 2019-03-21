#ifndef __GALAPAGOS_GLOBALS_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_GLOBALS_HPP__


#include <mutex>
#include <vector>


#include "galapagos_packet.hpp"

enum kern_type {SW, HW};
typedef struct 
{
    short kern_type;
    std::vector <std::string> address_vect;
} kern_info;




extern std::mutex gp_mutex;
extern std::vector <galapagos_packet *> gp_ptr;
extern std::vector <kern_info>  kernel_info_table;


#endif
