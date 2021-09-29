#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <cuda_device_runtime_api.h>
#include <cuda_runtime.h>
#include <stdio.h>

__global__ void kernel_simulation(void) {

}

//Runs the simulation need to fix the <<< issue
extern "C" void
execute_simulation() {
	printf("Running on GPU");

	kernel_simulation<<<1,1>>>();

	cudaDeviceSynchronize();
}

