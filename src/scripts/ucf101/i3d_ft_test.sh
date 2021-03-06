#!/usr/bin/env bash
python main.py \
--method ft \
--train_list ../datasets/lists/ucf101/ucf101_rgb_train_split_1.txt \
--val_list ../datasets/lists/ucf101/ucf101_rgb_val_split_1.txt \
--dataset ucf101 \
--arch i3d \
--mode rgb \
--lr 0.001 \
--lr_steps 10 20 25 30 35 40 \
--epochs 45 \
--batch_size 4 \
--data_length 64 \
--spatial_size 224 \
--workers 8 \
--stride 1 \
--dropout 0.5 \
--gpus 2 \
--logs_path ../experiments/logs/ucf101_i3d_ft \
--print-freq 100 # \
#--weights ../experiments/TemporalDis/ucf101/models/03-22-1119_aug_CJ/ckpt_epoch_183.pth