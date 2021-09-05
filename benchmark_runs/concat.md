
# Benchmark

Comparing `Arrays.concat` with `Kernel.++`,
by concatenating two collections of the same size.


## System

Benchmark suite executing on the following system:

<table style="width: 1%">
  <tr>
    <th style="width: 1%; white-space: nowrap">Operating System</th>
    <td>Linux</td>
  </tr><tr>
    <th style="white-space: nowrap">CPU Information</th>
    <td style="white-space: nowrap">Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz</td>
  </tr><tr>
    <th style="white-space: nowrap">Number of Available Cores</th>
    <td style="white-space: nowrap">8</td>
  </tr><tr>
    <th style="white-space: nowrap">Available Memory</th>
    <td style="white-space: nowrap">7.60 GB</td>
  </tr><tr>
    <th style="white-space: nowrap">Elixir Version</th>
    <td style="white-space: nowrap">1.12.2</td>
  </tr><tr>
    <th style="white-space: nowrap">Erlang Version</th>
    <td style="white-space: nowrap">24.0.1</td>
  </tr>
</table>

## Configuration

Benchmark suite executing with the following configuration:

<table style="width: 1%">
  <tr>
    <th style="width: 1%">:time</th>
    <td style="white-space: nowrap">500 ms</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">500 ms</td>
  </tr>
</table>

## Statistics




__Input: 0000000032 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3395.38 K</td>
    <td style="white-space: nowrap; text-align: right">0.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±815.53%</td>
    <td style="white-space: nowrap; text-align: right">0.121 μs</td>
    <td style="white-space: nowrap; text-align: right">0.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">85.07 K</td>
    <td style="white-space: nowrap; text-align: right">11.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±91.66%</td>
    <td style="white-space: nowrap; text-align: right">7.63 μs</td>
    <td style="white-space: nowrap; text-align: right">55.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">71.76 K</td>
    <td style="white-space: nowrap; text-align: right">13.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±71.83%</td>
    <td style="white-space: nowrap; text-align: right">10.46 μs</td>
    <td style="white-space: nowrap; text-align: right">39.86 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">3395.38 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">85.07 K</td>
    <td style="white-space: nowrap; text-align: right">39.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">71.76 K</td>
    <td style="white-space: nowrap; text-align: right">47.32x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.47 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">10.21 KB</td>
    <td>21.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">10.56 KB</td>
    <td>22.53x</td>
  </tr>

</table>


<hr/>


__Input: 0000000064 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2056.86 K</td>
    <td style="white-space: nowrap; text-align: right">0.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±502.16%</td>
    <td style="white-space: nowrap; text-align: right">0.21 μs</td>
    <td style="white-space: nowrap; text-align: right">16.11 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">49.81 K</td>
    <td style="white-space: nowrap; text-align: right">20.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.97%</td>
    <td style="white-space: nowrap; text-align: right">17.36 μs</td>
    <td style="white-space: nowrap; text-align: right">54.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">44.58 K</td>
    <td style="white-space: nowrap; text-align: right">22.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.18%</td>
    <td style="white-space: nowrap; text-align: right">19.55 μs</td>
    <td style="white-space: nowrap; text-align: right">56.92 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">2056.86 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">49.81 K</td>
    <td style="white-space: nowrap; text-align: right">41.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">44.58 K</td>
    <td style="white-space: nowrap; text-align: right">46.13x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.58 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">23.49 KB</td>
    <td>40.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">19.44 KB</td>
    <td>33.62x</td>
  </tr>

</table>


<hr/>


__Input: 0000000128 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">959.75 K</td>
    <td style="white-space: nowrap; text-align: right">1.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±323.44%</td>
    <td style="white-space: nowrap; text-align: right">0.40 μs</td>
    <td style="white-space: nowrap; text-align: right">24.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">22.53 K</td>
    <td style="white-space: nowrap; text-align: right">44.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.47%</td>
    <td style="white-space: nowrap; text-align: right">44.77 μs</td>
    <td style="white-space: nowrap; text-align: right">67.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">20.45 K</td>
    <td style="white-space: nowrap; text-align: right">48.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.89%</td>
    <td style="white-space: nowrap; text-align: right">44.51 μs</td>
    <td style="white-space: nowrap; text-align: right">117.44 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">959.75 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">22.53 K</td>
    <td style="white-space: nowrap; text-align: right">42.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">20.45 K</td>
    <td style="white-space: nowrap; text-align: right">46.94x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.41 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">43.14 KB</td>
    <td>106.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">53.13 KB</td>
    <td>130.79x</td>
  </tr>

</table>


<hr/>


