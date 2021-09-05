
# Benchmark

Compares random element replacement.

For arrays, we check `Arrays.replace/3` as well as Access' `put_in`.
These are similar but slightly different APIs for element replacement.

For lists, `List.replace_at(list, index)` is used.


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
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">4.35 M</td>
    <td style="white-space: nowrap; text-align: right">229.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±754.27%</td>
    <td style="white-space: nowrap; text-align: right">149 ns</td>
    <td style="white-space: nowrap; text-align: right">503.71 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.31 M</td>
    <td style="white-space: nowrap; text-align: right">432.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±666.30%</td>
    <td style="white-space: nowrap; text-align: right">210 ns</td>
    <td style="white-space: nowrap; text-align: right">658.97 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.94 M</td>
    <td style="white-space: nowrap; text-align: right">515.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±684.94%</td>
    <td style="white-space: nowrap; text-align: right">212 ns</td>
    <td style="white-space: nowrap; text-align: right">1639.16 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">777.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±563.57%</td>
    <td style="white-space: nowrap; text-align: right">390 ns</td>
    <td style="white-space: nowrap; text-align: right">2000.03 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.78 M</td>
    <td style="white-space: nowrap; text-align: right">1284.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±347.31%</td>
    <td style="white-space: nowrap; text-align: right">633 ns</td>
    <td style="white-space: nowrap; text-align: right">6784.70 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap;text-align: right">4.35 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.31 M</td>
    <td style="white-space: nowrap; text-align: right">1.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.94 M</td>
    <td style="white-space: nowrap; text-align: right">2.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">3.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.78 M</td>
    <td style="white-space: nowrap; text-align: right">5.59x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.15 M</td>
    <td style="white-space: nowrap; text-align: right">241.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±557.33%</td>
    <td style="white-space: nowrap; text-align: right">189 ns</td>
    <td style="white-space: nowrap; text-align: right">394.47 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.63 M</td>
    <td style="white-space: nowrap; text-align: right">380.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±620.05%</td>
    <td style="white-space: nowrap; text-align: right">243 ns</td>
    <td style="white-space: nowrap; text-align: right">742.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.38 M</td>
    <td style="white-space: nowrap; text-align: right">420.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±577.80%</td>
    <td style="white-space: nowrap; text-align: right">234 ns</td>
    <td style="white-space: nowrap; text-align: right">1526.85 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.69 M</td>
    <td style="white-space: nowrap; text-align: right">590.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±632.76%</td>
    <td style="white-space: nowrap; text-align: right">377 ns</td>
    <td style="white-space: nowrap; text-align: right">814.83 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.32 M</td>
    <td style="white-space: nowrap; text-align: right">758.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±316.56%</td>
    <td style="white-space: nowrap; text-align: right">490 ns</td>
    <td style="white-space: nowrap; text-align: right">4046.55 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">4.15 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.63 M</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.38 M</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.69 M</td>
    <td style="white-space: nowrap; text-align: right">2.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.32 M</td>
    <td style="white-space: nowrap; text-align: right">3.14x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.98 M</td>
    <td style="white-space: nowrap; text-align: right">251.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±546.58%</td>
    <td style="white-space: nowrap; text-align: right">201 ns</td>
    <td style="white-space: nowrap; text-align: right">424.26 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.53 M</td>
    <td style="white-space: nowrap; text-align: right">394.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±966.65%</td>
    <td style="white-space: nowrap; text-align: right">228 ns</td>
    <td style="white-space: nowrap; text-align: right">1188.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.84 M</td>
    <td style="white-space: nowrap; text-align: right">544.51 ns</td>
    <td style="white-space: nowrap; text-align: right">±482.28%</td>
    <td style="white-space: nowrap; text-align: right">389 ns</td>
    <td style="white-space: nowrap; text-align: right">842.86 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.59 M</td>
    <td style="white-space: nowrap; text-align: right">630.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±488.68%</td>
    <td style="white-space: nowrap; text-align: right">425 ns</td>
    <td style="white-space: nowrap; text-align: right">2577.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.54 M</td>
    <td style="white-space: nowrap; text-align: right">1863.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±245.43%</td>
    <td style="white-space: nowrap; text-align: right">1129.50 ns</td>
    <td style="white-space: nowrap; text-align: right">9834.75 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">3.98 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.53 M</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.84 M</td>
    <td style="white-space: nowrap; text-align: right">2.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.59 M</td>
    <td style="white-space: nowrap; text-align: right">2.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.54 M</td>
    <td style="white-space: nowrap; text-align: right">7.42x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.38 M</td>
    <td style="white-space: nowrap; text-align: right">296.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±512.51%</td>
    <td style="white-space: nowrap; text-align: right">228 ns</td>
    <td style="white-space: nowrap; text-align: right">530.58 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.44 M</td>
    <td style="white-space: nowrap; text-align: right">409.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±393.89%</td>
    <td style="white-space: nowrap; text-align: right">264 ns</td>
    <td style="white-space: nowrap; text-align: right">1884.42 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">565.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±463.92%</td>
    <td style="white-space: nowrap; text-align: right">410 ns</td>
    <td style="white-space: nowrap; text-align: right">874.96 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.54 M</td>
    <td style="white-space: nowrap; text-align: right">651.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±442.21%</td>
    <td style="white-space: nowrap; text-align: right">447 ns</td>
    <td style="white-space: nowrap; text-align: right">1404.56 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.92 M</td>
    <td style="white-space: nowrap; text-align: right">1092.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±303.41%</td>
    <td style="white-space: nowrap; text-align: right">792 ns</td>
    <td style="white-space: nowrap; text-align: right">9020.18 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">3.38 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.44 M</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">1.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.54 M</td>
    <td style="white-space: nowrap; text-align: right">2.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.92 M</td>
    <td style="white-space: nowrap; text-align: right">3.69x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.24 M</td>
    <td style="white-space: nowrap; text-align: right">308.50 ns</td>
    <td style="white-space: nowrap; text-align: right">±525.31%</td>
    <td style="white-space: nowrap; text-align: right">234 ns</td>
    <td style="white-space: nowrap; text-align: right">771.59 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.36 M</td>
    <td style="white-space: nowrap; text-align: right">423.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±467.26%</td>
    <td style="white-space: nowrap; text-align: right">266 ns</td>
    <td style="white-space: nowrap; text-align: right">1544.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.74 M</td>
    <td style="white-space: nowrap; text-align: right">574.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±428.50%</td>
    <td style="white-space: nowrap; text-align: right">429 ns</td>
    <td style="white-space: nowrap; text-align: right">907.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.21 M</td>
    <td style="white-space: nowrap; text-align: right">829.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±261.68%</td>
    <td style="white-space: nowrap; text-align: right">441 ns</td>
    <td style="white-space: nowrap; text-align: right">6019.26 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.44 M</td>
    <td style="white-space: nowrap; text-align: right">2270.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±225.47%</td>
    <td style="white-space: nowrap; text-align: right">1549 ns</td>
    <td style="white-space: nowrap; text-align: right">23783.24 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">3.24 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.36 M</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.74 M</td>
    <td style="white-space: nowrap; text-align: right">1.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.21 M</td>
    <td style="white-space: nowrap; text-align: right">2.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.44 M</td>
    <td style="white-space: nowrap; text-align: right">7.36x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.45 M</td>
    <td style="white-space: nowrap; text-align: right">290.11 ns</td>
    <td style="white-space: nowrap; text-align: right">±495.74%</td>
    <td style="white-space: nowrap; text-align: right">236 ns</td>
    <td style="white-space: nowrap; text-align: right">566.98 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.51 M</td>
    <td style="white-space: nowrap; text-align: right">397.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±491.06%</td>
    <td style="white-space: nowrap; text-align: right">264 ns</td>
    <td style="white-space: nowrap; text-align: right">1372.52 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">615.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±474.78%</td>
    <td style="white-space: nowrap; text-align: right">432 ns</td>
    <td style="white-space: nowrap; text-align: right">978.72 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.57 M</td>
    <td style="white-space: nowrap; text-align: right">637.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±458.87%</td>
    <td style="white-space: nowrap; text-align: right">440 ns</td>
    <td style="white-space: nowrap; text-align: right">1138.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.197 M</td>
    <td style="white-space: nowrap; text-align: right">5079.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±135.35%</td>
    <td style="white-space: nowrap; text-align: right">3952 ns</td>
    <td style="white-space: nowrap; text-align: right">46844.57 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">3.45 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.51 M</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">2.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.57 M</td>
    <td style="white-space: nowrap; text-align: right">2.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.197 M</td>
    <td style="white-space: nowrap; text-align: right">17.51x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.59 M</td>
    <td style="white-space: nowrap; text-align: right">385.75 ns</td>
    <td style="white-space: nowrap; text-align: right">±624.43%</td>
    <td style="white-space: nowrap; text-align: right">258 ns</td>
    <td style="white-space: nowrap; text-align: right">704.34 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.54 M</td>
    <td style="white-space: nowrap; text-align: right">393.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±587.63%</td>
    <td style="white-space: nowrap; text-align: right">269 ns</td>
    <td style="white-space: nowrap; text-align: right">1093.65 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.63 M</td>
    <td style="white-space: nowrap; text-align: right">614.32 ns</td>
    <td style="white-space: nowrap; text-align: right">±367.30%</td>
    <td style="white-space: nowrap; text-align: right">471 ns</td>
    <td style="white-space: nowrap; text-align: right">1259.02 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.75 M</td>
    <td style="white-space: nowrap; text-align: right">1325.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±300.78%</td>
    <td style="white-space: nowrap; text-align: right">668 ns</td>
    <td style="white-space: nowrap; text-align: right">8807.88 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.116 M</td>
    <td style="white-space: nowrap; text-align: right">8642.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±139.96%</td>
    <td style="white-space: nowrap; text-align: right">6105 ns</td>
    <td style="white-space: nowrap; text-align: right">62755.82 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">2.59 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.54 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.63 M</td>
    <td style="white-space: nowrap; text-align: right">1.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.75 M</td>
    <td style="white-space: nowrap; text-align: right">3.44x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.116 M</td>
    <td style="white-space: nowrap; text-align: right">22.4x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.73 M</td>
    <td style="white-space: nowrap; text-align: right">365.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±601.66%</td>
    <td style="white-space: nowrap; text-align: right">282 ns</td>
    <td style="white-space: nowrap; text-align: right">613.52 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.09 M</td>
    <td style="white-space: nowrap; text-align: right">477.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±549.29%</td>
    <td style="white-space: nowrap; text-align: right">302 ns</td>
    <td style="white-space: nowrap; text-align: right">1463.08 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.46 M</td>
    <td style="white-space: nowrap; text-align: right">683.93 ns</td>
    <td style="white-space: nowrap; text-align: right">±445.77%</td>
    <td style="white-space: nowrap; text-align: right">508 ns</td>
    <td style="white-space: nowrap; text-align: right">1446.51 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">723.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±472.51%</td>
    <td style="white-space: nowrap; text-align: right">496 ns</td>
    <td style="white-space: nowrap; text-align: right">1874.92 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0586 M</td>
    <td style="white-space: nowrap; text-align: right">17051.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±108.06%</td>
    <td style="white-space: nowrap; text-align: right">12000 ns</td>
    <td style="white-space: nowrap; text-align: right">80204.41 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">2.73 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.09 M</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.46 M</td>
    <td style="white-space: nowrap; text-align: right">1.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">1.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0586 M</td>
    <td style="white-space: nowrap; text-align: right">46.59x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.49 M</td>
    <td style="white-space: nowrap; text-align: right">401.46 ns</td>
    <td style="white-space: nowrap; text-align: right">±28.34%</td>
    <td style="white-space: nowrap; text-align: right">381 ns</td>
    <td style="white-space: nowrap; text-align: right">687.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.19 M</td>
    <td style="white-space: nowrap; text-align: right">456.82 ns</td>
    <td style="white-space: nowrap; text-align: right">±144.49%</td>
    <td style="white-space: nowrap; text-align: right">401 ns</td>
    <td style="white-space: nowrap; text-align: right">1381.98 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.56 M</td>
    <td style="white-space: nowrap; text-align: right">639.82 ns</td>
    <td style="white-space: nowrap; text-align: right">±115.97%</td>
    <td style="white-space: nowrap; text-align: right">531 ns</td>
    <td style="white-space: nowrap; text-align: right">1998.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.43 M</td>
    <td style="white-space: nowrap; text-align: right">699.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±174.91%</td>
    <td style="white-space: nowrap; text-align: right">553 ns</td>
    <td style="white-space: nowrap; text-align: right">2165.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0295 M</td>
    <td style="white-space: nowrap; text-align: right">33941.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±90.27%</td>
    <td style="white-space: nowrap; text-align: right">25832.50 ns</td>
    <td style="white-space: nowrap; text-align: right">130576.50 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">2.49 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.19 M</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.56 M</td>
    <td style="white-space: nowrap; text-align: right">1.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.43 M</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0295 M</td>
    <td style="white-space: nowrap; text-align: right">84.55x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.07 M</td>
    <td style="white-space: nowrap; text-align: right">483.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±98.33%</td>
    <td style="white-space: nowrap; text-align: right">415 ns</td>
    <td style="white-space: nowrap; text-align: right">1040.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">647.06 ns</td>
    <td style="white-space: nowrap; text-align: right">±332.61%</td>
    <td style="white-space: nowrap; text-align: right">421 ns</td>
    <td style="white-space: nowrap; text-align: right">3146.06 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">723.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±160.59%</td>
    <td style="white-space: nowrap; text-align: right">554 ns</td>
    <td style="white-space: nowrap; text-align: right">3168.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.51 M</td>
    <td style="white-space: nowrap; text-align: right">1972.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±185.22%</td>
    <td style="white-space: nowrap; text-align: right">853 ns</td>
    <td style="white-space: nowrap; text-align: right">23378.92 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0119 M</td>
    <td style="white-space: nowrap; text-align: right">84336.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±87.12%</td>
    <td style="white-space: nowrap; text-align: right">70396 ns</td>
    <td style="white-space: nowrap; text-align: right">298863.70 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">2.07 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">1.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.51 M</td>
    <td style="white-space: nowrap; text-align: right">4.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0119 M</td>
    <td style="white-space: nowrap; text-align: right">174.55x</td>
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
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">705.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±235.41%</td>
    <td style="white-space: nowrap; text-align: right">0.75 μs</td>
    <td style="white-space: nowrap; text-align: right">19.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">617.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±1438.20%</td>
    <td style="white-space: nowrap; text-align: right">0.45 μs</td>
    <td style="white-space: nowrap; text-align: right">1.67 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">460.53 K</td>
    <td style="white-space: nowrap; text-align: right">2.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±1116.75%</td>
    <td style="white-space: nowrap; text-align: right">0.61 μs</td>
    <td style="white-space: nowrap; text-align: right">13.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">108.58 K</td>
    <td style="white-space: nowrap; text-align: right">9.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±1041.76%</td>
    <td style="white-space: nowrap; text-align: right">0.71 μs</td>
    <td style="white-space: nowrap; text-align: right">494.03 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">5.51 K</td>
    <td style="white-space: nowrap; text-align: right">181.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±110.28%</td>
    <td style="white-space: nowrap; text-align: right">119.48 μs</td>
    <td style="white-space: nowrap; text-align: right">824.09 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">705.66 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">617.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">460.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">108.58 K</td>
    <td style="white-space: nowrap; text-align: right">6.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">5.51 K</td>
    <td style="white-space: nowrap; text-align: right">128.03x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">553.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±122.99%</td>
    <td style="white-space: nowrap; text-align: right">1.41 μs</td>
    <td style="white-space: nowrap; text-align: right">15.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">316.10 K</td>
    <td style="white-space: nowrap; text-align: right">3.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±98.27%</td>
    <td style="white-space: nowrap; text-align: right">2.42 μs</td>
    <td style="white-space: nowrap; text-align: right">18.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">220.29 K</td>
    <td style="white-space: nowrap; text-align: right">4.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±85.45%</td>
    <td style="white-space: nowrap; text-align: right">3.45 μs</td>
    <td style="white-space: nowrap; text-align: right">21.14 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">207.48 K</td>
    <td style="white-space: nowrap; text-align: right">4.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±97.28%</td>
    <td style="white-space: nowrap; text-align: right">3.26 μs</td>
    <td style="white-space: nowrap; text-align: right">23.80 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.76 K</td>
    <td style="white-space: nowrap; text-align: right">362.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±96.88%</td>
    <td style="white-space: nowrap; text-align: right">256.16 μs</td>
    <td style="white-space: nowrap; text-align: right">1349.25 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">553.54 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">316.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">220.29 K</td>
    <td style="white-space: nowrap; text-align: right">2.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">207.48 K</td>
    <td style="white-space: nowrap; text-align: right">2.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.76 K</td>
    <td style="white-space: nowrap; text-align: right">200.91x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">219.42 K</td>
    <td style="white-space: nowrap; text-align: right">4.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±85.69%</td>
    <td style="white-space: nowrap; text-align: right">3.39 μs</td>
    <td style="white-space: nowrap; text-align: right">23.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">173.66 K</td>
    <td style="white-space: nowrap; text-align: right">5.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.57%</td>
    <td style="white-space: nowrap; text-align: right">4.45 μs</td>
    <td style="white-space: nowrap; text-align: right">25.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">167.17 K</td>
    <td style="white-space: nowrap; text-align: right">5.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±79.59%</td>
    <td style="white-space: nowrap; text-align: right">4.47 μs</td>
    <td style="white-space: nowrap; text-align: right">29.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">145.22 K</td>
    <td style="white-space: nowrap; text-align: right">6.89 μs</td>
    <td style="white-space: nowrap; text-align: right">±123.61%</td>
    <td style="white-space: nowrap; text-align: right">3.61 μs</td>
    <td style="white-space: nowrap; text-align: right">48.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.19 K</td>
    <td style="white-space: nowrap; text-align: right">838.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±118.74%</td>
    <td style="white-space: nowrap; text-align: right">601.15 μs</td>
    <td style="white-space: nowrap; text-align: right">5478.69 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">219.42 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">173.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">167.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">145.22 K</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.19 K</td>
    <td style="white-space: nowrap; text-align: right">183.98x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">239.76 K</td>
    <td style="white-space: nowrap; text-align: right">4.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±50.73%</td>
    <td style="white-space: nowrap; text-align: right">3.68 μs</td>
    <td style="white-space: nowrap; text-align: right">20.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">183.58 K</td>
    <td style="white-space: nowrap; text-align: right">5.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.53%</td>
    <td style="white-space: nowrap; text-align: right">4.75 μs</td>
    <td style="white-space: nowrap; text-align: right">20.02 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">149.95 K</td>
    <td style="white-space: nowrap; text-align: right">6.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.29%</td>
    <td style="white-space: nowrap; text-align: right">4.72 μs</td>
    <td style="white-space: nowrap; text-align: right">34.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">113.78 K</td>
    <td style="white-space: nowrap; text-align: right">8.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±114.96%</td>
    <td style="white-space: nowrap; text-align: right">5.19 μs</td>
    <td style="white-space: nowrap; text-align: right">55.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.49 K</td>
    <td style="white-space: nowrap; text-align: right">2051.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.74%</td>
    <td style="white-space: nowrap; text-align: right">1212.80 μs</td>
    <td style="white-space: nowrap; text-align: right">9543.24 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">239.76 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">183.58 K</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">149.95 K</td>
    <td style="white-space: nowrap; text-align: right">1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">113.78 K</td>
    <td style="white-space: nowrap; text-align: right">2.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.49 K</td>
    <td style="white-space: nowrap; text-align: right">491.85x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">264.40 K</td>
    <td style="white-space: nowrap; text-align: right">3.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.55%</td>
    <td style="white-space: nowrap; text-align: right">3.45 μs</td>
    <td style="white-space: nowrap; text-align: right">9.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">192.34 K</td>
    <td style="white-space: nowrap; text-align: right">5.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.01%</td>
    <td style="white-space: nowrap; text-align: right">4.17 μs</td>
    <td style="white-space: nowrap; text-align: right">20.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">139.72 K</td>
    <td style="white-space: nowrap; text-align: right">7.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.56%</td>
    <td style="white-space: nowrap; text-align: right">5.52 μs</td>
    <td style="white-space: nowrap; text-align: right">27.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">106.08 K</td>
    <td style="white-space: nowrap; text-align: right">9.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±85.92%</td>
    <td style="white-space: nowrap; text-align: right">7.40 μs</td>
    <td style="white-space: nowrap; text-align: right">45.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">4621.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±100.86%</td>
    <td style="white-space: nowrap; text-align: right">2308.52 μs</td>
    <td style="white-space: nowrap; text-align: right">19093.82 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">264.40 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">192.34 K</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">139.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">106.08 K</td>
    <td style="white-space: nowrap; text-align: right">2.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.22 K</td>
    <td style="white-space: nowrap; text-align: right">1221.79x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">211.12 K</td>
    <td style="white-space: nowrap; text-align: right">4.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±49.01%</td>
    <td style="white-space: nowrap; text-align: right">4.04 μs</td>
    <td style="white-space: nowrap; text-align: right">13.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">168.27 K</td>
    <td style="white-space: nowrap; text-align: right">5.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.20%</td>
    <td style="white-space: nowrap; text-align: right">4.86 μs</td>
    <td style="white-space: nowrap; text-align: right">19.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">153.40 K</td>
    <td style="white-space: nowrap; text-align: right">6.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.14%</td>
    <td style="white-space: nowrap; text-align: right">5.75 μs</td>
    <td style="white-space: nowrap; text-align: right">11.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">32.18 K</td>
    <td style="white-space: nowrap; text-align: right">31.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±63.64%</td>
    <td style="white-space: nowrap; text-align: right">22.42 μs</td>
    <td style="white-space: nowrap; text-align: right">61.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0753 K</td>
    <td style="white-space: nowrap; text-align: right">13273.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±109.36%</td>
    <td style="white-space: nowrap; text-align: right">9660.50 μs</td>
    <td style="white-space: nowrap; text-align: right">60510.12 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">211.12 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">168.27 K</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">153.40 K</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">32.18 K</td>
    <td style="white-space: nowrap; text-align: right">6.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0753 K</td>
    <td style="white-space: nowrap; text-align: right">2802.27x</td>
  </tr>

</table>



<hr/>

