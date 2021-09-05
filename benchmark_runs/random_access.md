
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
    <td style="white-space: nowrap; text-align: right">7.07 M</td>
    <td style="white-space: nowrap; text-align: right">141.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±671.42%</td>
    <td style="white-space: nowrap; text-align: right">116 ns</td>
    <td style="white-space: nowrap; text-align: right">266.97 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">6.84 M</td>
    <td style="white-space: nowrap; text-align: right">146.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±598.83%</td>
    <td style="white-space: nowrap; text-align: right">128 ns</td>
    <td style="white-space: nowrap; text-align: right">232 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.46 M</td>
    <td style="white-space: nowrap; text-align: right">183.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±543.19%</td>
    <td style="white-space: nowrap; text-align: right">157 ns</td>
    <td style="white-space: nowrap; text-align: right">241 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.19 M</td>
    <td style="white-space: nowrap; text-align: right">192.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±586.12%</td>
    <td style="white-space: nowrap; text-align: right">161 ns</td>
    <td style="white-space: nowrap; text-align: right">284.36 ns</td>
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
    <td style="white-space: nowrap;text-align: right">7.07 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">6.84 M</td>
    <td style="white-space: nowrap; text-align: right">1.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.46 M</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.19 M</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
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
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.47 M</td>
    <td style="white-space: nowrap; text-align: right">182.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±494.41%</td>
    <td style="white-space: nowrap; text-align: right">163 ns</td>
    <td style="white-space: nowrap; text-align: right">362.57 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">5.47 M</td>
    <td style="white-space: nowrap; text-align: right">182.94 ns</td>
    <td style="white-space: nowrap; text-align: right">±703.95%</td>
    <td style="white-space: nowrap; text-align: right">147 ns</td>
    <td style="white-space: nowrap; text-align: right">295 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.46 M</td>
    <td style="white-space: nowrap; text-align: right">183.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±556.19%</td>
    <td style="white-space: nowrap; text-align: right">156 ns</td>
    <td style="white-space: nowrap; text-align: right">248.46 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.95 M</td>
    <td style="white-space: nowrap; text-align: right">202.18 ns</td>
    <td style="white-space: nowrap; text-align: right">±559.92%</td>
    <td style="white-space: nowrap; text-align: right">168 ns</td>
    <td style="white-space: nowrap; text-align: right">295 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.47 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">5.47 M</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.46 M</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.95 M</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">5.33 M</td>
    <td style="white-space: nowrap; text-align: right">187.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±562.90%</td>
    <td style="white-space: nowrap; text-align: right">161 ns</td>
    <td style="white-space: nowrap; text-align: right">299 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.23 M</td>
    <td style="white-space: nowrap; text-align: right">191.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±564.80%</td>
    <td style="white-space: nowrap; text-align: right">161 ns</td>
    <td style="white-space: nowrap; text-align: right">255 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.96 M</td>
    <td style="white-space: nowrap; text-align: right">201.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±626.89%</td>
    <td style="white-space: nowrap; text-align: right">165 ns</td>
    <td style="white-space: nowrap; text-align: right">294 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.60 M</td>
    <td style="white-space: nowrap; text-align: right">277.53 ns</td>
    <td style="white-space: nowrap; text-align: right">±388.21%</td>
    <td style="white-space: nowrap; text-align: right">248 ns</td>
    <td style="white-space: nowrap; text-align: right">605.39 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">5.33 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.23 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.96 M</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3.60 M</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.32 M</td>
    <td style="white-space: nowrap; text-align: right">188.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±566.51%</td>
    <td style="white-space: nowrap; text-align: right">163 ns</td>
    <td style="white-space: nowrap; text-align: right">269.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">5.29 M</td>
    <td style="white-space: nowrap; text-align: right">189.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±569.51%</td>
    <td style="white-space: nowrap; text-align: right">164 ns</td>
    <td style="white-space: nowrap; text-align: right">314 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.87 M</td>
    <td style="white-space: nowrap; text-align: right">205.32 ns</td>
    <td style="white-space: nowrap; text-align: right">±564.70%</td>
    <td style="white-space: nowrap; text-align: right">170 ns</td>
    <td style="white-space: nowrap; text-align: right">303 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.19 M</td>
    <td style="white-space: nowrap; text-align: right">455.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±271.19%</td>
    <td style="white-space: nowrap; text-align: right">422 ns</td>
    <td style="white-space: nowrap; text-align: right">929.25 ns</td>
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
    <td style="white-space: nowrap;text-align: right">5.32 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">5.29 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.87 M</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.19 M</td>
    <td style="white-space: nowrap; text-align: right">2.42x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">5.11 M</td>
    <td style="white-space: nowrap; text-align: right">195.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±600.13%</td>
    <td style="white-space: nowrap; text-align: right">169 ns</td>
    <td style="white-space: nowrap; text-align: right">315.90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.89 M</td>
    <td style="white-space: nowrap; text-align: right">204.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±600.90%</td>
    <td style="white-space: nowrap; text-align: right">173 ns</td>
    <td style="white-space: nowrap; text-align: right">285 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.66 M</td>
    <td style="white-space: nowrap; text-align: right">214.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±576.42%</td>
    <td style="white-space: nowrap; text-align: right">177 ns</td>
    <td style="white-space: nowrap; text-align: right">312.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.22 M</td>
    <td style="white-space: nowrap; text-align: right">818.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±130.33%</td>
    <td style="white-space: nowrap; text-align: right">775 ns</td>
    <td style="white-space: nowrap; text-align: right">2007.20 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">5.11 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.89 M</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.66 M</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.22 M</td>
    <td style="white-space: nowrap; text-align: right">4.18x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">5.08 M</td>
    <td style="white-space: nowrap; text-align: right">196.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±539.62%</td>
    <td style="white-space: nowrap; text-align: right">174 ns</td>
    <td style="white-space: nowrap; text-align: right">308.31 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.68 M</td>
    <td style="white-space: nowrap; text-align: right">213.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±606.27%</td>
    <td style="white-space: nowrap; text-align: right">182 ns</td>
    <td style="white-space: nowrap; text-align: right">288 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.60 M</td>
    <td style="white-space: nowrap; text-align: right">217.62 ns</td>
    <td style="white-space: nowrap; text-align: right">±687.66%</td>
    <td style="white-space: nowrap; text-align: right">177 ns</td>
    <td style="white-space: nowrap; text-align: right">319.59 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.53 M</td>
    <td style="white-space: nowrap; text-align: right">1896.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±92.53%</td>
    <td style="white-space: nowrap; text-align: right">1736 ns</td>
    <td style="white-space: nowrap; text-align: right">4972.26 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">5.08 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.68 M</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.60 M</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.53 M</td>
    <td style="white-space: nowrap; text-align: right">9.63x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.59 M</td>
    <td style="white-space: nowrap; text-align: right">217.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±517.44%</td>
    <td style="white-space: nowrap; text-align: right">190 ns</td>
    <td style="white-space: nowrap; text-align: right">331.83 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.17 M</td>
    <td style="white-space: nowrap; text-align: right">239.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±790.46%</td>
    <td style="white-space: nowrap; text-align: right">187 ns</td>
    <td style="white-space: nowrap; text-align: right">344.48 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.88 M</td>
    <td style="white-space: nowrap; text-align: right">257.68 ns</td>
    <td style="white-space: nowrap; text-align: right">±741.24%</td>
    <td style="white-space: nowrap; text-align: right">201 ns</td>
    <td style="white-space: nowrap; text-align: right">329.78 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.33 M</td>
    <td style="white-space: nowrap; text-align: right">3017.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±76.74%</td>
    <td style="white-space: nowrap; text-align: right">2909 ns</td>
    <td style="white-space: nowrap; text-align: right">8967.25 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">4.59 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.17 M</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.88 M</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.33 M</td>
    <td style="white-space: nowrap; text-align: right">13.85x</td>
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
    <td style="white-space: nowrap; text-align: right">4.46 M</td>
    <td style="white-space: nowrap; text-align: right">224.41 ns</td>
    <td style="white-space: nowrap; text-align: right">±561.10%</td>
    <td style="white-space: nowrap; text-align: right">199 ns</td>
    <td style="white-space: nowrap; text-align: right">363 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.44 M</td>
    <td style="white-space: nowrap; text-align: right">225.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±538.67%</td>
    <td style="white-space: nowrap; text-align: right">196 ns</td>
    <td style="white-space: nowrap; text-align: right">332 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.93 M</td>
    <td style="white-space: nowrap; text-align: right">254.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±494.48%</td>
    <td style="white-space: nowrap; text-align: right">225 ns</td>
    <td style="white-space: nowrap; text-align: right">357.18 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.175 M</td>
    <td style="white-space: nowrap; text-align: right">5730.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±61.34%</td>
    <td style="white-space: nowrap; text-align: right">5662 ns</td>
    <td style="white-space: nowrap; text-align: right">11387.21 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.46 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.44 M</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.93 M</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.175 M</td>
    <td style="white-space: nowrap; text-align: right">25.54x</td>
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
    <td style="white-space: nowrap; text-align: right">4.55 M</td>
    <td style="white-space: nowrap; text-align: right">219.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±143.28%</td>
    <td style="white-space: nowrap; text-align: right">210 ns</td>
    <td style="white-space: nowrap; text-align: right">285.02 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.55 M</td>
    <td style="white-space: nowrap; text-align: right">219.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±23.84%</td>
    <td style="white-space: nowrap; text-align: right">214 ns</td>
    <td style="white-space: nowrap; text-align: right">315.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.47 M</td>
    <td style="white-space: nowrap; text-align: right">223.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±468.68%</td>
    <td style="white-space: nowrap; text-align: right">197 ns</td>
    <td style="white-space: nowrap; text-align: right">316.12 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0896 M</td>
    <td style="white-space: nowrap; text-align: right">11160.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±60.29%</td>
    <td style="white-space: nowrap; text-align: right">11161.50 ns</td>
    <td style="white-space: nowrap; text-align: right">22363.06 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.55 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.55 M</td>
    <td style="white-space: nowrap; text-align: right">1.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.47 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0896 M</td>
    <td style="white-space: nowrap; text-align: right">50.82x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.33 M</td>
    <td style="white-space: nowrap; text-align: right">231.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±457.95%</td>
    <td style="white-space: nowrap; text-align: right">201 ns</td>
    <td style="white-space: nowrap; text-align: right">306.64 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.13 M</td>
    <td style="white-space: nowrap; text-align: right">241.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±127.17%</td>
    <td style="white-space: nowrap; text-align: right">230 ns</td>
    <td style="white-space: nowrap; text-align: right">306.81 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.03 M</td>
    <td style="white-space: nowrap; text-align: right">248.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±10.73%</td>
    <td style="white-space: nowrap; text-align: right">242 ns</td>
    <td style="white-space: nowrap; text-align: right">326.96 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0444 M</td>
    <td style="white-space: nowrap; text-align: right">22509.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±62.52%</td>
    <td style="white-space: nowrap; text-align: right">22211 ns</td>
    <td style="white-space: nowrap; text-align: right">65176.40 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">4.33 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.13 M</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.03 M</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0444 M</td>
    <td style="white-space: nowrap; text-align: right">97.44x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3758.56 K</td>
    <td style="white-space: nowrap; text-align: right">0.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±747.36%</td>
    <td style="white-space: nowrap; text-align: right">0.22 μs</td>
    <td style="white-space: nowrap; text-align: right">0.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">552.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±1533.96%</td>
    <td style="white-space: nowrap; text-align: right">0.24 μs</td>
    <td style="white-space: nowrap; text-align: right">0.67 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">550.78 K</td>
    <td style="white-space: nowrap; text-align: right">1.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±1520.07%</td>
    <td style="white-space: nowrap; text-align: right">0.27 μs</td>
    <td style="white-space: nowrap; text-align: right">0.65 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">23.19 K</td>
    <td style="white-space: nowrap; text-align: right">43.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.96%</td>
    <td style="white-space: nowrap; text-align: right">42.78 μs</td>
    <td style="white-space: nowrap; text-align: right">87.21 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">3758.56 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">552.06 K</td>
    <td style="white-space: nowrap; text-align: right">6.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">550.78 K</td>
    <td style="white-space: nowrap; text-align: right">6.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">23.19 K</td>
    <td style="white-space: nowrap; text-align: right">162.04x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3028.58 K</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±1110.58%</td>
    <td style="white-space: nowrap; text-align: right">0.24 μs</td>
    <td style="white-space: nowrap; text-align: right">0.29 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">577.17 K</td>
    <td style="white-space: nowrap; text-align: right">1.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±119.84%</td>
    <td style="white-space: nowrap; text-align: right">1.40 μs</td>
    <td style="white-space: nowrap; text-align: right">15.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">533.56 K</td>
    <td style="white-space: nowrap; text-align: right">1.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±127.28%</td>
    <td style="white-space: nowrap; text-align: right">1.43 μs</td>
    <td style="white-space: nowrap; text-align: right">15.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.92 K</td>
    <td style="white-space: nowrap; text-align: right">91.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.83%</td>
    <td style="white-space: nowrap; text-align: right">90.29 μs</td>
    <td style="white-space: nowrap; text-align: right">187.03 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">3028.58 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">577.17 K</td>
    <td style="white-space: nowrap; text-align: right">5.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">533.56 K</td>
    <td style="white-space: nowrap; text-align: right">5.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">10.92 K</td>
    <td style="white-space: nowrap; text-align: right">277.4x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3052.12 K</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
    <td style="white-space: nowrap; text-align: right">±112.33%</td>
    <td style="white-space: nowrap; text-align: right">0.27 μs</td>
    <td style="white-space: nowrap; text-align: right">1.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">399.12 K</td>
    <td style="white-space: nowrap; text-align: right">2.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±84.89%</td>
    <td style="white-space: nowrap; text-align: right">2.12 μs</td>
    <td style="white-space: nowrap; text-align: right">15.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">330.55 K</td>
    <td style="white-space: nowrap; text-align: right">3.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±113.30%</td>
    <td style="white-space: nowrap; text-align: right">2.18 μs</td>
    <td style="white-space: nowrap; text-align: right">21.14 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.41 K</td>
    <td style="white-space: nowrap; text-align: right">226.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.55%</td>
    <td style="white-space: nowrap; text-align: right">223.88 μs</td>
    <td style="white-space: nowrap; text-align: right">592.97 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">3052.12 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">399.12 K</td>
    <td style="white-space: nowrap; text-align: right">7.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">330.55 K</td>
    <td style="white-space: nowrap; text-align: right">9.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.41 K</td>
    <td style="white-space: nowrap; text-align: right">691.33x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1077.75 K</td>
    <td style="white-space: nowrap; text-align: right">0.93 μs</td>
    <td style="white-space: nowrap; text-align: right">±195.33%</td>
    <td style="white-space: nowrap; text-align: right">0.58 μs</td>
    <td style="white-space: nowrap; text-align: right">13.87 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">388.36 K</td>
    <td style="white-space: nowrap; text-align: right">2.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±53.26%</td>
    <td style="white-space: nowrap; text-align: right">2.38 μs</td>
    <td style="white-space: nowrap; text-align: right">14.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">366.19 K</td>
    <td style="white-space: nowrap; text-align: right">2.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±95.61%</td>
    <td style="white-space: nowrap; text-align: right">2.17 μs</td>
    <td style="white-space: nowrap; text-align: right">16.14 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.05 K</td>
    <td style="white-space: nowrap; text-align: right">488.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±54.90%</td>
    <td style="white-space: nowrap; text-align: right">496.98 μs</td>
    <td style="white-space: nowrap; text-align: right">946.74 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">1077.75 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">388.36 K</td>
    <td style="white-space: nowrap; text-align: right">2.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">366.19 K</td>
    <td style="white-space: nowrap; text-align: right">2.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.05 K</td>
    <td style="white-space: nowrap; text-align: right">526.61x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">568.74 K</td>
    <td style="white-space: nowrap; text-align: right">1.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±37.56%</td>
    <td style="white-space: nowrap; text-align: right">1.59 μs</td>
    <td style="white-space: nowrap; text-align: right">5.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">513.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.25%</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
    <td style="white-space: nowrap; text-align: right">3.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">369.72 K</td>
    <td style="white-space: nowrap; text-align: right">2.70 μs</td>
    <td style="white-space: nowrap; text-align: right">±89.06%</td>
    <td style="white-space: nowrap; text-align: right">1.92 μs</td>
    <td style="white-space: nowrap; text-align: right">15.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.14 K</td>
    <td style="white-space: nowrap; text-align: right">875.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±67.73%</td>
    <td style="white-space: nowrap; text-align: right">746.54 μs</td>
    <td style="white-space: nowrap; text-align: right">1994.41 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">568.74 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">513.62 K</td>
    <td style="white-space: nowrap; text-align: right">1.11x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">369.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1.14 K</td>
    <td style="white-space: nowrap; text-align: right">498.11x</td>
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
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">559.90 K</td>
    <td style="white-space: nowrap; text-align: right">1.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±13.74%</td>
    <td style="white-space: nowrap; text-align: right">1.72 μs</td>
    <td style="white-space: nowrap; text-align: right">2.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">438.14 K</td>
    <td style="white-space: nowrap; text-align: right">2.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.76%</td>
    <td style="white-space: nowrap; text-align: right">2.20 μs</td>
    <td style="white-space: nowrap; text-align: right">3.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">328.33 K</td>
    <td style="white-space: nowrap; text-align: right">3.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.76%</td>
    <td style="white-space: nowrap; text-align: right">2.48 μs</td>
    <td style="white-space: nowrap; text-align: right">16.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.48 K</td>
    <td style="white-space: nowrap; text-align: right">2067.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.66%</td>
    <td style="white-space: nowrap; text-align: right">2119.14 μs</td>
    <td style="white-space: nowrap; text-align: right">6092.41 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">559.90 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">438.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">328.33 K</td>
    <td style="white-space: nowrap; text-align: right">1.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.48 K</td>
    <td style="white-space: nowrap; text-align: right">1157.48x</td>
  </tr>

</table>



<hr/>

