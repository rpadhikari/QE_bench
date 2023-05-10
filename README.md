# QE_bench
Quantum Espresso benchmark with CPU, MPI and GPU
This is done using AMD Ryzen Threadripper PRO 3955WX CPU, NVIDIA TITAN V, and Quadro RTX 6000 GPU.
Calculations are performed on: 
1) Single CPU and serial calculation,
2) Parallel calculation MPI (Intel OneAPI), and
3) TITAN V GPU
4) Quadro RTX 6000 GPU (with AMD Ryzen 7 5800X CPU)

There are two input files pw.in and ph.in. All the output files are tagged with correcposding flags: eg pw_MPI.out

I hope that you will enjoy reading these benchmarking.