__Input: 0000000256 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">709.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±158.60%</td>
    <td style="white-space: nowrap; text-align: right">0.77 μs</td>
    <td style="white-space: nowrap; text-align: right">9.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">12.09 K</td>
    <td style="white-space: nowrap; text-align: right">82.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.19%</td>
    <td style="white-space: nowrap; text-align: right">79.66 μs</td>
    <td style="white-space: nowrap; text-align: right">147.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.17 K</td>
    <td style="white-space: nowrap; text-align: right">109.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.96%</td>
    <td style="white-space: nowrap; text-align: right">106.46 μs</td>
    <td style="white-space: nowrap; text-align: right">157.16 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">709.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">12.09 K</td>
    <td style="white-space: nowrap; text-align: right">58.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.17 K</td>
    <td style="white-space: nowrap; text-align: right">77.36x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">4 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">106.27 KB</td>
    <td>26.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">95.85 KB</td>
    <td>23.96x</td>
  </tr>

</table>


<hr/>


__Input: 0000000512 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">289.64 K</td>
    <td style="white-space: nowrap; text-align: right">3.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.59%</td>
    <td style="white-space: nowrap; text-align: right">1.54 μs</td>
    <td style="white-space: nowrap; text-align: right">16.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">6.28 K</td>
    <td style="white-space: nowrap; text-align: right">159.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.92%</td>
    <td style="white-space: nowrap; text-align: right">156.55 μs</td>
    <td style="white-space: nowrap; text-align: right">219.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.02 K</td>
    <td style="white-space: nowrap; text-align: right">248.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.85%</td>
    <td style="white-space: nowrap; text-align: right">242.73 μs</td>
    <td style="white-space: nowrap; text-align: right">330.59 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">289.64 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">6.28 K</td>
    <td style="white-space: nowrap; text-align: right">46.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.02 K</td>
    <td style="white-space: nowrap; text-align: right">71.99x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">3.84 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">214.63 KB</td>
    <td>55.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">208.60 KB</td>
    <td>54.27x</td>
  </tr>

</table>


<hr/>


__Input: 0000001024 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">134.77 K</td>
    <td style="white-space: nowrap; text-align: right">7.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±79.58%</td>
    <td style="white-space: nowrap; text-align: right">3.26 μs</td>
    <td style="white-space: nowrap; text-align: right">24.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.68 K</td>
    <td style="white-space: nowrap; text-align: right">373.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.97%</td>
    <td style="white-space: nowrap; text-align: right">366.46 μs</td>
    <td style="white-space: nowrap; text-align: right">517.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.08 K</td>
    <td style="white-space: nowrap; text-align: right">480.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.72%</td>
    <td style="white-space: nowrap; text-align: right">471.50 μs</td>
    <td style="white-space: nowrap; text-align: right">642.03 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">134.77 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.68 K</td>
    <td style="white-space: nowrap; text-align: right">50.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.08 K</td>
    <td style="white-space: nowrap; text-align: right">64.77x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.34 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">520.64 KB</td>
    <td>1514.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">447.98 KB</td>
    <td>1303.2x</td>
  </tr>

</table>


<hr/>


__Input: 0000002048 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">64.23 K</td>
    <td style="white-space: nowrap; text-align: right">15.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.40%</td>
    <td style="white-space: nowrap; text-align: right">6.86 μs</td>
    <td style="white-space: nowrap; text-align: right">47.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.33 K</td>
    <td style="white-space: nowrap; text-align: right">751.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.84%</td>
    <td style="white-space: nowrap; text-align: right">729.68 μs</td>
    <td style="white-space: nowrap; text-align: right">869.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.99 K</td>
    <td style="white-space: nowrap; text-align: right">1005.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.06%</td>
    <td style="white-space: nowrap; text-align: right">1005.26 μs</td>
    <td style="white-space: nowrap; text-align: right">1356.30 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">64.23 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.33 K</td>
    <td style="white-space: nowrap; text-align: right">48.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.99 K</td>
    <td style="white-space: nowrap; text-align: right">64.59x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">21.25 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1040.95 KB</td>
    <td>48.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">959.41 KB</td>
    <td>45.15x</td>
  </tr>

</table>


<hr/>


