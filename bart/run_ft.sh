# training command
# other options:  --do_predict --skip_inference --debug --checkpoint ${unifiedqa_checkpoint}
# --prefix dev_  --prefix test_ --checkpoint_step

python cli.py --do_train --output_dir out/${data}_unifiedqa \
        --checkpoint unifiedQA-uncased/best-model.pt \
        --train_file data/${data}/train.tsv \
        --predict_file data/${data}/dev.tsv \
        --train_batch_size 64 \
        --predict_batch_size 64 \
        --append_another_bos --do_lowercase \
        --verbose