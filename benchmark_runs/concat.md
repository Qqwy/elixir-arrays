
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
    <td style="white-space: nowrap; text-align: right">3020.58 K</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±774.41%</td>
    <td style="white-space: nowrap; text-align: right">0.124 μs</td>
    <td style="white-space: nowrap; text-align: right">3.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">194.02 K</td>
    <td style="white-space: nowrap; text-align: right">5.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±123.47%</td>
    <td style="white-space: nowrap; text-align: right">3.39 μs</td>
    <td style="white-space: nowrap; text-align: right">31.48 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">105.69 K</td>
    <td style="white-space: nowrap; text-align: right">9.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±75.48%</td>
    <td style="white-space: nowrap; text-align: right">7.08 μs</td>
    <td style="white-space: nowrap; text-align: right">34.60 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">71.81 K</td>
    <td style="white-space: nowrap; text-align: right">13.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.81%</td>
    <td style="white-space: nowrap; text-align: right">10.43 μs</td>
    <td style="white-space: nowrap; text-align: right">39.39 μs</td>
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
    <td style="white-space: nowrap;text-align: right">3020.58 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">194.02 K</td>
    <td style="white-space: nowrap; text-align: right">15.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">105.69 K</td>
    <td style="white-space: nowrap; text-align: right">28.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">71.81 K</td>
    <td style="white-space: nowrap; text-align: right">42.06x</td>
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
    <td style="white-space: nowrap; text-align: right">2027.63 K</td>
    <td style="white-space: nowrap; text-align: right">0.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±525.56%</td>
    <td style="white-space: nowrap; text-align: right">0.21 μs</td>
    <td style="white-space: nowrap; text-align: right">16.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">101.98 K</td>
    <td style="white-space: nowrap; text-align: right">9.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±64.06%</td>
    <td style="white-space: nowrap; text-align: right">7.94 μs</td>
    <td style="white-space: nowrap; text-align: right">34.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">53.27 K</td>
    <td style="white-space: nowrap; text-align: right">18.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.17%</td>
    <td style="white-space: nowrap; text-align: right">17.12 μs</td>
    <td style="white-space: nowrap; text-align: right">36.10 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">48.44 K</td>
    <td style="white-space: nowrap; text-align: right">20.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.64%</td>
    <td style="white-space: nowrap; text-align: right">19.45 μs</td>
    <td style="white-space: nowrap; text-align: right">47.23 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2027.63 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">101.98 K</td>
    <td style="white-space: nowrap; text-align: right">19.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">53.27 K</td>
    <td style="white-space: nowrap; text-align: right">38.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">48.44 K</td>
    <td style="white-space: nowrap; text-align: right">41.86x</td>
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
    <td style="white-space: nowrap; text-align: right">1016.55 K</td>
    <td style="white-space: nowrap; text-align: right">0.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±338.76%</td>
    <td style="white-space: nowrap; text-align: right">0.37 μs</td>
    <td style="white-space: nowrap; text-align: right">24.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">61.54 K</td>
    <td style="white-space: nowrap; text-align: right">16.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.32%</td>
    <td style="white-space: nowrap; text-align: right">15.08 μs</td>
    <td style="white-space: nowrap; text-align: right">31.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">24.69 K</td>
    <td style="white-space: nowrap; text-align: right">40.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.50%</td>
    <td style="white-space: nowrap; text-align: right">39.62 μs</td>
    <td style="white-space: nowrap; text-align: right">58.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">22.43 K</td>
    <td style="white-space: nowrap; text-align: right">44.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.73%</td>
    <td style="white-space: nowrap; text-align: right">44.53 μs</td>
    <td style="white-space: nowrap; text-align: right">77.67 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1016.55 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">61.54 K</td>
    <td style="white-space: nowrap; text-align: right">16.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">24.69 K</td>
    <td style="white-space: nowrap; text-align: right">41.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">22.43 K</td>
    <td style="white-space: nowrap; text-align: right">45.31x</td>
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
    <td style="white-space: nowrap; text-align: right">714.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±169.93%</td>
    <td style="white-space: nowrap; text-align: right">0.71 μs</td>
    <td style="white-space: nowrap; text-align: right">9.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">30.20 K</td>
    <td style="white-space: nowrap; text-align: right">33.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.02%</td>
    <td style="white-space: nowrap; text-align: right">30.96 μs</td>
    <td style="white-space: nowrap; text-align: right">66.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">12.46 K</td>
    <td style="white-space: nowrap; text-align: right">80.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.08%</td>
    <td style="white-space: nowrap; text-align: right">79.12 μs</td>
    <td style="white-space: nowrap; text-align: right">115.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.15 K</td>
    <td style="white-space: nowrap; text-align: right">109.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.28%</td>
    <td style="white-space: nowrap; text-align: right">107.14 μs</td>
    <td style="white-space: nowrap; text-align: right">178.57 μs</td>
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
    <td style="white-space: nowrap;text-align: right">714.92 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">30.20 K</td>
    <td style="white-space: nowrap; text-align: right">23.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">12.46 K</td>
    <td style="white-space: nowrap; text-align: right">57.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.15 K</td>
    <td style="white-space: nowrap; text-align: right">78.17x</td>
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
    <td style="white-space: nowrap; text-align: right">283.09 K</td>
    <td style="white-space: nowrap; text-align: right">3.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.35%</td>
    <td style="white-space: nowrap; text-align: right">1.48 μs</td>
    <td style="white-space: nowrap; text-align: right">16.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">14.52 K</td>
    <td style="white-space: nowrap; text-align: right">68.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.83%</td>
    <td style="white-space: nowrap; text-align: right">61.68 μs</td>
    <td style="white-space: nowrap; text-align: right">126.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">6.33 K</td>
    <td style="white-space: nowrap; text-align: right">157.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±7.50%</td>
    <td style="white-space: nowrap; text-align: right">154.93 μs</td>
    <td style="white-space: nowrap; text-align: right">225.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.05 K</td>
    <td style="white-space: nowrap; text-align: right">246.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.37%</td>
    <td style="white-space: nowrap; text-align: right">239.96 μs</td>
    <td style="white-space: nowrap; text-align: right">350.89 μs</td>
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
    <td style="white-space: nowrap;text-align: right">283.09 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">14.52 K</td>
    <td style="white-space: nowrap; text-align: right">19.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">6.33 K</td>
    <td style="white-space: nowrap; text-align: right">44.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.05 K</td>
    <td style="white-space: nowrap; text-align: right">69.89x</td>
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
    <td style="white-space: nowrap; text-align: right">139.34 K</td>
    <td style="white-space: nowrap; text-align: right">7.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.08%</td>
    <td style="white-space: nowrap; text-align: right">3.09 μs</td>
    <td style="white-space: nowrap; text-align: right">22.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">8.08 K</td>
    <td style="white-space: nowrap; text-align: right">123.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.00%</td>
    <td style="white-space: nowrap; text-align: right">118.06 μs</td>
    <td style="white-space: nowrap; text-align: right">193.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.72 K</td>
    <td style="white-space: nowrap; text-align: right">367.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.32%</td>
    <td style="white-space: nowrap; text-align: right">362.62 μs</td>
    <td style="white-space: nowrap; text-align: right">498.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.04 K</td>
    <td style="white-space: nowrap; text-align: right">489.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.63%</td>
    <td style="white-space: nowrap; text-align: right">479.19 μs</td>
    <td style="white-space: nowrap; text-align: right">726.95 μs</td>
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
    <td style="white-space: nowrap;text-align: right">139.34 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">8.08 K</td>
    <td style="white-space: nowrap; text-align: right">17.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.72 K</td>
    <td style="white-space: nowrap; text-align: right">51.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.04 K</td>
    <td style="white-space: nowrap; text-align: right">68.17x</td>
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
    <td style="white-space: nowrap; text-align: right">61.58 K</td>
    <td style="white-space: nowrap; text-align: right">16.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.12%</td>
    <td style="white-space: nowrap; text-align: right">6.67 μs</td>
    <td style="white-space: nowrap; text-align: right">43.73 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3.83 K</td>
    <td style="white-space: nowrap; text-align: right">261.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.88%</td>
    <td style="white-space: nowrap; text-align: right">238.67 μs</td>
    <td style="white-space: nowrap; text-align: right">367.71 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.35 K</td>
    <td style="white-space: nowrap; text-align: right">741.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.01%</td>
    <td style="white-space: nowrap; text-align: right">730.50 μs</td>
    <td style="white-space: nowrap; text-align: right">921.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.99 K</td>
    <td style="white-space: nowrap; text-align: right">1006.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.26%</td>
    <td style="white-space: nowrap; text-align: right">1002.02 μs</td>
    <td style="white-space: nowrap; text-align: right">1375.44 μs</td>
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
    <td style="white-space: nowrap;text-align: right">61.58 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3.83 K</td>
    <td style="white-space: nowrap; text-align: right">16.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.35 K</td>
    <td style="white-space: nowrap; text-align: right">45.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.99 K</td>
    <td style="white-space: nowrap; text-align: right">62.01x</td>
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
    <td style="white-space: nowrap; text-align: right">32.75 K</td>
    <td style="white-space: nowrap; text-align: right">0.0305 ms</td>
    <td style="white-space: nowrap; text-align: right">±77.94%</td>
    <td style="white-space: nowrap; text-align: right">0.0118 ms</td>
    <td style="white-space: nowrap; text-align: right">0.0994 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.20 K</td>
    <td style="white-space: nowrap; text-align: right">0.45 ms</td>
    <td style="white-space: nowrap; text-align: right">±5.67%</td>
    <td style="white-space: nowrap; text-align: right">0.44 ms</td>
    <td style="white-space: nowrap; text-align: right">0.58 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.70 K</td>
    <td style="white-space: nowrap; text-align: right">1.42 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.15%</td>
    <td style="white-space: nowrap; text-align: right">1.40 ms</td>
    <td style="white-space: nowrap; text-align: right">1.85 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.49 K</td>
    <td style="white-space: nowrap; text-align: right">2.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.95%</td>
    <td style="white-space: nowrap; text-align: right">2.03 ms</td>
    <td style="white-space: nowrap; text-align: right">2.47 ms</td>
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
    <td style="white-space: nowrap;text-align: right">32.75 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.20 K</td>
    <td style="white-space: nowrap; text-align: right">14.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.70 K</td>
    <td style="white-space: nowrap; text-align: right">46.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.49 K</td>
    <td style="white-space: nowrap; text-align: right">66.65x</td>
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
    <td style="white-space: nowrap; text-align: right">15.77 K</td>
    <td style="white-space: nowrap; text-align: right">0.0634 ms</td>
    <td style="white-space: nowrap; text-align: right">±85.46%</td>
    <td style="white-space: nowrap; text-align: right">0.0273 ms</td>
    <td style="white-space: nowrap; text-align: right">0.28 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.11 K</td>
    <td style="white-space: nowrap; text-align: right">0.90 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.25%</td>
    <td style="white-space: nowrap; text-align: right">0.90 ms</td>
    <td style="white-space: nowrap; text-align: right">1.05 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.30 K</td>
    <td style="white-space: nowrap; text-align: right">3.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.97%</td>
    <td style="white-space: nowrap; text-align: right">3.32 ms</td>
    <td style="white-space: nowrap; text-align: right">3.78 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">4.41 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.22%</td>
    <td style="white-space: nowrap; text-align: right">4.37 ms</td>
    <td style="white-space: nowrap; text-align: right">5.49 ms</td>
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
    <td style="white-space: nowrap;text-align: right">15.77 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.11 K</td>
    <td style="white-space: nowrap; text-align: right">14.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.30 K</td>
    <td style="white-space: nowrap; text-align: right">52.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.23 K</td>
    <td style="white-space: nowrap; text-align: right">69.51x</td>
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
    <td style="white-space: nowrap; text-align: right">6298.69</td>
    <td style="white-space: nowrap; text-align: right">0.159 ms</td>
    <td style="white-space: nowrap; text-align: right">±90.47%</td>
    <td style="white-space: nowrap; text-align: right">0.0705 ms</td>
    <td style="white-space: nowrap; text-align: right">0.43 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">537.31</td>
    <td style="white-space: nowrap; text-align: right">1.86 ms</td>
    <td style="white-space: nowrap; text-align: right">±7.85%</td>
    <td style="white-space: nowrap; text-align: right">1.80 ms</td>
    <td style="white-space: nowrap; text-align: right">2.33 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">150.48</td>
    <td style="white-space: nowrap; text-align: right">6.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.09%</td>
    <td style="white-space: nowrap; text-align: right">6.61 ms</td>
    <td style="white-space: nowrap; text-align: right">7.13 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">112.53</td>
    <td style="white-space: nowrap; text-align: right">8.89 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.96%</td>
    <td style="white-space: nowrap; text-align: right">8.80 ms</td>
    <td style="white-space: nowrap; text-align: right">10.23 ms</td>
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
    <td style="white-space: nowrap;text-align: right">6298.69</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">537.31</td>
    <td style="white-space: nowrap; text-align: right">11.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">150.48</td>
    <td style="white-space: nowrap; text-align: right">41.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">112.53</td>
    <td style="white-space: nowrap; text-align: right">55.97x</td>
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
    <td style="white-space: nowrap; text-align: right">4107.88</td>
    <td style="white-space: nowrap; text-align: right">0.24 ms</td>
    <td style="white-space: nowrap; text-align: right">±76.57%</td>
    <td style="white-space: nowrap; text-align: right">0.147 ms</td>
    <td style="white-space: nowrap; text-align: right">0.62 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">232.55</td>
    <td style="white-space: nowrap; text-align: right">4.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.99%</td>
    <td style="white-space: nowrap; text-align: right">4.27 ms</td>
    <td style="white-space: nowrap; text-align: right">4.53 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">67.79</td>
    <td style="white-space: nowrap; text-align: right">14.75 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.81%</td>
    <td style="white-space: nowrap; text-align: right">14.77 ms</td>
    <td style="white-space: nowrap; text-align: right">14.92 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">39.59</td>
    <td style="white-space: nowrap; text-align: right">25.26 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.69%</td>
    <td style="white-space: nowrap; text-align: right">24.08 ms</td>
    <td style="white-space: nowrap; text-align: right">30.06 ms</td>
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
    <td style="white-space: nowrap;text-align: right">4107.88</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">232.55</td>
    <td style="white-space: nowrap; text-align: right">17.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">67.79</td>
    <td style="white-space: nowrap; text-align: right">60.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">39.59</td>
    <td style="white-space: nowrap; text-align: right">103.77x</td>
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
    <td style="white-space: nowrap; text-align: right">1481.26</td>
    <td style="white-space: nowrap; text-align: right">0.68 ms</td>
    <td style="white-space: nowrap; text-align: right">±60.32%</td>
    <td style="white-space: nowrap; text-align: right">0.52 ms</td>
    <td style="white-space: nowrap; text-align: right">1.32 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">117.58</td>
    <td style="white-space: nowrap; text-align: right">8.50 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.21%</td>
    <td style="white-space: nowrap; text-align: right">8.56 ms</td>
    <td style="white-space: nowrap; text-align: right">8.72 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">32.70</td>
    <td style="white-space: nowrap; text-align: right">30.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.62%</td>
    <td style="white-space: nowrap; text-align: right">30.73 ms</td>
    <td style="white-space: nowrap; text-align: right">30.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">12.82</td>
    <td style="white-space: nowrap; text-align: right">78.02 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.40%</td>
    <td style="white-space: nowrap; text-align: right">78.05 ms</td>
    <td style="white-space: nowrap; text-align: right">78.31 ms</td>
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
    <td style="white-space: nowrap;text-align: right">1481.26</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">117.58</td>
    <td style="white-space: nowrap; text-align: right">12.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">32.70</td>
    <td style="white-space: nowrap; text-align: right">45.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">12.82</td>
    <td style="white-space: nowrap; text-align: right">115.56x</td>
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
    <td style="white-space: nowrap; text-align: right">497.47</td>
    <td style="white-space: nowrap; text-align: right">2.01 ms</td>
    <td style="white-space: nowrap; text-align: right">±63.83%</td>
    <td style="white-space: nowrap; text-align: right">2.34 ms</td>
    <td style="white-space: nowrap; text-align: right">3.10 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">56.37</td>
    <td style="white-space: nowrap; text-align: right">17.74 ms</td>
    <td style="white-space: nowrap; text-align: right">±1.49%</td>
    <td style="white-space: nowrap; text-align: right">17.66 ms</td>
    <td style="white-space: nowrap; text-align: right">18.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">15.26</td>
    <td style="white-space: nowrap; text-align: right">65.54 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.20%</td>
    <td style="white-space: nowrap; text-align: right">65.54 ms</td>
    <td style="white-space: nowrap; text-align: right">65.63 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.18</td>
    <td style="white-space: nowrap; text-align: right">161.89 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">161.89 ms</td>
    <td style="white-space: nowrap; text-align: right">161.89 ms</td>
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
    <td style="white-space: nowrap;text-align: right">497.47</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">56.37</td>
    <td style="white-space: nowrap; text-align: right">8.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">15.26</td>
    <td style="white-space: nowrap; text-align: right">32.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.18</td>
    <td style="white-space: nowrap; text-align: right">80.54x</td>
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
    <td style="white-space: nowrap; text-align: right">610.04</td>
    <td style="white-space: nowrap; text-align: right">1.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.64 ms</td>
    <td style="white-space: nowrap; text-align: right">1.64 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">28.89</td>
    <td style="white-space: nowrap; text-align: right">34.62 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">34.62 ms</td>
    <td style="white-space: nowrap; text-align: right">34.62 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.84</td>
    <td style="white-space: nowrap; text-align: right">127.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">127.51 ms</td>
    <td style="white-space: nowrap; text-align: right">127.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.53</td>
    <td style="white-space: nowrap; text-align: right">395.55 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">395.55 ms</td>
    <td style="white-space: nowrap; text-align: right">395.55 ms</td>
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
    <td style="white-space: nowrap;text-align: right">610.04</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">28.89</td>
    <td style="white-space: nowrap; text-align: right">21.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.84</td>
    <td style="white-space: nowrap; text-align: right">77.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.53</td>
    <td style="white-space: nowrap; text-align: right">241.3x</td>
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
    <td style="white-space: nowrap; text-align: right">85.05</td>
    <td style="white-space: nowrap; text-align: right">11.76 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">11.76 ms</td>
    <td style="white-space: nowrap; text-align: right">11.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">15.71</td>
    <td style="white-space: nowrap; text-align: right">63.67 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">63.67 ms</td>
    <td style="white-space: nowrap; text-align: right">63.67 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.89</td>
    <td style="white-space: nowrap; text-align: right">257.00 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">257.00 ms</td>
    <td style="white-space: nowrap; text-align: right">257.00 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.15</td>
    <td style="white-space: nowrap; text-align: right">868.06 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">868.06 ms</td>
    <td style="white-space: nowrap; text-align: right">868.06 ms</td>
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
    <td style="white-space: nowrap;text-align: right">85.05</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">15.71</td>
    <td style="white-space: nowrap; text-align: right">5.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.89</td>
    <td style="white-space: nowrap; text-align: right">21.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.15</td>
    <td style="white-space: nowrap; text-align: right">73.83x</td>
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
    <td style="white-space: nowrap; text-align: right">230.68</td>
    <td style="white-space: nowrap; text-align: right">4.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">4.34 ms</td>
    <td style="white-space: nowrap; text-align: right">4.34 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">7.72</td>
    <td style="white-space: nowrap; text-align: right">129.52 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">129.52 ms</td>
    <td style="white-space: nowrap; text-align: right">129.52 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.47</td>
    <td style="white-space: nowrap; text-align: right">678.60 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">678.60 ms</td>
    <td style="white-space: nowrap; text-align: right">678.60 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.47</td>
    <td style="white-space: nowrap; text-align: right">2105.65 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2105.65 ms</td>
    <td style="white-space: nowrap; text-align: right">2105.65 ms</td>
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
    <td style="white-space: nowrap;text-align: right">230.68</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">7.72</td>
    <td style="white-space: nowrap; text-align: right">29.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.47</td>
    <td style="white-space: nowrap; text-align: right">156.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.47</td>
    <td style="white-space: nowrap; text-align: right">485.72x</td>
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

