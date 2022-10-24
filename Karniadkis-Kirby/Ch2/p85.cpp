#include <iostream>
#include <mpi.h>

int main(int argc, char ** argv)
{
	int node, totalnodes;
        MPI_Init(&argc, &argv);
        MPI_Comm_size(MPI_COMM_WORLD, &totalnodes);
        MPI_Comm_rank(MPI_COMM_WORLD, &node);

	for(int i=0; i < 5; i++)
	{
		std::cout << "Hello from node " << node << " of " << totalnodes << std::endl;
	}

	MPI_Finalize();
}
