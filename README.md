# SMFBC
The source code demo for one under-review paper.  



## Environments

```
We use normalized mutual information (NMI) and normalized F1-score (NF1) to measure clustering accuracy. 
For baselines, we follow their reported settings to reproduce their model. 
And all experimental results are the average of ten runs by random seeds and are conducted on Matlab-2023 with Powergraph, a parallel computation framework, on eight machines. 
Each machine consists of 4 Intel i7-4790 3.60-GHz cores, and 16-GB RAM connects via 1-GB Ethernet. 
And we use a multiple t-test with Benjamini-Hochberg correction to evaluate whether the difference between baselines and SMFBC is significant.
```

## Datasets

### Artificial Temporal Netowrks

- SYN-FIX and SYN-VAR:
  
  [A Particle-and-Density Based Evolutionary Clustering Method for Dynamic Networks](http://www.vldb.org/pvldb/vol2/vldb09-404.pdf), Min-Soo Kim and Jiawei Han.

- Green Datasets:

  [An Evolutionary Multiobjective Approach for Community Discovery in Dynamic Networks](https://staff.icar.cnr.it/pizzuti/pubblicazioni/TKDE2014.pdf), Francesco Folino, Clara Pizzuti.

#### Real-World Temporal Netowrks

- arXiv Dataset:

  [Graphs over Time: Densification Laws, Shrinking Diameters and Possible Explanations](https://www.cs.cornell.edu/home/kleinber/kdd05-time.pdf), Jure Leskovec, Jon Kleinberg, Christos Faloutsos.

- Dublin Dataset:

  [What's in a crowd? Analysis of face-to-face behavioral networks](https://arxiv.org/pdf/1006.1260.pdf), Lorenzo Isella, Ciro Cattuto, and Wouter Van den Broeck.


- Flickr Dataset:

  [Growth of the flickr social network](https://dl.acm.org/doi/pdf/10.1145/1397735.1397742), Alan Mislove, Hema Swetha Koppula, Krishna P.Gummadi, Peter Druschel, Bobby Bhattacharjee.


- Wikipedia Dataset:

  [Governance in Social Media: A case study of the Wikipedia promotion process](https://www.cs.cornell.edu/home/kleinber/icwsm10-govern.pdf), Jure Leskovec, Daniel Huttenlocher, Jon Kleinberg.

- Youtube Dataset:

  [Growth of the flickr social network](https://dl.acm.org/doi/pdf/10.1145/1397735.1397742), Alan Mislove, Hema Swetha Koppula, Krishna P.Gummadi, Peter Druschel, Bobby Bhattacharjee.





## Baselines Methods

### Coupling Methods
- CSEA

  [A novel network core structure extraction algorithm utilized variational autoencoder for community detection](https://www.sciencedirect.com/science/article/pii/S0957417423002762), Rong Fei, Yuxin Wan, Bo Hu, Aimin Li, Qian Li, **[Source Code](https://github.com/PeterWana/CSEA)**.

- DSCPCD

  [Dual Structural Consistency Preserving Community Detection on Social Networks](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10017356),  Yuyao Wang, Jie Cao, Zhan Bu, Jia Wu, and Youquan Wang, **[Source Code](https://github.com/wyy-cs/DSCPCD)**.

### Two-stage Methods
- SepNE

  [Sepne: Bringing separability to network embedding](https://arxiv.org/pdf/1811.05614.pdf), Ziyao Li, Liang Zhang, Guojie Song. (Contact to authors for codes).
  
- Deepwalk

  [DeepWalk: Online Learning of Social Representations](https://arxiv.org/pdf/1403.6652.pdf), Bryan Perozzi, Rami Al-Rfou, Steven Skiena. [Source Code](https://github.com/phanein/deepwalk).

- node2vec

  [node2vec: Scalable Feature Learning for Networks](https://arxiv.org/pdf/1607.00653.pdf), Aditya Grover, Jure Leskovec, **[Source Code](https://github.com/aditya-grover/node2vec)**.

- LINE

  [LINE: Large-scale Information Network Embedding](https://arxiv.org/pdf/1503.03578.pdf), Jian Tang, Meng Qu, Mingzhe Wang, Ming Zhang, Jun Yan, Qiaozhu Mei, **[Source Code](https://github.com/tangjianpku/LINE)**.
  
- RNNGCN 

  [Interpretable Clustering on Dynamic Graphs with Recurrent Graph Neural Networks](https://arxiv.org/pdf/2012.08740.pdf), Yuhang Yao, Carlee Joe-Wong, **[Source Code](https://github.com/yh-yao/InterpretableClustering)**.

- ROLAND

  [ROLAND: Graph Learning Framework for Dynamic Graphs](https://arxiv.org/pdf/2208.07239.pdf), Jiaxuan You, Tianyu Du, Jure Leskovec, **[Source Code](https://github.com/snap-stanford/roland)**.

### Evolutionary Methods
- PisCES

  [Global spectral clustering in dynamic networks](https://www.pnas.org/doi/epdf/10.1073/pnas.1718449115), Fuchen Liua, David Choib, Lu Xiea, and Kathryn Roeder, **[Source Code](https://github.com/letitiaLiu/PisCES)**

- DYNMOGA

  [An Evolutionary Multiobjective Approach for Community Discovery in Dynamic Network](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6573961&tag=1), Francesco Folino and Clara Pizzuti, (Use ours or contact author for code).

- NE2NMF

  [Detecting dynamic community by fusing network embedding and nonnegative matrix factorization](https://www.sciencedirect.com/science/article/pii/S0950705121002240),  Dongyuan Li, Xiaoxiong Zhong, Zengfa Dou, Maoguo Gong, Xiaoke Ma. (Use ours or contact authors for code).
  
- RTSC

  [Robust Dynamic Clustering for Temporal Networks](https://dl.acm.org/doi/pdf/10.1145/3459637.3482473), Jingyi You, Chenlong Hu, Hidetaka Kamigaito, Kotaro Funakoshi, Manabu Okumura, (Contact authors for code).


  

## Ours 

Separated graph clustering for the first timestep:

Run `Algorithm/esP.m`

From the second timestep, our separated graph clustering method:

Run `Algorithm/dyesP.m`


## Future

Release more details for the tests on all datasets. 

## License

The software is distributed under 3-Clause BSD License (https://opensource.org/licenses/BSD-3-Clause).

## Acknowledgements

We are very grateful to all the reviewers for taking the time to help us review the paper！

