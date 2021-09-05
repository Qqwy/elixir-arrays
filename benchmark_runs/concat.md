
# Benchmark

Compares random element access (for reading).

For arrays, `Arrays.get(myarray, index)` function can be used (myarray[index] will behave similarly as it uses `get` internally.)

For lists, `Enum.fetch(list, index)` is used.

Note that we do not check for a collection with more than 10_000 elements,
as lists will be so slow at that time,
that I cannot finish its benchmark on my computer.


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
    <td style="white-space: nowrap">2 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">1 s</td>
  </tr>
</table>

## Statistics




__Input: 1..10__

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
    <td style="white-space: nowrap; text-align: right">11.28 M</td>
    <td style="white-space: nowrap; text-align: right">88.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±4070.59%</td>
    <td style="white-space: nowrap; text-align: right">76 ns</td>
    <td style="white-space: nowrap; text-align: right">121 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">9.70 M</td>
    <td style="white-space: nowrap; text-align: right">103.06 ns</td>
    <td style="white-space: nowrap; text-align: right">±3028.06%</td>
    <td style="white-space: nowrap; text-align: right">81 ns</td>
    <td style="white-space: nowrap; text-align: right">207 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.26 M</td>
    <td style="white-space: nowrap; text-align: right">107.96 ns</td>
    <td style="white-space: nowrap; text-align: right">±4276.09%</td>
    <td style="white-space: nowrap; text-align: right">83 ns</td>
    <td style="white-space: nowrap; text-align: right">131 ns</td>
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
    <td style="white-space: nowrap;text-align: right">11.28 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">9.70 M</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">9.26 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

</table>



<hr/>


__Input: 1..100__

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
    <td style="white-space: nowrap; text-align: right">7.34 M</td>
    <td style="white-space: nowrap; text-align: right">136.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±7628.00%</td>
    <td style="white-space: nowrap; text-align: right">103 ns</td>
    <td style="white-space: nowrap; text-align: right">232 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.03 M</td>
    <td style="white-space: nowrap; text-align: right">142.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±7041.84%</td>
    <td style="white-space: nowrap; text-align: right">113 ns</td>
    <td style="white-space: nowrap; text-align: right">271 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.71 M</td>
    <td style="white-space: nowrap; text-align: right">212.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±2618.22%</td>
    <td style="white-space: nowrap; text-align: right">192 ns</td>
    <td style="white-space: nowrap; text-align: right">520 ns</td>
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
    <td style="white-space: nowrap;text-align: right">7.34 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.03 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.71 M</td>
    <td style="white-space: nowrap; text-align: right">1.56x</td>
  </tr>

</table>



<hr/>


__Input: 1..1000__

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
    <td style="white-space: nowrap; text-align: right">7.37 M</td>
    <td style="white-space: nowrap; text-align: right">135.75 ns</td>
    <td style="white-space: nowrap; text-align: right">±6801.52%</td>
    <td style="white-space: nowrap; text-align: right">109 ns</td>
    <td style="white-space: nowrap; text-align: right">177 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.11 M</td>
    <td style="white-space: nowrap; text-align: right">140.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±6660.12%</td>
    <td style="white-space: nowrap; text-align: right">111 ns</td>
    <td style="white-space: nowrap; text-align: right">184 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.70 M</td>
    <td style="white-space: nowrap; text-align: right">1430.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±573.19%</td>
    <td style="white-space: nowrap; text-align: right">1356 ns</td>
    <td style="white-space: nowrap; text-align: right">2923 ns</td>
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
    <td style="white-space: nowrap;text-align: right">7.37 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.11 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.70 M</td>
    <td style="white-space: nowrap; text-align: right">10.54x</td>
  </tr>

</table>



<hr/>


__Input: 1..10000__

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
    <td style="white-space: nowrap; text-align: right">5.68 M</td>
    <td style="white-space: nowrap; text-align: right">176.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±5419.63%</td>
    <td style="white-space: nowrap; text-align: right">143 ns</td>
    <td style="white-space: nowrap; text-align: right">302 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.61 M</td>
    <td style="white-space: nowrap; text-align: right">178.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±5004.26%</td>
    <td style="white-space: nowrap; text-align: right">144 ns</td>
    <td style="white-space: nowrap; text-align: right">380 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.00050 M</td>
    <td style="white-space: nowrap; text-align: right">1992702.50 ns</td>
    <td style="white-space: nowrap; text-align: right">±6.13%</td>
    <td style="white-space: nowrap; text-align: right">1988783 ns</td>
    <td style="white-space: nowrap; text-align: right">2147021 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.68 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.61 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.00050 M</td>
    <td style="white-space: nowrap; text-align: right">11311.23x</td>
  </tr>

</table>



<hr/>


__Input: 1..100000__

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
    <td style="white-space: nowrap; text-align: right">3.50 M</td>
    <td style="white-space: nowrap; text-align: right">285.66 ns</td>
    <td style="white-space: nowrap; text-align: right">±5507.01%</td>
    <td style="white-space: nowrap; text-align: right">229 ns</td>
    <td style="white-space: nowrap; text-align: right">882 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.90 M</td>
    <td style="white-space: nowrap; text-align: right">344.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±4520.19%</td>
    <td style="white-space: nowrap; text-align: right">248 ns</td>
    <td style="white-space: nowrap; text-align: right">1563 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.00050 M</td>
    <td style="white-space: nowrap; text-align: right">1992366.41 ns</td>
    <td style="white-space: nowrap; text-align: right">±5.62%</td>
    <td style="white-space: nowrap; text-align: right">1988136 ns</td>
    <td style="white-space: nowrap; text-align: right">2153539 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.50 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.90 M</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.00050 M</td>
    <td style="white-space: nowrap; text-align: right">6974.72x</td>
  </tr>

</table>



<hr/>

