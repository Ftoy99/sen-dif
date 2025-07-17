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