#! /bin/bash
#SBATCH -J 434
#SBATCH -p work
echo 4.3.4 begin
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 10 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 20 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 80 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/sjf.out 100 50 160 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/sjf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 10 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 20 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 80 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/aioli.out 100 50 160 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/aioli.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 10 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 20 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 80 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/mlf.out 100 50 160 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/mlf.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 10 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 20 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 80 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/to.out 100 50 160 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/to.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 10 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 20 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 80 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/toagg.out 100 50 160 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/toagg.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 10 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 20 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 80 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/twins.out 100 50 160 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/twins.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 10 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 20 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 40 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 80 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/noop.result
yhrun -n 10 /GPUFS/sysu_hshen_2/hmm0602/noop.out 100 50 160 4 50 1048576 10000 10000 1 >>/GPUFS/sysu_hshen_2/hmm0602/result/4.3.4/noop.result
