
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




__Input: 1..0000000032__

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
    <td style="white-space: nowrap; text-align: right">6.79 M</td>
    <td style="white-space: nowrap; text-align: right">147.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±541.16%</td>
    <td style="white-space: nowrap; text-align: right">125 ns</td>
    <td style="white-space: nowrap; text-align: right">213 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.67 M</td>
    <td style="white-space: nowrap; text-align: right">176.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±486.51%</td>
    <td style="white-space: nowrap; text-align: right">158 ns</td>
    <td style="white-space: nowrap; text-align: right">214 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.63 M</td>
    <td style="white-space: nowrap; text-align: right">177.57 ns</td>
    <td style="white-space: nowrap; text-align: right">±523.68%</td>
    <td style="white-space: nowrap; text-align: right">156 ns</td>
    <td style="white-space: nowrap; text-align: right">214 ns</td>
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
    <td style="white-space: nowrap;text-align: right">6.79 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.67 M</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.63 M</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000000064__

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
    <td style="white-space: nowrap; text-align: right">5.74 M</td>
    <td style="white-space: nowrap; text-align: right">174.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±515.70%</td>
    <td style="white-space: nowrap; text-align: right">154 ns</td>
    <td style="white-space: nowrap; text-align: right">206 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.68 M</td>
    <td style="white-space: nowrap; text-align: right">176.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±517.50%</td>
    <td style="white-space: nowrap; text-align: right">155 ns</td>
    <td style="white-space: nowrap; text-align: right">221 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.31 M</td>
    <td style="white-space: nowrap; text-align: right">188.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±404.31%</td>
    <td style="white-space: nowrap; text-align: right">171 ns</td>
    <td style="white-space: nowrap; text-align: right">303 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.74 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.68 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.31 M</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000000128__

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
    <td style="white-space: nowrap; text-align: right">5.37 M</td>
    <td style="white-space: nowrap; text-align: right">186.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±517.12%</td>
    <td style="white-space: nowrap; text-align: right">160 ns</td>
    <td style="white-space: nowrap; text-align: right">225 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.25 M</td>
    <td style="white-space: nowrap; text-align: right">190.64 ns</td>
    <td style="white-space: nowrap; text-align: right">±516.82%</td>
    <td style="white-space: nowrap; text-align: right">166 ns</td>
    <td style="white-space: nowrap; text-align: right">257.24 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.60 M</td>
    <td style="white-space: nowrap; text-align: right">277.58 ns</td>
    <td style="white-space: nowrap; text-align: right">±285.65%</td>
    <td style="white-space: nowrap; text-align: right">255 ns</td>
    <td style="white-space: nowrap; text-align: right">577 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.37 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.25 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.60 M</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000000256__

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
    <td style="white-space: nowrap; text-align: right">5.22 M</td>
    <td style="white-space: nowrap; text-align: right">191.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±503.65%</td>
    <td style="white-space: nowrap; text-align: right">167 ns</td>
    <td style="white-space: nowrap; text-align: right">240.77 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.15 M</td>
    <td style="white-space: nowrap; text-align: right">194.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±531.87%</td>
    <td style="white-space: nowrap; text-align: right">169 ns</td>
    <td style="white-space: nowrap; text-align: right">238 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.22 M</td>
    <td style="white-space: nowrap; text-align: right">450.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±179.10%</td>
    <td style="white-space: nowrap; text-align: right">434 ns</td>
    <td style="white-space: nowrap; text-align: right">928.92 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.22 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.15 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.22 M</td>
    <td style="white-space: nowrap; text-align: right">2.35x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000000512__

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
    <td style="white-space: nowrap; text-align: right">5.01 M</td>
    <td style="white-space: nowrap; text-align: right">199.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±516.42%</td>
    <td style="white-space: nowrap; text-align: right">175 ns</td>
    <td style="white-space: nowrap; text-align: right">245.69 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.97 M</td>
    <td style="white-space: nowrap; text-align: right">201.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±509.21%</td>
    <td style="white-space: nowrap; text-align: right">177 ns</td>
    <td style="white-space: nowrap; text-align: right">249.90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.25 M</td>
    <td style="white-space: nowrap; text-align: right">802.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±115.00%</td>
    <td style="white-space: nowrap; text-align: right">773 ns</td>
    <td style="white-space: nowrap; text-align: right">1633.92 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.01 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.97 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.25 M</td>
    <td style="white-space: nowrap; text-align: right">4.02x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000001024__

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
    <td style="white-space: nowrap; text-align: right">4.75 M</td>
    <td style="white-space: nowrap; text-align: right">210.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±561.16%</td>
    <td style="white-space: nowrap; text-align: right">183 ns</td>
    <td style="white-space: nowrap; text-align: right">247.74 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.73 M</td>
    <td style="white-space: nowrap; text-align: right">211.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±618.58%</td>
    <td style="white-space: nowrap; text-align: right">180 ns</td>
    <td style="white-space: nowrap; text-align: right">252 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.66 M</td>
    <td style="white-space: nowrap; text-align: right">1523.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±89.71%</td>
    <td style="white-space: nowrap; text-align: right">1460 ns</td>
    <td style="white-space: nowrap; text-align: right">3077 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.75 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.73 M</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.66 M</td>
    <td style="white-space: nowrap; text-align: right">7.23x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000002048__

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
    <td style="white-space: nowrap; text-align: right">4.42 M</td>
    <td style="white-space: nowrap; text-align: right">226.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±668.03%</td>
    <td style="white-space: nowrap; text-align: right">183 ns</td>
    <td style="white-space: nowrap; text-align: right">266.31 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.38 M</td>
    <td style="white-space: nowrap; text-align: right">228.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±714.57%</td>
    <td style="white-space: nowrap; text-align: right">183 ns</td>
    <td style="white-space: nowrap; text-align: right">257 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.34 M</td>
    <td style="white-space: nowrap; text-align: right">2914.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±65.80%</td>
    <td style="white-space: nowrap; text-align: right">2905 ns</td>
    <td style="white-space: nowrap; text-align: right">5731.81 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.42 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.38 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.34 M</td>
    <td style="white-space: nowrap; text-align: right">12.87x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000004096__

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
    <td style="white-space: nowrap; text-align: right">218.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±460.47%</td>
    <td style="white-space: nowrap; text-align: right">202 ns</td>
    <td style="white-space: nowrap; text-align: right">262 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.12 M</td>
    <td style="white-space: nowrap; text-align: right">243.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±794.36%</td>
    <td style="white-space: nowrap; text-align: right">203 ns</td>
    <td style="white-space: nowrap; text-align: right">276 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.176 M</td>
    <td style="white-space: nowrap; text-align: right">5697.32 ns</td>
    <td style="white-space: nowrap; text-align: right">±60.46%</td>
    <td style="white-space: nowrap; text-align: right">5657.50 ns</td>
    <td style="white-space: nowrap; text-align: right">11231 ns</td>
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
    <td style="white-space: nowrap; text-align: right">4.12 M</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.176 M</td>
    <td style="white-space: nowrap; text-align: right">26.08x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000008192__

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
    <td style="white-space: nowrap; text-align: right">4.59 M</td>
    <td style="white-space: nowrap; text-align: right">217.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±127.94%</td>
    <td style="white-space: nowrap; text-align: right">209 ns</td>
    <td style="white-space: nowrap; text-align: right">268 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.49 M</td>
    <td style="white-space: nowrap; text-align: right">222.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±9.48%</td>
    <td style="white-space: nowrap; text-align: right">219 ns</td>
    <td style="white-space: nowrap; text-align: right">283 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0899 M</td>
    <td style="white-space: nowrap; text-align: right">11118.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±59.28%</td>
    <td style="white-space: nowrap; text-align: right">11097 ns</td>
    <td style="white-space: nowrap; text-align: right">22101.88 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.59 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.49 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0899 M</td>
    <td style="white-space: nowrap; text-align: right">51.05x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000016384__

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
    <td style="white-space: nowrap; text-align: right">±9.65%</td>
    <td style="white-space: nowrap; text-align: right">225 ns</td>
    <td style="white-space: nowrap; text-align: right">286.66 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.21 M</td>
    <td style="white-space: nowrap; text-align: right">237.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±180.07%</td>
    <td style="white-space: nowrap; text-align: right">225 ns</td>
    <td style="white-space: nowrap; text-align: right">287 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0456 M</td>
    <td style="white-space: nowrap; text-align: right">21951.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±57.73%</td>
    <td style="white-space: nowrap; text-align: right">22081 ns</td>
    <td style="white-space: nowrap; text-align: right">43297.36 ns</td>
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
    <td style="white-space: nowrap; text-align: right">4.21 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0456 M</td>
    <td style="white-space: nowrap; text-align: right">96.16x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000032768__

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
    <td style="white-space: nowrap; text-align: right">558.47 K</td>
    <td style="white-space: nowrap; text-align: right">1.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±1549.81%</td>
    <td style="white-space: nowrap; text-align: right">0.23 μs</td>
    <td style="white-space: nowrap; text-align: right">0.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">547.57 K</td>
    <td style="white-space: nowrap; text-align: right">1.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±1562.69%</td>
    <td style="white-space: nowrap; text-align: right">0.23 μs</td>
    <td style="white-space: nowrap; text-align: right">0.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">22.79 K</td>
    <td style="white-space: nowrap; text-align: right">43.89 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.69%</td>
    <td style="white-space: nowrap; text-align: right">44.29 μs</td>
    <td style="white-space: nowrap; text-align: right">91.04 μs</td>
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
    <td style="white-space: nowrap;text-align: right">558.47 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">547.57 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">22.79 K</td>
    <td style="white-space: nowrap; text-align: right">24.51x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000065536__

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
    <td style="white-space: nowrap; text-align: right">1034.02 K</td>
    <td style="white-space: nowrap; text-align: right">0.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.76%</td>
    <td style="white-space: nowrap; text-align: right">0.96 μs</td>
    <td style="white-space: nowrap; text-align: right">1.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">509.50 K</td>
    <td style="white-space: nowrap; text-align: right">1.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±125.12%</td>
    <td style="white-space: nowrap; text-align: right">1.46 μs</td>
    <td style="white-space: nowrap; text-align: right">14.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.76 K</td>
    <td style="white-space: nowrap; text-align: right">92.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.16%</td>
    <td style="white-space: nowrap; text-align: right">93.18 μs</td>
    <td style="white-space: nowrap; text-align: right">186.89 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1034.02 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">509.50 K</td>
    <td style="white-space: nowrap; text-align: right">2.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.76 K</td>
    <td style="white-space: nowrap; text-align: right">96.14x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000131072__

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
    <td style="white-space: nowrap; text-align: right">332.84 K</td>
    <td style="white-space: nowrap; text-align: right">3.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±91.51%</td>
    <td style="white-space: nowrap; text-align: right">2.39 μs</td>
    <td style="white-space: nowrap; text-align: right">15.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">326.42 K</td>
    <td style="white-space: nowrap; text-align: right">3.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±92.89%</td>
    <td style="white-space: nowrap; text-align: right">2.35 μs</td>
    <td style="white-space: nowrap; text-align: right">16.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.47 K</td>
    <td style="white-space: nowrap; text-align: right">223.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.31%</td>
    <td style="white-space: nowrap; text-align: right">223.48 μs</td>
    <td style="white-space: nowrap; text-align: right">462.19 μs</td>
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
    <td style="white-space: nowrap;text-align: right">332.84 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">326.42 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.47 K</td>
    <td style="white-space: nowrap; text-align: right">74.39x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000262144__

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
    <td style="white-space: nowrap; text-align: right">305.14 K</td>
    <td style="white-space: nowrap; text-align: right">3.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.82%</td>
    <td style="white-space: nowrap; text-align: right">2.41 μs</td>
    <td style="white-space: nowrap; text-align: right">15.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">283.50 K</td>
    <td style="white-space: nowrap; text-align: right">3.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±107.29%</td>
    <td style="white-space: nowrap; text-align: right">2.29 μs</td>
    <td style="white-space: nowrap; text-align: right">16.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.16 K</td>
    <td style="white-space: nowrap; text-align: right">463.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.69%</td>
    <td style="white-space: nowrap; text-align: right">442.26 μs</td>
    <td style="white-space: nowrap; text-align: right">1001.34 μs</td>
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
    <td style="white-space: nowrap;text-align: right">305.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">283.50 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.16 K</td>
    <td style="white-space: nowrap; text-align: right">141.37x</td>
  </tr>

