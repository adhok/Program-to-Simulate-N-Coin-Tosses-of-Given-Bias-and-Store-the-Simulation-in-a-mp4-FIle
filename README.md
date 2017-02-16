---
title: "How to load the file"
author: "Pradeep Adhokshaja"
date: "16 February 2017"
output: html_document
---



## Input


The inputs to this functions are 
<li>N= Number of Flips(numeric)</li>
<li>pHeads = probability of a head in one coin toss (bias)(numeric)</li>
<li>seed= seed value for random number generator(numeric)</li>
<li>name_of_file = name of your file (character)</li>


```r
source("coin_flips.R")

flips_simulation(500,0.5,2,"test1")
```

The above code creates an mp4 file called "test1". This simulates contains 500 flips of coin which has a head bias of 0.5. The seed is set to 2.


<iframe width="560" height="315" src="https://www.youtube.com/embed/DZwxK2IjGIU" frameborder="0" allowfullscreen></iframe>
