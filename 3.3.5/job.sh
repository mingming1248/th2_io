#! /bin/bash
#SBATCH -J 434
#SBATCH -p work
echo 4.3.4 begin
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 1048576 100 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 1048576 1000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 1048576 100000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 1048576 1000000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 1048576 100 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 1048576 1000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 1048576 100000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 1048576 1000000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 1048576 100 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 1048576 1000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 1048576 100000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 1048576 1000000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 1048576 100 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 1048576 1000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 1048576 100000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 1048576 1000000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 1048576 100 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 1048576 1000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 1048576 100000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 1048576 1000000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 1048576 100 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 1048576 1000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 1048576 100000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 1048576 1000000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 1048576 100 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 1048576 1000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 1048576 100000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 1048576 1000000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.5/noop.result
