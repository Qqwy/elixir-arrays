
# Benchmark

Compares random element access (for reading).

For arrays, `Arrays.get(myarray, index)` function can be used (myarray[index] will behave similarly as it uses `get` internally.)

For lists, `Enum.fetch(list, index)` is used.


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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">6.50 M</td>
    <td style="white-space: nowrap; text-align: right">153.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±568.08%</td>
    <td style="white-space: nowrap; text-align: right">125 ns</td>
    <td style="white-space: nowrap; text-align: right">345 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.95 M</td>
    <td style="white-space: nowrap; text-align: right">253.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±964.29%</td>
    <td style="white-space: nowrap; text-align: right">162 ns</td>
    <td style="white-space: nowrap; text-align: right">1057.94 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">633.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±285.19%</td>
    <td style="white-space: nowrap; text-align: right">384 ns</td>
    <td style="white-space: nowrap; text-align: right">3976.06 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">6.50 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.95 M</td>
    <td style="white-space: nowrap; text-align: right">1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">4.11x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.57 M</td>
    <td style="white-space: nowrap; text-align: right">179.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±544.11%</td>
    <td style="white-space: nowrap; text-align: right">149 ns</td>
    <td style="white-space: nowrap; text-align: right">346.09 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.09 M</td>
    <td style="white-space: nowrap; text-align: right">196.46 ns</td>
    <td style="white-space: nowrap; text-align: right">±421.55%</td>
    <td style="white-space: nowrap; text-align: right">172 ns</td>
    <td style="white-space: nowrap; text-align: right">489 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.90 M</td>
    <td style="white-space: nowrap; text-align: right">345.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±385.71%</td>
    <td style="white-space: nowrap; text-align: right">188 ns</td>
    <td style="white-space: nowrap; text-align: right">2012.78 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">5.57 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.09 M</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.90 M</td>
    <td style="white-space: nowrap; text-align: right">1.92x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.62 M</td>
    <td style="white-space: nowrap; text-align: right">216.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±530.07%</td>
    <td style="white-space: nowrap; text-align: right">154 ns</td>
    <td style="white-space: nowrap; text-align: right">790.66 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.85 M</td>
    <td style="white-space: nowrap; text-align: right">259.66 ns</td>
    <td style="white-space: nowrap; text-align: right">±721.80%</td>
    <td style="white-space: nowrap; text-align: right">156 ns</td>
    <td style="white-space: nowrap; text-align: right">1311.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.42 M</td>
    <td style="white-space: nowrap; text-align: right">292.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±302.05%</td>
    <td style="white-space: nowrap; text-align: right">265 ns</td>
    <td style="white-space: nowrap; text-align: right">621 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">4.62 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.85 M</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.42 M</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.08 M</td>
    <td style="white-space: nowrap; text-align: right">245.06 ns</td>
    <td style="white-space: nowrap; text-align: right">±500.29%</td>
    <td style="white-space: nowrap; text-align: right">163 ns</td>
    <td style="white-space: nowrap; text-align: right">1063.78 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.68 M</td>
    <td style="white-space: nowrap; text-align: right">271.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±507.23%</td>
    <td style="white-space: nowrap; text-align: right">179 ns</td>
    <td style="white-space: nowrap; text-align: right">1237.48 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.71 M</td>
    <td style="white-space: nowrap; text-align: right">585.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±270.39%</td>
    <td style="white-space: nowrap; text-align: right">490 ns</td>
    <td style="white-space: nowrap; text-align: right">1880.01 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">4.08 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.68 M</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.71 M</td>
    <td style="white-space: nowrap; text-align: right">2.39x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.99 M</td>
    <td style="white-space: nowrap; text-align: right">200.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±575.10%</td>
    <td style="white-space: nowrap; text-align: right">168 ns</td>
    <td style="white-space: nowrap; text-align: right">339.35 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.01 M</td>
    <td style="white-space: nowrap; text-align: right">332.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±366.27%</td>
    <td style="white-space: nowrap; text-align: right">193 ns</td>
    <td style="white-space: nowrap; text-align: right">1830.96 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.95 M</td>
    <td style="white-space: nowrap; text-align: right">1053.62 ns</td>
    <td style="white-space: nowrap; text-align: right">±155.87%</td>
    <td style="white-space: nowrap; text-align: right">934 ns</td>
    <td style="white-space: nowrap; text-align: right">3499.16 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">4.99 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.01 M</td>
    <td style="white-space: nowrap; text-align: right">1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.95 M</td>
    <td style="white-space: nowrap; text-align: right">5.26x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.35 M</td>
    <td style="white-space: nowrap; text-align: right">298.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±372.23%</td>
    <td style="white-space: nowrap; text-align: right">199 ns</td>
    <td style="white-space: nowrap; text-align: right">1557.14 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.35 M</td>
    <td style="white-space: nowrap; text-align: right">298.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±330.24%</td>
    <td style="white-space: nowrap; text-align: right">200 ns</td>
    <td style="white-space: nowrap; text-align: right">1699.38 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.54 M</td>
    <td style="white-space: nowrap; text-align: right">1842.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±141.51%</td>
    <td style="white-space: nowrap; text-align: right">1617 ns</td>
    <td style="white-space: nowrap; text-align: right">7971.48 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">3.35 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.35 M</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.54 M</td>
    <td style="white-space: nowrap; text-align: right">6.18x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.38 M</td>
    <td style="white-space: nowrap; text-align: right">228.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±435.45%</td>
    <td style="white-space: nowrap; text-align: right">178 ns</td>
    <td style="white-space: nowrap; text-align: right">875 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.70 M</td>
    <td style="white-space: nowrap; text-align: right">270.11 ns</td>
    <td style="white-space: nowrap; text-align: right">±500.50%</td>
    <td style="white-space: nowrap; text-align: right">189 ns</td>
    <td style="white-space: nowrap; text-align: right">1074.13 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.27 M</td>
    <td style="white-space: nowrap; text-align: right">3639.88 ns</td>
    <td style="white-space: nowrap; text-align: right">±98.08%</td>
    <td style="white-space: nowrap; text-align: right">3330 ns</td>
    <td style="white-space: nowrap; text-align: right">17288.92 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">4.38 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.70 M</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.27 M</td>
    <td style="white-space: nowrap; text-align: right">15.94x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.84 M</td>
    <td style="white-space: nowrap; text-align: right">352.30 ns</td>
    <td style="white-space: nowrap; text-align: right">±381.00%</td>
    <td style="white-space: nowrap; text-align: right">220 ns</td>
    <td style="white-space: nowrap; text-align: right">1629.64 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.03 M</td>
    <td style="white-space: nowrap; text-align: right">493.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±364.18%</td>
    <td style="white-space: nowrap; text-align: right">243 ns</td>
    <td style="white-space: nowrap; text-align: right">3520.08 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.130 M</td>
    <td style="white-space: nowrap; text-align: right">7663.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±103.36%</td>
    <td style="white-space: nowrap; text-align: right">7227 ns</td>
    <td style="white-space: nowrap; text-align: right">22722 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">2.84 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.03 M</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.130 M</td>
    <td style="white-space: nowrap; text-align: right">21.75x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.01 M</td>
    <td style="white-space: nowrap; text-align: right">332.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±177.20%</td>
    <td style="white-space: nowrap; text-align: right">237 ns</td>
    <td style="white-space: nowrap; text-align: right">2599.22 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.81 M</td>
    <td style="white-space: nowrap; text-align: right">553.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±167.34%</td>
    <td style="white-space: nowrap; text-align: right">282 ns</td>
    <td style="white-space: nowrap; text-align: right">3565.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0837 M</td>
    <td style="white-space: nowrap; text-align: right">11948.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±67.49%</td>
    <td style="white-space: nowrap; text-align: right">11637 ns</td>
    <td style="white-space: nowrap; text-align: right">35744.64 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">3.01 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.81 M</td>
    <td style="white-space: nowrap; text-align: right">1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0837 M</td>
    <td style="white-space: nowrap; text-align: right">35.92x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.00 M</td>
    <td style="white-space: nowrap; text-align: right">249.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±204.38%</td>
    <td style="white-space: nowrap; text-align: right">217 ns</td>
    <td style="white-space: nowrap; text-align: right">569.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.05 M</td>
    <td style="white-space: nowrap; text-align: right">950.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±179.17%</td>
    <td style="white-space: nowrap; text-align: right">419 ns</td>
    <td style="white-space: nowrap; text-align: right">10530.34 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0455 M</td>
    <td style="white-space: nowrap; text-align: right">21966.32 ns</td>
    <td style="white-space: nowrap; text-align: right">±61.42%</td>
    <td style="white-space: nowrap; text-align: right">21616 ns</td>
    <td style="white-space: nowrap; text-align: right">48710.88 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">4.00 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.05 M</td>
    <td style="white-space: nowrap; text-align: right">3.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0455 M</td>
    <td style="white-space: nowrap; text-align: right">87.9x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">461.12 K</td>
    <td style="white-space: nowrap; text-align: right">2.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±1506.77%</td>
    <td style="white-space: nowrap; text-align: right">0.23 μs</td>
    <td style="white-space: nowrap; text-align: right">2.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">227.08 K</td>
    <td style="white-space: nowrap; text-align: right">4.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±925.90%</td>
    <td style="white-space: nowrap; text-align: right">0.59 μs</td>
    <td style="white-space: nowrap; text-align: right">22.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">18.45 K</td>
    <td style="white-space: nowrap; text-align: right">54.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.98%</td>
    <td style="white-space: nowrap; text-align: right">48.85 μs</td>
    <td style="white-space: nowrap; text-align: right">259.70 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">461.12 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">227.08 K</td>
    <td style="white-space: nowrap; text-align: right">2.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">18.45 K</td>
    <td style="white-space: nowrap; text-align: right">24.99x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">443.18 K</td>
    <td style="white-space: nowrap; text-align: right">2.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±120.26%</td>
    <td style="white-space: nowrap; text-align: right">1.48 μs</td>
    <td style="white-space: nowrap; text-align: right">14.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">138.04 K</td>
    <td style="white-space: nowrap; text-align: right">7.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.38%</td>
    <td style="white-space: nowrap; text-align: right">4.80 μs</td>
    <td style="white-space: nowrap; text-align: right">36.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">9.49 K</td>
    <td style="white-space: nowrap; text-align: right">105.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.46%</td>
    <td style="white-space: nowrap; text-align: right">103.06 μs</td>
    <td style="white-space: nowrap; text-align: right">255.68 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">443.18 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">138.04 K</td>
    <td style="white-space: nowrap; text-align: right">3.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">9.49 K</td>
    <td style="white-space: nowrap; text-align: right">46.71x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">306.55 K</td>
    <td style="white-space: nowrap; text-align: right">3.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±107.11%</td>
    <td style="white-space: nowrap; text-align: right">2.12 μs</td>
    <td style="white-space: nowrap; text-align: right">21.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">147.56 K</td>
    <td style="white-space: nowrap; text-align: right">6.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±96.13%</td>
    <td style="white-space: nowrap; text-align: right">4.30 μs</td>
    <td style="white-space: nowrap; text-align: right">40.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.02 K</td>
    <td style="white-space: nowrap; text-align: right">248.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.19%</td>
    <td style="white-space: nowrap; text-align: right">243.87 μs</td>
    <td style="white-space: nowrap; text-align: right">508.02 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">306.55 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">147.56 K</td>
    <td style="white-space: nowrap; text-align: right">2.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.02 K</td>
    <td style="white-space: nowrap; text-align: right">76.28x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">294.86 K</td>
    <td style="white-space: nowrap; text-align: right">3.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±49.82%</td>
    <td style="white-space: nowrap; text-align: right">2.89 μs</td>
    <td style="white-space: nowrap; text-align: right">11.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">122.44 K</td>
    <td style="white-space: nowrap; text-align: right">8.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.27%</td>
    <td style="white-space: nowrap; text-align: right">5.35 μs</td>
    <td style="white-space: nowrap; text-align: right">27.80 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.64 K</td>
    <td style="white-space: nowrap; text-align: right">609.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±76.62%</td>
    <td style="white-space: nowrap; text-align: right">605.02 μs</td>
    <td style="white-space: nowrap; text-align: right">2536.17 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">294.86 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">122.44 K</td>
    <td style="white-space: nowrap; text-align: right">2.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.64 K</td>
    <td style="white-space: nowrap; text-align: right">179.82x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">312.26 K</td>
    <td style="white-space: nowrap; text-align: right">3.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±67.78%</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
    <td style="white-space: nowrap; text-align: right">11.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">233.22 K</td>
    <td style="white-space: nowrap; text-align: right">4.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±90.96%</td>
    <td style="white-space: nowrap; text-align: right">2.43 μs</td>
    <td style="white-space: nowrap; text-align: right">20.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.92 K</td>
    <td style="white-space: nowrap; text-align: right">1087.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.86%</td>
    <td style="white-space: nowrap; text-align: right">1084.26 μs</td>
    <td style="white-space: nowrap; text-align: right">4091.82 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">312.26 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">233.22 K</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.92 K</td>
    <td style="white-space: nowrap; text-align: right">339.64x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">355.51 K</td>
    <td style="white-space: nowrap; text-align: right">2.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.27%</td>
    <td style="white-space: nowrap; text-align: right">2.50 μs</td>
    <td style="white-space: nowrap; text-align: right">5.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">244.24 K</td>
    <td style="white-space: nowrap; text-align: right">4.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±74.61%</td>
    <td style="white-space: nowrap; text-align: right">3.10 μs</td>
    <td style="white-space: nowrap; text-align: right">12.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.51 K</td>
    <td style="white-space: nowrap; text-align: right">1970.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.02%</td>
    <td style="white-space: nowrap; text-align: right">1855.26 μs</td>
    <td style="white-space: nowrap; text-align: right">3859.20 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">355.51 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">244.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.51 K</td>
    <td style="white-space: nowrap; text-align: right">700.56x</td>
  </tr>

</table>



<hr/>

