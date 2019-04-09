#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>
#include <time.h>
#include <errno.h>

#define THREADS 32

uint64_t time_diff(struct timespec start, struct timespec end) {
	uint64_t s = start.tv_sec * 1e9 + start.tv_nsec;
	uint64_t e = end.tv_sec   * 1e9 + end.tv_nsec;
	return e - s;
}

int
read_data(float *data, ssize_t size, const char *filename)
{
	int infile;
	if ((infile = open(filename, O_RDONLY, "0600")) == -1) {
		fprintf(stderr, "Error: no such file (%s)\n", filename);
		return 1;
	}

	ssize_t bytes_left = size;
	ssize_t offset = 0;
	while (bytes_left > 0) {
		// cast to char * since offset in bytes not float
		ssize_t bytes = read(infile, ((char *)data) + offset, bytes_left);
		if (bytes == -1) {
			perror("read");
			return 1;
		}
		offset     += bytes;
		bytes_left -= bytes;
	}

	close(infile);
	return bytes_left;
}

/*
int
main(int argc, char **argv)
{
	if (argc < 2) {
		printf("usage: read_data <files>\n");
		exit(1);
	}
	size_t files = atoi(argv[1]);

	float (*data)[VECTORS][DIMS] = malloc(files * VECTORS * DIMS * sizeof(float));
	if (data == NULL) {
		perror("malloc");
		return 1;
	}

	struct timespec start, end;
	clock_gettime(CLOCK_MONOTONIC, &start);
	char pathname[6] = "data_";
	for (int i = 0; i < files; i++) {
		pathname[4] = '0' + i;
		read_data(*(data + i), pathname);
	}
	clock_gettime(CLOCK_MONOTONIC, &end);
	printf("read: %lu(ns)\n", time_diff(start, end));

	printf("data[0][2][3]: %f\n",        data[0][2][3]);
	printf("data[0][43125][0]: %f\n",    data[0][43125][0]);
	printf("data[0][123456][123]: %f\n", data[0][123456][123]);
	printf("data[1][2][3]: %f\n",        data[1][2][3]);
	printf("data[1][43125][0]: %f\n",    data[1][43125][0]);
	printf("data[1][123456][123]: %f\n", data[1][123456][123]);
	printf("data[2][2][3]: %f\n",        data[2][2][3]);
	printf("data[2][43125][0]: %f\n",    data[2][43125][0]);
	printf("data[2][123456][123]: %f\n", data[2][123456][123]);
	printf("data[3][2][3]: %f\n",        data[3][2][3]);
	printf("data[3][43125][0]: %f\n",    data[3][43125][0]);
	printf("data[3][123456][123]: %f\n", data[3][123456][123]);
	free(data);
}
*/