__Input: 0000004096 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">32641.83</td>
    <td style="white-space: nowrap; text-align: right">0.0306 ms</td>
    <td style="white-space: nowrap; text-align: right">±72.34%</td>
    <td style="white-space: nowrap; text-align: right">0.0126 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0613 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">706.14</td>
    <td style="white-space: nowrap; text-align: right">1.42 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.86%</td>
    <td style="white-space: nowrap; text-align: right">1.40 ms</td>
    <td style="white-space: nowrap; text-align: right">1.82 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">487.19</td>
    <td style="white-space: nowrap; text-align: right">2.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.06%</td>
    <td style="white-space: nowrap; text-align: right">2.04 ms</td>
    <td style="white-space: nowrap; text-align: right">2.85 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">32641.83</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">706.14</td>
    <td style="white-space: nowrap; text-align: right">46.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">487.19</td>
    <td style="white-space: nowrap; text-align: right">67.0x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.00993 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">2.03 MB</td>
    <td>204.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">2.03 MB</td>
    <td>204.09x</td>
  </tr>

</table>


<hr/>


__Input: 0000008192 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">17694.77</td>
    <td style="white-space: nowrap; text-align: right">0.0565 ms</td>
    <td style="white-space: nowrap; text-align: right">±98.05%</td>
    <td style="white-space: nowrap; text-align: right">0.0283 ms</td>
    <td style="white-space: nowrap; text-align: right">0.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">301.26</td>
    <td style="white-space: nowrap; text-align: right">3.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.98%</td>
    <td style="white-space: nowrap; text-align: right">3.25 ms</td>
    <td style="white-space: nowrap; text-align: right">3.79 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">232.00</td>
    <td style="white-space: nowrap; text-align: right">4.31 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.65%</td>
    <td style="white-space: nowrap; text-align: right">4.28 ms</td>
    <td style="white-space: nowrap; text-align: right">4.81 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">17694.77</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">301.26</td>
    <td style="white-space: nowrap; text-align: right">58.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">232.00</td>
    <td style="white-space: nowrap; text-align: right">76.27x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.104 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">4.66 MB</td>
    <td>44.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">4.35 MB</td>
    <td>41.9x</td>
  </tr>

</table>


<hr/>


__Input: 0000016384 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">9494.64</td>
    <td style="white-space: nowrap; text-align: right">0.105 ms</td>
    <td style="white-space: nowrap; text-align: right">±93.54%</td>
    <td style="white-space: nowrap; text-align: right">0.0620 ms</td>
    <td style="white-space: nowrap; text-align: right">0.34 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">146.04</td>
    <td style="white-space: nowrap; text-align: right">6.85 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.40%</td>
    <td style="white-space: nowrap; text-align: right">6.67 ms</td>
    <td style="white-space: nowrap; text-align: right">9.59 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">112.65</td>
    <td style="white-space: nowrap; text-align: right">8.88 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.06%</td>
    <td style="white-space: nowrap; text-align: right">8.85 ms</td>
    <td style="white-space: nowrap; text-align: right">9.41 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">9494.64</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">146.04</td>
    <td style="white-space: nowrap; text-align: right">65.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">112.65</td>
    <td style="white-space: nowrap; text-align: right">84.29x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.0727 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">9.64 MB</td>
    <td>132.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">9.19 MB</td>
    <td>126.32x</td>
  </tr>

</table>


<hr/>


__Input: 0000032768 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3943.46</td>
    <td style="white-space: nowrap; text-align: right">0.25 ms</td>
    <td style="white-space: nowrap; text-align: right">±77.86%</td>
    <td style="white-space: nowrap; text-align: right">0.154 ms</td>
    <td style="white-space: nowrap; text-align: right">0.69 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">66.90</td>
    <td style="white-space: nowrap; text-align: right">14.95 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.70%</td>
    <td style="white-space: nowrap; text-align: right">14.91 ms</td>
    <td style="white-space: nowrap; text-align: right">15.50 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">40.28</td>
    <td style="white-space: nowrap; text-align: right">24.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.82%</td>
    <td style="white-space: nowrap; text-align: right">24.41 ms</td>
    <td style="white-space: nowrap; text-align: right">27.09 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">3943.46</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">66.90</td>
    <td style="white-space: nowrap; text-align: right">58.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">40.28</td>
    <td style="white-space: nowrap; text-align: right">97.9x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.50 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">19.30 MB</td>
    <td>38.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">19.40 MB</td>
    <td>38.8x</td>
  </tr>

</table>


<hr/>


