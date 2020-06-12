#! /bin/bash
#SBATCH -J 431
#SBATCH -p work
echo 4.3.1 begin
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 65536 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 262144 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 4194304 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 16777216 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 65536 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 262144 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 4194304 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 16777216 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 65536 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 262144 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 4194304 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 16777216 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 65536 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 262144 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 4194304 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 16777216 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 65536 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 262144 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 4194304 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 16777216 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 65536 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 262144 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 4194304 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 16777216 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 65536 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 262144 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 4194304 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 16777216 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.1/noop.result
