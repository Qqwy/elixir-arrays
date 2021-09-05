
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
    <td style="white-space: nowrap; text-align: right">7.49 M</td>
    <td style="white-space: nowrap; text-align: right">133.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±585.62%</td>
    <td style="white-space: nowrap; text-align: right">113 ns</td>
    <td style="white-space: nowrap; text-align: right">218 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.59 M</td>
    <td style="white-space: nowrap; text-align: right">179.05 ns</td>
    <td style="white-space: nowrap; text-align: right">±457.02%</td>
    <td style="white-space: nowrap; text-align: right">163 ns</td>
    <td style="white-space: nowrap; text-align: right">216 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.41 M</td>
    <td style="white-space: nowrap; text-align: right">184.98 ns</td>
    <td style="white-space: nowrap; text-align: right">±481.58%</td>
    <td style="white-space: nowrap; text-align: right">166 ns</td>
    <td style="white-space: nowrap; text-align: right">225 ns</td>
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
    <td style="white-space: nowrap;text-align: right">7.49 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.59 M</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.41 M</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.72 M</td>
    <td style="white-space: nowrap; text-align: right">174.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±498.90%</td>
    <td style="white-space: nowrap; text-align: right">155 ns</td>
    <td style="white-space: nowrap; text-align: right">233 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.59 M</td>
    <td style="white-space: nowrap; text-align: right">179.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±424.48%</td>
    <td style="white-space: nowrap; text-align: right">163 ns</td>
    <td style="white-space: nowrap; text-align: right">369 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.58 M</td>
    <td style="white-space: nowrap; text-align: right">179.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±475.47%</td>
    <td style="white-space: nowrap; text-align: right">154 ns</td>
    <td style="white-space: nowrap; text-align: right">254 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.72 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.59 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.58 M</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
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
    <td style="white-space: nowrap; text-align: right">5.57 M</td>
    <td style="white-space: nowrap; text-align: right">179.57 ns</td>
    <td style="white-space: nowrap; text-align: right">±477.61%</td>
    <td style="white-space: nowrap; text-align: right">162 ns</td>
    <td style="white-space: nowrap; text-align: right">241 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.47 M</td>
    <td style="white-space: nowrap; text-align: right">182.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±466.32%</td>
    <td style="white-space: nowrap; text-align: right">162 ns</td>
    <td style="white-space: nowrap; text-align: right">240 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.69 M</td>
    <td style="white-space: nowrap; text-align: right">271.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±349.21%</td>
    <td style="white-space: nowrap; text-align: right">246 ns</td>
    <td style="white-space: nowrap; text-align: right">600 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.57 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.47 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.69 M</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
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
    <td style="white-space: nowrap; text-align: right">5.29 M</td>
    <td style="white-space: nowrap; text-align: right">189.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±460.12%</td>
    <td style="white-space: nowrap; text-align: right">168 ns</td>
    <td style="white-space: nowrap; text-align: right">246 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.21 M</td>
    <td style="white-space: nowrap; text-align: right">191.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±471.35%</td>
    <td style="white-space: nowrap; text-align: right">171 ns</td>
    <td style="white-space: nowrap; text-align: right">252 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.26 M</td>
    <td style="white-space: nowrap; text-align: right">443.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±194.37%</td>
    <td style="white-space: nowrap; text-align: right">423 ns</td>
    <td style="white-space: nowrap; text-align: right">901.64 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.29 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.21 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.26 M</td>
    <td style="white-space: nowrap; text-align: right">2.34x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.01 M</td>
    <td style="white-space: nowrap; text-align: right">199.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±478.91%</td>
    <td style="white-space: nowrap; text-align: right">178 ns</td>
    <td style="white-space: nowrap; text-align: right">265 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.00 M</td>
    <td style="white-space: nowrap; text-align: right">199.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±490.88%</td>
    <td style="white-space: nowrap; text-align: right">173 ns</td>
    <td style="white-space: nowrap; text-align: right">260 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.28 M</td>
    <td style="white-space: nowrap; text-align: right">779.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±119.79%</td>
    <td style="white-space: nowrap; text-align: right">754 ns</td>
    <td style="white-space: nowrap; text-align: right">1621.03 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.01 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.28 M</td>
    <td style="white-space: nowrap; text-align: right">3.91x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.97 M</td>
    <td style="white-space: nowrap; text-align: right">201.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±552.27%</td>
    <td style="white-space: nowrap; text-align: right">175 ns</td>
    <td style="white-space: nowrap; text-align: right">264.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.96 M</td>
    <td style="white-space: nowrap; text-align: right">201.57 ns</td>
    <td style="white-space: nowrap; text-align: right">±538.10%</td>
    <td style="white-space: nowrap; text-align: right">175 ns</td>
    <td style="white-space: nowrap; text-align: right">270 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.66 M</td>
    <td style="white-space: nowrap; text-align: right">1516.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±92.42%</td>
    <td style="white-space: nowrap; text-align: right">1468 ns</td>
    <td style="white-space: nowrap; text-align: right">3073 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.97 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.96 M</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.66 M</td>
    <td style="white-space: nowrap; text-align: right">7.53x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.53 M</td>
    <td style="white-space: nowrap; text-align: right">220.66 ns</td>
    <td style="white-space: nowrap; text-align: right">±634.56%</td>
    <td style="white-space: nowrap; text-align: right">184 ns</td>
    <td style="white-space: nowrap; text-align: right">272 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.38 M</td>
    <td style="white-space: nowrap; text-align: right">228.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±787.36%</td>
    <td style="white-space: nowrap; text-align: right">183 ns</td>
    <td style="white-space: nowrap; text-align: right">276.64 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.34 M</td>
    <td style="white-space: nowrap; text-align: right">2931.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±71.49%</td>
    <td style="white-space: nowrap; text-align: right">2904.50 ns</td>
    <td style="white-space: nowrap; text-align: right">5748.95 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.53 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.38 M</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.34 M</td>
    <td style="white-space: nowrap; text-align: right">13.29x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.58 M</td>
    <td style="white-space: nowrap; text-align: right">218.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±498.66%</td>
    <td style="white-space: nowrap; text-align: right">199 ns</td>
    <td style="white-space: nowrap; text-align: right">294.30 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.50 M</td>
    <td style="white-space: nowrap; text-align: right">222.18 ns</td>
    <td style="white-space: nowrap; text-align: right">±495.82%</td>
    <td style="white-space: nowrap; text-align: right">199 ns</td>
    <td style="white-space: nowrap; text-align: right">300.19 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.176 M</td>
    <td style="white-space: nowrap; text-align: right">5676.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±62.31%</td>
    <td style="white-space: nowrap; text-align: right">5641 ns</td>
    <td style="white-space: nowrap; text-align: right">11221.59 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.58 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.176 M</td>
    <td style="white-space: nowrap; text-align: right">26.01x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.67 M</td>
    <td style="white-space: nowrap; text-align: right">214.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±8.61%</td>
    <td style="white-space: nowrap; text-align: right">211 ns</td>
    <td style="white-space: nowrap; text-align: right">275 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.61 M</td>
    <td style="white-space: nowrap; text-align: right">217.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±10.90%</td>
    <td style="white-space: nowrap; text-align: right">214 ns</td>
    <td style="white-space: nowrap; text-align: right">284.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0891 M</td>
    <td style="white-space: nowrap; text-align: right">11228.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±58.70%</td>
    <td style="white-space: nowrap; text-align: right">11247 ns</td>
    <td style="white-space: nowrap; text-align: right">22087.21 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.67 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.61 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0891 M</td>
    <td style="white-space: nowrap; text-align: right">52.47x</td>
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
    <td style="white-space: nowrap; text-align: right">4.22 M</td>
    <td style="white-space: nowrap; text-align: right">237.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±13.11%</td>
    <td style="white-space: nowrap; text-align: right">233 ns</td>
    <td style="white-space: nowrap; text-align: right">334.58 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.18 M</td>
    <td style="white-space: nowrap; text-align: right">239.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±22.75%</td>
    <td style="white-space: nowrap; text-align: right">234.50 ns</td>
    <td style="white-space: nowrap; text-align: right">327.98 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0452 M</td>
    <td style="white-space: nowrap; text-align: right">22137.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±57.72%</td>
    <td style="white-space: nowrap; text-align: right">22122 ns</td>
    <td style="white-space: nowrap; text-align: right">43453.52 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.22 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.18 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0452 M</td>
    <td style="white-space: nowrap; text-align: right">93.37x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">555.88 K</td>
    <td style="white-space: nowrap; text-align: right">1.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±1549.68%</td>
    <td style="white-space: nowrap; text-align: right">0.24 μs</td>
    <td style="white-space: nowrap; text-align: right">0.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">554.19 K</td>
    <td style="white-space: nowrap; text-align: right">1.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±1551.14%</td>
    <td style="white-space: nowrap; text-align: right">0.24 μs</td>
    <td style="white-space: nowrap; text-align: right">0.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">23.22 K</td>
    <td style="white-space: nowrap; text-align: right">43.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.90%</td>
    <td style="white-space: nowrap; text-align: right">42.61 μs</td>
    <td style="white-space: nowrap; text-align: right">86.34 μs</td>
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
    <td style="white-space: nowrap;text-align: right">555.88 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">554.19 K</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">23.22 K</td>
    <td style="white-space: nowrap; text-align: right">23.94x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">575.93 K</td>
    <td style="white-space: nowrap; text-align: right">1.74 μs</td>
    <td style="white-space: nowrap; text-align: right">±113.12%</td>
    <td style="white-space: nowrap; text-align: right">1.44 μs</td>
    <td style="white-space: nowrap; text-align: right">14.74 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">527.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.70%</td>
    <td style="white-space: nowrap; text-align: right">1.54 μs</td>
    <td style="white-space: nowrap; text-align: right">14.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.24 K</td>
    <td style="white-space: nowrap; text-align: right">97.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.07%</td>
    <td style="white-space: nowrap; text-align: right">97.41 μs</td>
    <td style="white-space: nowrap; text-align: right">213.96 μs</td>
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
    <td style="white-space: nowrap;text-align: right">575.93 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">527.03 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.24 K</td>
    <td style="white-space: nowrap; text-align: right">56.25x</td>
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
    <td style="white-space: nowrap; text-align: right">380.85 K</td>
    <td style="white-space: nowrap; text-align: right">2.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±80.29%</td>
    <td style="white-space: nowrap; text-align: right">2.24 μs</td>
    <td style="white-space: nowrap; text-align: right">15.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">363.59 K</td>
    <td style="white-space: nowrap; text-align: right">2.75 μs</td>
    <td style="white-space: nowrap; text-align: right">±123.19%</td>
    <td style="white-space: nowrap; text-align: right">1.96 μs</td>
    <td style="white-space: nowrap; text-align: right">20.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.06 K</td>
    <td style="white-space: nowrap; text-align: right">246.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±54.26%</td>
    <td style="white-space: nowrap; text-align: right">251.78 μs</td>
    <td style="white-space: nowrap; text-align: right">494.86 μs</td>
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
    <td style="white-space: nowrap;text-align: right">380.85 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">363.59 K</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.06 K</td>
    <td style="white-space: nowrap; text-align: right">93.81x</td>
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
    <td style="white-space: nowrap; text-align: right">385.35 K</td>
    <td style="white-space: nowrap; text-align: right">2.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.32%</td>
    <td style="white-space: nowrap; text-align: right">2.29 μs</td>
    <td style="white-space: nowrap; text-align: right">15.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">321.14 K</td>
    <td style="white-space: nowrap; text-align: right">3.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±114.79%</td>
    <td style="white-space: nowrap; text-align: right">2.19 μs</td>
    <td style="white-space: nowrap; text-align: right">21.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.14 K</td>
    <td style="white-space: nowrap; text-align: right">467.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±60.32%</td>
    <td style="white-space: nowrap; text-align: right">477.74 μs</td>
    <td style="white-space: nowrap; text-align: right">998.07 μs</td>
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
    <td style="white-space: nowrap;text-align: right">385.35 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">321.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.14 K</td>
    <td style="white-space: nowrap; text-align: right">180.18x</td>
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
    <td style="white-space: nowrap; text-align: right">383.32 K</td>
    <td style="white-space: nowrap; text-align: right">2.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.76%</td>
    <td style="white-space: nowrap; text-align: right">2.01 μs</td>
    <td style="white-space: nowrap; text-align: right">15.03 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">342.88 K</td>
    <td style="white-space: nowrap; text-align: right">2.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±107.06%</td>
    <td style="white-space: nowrap; text-align: right">2.03 μs</td>
    <td style="white-space: nowrap; text-align: right">15.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.99 K</td>
    <td style="white-space: nowrap; text-align: right">1009.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.31%</td>
    <td style="white-space: nowrap; text-align: right">1034.62 μs</td>
    <td style="white-space: nowrap; text-align: right">1930.84 μs</td>
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
    <td style="white-space: nowrap;text-align: right">383.32 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">342.88 K</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.99 K</td>
    <td style="white-space: nowrap; text-align: right">386.88x</td>
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
    <td style="white-space: nowrap; text-align: right">332.28 K</td>
    <td style="white-space: nowrap; text-align: right">3.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±88.16%</td>
    <td style="white-space: nowrap; text-align: right">2.47 μs</td>
    <td style="white-space: nowrap; text-align: right">15.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">294.77 K</td>
    <td style="white-space: nowrap; text-align: right">3.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±118.75%</td>
    <td style="white-space: nowrap; text-align: right">2.25 μs</td>
    <td style="white-space: nowrap; text-align: right">17.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.48 K</td>
    <td style="white-space: nowrap; text-align: right">2098.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±50.19%</td>
    <td style="white-space: nowrap; text-align: right">2118.95 μs</td>
    <td style="white-space: nowrap; text-align: right">3815.79 μs</td>
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
    <td style="white-space: nowrap;text-align: right">332.28 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">294.77 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.48 K</td>
    <td style="white-space: nowrap; text-align: right">697.4x</td>
  </tr>