__Input: 0000065536 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1521.84</td>
    <td style="white-space: nowrap; text-align: right">0.66 ms</td>
    <td style="white-space: nowrap; text-align: right">±66.93%</td>
    <td style="white-space: nowrap; text-align: right">0.53 ms</td>
    <td style="white-space: nowrap; text-align: right">1.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">32.60</td>
    <td style="white-space: nowrap; text-align: right">30.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.19%</td>
    <td style="white-space: nowrap; text-align: right">30.78 ms</td>
    <td style="white-space: nowrap; text-align: right">30.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">12.86</td>
    <td style="white-space: nowrap; text-align: right">77.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.18%</td>
    <td style="white-space: nowrap; text-align: right">77.25 ms</td>
    <td style="white-space: nowrap; text-align: right">78.79 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1521.84</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">32.60</td>
    <td style="white-space: nowrap; text-align: right">46.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">12.86</td>
    <td style="white-space: nowrap; text-align: right">118.3x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.43 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">41.45 MB</td>
    <td>97.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">41.28 MB</td>
    <td>96.63x</td>
  </tr>

</table>


<hr/>


__Input: 0000131072 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1732.44</td>
    <td style="white-space: nowrap; text-align: right">0.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.02%</td>
    <td style="white-space: nowrap; text-align: right">0.55 ms</td>
    <td style="white-space: nowrap; text-align: right">0.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">15.09</td>
    <td style="white-space: nowrap; text-align: right">66.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.60%</td>
    <td style="white-space: nowrap; text-align: right">66.27 ms</td>
    <td style="white-space: nowrap; text-align: right">66.55 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.75</td>
    <td style="white-space: nowrap; text-align: right">173.86 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">173.86 ms</td>
    <td style="white-space: nowrap; text-align: right">173.86 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1732.44</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">15.09</td>
    <td style="white-space: nowrap; text-align: right">114.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.75</td>
    <td style="white-space: nowrap; text-align: right">301.19x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">2 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">89.23 MB</td>
    <td>44.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">87.04 MB</td>
    <td>43.52x</td>
  </tr>

</table>


<hr/>


__Input: 0000262144 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">167.65</td>
    <td style="white-space: nowrap; text-align: right">5.96 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">5.96 ms</td>
    <td style="white-space: nowrap; text-align: right">5.96 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.72</td>
    <td style="white-space: nowrap; text-align: right">129.56 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">129.56 ms</td>
    <td style="white-space: nowrap; text-align: right">129.56 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52</td>
    <td style="white-space: nowrap; text-align: right">397.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">397.05 ms</td>
    <td style="white-space: nowrap; text-align: right">397.05 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">167.65</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.72</td>
    <td style="white-space: nowrap; text-align: right">21.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52</td>
    <td style="white-space: nowrap; text-align: right">66.56x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">1.15 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">178.46 MB</td>
    <td>154.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">181.20 MB</td>
    <td>157.35x</td>
  </tr>

</table>


<hr/>


__Input: 0000524288 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">423.84</td>
    <td style="white-space: nowrap; text-align: right">2.36 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2.36 ms</td>
    <td style="white-space: nowrap; text-align: right">2.36 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.89</td>
    <td style="white-space: nowrap; text-align: right">257.20 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">257.20 ms</td>
    <td style="white-space: nowrap; text-align: right">257.20 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.14</td>
    <td style="white-space: nowrap; text-align: right">879.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">879.65 ms</td>
    <td style="white-space: nowrap; text-align: right">879.65 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">423.84</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.89</td>
    <td style="white-space: nowrap; text-align: right">109.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.14</td>
    <td style="white-space: nowrap; text-align: right">372.83x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">2.98 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">361.37 MB</td>
    <td>121.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">378.79 MB</td>
    <td>127.24x</td>
  </tr>

</table>


<hr/>


__Input: 0001048576 elements__

Run Time

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Average</th>
    <th style="text-align: right">Devitation</th>
    <th style="text-align: right">Median</th>
    <th style="text-align: right">99th&nbsp;%</th>
  </tr>

  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">234.12</td>
    <td style="white-space: nowrap; text-align: right">4.27 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">4.27 ms</td>
    <td style="white-space: nowrap; text-align: right">4.27 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.54</td>
    <td style="white-space: nowrap; text-align: right">648.35 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">648.35 ms</td>
    <td style="white-space: nowrap; text-align: right">648.35 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.47</td>
    <td style="white-space: nowrap; text-align: right">2139.88 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2139.88 ms</td>
    <td style="white-space: nowrap; text-align: right">2139.88 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">234.12</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.54</td>
    <td style="white-space: nowrap; text-align: right">151.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.47</td>
    <td style="white-space: nowrap; text-align: right">501.0x</td>
  </tr>

</table>



Memory Usage

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">Memory</th>
<th style="text-align: right">Factor</th>
  </tr>
  <tr>
    <td style="white-space: nowrap">Kernel.++/2 (list)</td>
    <td style="white-space: nowrap">0.79 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">809.86 MB</td>
    <td>1021.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">797.25 MB</td>
    <td>1006.0x</td>
  </tr>

</table>


<hr/>