</table>



<hr/>


__Input: 1..0000524288__

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
    <td style="white-space: nowrap; text-align: right">329.71 K</td>
    <td style="white-space: nowrap; text-align: right">3.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±107.70%</td>
    <td style="white-space: nowrap; text-align: right">2.09 μs</td>
    <td style="white-space: nowrap; text-align: right">15.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">324.45 K</td>
    <td style="white-space: nowrap; text-align: right">3.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.86%</td>
    <td style="white-space: nowrap; text-align: right">2.34 μs</td>
    <td style="white-space: nowrap; text-align: right">20.03 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.98 K</td>
    <td style="white-space: nowrap; text-align: right">1017.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.45%</td>
    <td style="white-space: nowrap; text-align: right">1102.01 μs</td>
    <td style="white-space: nowrap; text-align: right">2032.26 μs</td>
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
    <td style="white-space: nowrap;text-align: right">329.71 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">324.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.98 K</td>
    <td style="white-space: nowrap; text-align: right">335.45x</td>
  </tr>

</table>



<hr/>


__Input: 1..0001048576__

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
    <td style="white-space: nowrap; text-align: right">341.63 K</td>
    <td style="white-space: nowrap; text-align: right">2.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±115.19%</td>
    <td style="white-space: nowrap; text-align: right">2.21 μs</td>
    <td style="white-space: nowrap; text-align: right">18.67 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">277.39 K</td>
    <td style="white-space: nowrap; text-align: right">3.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.59%</td>
    <td style="white-space: nowrap; text-align: right">2.38 μs</td>
    <td style="white-space: nowrap; text-align: right">16.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.47 K</td>
    <td style="white-space: nowrap; text-align: right">2135.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±51.05%</td>
    <td style="white-space: nowrap; text-align: right">2336.73 μs</td>
    <td style="white-space: nowrap; text-align: right">3796.77 μs</td>
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
    <td style="white-space: nowrap;text-align: right">341.63 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">277.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.47 K</td>
    <td style="white-space: nowrap; text-align: right">729.39x</td>
  </tr>

</table>



<hr/>

