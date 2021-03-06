# MxGNN

Graphs are known to have complicated structures and have myriad applications. How to utilize deep learning methods for graph classification tasks has attracted considerable research attention in the past few years. Two properties of graph data have imposed significant challenges on existing graph learning techniques, diversity and omplexity. These two properties motivate us to use multiplex structure to learn graph features in a diverse way. 

MxGNN concurrently uses multiple graph convolution networks and graph pooling networks to build hierarchical learning structure for graph representation learning tasks. Our experiments have shown that MxGNN has marked superiority over other state-of-the-art graph representation learning methods.

MxGNN is implemented based on DiffPool (https://github.com/RexYing/diffpool). 

# Quick Start

Package Installation
-----------------
The code is running on GPU, so you shold have installed cuda and cudnn. Check if they have been installed by running:

$ cat /usr/local/cuda/version.txt

$ cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2

If you have installed them, you will get their version. Otherwise, please install cuda and cudnn first.

A few additional packages are needed, including pytorch, matplotlib, networkx, scikit-learn, tensorboardx, community. Suppose you have installed Anaconda, you can create a virtual envrionment by command:

$ conda create -n your_env_name

and activate your envrienment by command:

$ conda activate your_env_name

then install these packages in your virtual environment with the following commands:

$ conda install pytorch torchvision cudatoolkit=9.2 -c pytorch   

$ conda install matplotlib

$ pip install networkx

$ conda install scikit-learn

$ conda install -c conda-forge tensorboardx

$ pip install community

Note that, pytorch version should match your cuda version.

Run
-----------------
Download our code first.

cd directory and unzip data.tar.gz:

$ tar xzvf data.tar.gz

Run the sample script:

$ sh example.sh

We have provided a few scripts in example.sh. For example:

python -m train --bmname=ENZYMES --method=MxGNN --assign-ratio 0.15 0.15 0.15 --hidden-dim 30 50 80 --output-dim 30 50 80 --cuda=0 --num-classes=6 --num-aspect=3 --multi-conv=1 --multi-pool=0 --lr=0.001

This script run MxGNN with 3 conv networks. Each conv network sets hidden dimension as 30, 50, or 80. The descriptions of other parameters are listed as follows:

--bmname: Name of the benchmark dataset

--method: Method. Possible values: base, diffpool, MxGNN

--assign-ratio: Compression ratio in pooling, multiple numbers should be specified if Multiplex pooling is used

--hidden-dim: Hidden dimension in convolution, multiple dimension numbers should be specified if Multiplex convolution is used （should be consistent with --num-aspect）

--output-dim: Output dimension in convolution, multiple various dimension numbers should be specified if Multiplex convolution is used （should be consistent with --num-aspect）

--cuda: GPU index MxGNN

--num-classes: Number of labeled classes of the dataset

--num-aspect: Number of perspectives in multiplex convolution and multiplex pooling

--multi-conv: Multiplex convolution, 0 (No) or 1 (Yes)

--multi-pool: Multiplex pool, 0 (No) or 1 (Yes).For we are working on the multi pool experiment, so we set multi-pool to 0.And in this code,we must input 3 assign-ratio,but in fact only the first works.

Note that multi_conv and multi_pool cannot be set to 0 at the same time.

--lr:Learning rate.

--merge-method:cat or sum. two different method on get embedding tensor and assignment tensor.You can get detailed implementation method in MxGNNCAT or MxGNNSUM.

Other unmentioned hyperparametric information can be found in the code .
