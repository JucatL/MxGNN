#NCI109 -MxGNN
python -m train --bmname=NCI109 --method=MxGNN --assign-ratio 0.1 0.1 0.1 --hidden-dim 30 50 80 --output-dim 30 50 80 --cuda=1 --num-classes=2 --num-aspect=3 --multi-conv=1 --multi-pool=0 --max-nodes=100  --epochs=1000 --dropout=0.0 --batch-size=20 --lr=0.001

#PROTEINS -MxGNN
python -m train --bmname=PROTEINS --method=MxGNN --assign-ratio 0.1 0.1 0.1 --hidden-dim 20 40 60 --output-dim 20 40 60 --cuda=0 --num-classes=2 --num-aspect=3 --multi-conv=1 --multi-pool=0 --max-nodes=200  --epochs=300 --dropout=0.0 --batch-size=20

#COLLAB -MxGNN
python -m train --bmname=COLLAB --method=MxGNN --assign-ratio 0.15 0.15 0.15 --hidden-dim 30 50 80 --output-dim 30 50 80 --cuda=0 --num-classes=3 --num-aspect=3 --multi-conv=1 --multi-pool=0 --max-nodes=300  --epochs=1000 --dropout=0.0 --batch-size=20

#DD -MxGNN
python -m train --bmname=DD --method=GNN --assign-ratio 0.1 0.1 0.1 --hidden-dim 20 40 60 --output-dim 20 40 60 --cuda=0 --num-classes=2 --num-aspect=3 --multi-conv=1 --multi-pool=0 --max-nodes=500  --epochs=500 --dropout=0.0 --batch-size=20

#ENZYMES -MxGNN
python -m train --bmname=ENZYMES --method=MxGNN --assign-ratio 0.15 0.15 0.15 --hidden-dim 30 50 80 --output-dim 30 50 80 --cuda=0 --num-classes=6 --num-aspect=3 --multi-conv=1 --multi-pool=0 --max-nodes=100  --epochs=1000 --dropout=0.0 --batch-size=20

