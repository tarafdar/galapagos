

/*
 * Program to compute Molecular Dynamics and determine the potential energy of a collection 
 * of atoms as a function of the physical properties and positions of all atoms in the simulation.
 * The net force acting on each atom is determined by calculating the negative gradient
 * of the potential energy with respect to its position. With the knowledge of both the
 * position and the net force acting on every atom in the system, Newton’s equations of
 * motion are solved numerically to predict the movement of every atom. This step is
 * repeated over small time increments (10^−15 sec.) to yield a time trajectory of the
 * molecular system.
 *
 * The total potential energy of the system results from van der Waals forces, which
 * are modeled by the Lennard-Jones 6-12 equation
 */

#include <math.h>
#include "../CPP_lib/MPI_lib/MPI.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "common.h"
#include <time.h>
#include <sys/time.h>
double get_wall_time(){
    struct timeval time;
    if (gettimeofday(&time,NULL)){
        cout << "time error" <<endl;
        return 0;
    }
    return (double)time.tv_sec * 1000000 + (double)time.tv_usec;
}

double start_time,end_time;



#define MEM_INFO_SIZE 4 
#define PARAMETER_MEM_INFO_SIZE 2  
#define DARIUS_INFO_SIZE 7 // {ind_0 = num_commands, ind_1-4 = command, ind_5 = batch_size, ind_6 = num_ranks}


#define DMA_IN_MEM_SIZE 100*sizeof(float)
#define DMA_IN_MEM_OFFSET 0x1000
#define DMA_OUT_MEM_SIZE 100*sizeof(float)
#define DMA_OUT_MEM_OFFSET 0x4000
#define PARAMETER_MEM_SIZE 10*sizeof(float)
#define PARAMETER_MEM_OFFSET 10*sizeof(float)
#define BATCH_SIZE 1
#define NUM_COMPUTE_RANKS 1
#define NUM_COMMANDS 1
#define CMD_0 0xdeadbbee
#define CMD_1 0xfaceddee
#define CMD_2 0xdeadbeef
#define CMD_3 0x11111111
#define NUM_REP 10
//------------------------------
int 
main(int argc, char* argv[])
{
    
    int parameter_mem_info[PARAMETER_MEM_INFO_SIZE];
    int parameter_mem_info_float[PARAMETER_MEM_INFO_SIZE];
    int data_mem_info[MEM_INFO_SIZE];  
    int data_mem_info_float[MEM_INFO_SIZE];  
    int darius_info[DARIUS_INFO_SIZE];  
    int darius_info_float[DARIUS_INFO_SIZE];  
    float cumulative_cycle_count_float[1];
    int cumulative_cycle_count[1];
 

    MPI_Init();
    
    MPI_COMM comm;


    //for all ranks send PARAMETER INFORMATION
    parameter_mem_info[0] = PARAMETER_MEM_OFFSET;
    parameter_mem_info[1] = PARAMETER_MEM_SIZE;

    //garbage parameter data
    float * parameters = (float *)malloc(sizeof(float) * PARAMETER_MEM_SIZE/sizeof(float));
    for(int i = 0; i< PARAMETER_MEM_SIZE/sizeof(float); i++)
        parameters[i] = (float) i;
    

    //garbage input_images
    float * input_images = (float *)malloc(sizeof(float) * DMA_IN_MEM_SIZE/sizeof(float));
    for(int i = 0; i< DMA_IN_MEM_SIZE/sizeof(float); i++)
        input_images[i] = (float) i;
    
    float * output_images = (float *)malloc(sizeof(float) * DMA_OUT_MEM_SIZE/sizeof(float));
    data_mem_info[0] = DMA_IN_MEM_OFFSET;
    data_mem_info[1] = DMA_IN_MEM_SIZE;
    data_mem_info[2] = DMA_OUT_MEM_OFFSET;
    data_mem_info[3] = DMA_OUT_MEM_SIZE;


    darius_info[0] = NUM_COMMANDS;
    darius_info[1] = CMD_0;
    darius_info[2] = CMD_1;
    darius_info[3] = CMD_2;
    darius_info[4] = CMD_3;
    darius_info[5] = BATCH_SIZE;
    darius_info[6] = NUM_COMPUTE_RANKS;
    cumulative_cycle_count[0] = 0;
    
    for(int i=0; i< PARAMETER_MEM_INFO_SIZE; i++)
        parameter_mem_info_float[i] = (float) parameter_mem_info[i];
    
    for(int i=0; i< MEM_INFO_SIZE; i++)
        data_mem_info_float[i] = (float) data_mem_info[i];

    for(int i=0; i< DARIUS_INFO_SIZE; i++)
        darius_info_float[i] = (float) darius_info[i];


    cumulative_cycle_count_float[0] = (float) cumulative_cycle_count[0];
    //send control info
    MPI_Send(parameter_mem_info_float, 2,MPI_FLOAT, 1 /*rank*/,1,comm);
    MPI_Send(parameters, PARAMETER_MEM_SIZE/sizeof(float),MPI_FLOAT, 1 /*rank*/,1,comm);
    MPI_Send(darius_info_float, DARIUS_INFO_SIZE,MPI_FLOAT, 1 /*rank*/,1,comm);

    
    int num_images = NUM_REP;
    //repeatedly send data num_images times to first batch
    for(int i = 0; i<num_images; i++){
        //send to first batch
        MPI_Send(cumulative_cycle_count_float, 1,MPI_FLOAT, 1 /*rank*/,1,comm);
        MPI_Send(input_images, DMA_IN_MEM_SIZE/sizeof(float),MPI_FLOAT, 1 /*rank*/,1,comm);
        //recv from last batch
        MPI_Recv(cumulative_cycle_count_float,1,MPI_FLOAT,1,1,comm);
        MPI_Recv(output_images, DMA_OUT_MEM_SIZE,MPI_FLOAT,1,1,comm);
    }

    MPI_Finalize();

    return 0;
}




