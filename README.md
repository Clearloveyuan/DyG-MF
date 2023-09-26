# SMFBC
The source code demo for one under-review paper in IEEE TKDE.  



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
- CSEA 14
- DSCPCD 26

### Two-stage Methods
- SepNE 24
- Deepwalk 32
- node2vec 33
- LINE 33
- RNNGCN 35
- ROLAND 36 

### Evolutionary Methods
- PisCES 18
- DYNMOGA 53
- NE2NMF 22
- RTSC 40
  

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

