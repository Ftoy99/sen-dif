# sen-dif

# Setup

## Env
    conda create -n sen-dif python=3.10;
    conda activate sen-dif;
    pip install Senna/requirements.txt;
    export PYTHONPATH=$(pwd):$PYTHONPATH # Inside the sen-dif folder

## Sentencepiece for llama
    git clone https://github.com/google/sentencepiece.git;
    cd sentencepiece;
    mkdir build;
    cd build;
    cmake ..;
    make -j $(nproc);
    sudo make install;
    sudo ldconfig -v;

    or

    pip install sentencepiece


## Weights
cd 
git lfs install # ???
    mkdir Senna/models;
    git clone https://huggingface.co/rb93dett/Senna ./Senna/models/Senna;

    sed -i 's|"mm_vision_tower": "/horizon-bucket/saturn_v_dev/01_users/bo01.jiang/models/clip-vit-large-patch14-336/",|"mm_vision_tower": "openai/clip-vit-large-patch14-336",|g' Senna/models/Senna/config.json

## Senna Evaluation
    sh ./Senna/eval_tools/senna_plan_cmd_eval_multi_img.sh

## Senna Training Lora