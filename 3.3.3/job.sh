#! /bin/bash
#SBATCH -J 433
#SBATCH -p work
echo 4.3.3 begin
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 10 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 20 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 70 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 100 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 10 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 20 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 70 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 100 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 10 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 20 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 70 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 100 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 10 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 20 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 70 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 100 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 10 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 20 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 70 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 100 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 10 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 20 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 70 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 100 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 10 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 20 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 70 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 100 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.3/noop.result
