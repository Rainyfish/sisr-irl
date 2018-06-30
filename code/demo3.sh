#1. HALVING EXPERIMENTS
#1.1. scale 4
#1.1.1. half_both
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --n_branches 1 --reset --master_branch_pretrain ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save half_tests_new/half_both/EDSR_baseline_x4_b1
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --n_branches 2 --reset --pretrain ../experiment/half_tests_new/half_both/EDSR_baseline_x4_b1/ --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save half_tests_new/half_both/EDSR_baseline_x4_b2

#1.1.2.half number of layers
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --n_branches 1 --reset --master_branch_pretrain ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save half_tests_new/half_layers/EDSR_baseline_x4_b1

#1.1.3. half number of features
#python main.py --model EDSR --scale 4 --enable_rrl --half_feats --n_branches 1 --reset --master_branch_pretrain ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save half_tests_new/half_feats/EDSR_baseline_x4_b1

#1.2. scale 3 
#1.2.1. half_both
#python main.py --model EDSR --scale 3 --enable_rrl --half_resblocks --half_feats --reset --master_branch_pretrain ../experiment/model/EDSR_baseline_x3.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save half_tests_new/half_both/EDSR_baseline_x3

#1.2.2. half number of layers
#python main.py --model EDSR --scale 3 --enable_rrl --half_resblocks --reset --master_branch_pretrain ../experiment/model/EDSR_baseline_x3.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save half_tests_new/half_layers/EDSR_baseline_x3

#1.2.3. half number of features
#python main.py --model EDSR --scale 3 --enable_rrl --half_feats --reset --master_branch_pretrain ../experiment/model/EDSR_baseline_x3.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save half_tests_new/half_feats/EDSR_baseline_x3

#1.3. scale 2 
#1.3.1. half both
#python main.py --model EDSR --scale 2 --enable_rrl --half_resblocks --half_feats --reset --master_branch_pretrain ../experiment/model/EDSR_baseline_x2.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save half_tests_new/half_both/EDSR_baseline_x2

#1.3.2. half number of layers
#python main.py --model EDSR --scale 2 --enable_rrl --half_resblocks --reset --master_branch_pretrain ../experiment/model/EDSR_baseline_x2.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save half_tests_new/half_layers/EDSR_baseline_x2

#1.3.3. half number of features
#python main.py --model EDSR --scale 2 --enable_rrl --half_feats --reset --master_branch_pretrain ../experiment/model/EDSR_baseline_x2.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save half_tests_new/half_feats/EDSR_baseline_x2

#loss_test runs 
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --reset --pre_train ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save loss_tests/charbonnier --loss 1*Charbonnier
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --reset --pre_train ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext img --print_model --n_val 10 --epochs 30 --save loss_tests/grad3 --loss 0.3*GradL1+0.7*L1
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --reset --pre_train ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext img --print_model --n_val 10 --epochs 30 --save loss_tests/grad4 --loss 0.4*GradL1+0.6*L1
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --reset --pre_train ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save loss_tests/grad5 --loss 0.5*GradL1+0.5*L1
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --reset --pre_train ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save loss_tests/grad6 --loss 0.6*GradL1+0.4*L1
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --reset --pre_train ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save loss_tests/grad7 --loss 0.7*GradL1+0.3*L1

#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --reset --pre_train ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save loss_tests/mae_VGG22 --loss 0.5*L1+0.5*VGG22
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --reset --pre_train ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save loss_tests/mae_VGG54 --loss 0.5*L1+0.5*VGG54
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --reset --pre_train ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save loss_tests/VGG22 --loss 1*VGG22
#python main.py --model EDSR --scale 4 --enable_rrl --half_resblocks --half_feats --reset --pre_train ../experiment/model/EDSR_baseline_x4.pt --dir_data /datadrive/ --ext bin --print_model --n_val 10 --epochs 30 --save loss_tests/VGG54 --loss 1*VGG54
