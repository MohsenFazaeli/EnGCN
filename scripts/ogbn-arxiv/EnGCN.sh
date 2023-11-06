#!/usr/bin/env bash
python main.py --type_model EnGCN --dataset ogbn-arxiv \
    --cuda_num 0 \
    --lr 0.001 \
    --weight_decay 0.0001 \
    --dropout 0.1 \
    --epochs 100 \
    --dim_hidden 512 \
    --num_layers 8 \
    --batch_size 10000 \
    --use_batch_norm False \
    --SLE_threshold 0.5 \
    --N_exp 10 \
    --tosparse



#!/usr/bin/env bash  org
python main.py --type_model EnGCN --dataset ogbn-arxiv \
    --cuda_num 0 \
    --lr 0.002 \
    --weight_decay 0.0001 \
    --dropout 0.3 \
    --epochs 50 \
    --dim_hidden 1024 \
    --num_layers 4 \
    --num_heads 7 \
    --batch_size 10000 \
    --use_batch_norm True \
    --SLE_threshold 0.5 \
    --N_exp 10 \
    --tosparse 2>&1 | tee logs/ogbn-arxiv_EnGCN.log
