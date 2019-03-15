#ifndef __GALAPAGOS_GLOBALS_HPP__   // if x.h hasn't been included yet...
#define __GALAPAGOS_GLOBALS_HPP__

enum kern_type {SW, HW};
struct kern_info
{
	short kern_type;
    std::vector <string> address_vect;
};


mutex gp_mutex;
std::vector <galapagos_packet *> gp_ptr;
std::vector <kernel_info> * kernel_info_table;


#endif
