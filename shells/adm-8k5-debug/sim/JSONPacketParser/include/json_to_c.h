#ifndef JSON_TO_C
#define JSON_TO_C
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#include "jsmn.h"
#include "svdpi.h"

#define BUFFER_SIZE 5000
#define MAX_TOKEN_COUNT 128
#define NUM_MAX_PACKETS 64
#define NUM_FIELDS 3
#define STRING_TOK 3
#define OBJECT_TOK 1
#define PRIMATIVE_TOK 0
#define NUMBER_OF_FLIT_FIELDS 3
#define MAX_NUMBER_FLITS 23

// Struct for flit data
typedef struct Flit {
    int data;
    int keep;
    int last;
} flit;

// Struct for packet data (max 23 flits)
typedef struct Packet {
    struct Flit flit_list[23];
    int num_flits;
} packet;

// Print help (usage & options)
void printHelp();

// Print help (usage & options)
void readFile(const char * path, char * outputstr);

// Outputs full data structure to text file
void makeFile(char * path, packet * packetList, int listSize, bool svLog);

// Increment index until token type is 3 (string)
// or index is > tokSize
int incUntilString(int index, jsmntok_t * tok, int tokSize);

// Find tokLen for string at given index
int getTokLen(jsmntok_t * tok, int  index);

// Build string from token at given index
void buildTokStr(jsmntok_t * tok, char * jsonstr, int index, char * str, int tokLen);

// Build int from token at given index
int buildTokInt(jsmntok_t * tok, char * jsonstr, int index, char * str, int tokLen);

// Return flit struct datatype from given string
int getFieldType(char * str);

// Check if new packet (ie next string == "flits")
bool incUntilFlits(int * p_index, jsmntok_t * tok, int tokSize, char * jsonstr);

// Parse JSON file into its corresponding data structures
void parseJSON(const char * jsonFilePath, packet extPacketList[], int * ver, int * logToFile, int * svLog);


#endif
