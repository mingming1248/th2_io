#! /bin/bash
#SBATCH -J 432
#SBATCH -p work
echo 4.3.2 begin
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 0 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 25 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 75 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 100 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 0 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 25 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 75 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 100 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 0 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 25 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 75 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 100 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 0 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 25 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 75 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 100 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 0 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 25 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 75 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 100 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 0 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 25 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 75 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 100 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 0 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 25 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 75 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 100 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.2/noop.result
