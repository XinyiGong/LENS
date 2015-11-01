# Grain Growth size3
#PBS -N Grain_Growth_size_3
#PBS -l nodes=2:ppn=8
#PBS -l pmem=8gb
#PBS -l walltime=15:00:00
#PBS -q prometforce-6
#PBS -j oe
#PBS -o grainsize3.potts
#PBS -m abe
#PBS -M dmo7@gatech.edu

cd spparks-8Jul15/runs/grainsize3

module load intel/15.0
module load mkl/11.2
module load hwloc/1.10.0
module load mvapich2/2.1 

mpirun -np 16  ./spk_linux <in.potts.eva
