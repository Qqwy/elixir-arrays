
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
    <td style="white-space: nowrap; text-align: right">3135.98 K</td>
    <td style="white-space: nowrap; text-align: right">0.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±632.22%</td>
    <td style="white-space: nowrap; text-align: right">0.135 μs</td>
    <td style="white-space: nowrap; text-align: right">3.02 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">175.57 K</td>
    <td style="white-space: nowrap; text-align: right">5.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±130.95%</td>
    <td style="white-space: nowrap; text-align: right">3.58 μs</td>
    <td style="white-space: nowrap; text-align: right">33.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">88.08 K</td>
    <td style="white-space: nowrap; text-align: right">11.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.78%</td>
    <td style="white-space: nowrap; text-align: right">7.26 μs</td>
    <td style="white-space: nowrap; text-align: right">40.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">64.85 K</td>
    <td style="white-space: nowrap; text-align: right">15.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±85.19%</td>
    <td style="white-space: nowrap; text-align: right">11.03 μs</td>
    <td style="white-space: nowrap; text-align: right">48.69 μs</td>
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
    <td style="white-space: nowrap;text-align: right">3135.98 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">175.57 K</td>
    <td style="white-space: nowrap; text-align: right">17.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">88.08 K</td>
    <td style="white-space: nowrap; text-align: right">35.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">64.85 K</td>
    <td style="white-space: nowrap; text-align: right">48.36x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">8 KB</td>
    <td>17.07x</td>
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
    <td style="white-space: nowrap; text-align: right">2374.46 K</td>
    <td style="white-space: nowrap; text-align: right">0.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±452.34%</td>
    <td style="white-space: nowrap; text-align: right">0.22 μs</td>
    <td style="white-space: nowrap; text-align: right">9.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">96.15 K</td>
    <td style="white-space: nowrap; text-align: right">10.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±72.50%</td>
    <td style="white-space: nowrap; text-align: right">7.97 μs</td>
    <td style="white-space: nowrap; text-align: right">33.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">47.85 K</td>
    <td style="white-space: nowrap; text-align: right">20.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±39.64%</td>
    <td style="white-space: nowrap; text-align: right">18.27 μs</td>
    <td style="white-space: nowrap; text-align: right">55.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">44.67 K</td>
    <td style="white-space: nowrap; text-align: right">22.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±104.52%</td>
    <td style="white-space: nowrap; text-align: right">19.79 μs</td>
    <td style="white-space: nowrap; text-align: right">57.95 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2374.46 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">96.15 K</td>
    <td style="white-space: nowrap; text-align: right">24.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">47.85 K</td>
    <td style="white-space: nowrap; text-align: right">49.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">44.67 K</td>
    <td style="white-space: nowrap; text-align: right">53.16x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">15.75 KB</td>
    <td>27.24x</td>
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
    <td style="white-space: nowrap; text-align: right">909.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±362.79%</td>
    <td style="white-space: nowrap; text-align: right">0.42 μs</td>
    <td style="white-space: nowrap; text-align: right">25.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">58.34 K</td>
    <td style="white-space: nowrap; text-align: right">17.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±35.57%</td>
    <td style="white-space: nowrap; text-align: right">15.75 μs</td>
    <td style="white-space: nowrap; text-align: right">51.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">22.56 K</td>
    <td style="white-space: nowrap; text-align: right">44.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.79%</td>
    <td style="white-space: nowrap; text-align: right">41.47 μs</td>
    <td style="white-space: nowrap; text-align: right">106.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">20.66 K</td>
    <td style="white-space: nowrap; text-align: right">48.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.02%</td>
    <td style="white-space: nowrap; text-align: right">45.92 μs</td>
    <td style="white-space: nowrap; text-align: right">116.66 μs</td>
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
    <td style="white-space: nowrap;text-align: right">909.99 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">58.34 K</td>
    <td style="white-space: nowrap; text-align: right">15.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">22.56 K</td>
    <td style="white-space: nowrap; text-align: right">40.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">20.66 K</td>
    <td style="white-space: nowrap; text-align: right">44.04x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">31.21 KB</td>
    <td>76.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">53.13 KB</td>
    <td>130.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">43.14 KB</td>
    <td>106.19x</td>
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
    <td style="white-space: nowrap; text-align: right">663.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±175.77%</td>
    <td style="white-space: nowrap; text-align: right">0.77 μs</td>
    <td style="white-space: nowrap; text-align: right">9.98 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">29.19 K</td>
    <td style="white-space: nowrap; text-align: right">34.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.47%</td>
    <td style="white-space: nowrap; text-align: right">31.71 μs</td>
    <td style="white-space: nowrap; text-align: right">83.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">11.29 K</td>
    <td style="white-space: nowrap; text-align: right">88.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.20%</td>
    <td style="white-space: nowrap; text-align: right">83.33 μs</td>
    <td style="white-space: nowrap; text-align: right">195.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">8.44 K</td>
    <td style="white-space: nowrap; text-align: right">118.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.26%</td>
    <td style="white-space: nowrap; text-align: right">110.86 μs</td>
    <td style="white-space: nowrap; text-align: right">265.56 μs</td>
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
    <td style="white-space: nowrap;text-align: right">663.24 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">29.19 K</td>
    <td style="white-space: nowrap; text-align: right">22.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">11.29 K</td>
    <td style="white-space: nowrap; text-align: right">58.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">8.44 K</td>
    <td style="white-space: nowrap; text-align: right">78.57x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">63.13 KB</td>
    <td>15.78x</td>
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
    <td style="white-space: nowrap; text-align: right">258.16 K</td>
    <td style="white-space: nowrap; text-align: right">3.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±110.58%</td>
    <td style="white-space: nowrap; text-align: right">1.63 μs</td>
    <td style="white-space: nowrap; text-align: right">24.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">14.76 K</td>
    <td style="white-space: nowrap; text-align: right">67.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±25.32%</td>
    <td style="white-space: nowrap; text-align: right">62.15 μs</td>
    <td style="white-space: nowrap; text-align: right">152.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.71 K</td>
    <td style="white-space: nowrap; text-align: right">175.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.14%</td>
    <td style="white-space: nowrap; text-align: right">165.27 μs</td>
    <td style="white-space: nowrap; text-align: right">397.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.75 K</td>
    <td style="white-space: nowrap; text-align: right">266.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.29%</td>
    <td style="white-space: nowrap; text-align: right">251.92 μs</td>
    <td style="white-space: nowrap; text-align: right">519.25 μs</td>
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
    <td style="white-space: nowrap;text-align: right">258.16 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">14.76 K</td>
    <td style="white-space: nowrap; text-align: right">17.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.71 K</td>
    <td style="white-space: nowrap; text-align: right">45.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.75 K</td>
    <td style="white-space: nowrap; text-align: right">68.82x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">127.98 KB</td>
    <td>33.3x</td>
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
    <td style="white-space: nowrap; text-align: right">120.63 K</td>
    <td style="white-space: nowrap; text-align: right">8.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.86%</td>
    <td style="white-space: nowrap; text-align: right">3.42 μs</td>
    <td style="white-space: nowrap; text-align: right">29.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">7.83 K</td>
    <td style="white-space: nowrap; text-align: right">127.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.96%</td>
    <td style="white-space: nowrap; text-align: right">120.09 μs</td>
    <td style="white-space: nowrap; text-align: right">267.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52 K</td>
    <td style="white-space: nowrap; text-align: right">396.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.12%</td>
    <td style="white-space: nowrap; text-align: right">384.86 μs</td>
    <td style="white-space: nowrap; text-align: right">669.56 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.89 K</td>
    <td style="white-space: nowrap; text-align: right">529.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.23%</td>
    <td style="white-space: nowrap; text-align: right">500.84 μs</td>
    <td style="white-space: nowrap; text-align: right">993.43 μs</td>
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
    <td style="white-space: nowrap;text-align: right">120.63 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">7.83 K</td>
    <td style="white-space: nowrap; text-align: right">15.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52 K</td>
    <td style="white-space: nowrap; text-align: right">47.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.89 K</td>
    <td style="white-space: nowrap; text-align: right">63.82x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">257.44 KB</td>
    <td>748.91x</td>
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
    <td style="white-space: nowrap; text-align: right">53.66 K</td>
    <td style="white-space: nowrap; text-align: right">18.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±76.22%</td>
    <td style="white-space: nowrap; text-align: right">8.13 μs</td>
    <td style="white-space: nowrap; text-align: right">74.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3.47 K</td>
    <td style="white-space: nowrap; text-align: right">288.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.20%</td>
    <td style="white-space: nowrap; text-align: right">255.78 μs</td>
    <td style="white-space: nowrap; text-align: right">583.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.26 K</td>
    <td style="white-space: nowrap; text-align: right">792.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.40%</td>
    <td style="white-space: nowrap; text-align: right">767.52 μs</td>
    <td style="white-space: nowrap; text-align: right">1209.10 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.91 K</td>
    <td style="white-space: nowrap; text-align: right">1104.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.39%</td>
    <td style="white-space: nowrap; text-align: right">1071.29 μs</td>
    <td style="white-space: nowrap; text-align: right">1624.27 μs</td>
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
    <td style="white-space: nowrap;text-align: right">53.66 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3.47 K</td>
    <td style="white-space: nowrap; text-align: right">15.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.26 K</td>
    <td style="white-space: nowrap; text-align: right">42.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.91 K</td>
    <td style="white-space: nowrap; text-align: right">59.27x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">516.08 KB</td>
    <td>24.29x</td>
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
    <td style="white-space: nowrap; text-align: right">31.37 K</td>
    <td style="white-space: nowrap; text-align: right">0.0319 ms</td>
    <td style="white-space: nowrap; text-align: right">±76.48%</td>
    <td style="white-space: nowrap; text-align: right">0.0132 ms</td>
    <td style="white-space: nowrap; text-align: right">0.107 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.90 K</td>
    <td style="white-space: nowrap; text-align: right">0.53 ms</td>
    <td style="white-space: nowrap; text-align: right">±23.45%</td>
    <td style="white-space: nowrap; text-align: right">0.47 ms</td>
    <td style="white-space: nowrap; text-align: right">0.95 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.97%</td>
    <td style="white-space: nowrap; text-align: right">1.43 ms</td>
    <td style="white-space: nowrap; text-align: right">1.95 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.45 K</td>
    <td style="white-space: nowrap; text-align: right">2.23 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.79%</td>
    <td style="white-space: nowrap; text-align: right">2.16 ms</td>
    <td style="white-space: nowrap; text-align: right">3.65 ms</td>
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
    <td style="white-space: nowrap;text-align: right">31.37 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.90 K</td>
    <td style="white-space: nowrap; text-align: right">16.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.67 K</td>
    <td style="white-space: nowrap; text-align: right">46.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.45 K</td>
    <td style="white-space: nowrap; text-align: right">70.1x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">1.01 MB</td>
    <td>101.75x</td>
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
    <td style="white-space: nowrap; text-align: right">19.17 K</td>
    <td style="white-space: nowrap; text-align: right">0.0522 ms</td>
    <td style="white-space: nowrap; text-align: right">±82.77%</td>
    <td style="white-space: nowrap; text-align: right">0.0275 ms</td>
    <td style="white-space: nowrap; text-align: right">0.25 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.03 K</td>
    <td style="white-space: nowrap; text-align: right">0.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.75%</td>
    <td style="white-space: nowrap; text-align: right">0.94 ms</td>
    <td style="white-space: nowrap; text-align: right">1.46 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.28 K</td>
    <td style="white-space: nowrap; text-align: right">3.55 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.66%</td>
    <td style="white-space: nowrap; text-align: right">3.51 ms</td>
    <td style="white-space: nowrap; text-align: right">4.28 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">4.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.87%</td>
    <td style="white-space: nowrap; text-align: right">4.45 ms</td>
    <td style="white-space: nowrap; text-align: right">5.10 ms</td>
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
    <td style="white-space: nowrap;text-align: right">19.17 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.03 K</td>
    <td style="white-space: nowrap; text-align: right">18.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.28 K</td>
    <td style="white-space: nowrap; text-align: right">68.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">86.36x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">2.04 MB</td>
    <td>19.61x</td>
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
    <td style="white-space: nowrap; text-align: right">9285.13</td>
    <td style="white-space: nowrap; text-align: right">0.108 ms</td>
    <td style="white-space: nowrap; text-align: right">±85.65%</td>
    <td style="white-space: nowrap; text-align: right">0.0652 ms</td>
    <td style="white-space: nowrap; text-align: right">0.38 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">496.54</td>
    <td style="white-space: nowrap; text-align: right">2.01 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.60%</td>
    <td style="white-space: nowrap; text-align: right">1.92 ms</td>
    <td style="white-space: nowrap; text-align: right">2.44 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">140.09</td>
    <td style="white-space: nowrap; text-align: right">7.14 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.09%</td>
    <td style="white-space: nowrap; text-align: right">7.11 ms</td>
    <td style="white-space: nowrap; text-align: right">7.77 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">103.40</td>
    <td style="white-space: nowrap; text-align: right">9.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.41%</td>
    <td style="white-space: nowrap; text-align: right">9.67 ms</td>
    <td style="white-space: nowrap; text-align: right">10.09 ms</td>
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
    <td style="white-space: nowrap;text-align: right">9285.13</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">496.54</td>
    <td style="white-space: nowrap; text-align: right">18.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">140.09</td>
    <td style="white-space: nowrap; text-align: right">66.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">103.40</td>
    <td style="white-space: nowrap; text-align: right">89.8x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">4.12 MB</td>
    <td>56.69x</td>
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
    <td style="white-space: nowrap; text-align: right">3169.42</td>
    <td style="white-space: nowrap; text-align: right">0.32 ms</td>
    <td style="white-space: nowrap; text-align: right">±69.23%</td>
    <td style="white-space: nowrap; text-align: right">0.152 ms</td>
    <td style="white-space: nowrap; text-align: right">0.68 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">223.67</td>
    <td style="white-space: nowrap; text-align: right">4.47 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.33%</td>
    <td style="white-space: nowrap; text-align: right">4.42 ms</td>
    <td style="white-space: nowrap; text-align: right">4.86 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">60.08</td>
    <td style="white-space: nowrap; text-align: right">16.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±14.65%</td>
    <td style="white-space: nowrap; text-align: right">15.68 ms</td>
    <td style="white-space: nowrap; text-align: right">22.16 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">38.35</td>
    <td style="white-space: nowrap; text-align: right">26.07 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.83%</td>
    <td style="white-space: nowrap; text-align: right">25.57 ms</td>
    <td style="white-space: nowrap; text-align: right">29.64 ms</td>
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
    <td style="white-space: nowrap;text-align: right">3169.42</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">223.67</td>
    <td style="white-space: nowrap; text-align: right">14.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">60.08</td>
    <td style="white-space: nowrap; text-align: right">52.76x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">38.35</td>
    <td style="white-space: nowrap; text-align: right">82.64x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">8.24 MB</td>
    <td>16.47x</td>
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
    <td style="white-space: nowrap; text-align: right">1313.76</td>
    <td style="white-space: nowrap; text-align: right">0.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±68.75%</td>
    <td style="white-space: nowrap; text-align: right">0.41 ms</td>
    <td style="white-space: nowrap; text-align: right">1.44 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">113.46</td>
    <td style="white-space: nowrap; text-align: right">8.81 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.58%</td>
    <td style="white-space: nowrap; text-align: right">8.79 ms</td>
    <td style="white-space: nowrap; text-align: right">9.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">30.69</td>
    <td style="white-space: nowrap; text-align: right">32.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.68%</td>
    <td style="white-space: nowrap; text-align: right">32.62 ms</td>
    <td style="white-space: nowrap; text-align: right">32.79 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">12.29</td>
    <td style="white-space: nowrap; text-align: right">81.39 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.50%</td>
    <td style="white-space: nowrap; text-align: right">81.29 ms</td>
    <td style="white-space: nowrap; text-align: right">81.84 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1313.76</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">113.46</td>
    <td style="white-space: nowrap; text-align: right">11.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">30.69</td>
    <td style="white-space: nowrap; text-align: right">42.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">12.29</td>
    <td style="white-space: nowrap; text-align: right">106.93x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">16.50 MB</td>
    <td>38.63x</td>
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
    <td style="white-space: nowrap; text-align: right">1550.20</td>
    <td style="white-space: nowrap; text-align: right">0.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.95%</td>
    <td style="white-space: nowrap; text-align: right">0.65 ms</td>
    <td style="white-space: nowrap; text-align: right">0.68 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">55.64</td>
    <td style="white-space: nowrap; text-align: right">17.97 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.71%</td>
    <td style="white-space: nowrap; text-align: right">17.90 ms</td>
    <td style="white-space: nowrap; text-align: right">18.12 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">14.07</td>
    <td style="white-space: nowrap; text-align: right">71.05 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.26%</td>
    <td style="white-space: nowrap; text-align: right">71.05 ms</td>
    <td style="white-space: nowrap; text-align: right">72.19 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.19</td>
    <td style="white-space: nowrap; text-align: right">192.78 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">192.78 ms</td>
    <td style="white-space: nowrap; text-align: right">192.78 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1550.20</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">55.64</td>
    <td style="white-space: nowrap; text-align: right">27.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">14.07</td>
    <td style="white-space: nowrap; text-align: right">110.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.19</td>
    <td style="white-space: nowrap; text-align: right">298.85x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">33.10 MB</td>
    <td>16.55x</td>
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
    <td style="white-space: nowrap; text-align: right">656.29</td>
    <td style="white-space: nowrap; text-align: right">1.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.52 ms</td>
    <td style="white-space: nowrap; text-align: right">1.52 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">28.17</td>
    <td style="white-space: nowrap; text-align: right">35.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">35.50 ms</td>
    <td style="white-space: nowrap; text-align: right">35.50 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.34</td>
    <td style="white-space: nowrap; text-align: right">136.22 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">136.22 ms</td>
    <td style="white-space: nowrap; text-align: right">136.22 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.51</td>
    <td style="white-space: nowrap; text-align: right">398.82 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">398.82 ms</td>
    <td style="white-space: nowrap; text-align: right">398.82 ms</td>
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
    <td style="white-space: nowrap;text-align: right">656.29</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">28.17</td>
    <td style="white-space: nowrap; text-align: right">23.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.34</td>
    <td style="white-space: nowrap; text-align: right">89.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.51</td>
    <td style="white-space: nowrap; text-align: right">261.74x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">66.59 MB</td>
    <td>57.82x</td>
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
    <td style="white-space: nowrap; text-align: right">86.66</td>
    <td style="white-space: nowrap; text-align: right">11.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">11.54 ms</td>
    <td style="white-space: nowrap; text-align: right">11.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">14.79</td>
    <td style="white-space: nowrap; text-align: right">67.61 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">67.61 ms</td>
    <td style="white-space: nowrap; text-align: right">67.61 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">278.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">278.34 ms</td>
    <td style="white-space: nowrap; text-align: right">278.34 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.12</td>
    <td style="white-space: nowrap; text-align: right">894.39 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">894.39 ms</td>
    <td style="white-space: nowrap; text-align: right">894.39 ms</td>
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
    <td style="white-space: nowrap;text-align: right">86.66</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">14.79</td>
    <td style="white-space: nowrap; text-align: right">5.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.59</td>
    <td style="white-space: nowrap; text-align: right">24.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.12</td>
    <td style="white-space: nowrap; text-align: right">77.51x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">134.68 MB</td>
    <td>45.24x</td>
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
    <td style="white-space: nowrap; text-align: right">210.16</td>
    <td style="white-space: nowrap; text-align: right">4.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">4.76 ms</td>
    <td style="white-space: nowrap; text-align: right">4.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">7.42</td>
    <td style="white-space: nowrap; text-align: right">134.80 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">134.80 ms</td>
    <td style="white-space: nowrap; text-align: right">134.80 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.39</td>
    <td style="white-space: nowrap; text-align: right">720.11 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">720.11 ms</td>
    <td style="white-space: nowrap; text-align: right">720.11 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.46</td>
    <td style="white-space: nowrap; text-align: right">2151.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2151.02 ms</td>
    <td style="white-space: nowrap; text-align: right">2151.02 ms</td>
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
    <td style="white-space: nowrap;text-align: right">210.16</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">7.42</td>
    <td style="white-space: nowrap; text-align: right">28.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.39</td>
    <td style="white-space: nowrap; text-align: right">151.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.46</td>
    <td style="white-space: nowrap; text-align: right">452.07x</td>
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
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap">268.87 MB</td>
    <td>339.26x</td>
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

