#ifndef KERNEL_H_
#define KERNEL_H_
void kern_send(galapagos_stream * in, galapagos_stream * out);
void kern_recv(galapagos_stream * in, galapagos_stream * out);
void kern_middle(galapagos_stream * in, galapagos_stream * out);
#endif
