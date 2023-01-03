#include <iostream>
#include <mpi.h>

/*
    arg 1: lower limit
    arg 2: upper limit
    arg 3: num rectangles

    n=4; 1 10 1


*/

using namespace::std;

double func(double x) {
    return x*x;
}

int main(int argc, char ** argv)
{
        int node, totalnodes;
        MPI_Init(&argc, &argv);
        MPI_Comm_size(MPI_COMM_WORLD, &totalnodes);
        MPI_Comm_rank(MPI_COMM_WORLD, &node);

        // Read Command Line Arguments
        double globalLower, globalUpper;
        int numUnits;
        globalLower = atof(argv[1]);
        globalUpper = atof(argv[2]);
        numUnits    = atoi(argv[3]);

        cout << "Node: " << node << ", globalLower: " << globalLower << ", globalUpper: " << globalUpper << ", numUnits: " << numUnits << endl;

        // Select Node Range
        double range = globalUpper - globalLower;
        double nodeRange = range / totalnodes;
        double nodeStart = globalLower + (nodeRange * node);
        double epsilon = nodeRange / numUnits;

	cout << "Node: " << node << ", nodeStart: " << nodeStart << ", nodeRange" << nodeRange << ", epsilon: " << epsilon << endl;

        double sum = 0.0;
        for (int i=0; i < numUnits; i++) {
            sum += func(nodeStart + i * epsilon);
        }
        sum *= epsilon;

        cout << "Node: " << node << ", sum: " << sum << endl;

        MPI_Finalize();
}
