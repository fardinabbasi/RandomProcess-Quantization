# RandomProcess & Quantization
Determining if given [random processes](https://github.com/fardinabbasi/RandomProcess-Quantization/blob/main/RandomProcess.mlx) are stationary processes(WSS) or not with statistical analysis MATLAB.

[Converting](https://github.com/fardinabbasi/RandomProcess-Quantization/blob/main/Quantization.mlx) an analog signal to digital to transfer & receive it in **MATLAB**.

## Random Process
$x_1(t) = cos(2\pi t+\phi); \phi \approx U[-\pi,\pi]$

$x_2(t) = cos(2\pi t+\phi); \phi \approx U[-\pi/4,\pi/4]$

Let's start by sampling from the random processes mentioned above at a frequency of $F_s = 100 Hz$. Next, we generate three sets of samples for $\phi$, containing 100, 1000, and 10000 samples respectively. Finally, here are the results for $x_1$ and $x_2$ using these different sample sizes.

| Mean of $x_1$ | Mean of $x_2$ |
| --- | --- |
| <img src="https://github.com/fardinabbasi/RandomProcess-Quantization/blob/main/readme_images/x1_mean.jpg"> | <img src="https://github.com/fardinabbasi/RandomProcess-Quantization/blob/main/readme_images/x2_mean.jpg"> |

Here are the exact values of the mean calculated manually.

$E[x_1] = 0$

$E[x_2] = 2/\pi[sin(2\pi t+\pi/4)+cos(2\pi t+\pi/4)]$

By increasing the number of samples in $x_1$, we observe a convergence of its mean towards **zero**, indicating that the **mean stationarity** condition is fulfilled. 
However, the mean of $x_2$ varies with time, thus violating the condition of **mean stationarity**. Consequently, $x_2$ cannot be considered a **stationary random process**.
| Sample Size | Autocorrelation function of $x_1$ | Autocorrelation function of $x_2$ |
| --- | --- | --- |
| 100 | <img src="https://github.com/fardinabbasi/RandomProcess-Quantization/blob/main/readme_images/auto11_100.jpg"> | <img src="https://github.com/fardinabbasi/RandomProcess-Quantization/blob/main/readme_images/auto2_100.jpg"> |
| 1000 | <img src="https://github.com/fardinabbasi/RandomProcess-Quantization/blob/main/readme_images/auto1_1000.jpg"> | <img src="https://github.com/fardinabbasi/RandomProcess-Quantization/blob/main/readme_images/auto2_1000.jpg"> |

Here are the exact values of the autocorrelation function calculated manually.

$R_{x_1} = cos(2\pi(t_1-t_2))/2 $
 
$R_{x_2} = cos(2\pi(t_1+t_2))/\pi + cos(2\pi(t_1-t_2))/2$

By analyzing the diagrams from the standpoint of a **constant time difference** ($\tau = t_1 - t_2$), we can conclude that the autocorrelation function of $x_1$ is **solely** determined by $\tau$, thus meeting the **criteria** for a **stationary random process**.

However, in the case of $x_2$, the autocorrelation function yields **different** values depending on $\tau$.

## Quantization
In this section, the signal will undergo a **uniform quantization** process to convert it into a **digital** signal. Once received, the digital signal will be converted back into an **analog** signal.

$g(t) = 4 + sin(2\pi t) + cos(\pi t) + cos(\pi t/2) + tan(\pi t/6)$
### Sampling
<h3> Converting an Analog Signal to Digital to Transfer & Recieve It </h3>
<h2> Delta Modulation </h2>
