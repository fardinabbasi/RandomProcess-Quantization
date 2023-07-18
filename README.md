# RandomProcess & Quantization
Determining if given [random processes](https://github.com/fardinabbasi/RandomProcess-Quantization/blob/main/RandomProcess.mlx) are stationary processes(WSS) or not with statistical analysis MATLAB.

[Converting](https://github.com/fardinabbasi/RandomProcess-Quantization/blob/main/Quantization.mlx) an analog signal to digital to transfer & receive it in MATLAB.

## Random Process
$x_1(t) = cos(2\pi t+\phi); \phi \approx U[-\pi,\pi]$

$x_2(t) = cos(2\pi t+\phi); \phi \approx U[-\pi/4,\pi/4]$

Let's start by sampling from the random processes mentioned above at a frequency of $F_s = 100 Hz$. Next, we generate three sets of samples for $\phi$, containing 100, 1000, and 10000 samples respectively. Finally, here are the results for $x_1$ and $x_2$ using these different sample sizes.

| Mean of $x_1$ | Mean of $x_2$ |
| --- | --- |
| <img src="/readme_images/x1_mean.jpg"> | <img src="/readme_images/x2_mean.jpg"> |


<h3> Determining if Given Random Processes are Stationary Processes or not by Statistical Analysis </h3>
<h2> Part 2: Quantization </h2>
<h3> Converting an Analog Signal to Digital to Transfer & Recieve It </h3>
<h2> Delta Modulation </h2>