</table>



<hr/>


__Input: 0002097152 elements__

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
    <td style="white-space: nowrap; text-align: right">274.44 K</td>
    <td style="white-space: nowrap; text-align: right">3.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±71.95%</td>
    <td style="white-space: nowrap; text-align: right">2.98 μs</td>
    <td style="white-space: nowrap; text-align: right">11.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">252.90 K</td>
    <td style="white-space: nowrap; text-align: right">3.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±98.29%</td>
    <td style="white-space: nowrap; text-align: right">2.67 μs</td>
    <td style="white-space: nowrap; text-align: right">16.20 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.24 K</td>
    <td style="white-space: nowrap; text-align: right">4208.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±54.47%</td>
    <td style="white-space: nowrap; text-align: right">4166.71 μs</td>
    <td style="white-space: nowrap; text-align: right">7783.32 μs</td>
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
    <td style="white-space: nowrap;text-align: right">274.44 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">252.90 K</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.24 K</td>
    <td style="white-space: nowrap; text-align: right">1154.89x</td>
  </tr>

</table>



<hr/>


__Input: 0004194304 elements__

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
    <td style="white-space: nowrap; text-align: right">287.77 K</td>
    <td style="white-space: nowrap; text-align: right">3.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.97%</td>
    <td style="white-space: nowrap; text-align: right">3.62 μs</td>
    <td style="white-space: nowrap; text-align: right">3.96 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">173.33 K</td>
    <td style="white-space: nowrap; text-align: right">5.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.69%</td>
    <td style="white-space: nowrap; text-align: right">3.46 μs</td>
    <td style="white-space: nowrap; text-align: right">17.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.143 K</td>
    <td style="white-space: nowrap; text-align: right">7012.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.78%</td>
    <td style="white-space: nowrap; text-align: right">6886.49 μs</td>
    <td style="white-space: nowrap; text-align: right">14986.18 μs</td>
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
    <td style="white-space: nowrap;text-align: right">287.77 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">173.33 K</td>
    <td style="white-space: nowrap; text-align: right">1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.143 K</td>
    <td style="white-space: nowrap; text-align: right">2017.97x</td>
  </tr>

</table>



<hr/>

