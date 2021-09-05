
# Benchmark

Comparing `Arrays.append` with appending a value to a list.


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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">29.92 M</td>
    <td style="white-space: nowrap; text-align: right">33.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±2811.85%</td>
    <td style="white-space: nowrap; text-align: right">11 ns</td>
    <td style="white-space: nowrap; text-align: right">43 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.45 M</td>
    <td style="white-space: nowrap; text-align: right">224.91 ns</td>
    <td style="white-space: nowrap; text-align: right">±571.48%</td>
    <td style="white-space: nowrap; text-align: right">140 ns</td>
    <td style="white-space: nowrap; text-align: right">558 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3.61 M</td>
    <td style="white-space: nowrap; text-align: right">276.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±711.54%</td>
    <td style="white-space: nowrap; text-align: right">165 ns</td>
    <td style="white-space: nowrap; text-align: right">469.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.02 M</td>
    <td style="white-space: nowrap; text-align: right">331.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±843.52%</td>
    <td style="white-space: nowrap; text-align: right">116 ns</td>
    <td style="white-space: nowrap; text-align: right">2254.48 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.39 M</td>
    <td style="white-space: nowrap; text-align: right">2569.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±128.65%</td>
    <td style="white-space: nowrap; text-align: right">2086 ns</td>
    <td style="white-space: nowrap; text-align: right">20996.72 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">29.92 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.45 M</td>
    <td style="white-space: nowrap; text-align: right">6.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3.61 M</td>
    <td style="white-space: nowrap; text-align: right">8.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.02 M</td>
    <td style="white-space: nowrap; text-align: right">9.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.39 M</td>
    <td style="white-space: nowrap; text-align: right">76.88x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">272 B</td>
    <td>17.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">120 B</td>
    <td>7.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">528 B</td>
    <td>33.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">904 B</td>
    <td>56.5x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">24.58 M</td>
    <td style="white-space: nowrap; text-align: right">40.68 ns</td>
    <td style="white-space: nowrap; text-align: right">±2356.37%</td>
    <td style="white-space: nowrap; text-align: right">14 ns</td>
    <td style="white-space: nowrap; text-align: right">45 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.95 M</td>
    <td style="white-space: nowrap; text-align: right">202.12 ns</td>
    <td style="white-space: nowrap; text-align: right">±406.75%</td>
    <td style="white-space: nowrap; text-align: right">164 ns</td>
    <td style="white-space: nowrap; text-align: right">410.95 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.90 M</td>
    <td style="white-space: nowrap; text-align: right">203.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±561.85%</td>
    <td style="white-space: nowrap; text-align: right">138 ns</td>
    <td style="white-space: nowrap; text-align: right">354 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.20 M</td>
    <td style="white-space: nowrap; text-align: right">238.16 ns</td>
    <td style="white-space: nowrap; text-align: right">±609.02%</td>
    <td style="white-space: nowrap; text-align: right">141 ns</td>
    <td style="white-space: nowrap; text-align: right">575 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.74 M</td>
    <td style="white-space: nowrap; text-align: right">573.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±678.44%</td>
    <td style="white-space: nowrap; text-align: right">207 ns</td>
    <td style="white-space: nowrap; text-align: right">11363.18 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">24.58 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.95 M</td>
    <td style="white-space: nowrap; text-align: right">4.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.90 M</td>
    <td style="white-space: nowrap; text-align: right">5.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.20 M</td>
    <td style="white-space: nowrap; text-align: right">5.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.74 M</td>
    <td style="white-space: nowrap; text-align: right">14.1x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">128 B</td>
    <td>8.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">232 B</td>
    <td>14.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">272 B</td>
    <td>17.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">448 B</td>
    <td>28.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">23.98 M</td>
    <td style="white-space: nowrap; text-align: right">41.70 ns</td>
    <td style="white-space: nowrap; text-align: right">±1444.94%</td>
    <td style="white-space: nowrap; text-align: right">18 ns</td>
    <td style="white-space: nowrap; text-align: right">74.91 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.88 M</td>
    <td style="white-space: nowrap; text-align: right">205.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±382.02%</td>
    <td style="white-space: nowrap; text-align: right">169 ns</td>
    <td style="white-space: nowrap; text-align: right">271.47 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.46 M</td>
    <td style="white-space: nowrap; text-align: right">224.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±419.03%</td>
    <td style="white-space: nowrap; text-align: right">159 ns</td>
    <td style="white-space: nowrap; text-align: right">613.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.59 M</td>
    <td style="white-space: nowrap; text-align: right">278.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±384.80%</td>
    <td style="white-space: nowrap; text-align: right">193 ns</td>
    <td style="white-space: nowrap; text-align: right">1705.54 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">945.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±374.12%</td>
    <td style="white-space: nowrap; text-align: right">385 ns</td>
    <td style="white-space: nowrap; text-align: right">18911.93 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">23.98 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.88 M</td>
    <td style="white-space: nowrap; text-align: right">4.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">4.46 M</td>
    <td style="white-space: nowrap; text-align: right">5.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.59 M</td>
    <td style="white-space: nowrap; text-align: right">6.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">22.68x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">144 B</td>
    <td>9.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">272 B</td>
    <td>17.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">368 B</td>
    <td>23.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">560 B</td>
    <td>35.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">28.73 M</td>
    <td style="white-space: nowrap; text-align: right">34.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±1306.09%</td>
    <td style="white-space: nowrap; text-align: right">21 ns</td>
    <td style="white-space: nowrap; text-align: right">68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.56 M</td>
    <td style="white-space: nowrap; text-align: right">219.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±149.01%</td>
    <td style="white-space: nowrap; text-align: right">201 ns</td>
    <td style="white-space: nowrap; text-align: right">420.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.28 M</td>
    <td style="white-space: nowrap; text-align: right">233.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±148.25%</td>
    <td style="white-space: nowrap; text-align: right">197 ns</td>
    <td style="white-space: nowrap; text-align: right">1775.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.38 M</td>
    <td style="white-space: nowrap; text-align: right">296.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±276.90%</td>
    <td style="white-space: nowrap; text-align: right">203 ns</td>
    <td style="white-space: nowrap; text-align: right">6649.87 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.58 M</td>
    <td style="white-space: nowrap; text-align: right">1735.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±241.76%</td>
    <td style="white-space: nowrap; text-align: right">740 ns</td>
    <td style="white-space: nowrap; text-align: right">25864.62 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">28.73 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.56 M</td>
    <td style="white-space: nowrap; text-align: right">6.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">4.28 M</td>
    <td style="white-space: nowrap; text-align: right">6.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.38 M</td>
    <td style="white-space: nowrap; text-align: right">8.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.58 M</td>
    <td style="white-space: nowrap; text-align: right">49.87x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">368 B</td>
    <td>23.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">176 B</td>
    <td>11.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">336 B</td>
    <td>21.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">384 B</td>
    <td>24.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">31.89 M</td>
    <td style="white-space: nowrap; text-align: right">31.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±174.18%</td>
    <td style="white-space: nowrap; text-align: right">27 ns</td>
    <td style="white-space: nowrap; text-align: right">78 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3.98 M</td>
    <td style="white-space: nowrap; text-align: right">251.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±66.34%</td>
    <td style="white-space: nowrap; text-align: right">231 ns</td>
    <td style="white-space: nowrap; text-align: right">644.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.30 M</td>
    <td style="white-space: nowrap; text-align: right">302.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±118.96%</td>
    <td style="white-space: nowrap; text-align: right">218 ns</td>
    <td style="white-space: nowrap; text-align: right">1949 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.66 M</td>
    <td style="white-space: nowrap; text-align: right">375.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±402.39%</td>
    <td style="white-space: nowrap; text-align: right">212 ns</td>
    <td style="white-space: nowrap; text-align: right">10003.78 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.48 M</td>
    <td style="white-space: nowrap; text-align: right">2077.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±94.84%</td>
    <td style="white-space: nowrap; text-align: right">1461 ns</td>
    <td style="white-space: nowrap; text-align: right">8688.67 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">31.89 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3.98 M</td>
    <td style="white-space: nowrap; text-align: right">8.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.30 M</td>
    <td style="white-space: nowrap; text-align: right">9.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.66 M</td>
    <td style="white-space: nowrap; text-align: right">11.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.48 M</td>
    <td style="white-space: nowrap; text-align: right">66.25x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">240 B</td>
    <td>15.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">368 B</td>
    <td>23.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">344 B</td>
    <td>21.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">4192 B</td>
    <td>262.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.01 M</td>
    <td style="white-space: nowrap; text-align: right">66.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±897.59%</td>
    <td style="white-space: nowrap; text-align: right">34 ns</td>
    <td style="white-space: nowrap; text-align: right">240.30 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.85 M</td>
    <td style="white-space: nowrap; text-align: right">350.45 ns</td>
    <td style="white-space: nowrap; text-align: right">±211.78%</td>
    <td style="white-space: nowrap; text-align: right">296 ns</td>
    <td style="white-space: nowrap; text-align: right">2087.69 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.68 M</td>
    <td style="white-space: nowrap; text-align: right">372.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±93.66%</td>
    <td style="white-space: nowrap; text-align: right">288 ns</td>
    <td style="white-space: nowrap; text-align: right">1983.09 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.35 M</td>
    <td style="white-space: nowrap; text-align: right">2890.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±244.77%</td>
    <td style="white-space: nowrap; text-align: right">252 ns</td>
    <td style="white-space: nowrap; text-align: right">22905 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.130 M</td>
    <td style="white-space: nowrap; text-align: right">7702.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±98.23%</td>
    <td style="white-space: nowrap; text-align: right">2931 ns</td>
    <td style="white-space: nowrap; text-align: right">27021.43 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.01 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.85 M</td>
    <td style="white-space: nowrap; text-align: right">5.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.68 M</td>
    <td style="white-space: nowrap; text-align: right">5.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.35 M</td>
    <td style="white-space: nowrap; text-align: right">43.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.130 M</td>
    <td style="white-space: nowrap; text-align: right">115.65x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">368 B</td>
    <td>23.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">376 B</td>
    <td>23.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">3904 B</td>
    <td>244.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.29 M</td>
    <td style="white-space: nowrap; text-align: right">65.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±50.23%</td>
    <td style="white-space: nowrap; text-align: right">58 ns</td>
    <td style="white-space: nowrap; text-align: right">218.35 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.14 M</td>
    <td style="white-space: nowrap; text-align: right">318.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±237.87%</td>
    <td style="white-space: nowrap; text-align: right">271 ns</td>
    <td style="white-space: nowrap; text-align: right">607.72 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.38 M</td>
    <td style="white-space: nowrap; text-align: right">420.98 ns</td>
    <td style="white-space: nowrap; text-align: right">±75.73%</td>
    <td style="white-space: nowrap; text-align: right">354 ns</td>
    <td style="white-space: nowrap; text-align: right">2185.75 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">774.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±104.81%</td>
    <td style="white-space: nowrap; text-align: right">321 ns</td>
    <td style="white-space: nowrap; text-align: right">2699 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0681 M</td>
    <td style="white-space: nowrap; text-align: right">14673.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±85.20%</td>
    <td style="white-space: nowrap; text-align: right">5850 ns</td>
    <td style="white-space: nowrap; text-align: right">61890.13 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.29 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.14 M</td>
    <td style="white-space: nowrap; text-align: right">4.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.38 M</td>
    <td style="white-space: nowrap; text-align: right">6.44x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">11.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0681 M</td>
    <td style="white-space: nowrap; text-align: right">224.43x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">416 B</td>
    <td>26.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">416 B</td>
    <td>26.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">320 B</td>
    <td>20.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">12.22 M</td>
    <td style="white-space: nowrap; text-align: right">81.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±54.49%</td>
    <td style="white-space: nowrap; text-align: right">74 ns</td>
    <td style="white-space: nowrap; text-align: right">224.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.60 M</td>
    <td style="white-space: nowrap; text-align: right">384.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±87.11%</td>
    <td style="white-space: nowrap; text-align: right">343 ns</td>
    <td style="white-space: nowrap; text-align: right">3264.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.81 M</td>
    <td style="white-space: nowrap; text-align: right">551.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±210.72%</td>
    <td style="white-space: nowrap; text-align: right">487 ns</td>
    <td style="white-space: nowrap; text-align: right">863.27 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.30 M</td>
    <td style="white-space: nowrap; text-align: right">3308 ns</td>
    <td style="white-space: nowrap; text-align: right">±284.26%</td>
    <td style="white-space: nowrap; text-align: right">306 ns</td>
    <td style="white-space: nowrap; text-align: right">32953.64 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0322 M</td>
    <td style="white-space: nowrap; text-align: right">31091.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±57.87%</td>
    <td style="white-space: nowrap; text-align: right">24658.50 ns</td>
    <td style="white-space: nowrap; text-align: right">83821 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">12.22 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.60 M</td>
    <td style="white-space: nowrap; text-align: right">4.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.81 M</td>
    <td style="white-space: nowrap; text-align: right">6.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.30 M</td>
    <td style="white-space: nowrap; text-align: right">40.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0322 M</td>
    <td style="white-space: nowrap; text-align: right">379.8x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">432 B</td>
    <td>27.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">408 B</td>
    <td>25.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">21728 B</td>
    <td>1358.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">7.80 M</td>
    <td style="white-space: nowrap; text-align: right">128.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±38.66%</td>
    <td style="white-space: nowrap; text-align: right">123 ns</td>
    <td style="white-space: nowrap; text-align: right">437.12 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">421.51 ns</td>
    <td style="white-space: nowrap; text-align: right">±29.21%</td>
    <td style="white-space: nowrap; text-align: right">392 ns</td>
    <td style="white-space: nowrap; text-align: right">1144 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.89 M</td>
    <td style="white-space: nowrap; text-align: right">529.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±97.65%</td>
    <td style="white-space: nowrap; text-align: right">426.50 ns</td>
    <td style="white-space: nowrap; text-align: right">4532 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">620.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±19.94%</td>
    <td style="white-space: nowrap; text-align: right">601.50 ns</td>
    <td style="white-space: nowrap; text-align: right">1086 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0146 M</td>
    <td style="white-space: nowrap; text-align: right">68336.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±65.88%</td>
    <td style="white-space: nowrap; text-align: right">104221 ns</td>
    <td style="white-space: nowrap; text-align: right">179172.80 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">7.80 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">3.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.89 M</td>
    <td style="white-space: nowrap; text-align: right">4.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">4.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0146 M</td>
    <td style="white-space: nowrap; text-align: right">533.19x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">496 B</td>
    <td>31.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">10384 B</td>
    <td>649.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">2.23 M</td>
    <td style="white-space: nowrap; text-align: right">448.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±26.01%</td>
    <td style="white-space: nowrap; text-align: right">418.50 ns</td>
    <td style="white-space: nowrap; text-align: right">830 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.19 M</td>
    <td style="white-space: nowrap; text-align: right">837.81 ns</td>
    <td style="white-space: nowrap; text-align: right">±29.87%</td>
    <td style="white-space: nowrap; text-align: right">777.50 ns</td>
    <td style="white-space: nowrap; text-align: right">1835 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.07 M</td>
    <td style="white-space: nowrap; text-align: right">931.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±14.65%</td>
    <td style="white-space: nowrap; text-align: right">927.50 ns</td>
    <td style="white-space: nowrap; text-align: right">1366 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">0.48 M</td>
    <td style="white-space: nowrap; text-align: right">2094.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±117.72%</td>
    <td style="white-space: nowrap; text-align: right">1469 ns</td>
    <td style="white-space: nowrap; text-align: right">12951 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.00557 M</td>
    <td style="white-space: nowrap; text-align: right">179505.01 ns</td>
    <td style="white-space: nowrap; text-align: right">±74.42%</td>
    <td style="white-space: nowrap; text-align: right">71524 ns</td>
    <td style="white-space: nowrap; text-align: right">350540 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">2.23 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.19 M</td>
    <td style="white-space: nowrap; text-align: right">1.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.07 M</td>
    <td style="white-space: nowrap; text-align: right">2.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">0.48 M</td>
    <td style="white-space: nowrap; text-align: right">4.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.00557 M</td>
    <td style="white-space: nowrap; text-align: right">400.38x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">528 B</td>
    <td>33.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">560 B</td>
    <td>35.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">528 B</td>
    <td>33.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">108832 B</td>
    <td>6802.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1681.40 K</td>
    <td style="white-space: nowrap; text-align: right">0.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.33%</td>
    <td style="white-space: nowrap; text-align: right">0.56 μs</td>
    <td style="white-space: nowrap; text-align: right">0.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1062.89 K</td>
    <td style="white-space: nowrap; text-align: right">0.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.79%</td>
    <td style="white-space: nowrap; text-align: right">0.91 μs</td>
    <td style="white-space: nowrap; text-align: right">1.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">988.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±6.75%</td>
    <td style="white-space: nowrap; text-align: right">1.00 μs</td>
    <td style="white-space: nowrap; text-align: right">1.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">513.76 K</td>
    <td style="white-space: nowrap; text-align: right">1.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±4.54%</td>
    <td style="white-space: nowrap; text-align: right">1.94 μs</td>
    <td style="white-space: nowrap; text-align: right">2.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.16 K</td>
    <td style="white-space: nowrap; text-align: right">316.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±78.46%</td>
    <td style="white-space: nowrap; text-align: right">110.70 μs</td>
    <td style="white-space: nowrap; text-align: right">736.71 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1681.40 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1062.89 K</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">988.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">513.76 K</td>
    <td style="white-space: nowrap; text-align: right">3.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.16 K</td>
    <td style="white-space: nowrap; text-align: right">532.92x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">560 B</td>
    <td>35.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">560 B</td>
    <td>35.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">76224 B</td>
    <td>4764.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1253.00 K</td>
    <td style="white-space: nowrap; text-align: right">0.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.44%</td>
    <td style="white-space: nowrap; text-align: right">0.78 μs</td>
    <td style="white-space: nowrap; text-align: right">1.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">976.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.58%</td>
    <td style="white-space: nowrap; text-align: right">1.03 μs</td>
    <td style="white-space: nowrap; text-align: right">1.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">814.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.22%</td>
    <td style="white-space: nowrap; text-align: right">1.20 μs</td>
    <td style="white-space: nowrap; text-align: right">1.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">437.37 K</td>
    <td style="white-space: nowrap; text-align: right">2.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±21.00%</td>
    <td style="white-space: nowrap; text-align: right">2.12 μs</td>
    <td style="white-space: nowrap; text-align: right">3.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.32 K</td>
    <td style="white-space: nowrap; text-align: right">301.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±61.17%</td>
    <td style="white-space: nowrap; text-align: right">242.76 μs</td>
    <td style="white-space: nowrap; text-align: right">884.32 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1253.00 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">976.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">814.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">437.37 K</td>
    <td style="white-space: nowrap; text-align: right">2.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.32 K</td>
    <td style="white-space: nowrap; text-align: right">377.16x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">560 B</td>
    <td>35.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">600 B</td>
    <td>37.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">704 B</td>
    <td>44.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">524224 B</td>
    <td>32764.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1137.92 K</td>
    <td style="white-space: nowrap; text-align: right">0.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.97%</td>
    <td style="white-space: nowrap; text-align: right">0.85 μs</td>
    <td style="white-space: nowrap; text-align: right">1.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">904.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.60%</td>
    <td style="white-space: nowrap; text-align: right">1.11 μs</td>
    <td style="white-space: nowrap; text-align: right">1.18 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">784.52 K</td>
    <td style="white-space: nowrap; text-align: right">1.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.97%</td>
    <td style="white-space: nowrap; text-align: right">1.21 μs</td>
    <td style="white-space: nowrap; text-align: right">1.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">471.88 K</td>
    <td style="white-space: nowrap; text-align: right">2.12 μs</td>
    <td style="white-space: nowrap; text-align: right">±2.98%</td>
    <td style="white-space: nowrap; text-align: right">2.15 μs</td>
    <td style="white-space: nowrap; text-align: right">2.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.16 K</td>
    <td style="white-space: nowrap; text-align: right">865.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±76.66%</td>
    <td style="white-space: nowrap; text-align: right">572.86 μs</td>
    <td style="white-space: nowrap; text-align: right">2052.24 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1137.92 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">904.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">784.52 K</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">471.88 K</td>
    <td style="white-space: nowrap; text-align: right">2.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.16 K</td>
    <td style="white-space: nowrap; text-align: right">984.93x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">720 B</td>
    <td>45.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">447952 B</td>
    <td>27997.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">913.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±23.12%</td>
    <td style="white-space: nowrap; text-align: right">1.09 μs</td>
    <td style="white-space: nowrap; text-align: right">1.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">907.85 K</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±1.35%</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">1.11 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">701.75 K</td>
    <td style="white-space: nowrap; text-align: right">1.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.69%</td>
    <td style="white-space: nowrap; text-align: right">1.43 μs</td>
    <td style="white-space: nowrap; text-align: right">1.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">434.12 K</td>
    <td style="white-space: nowrap; text-align: right">2.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.25%</td>
    <td style="white-space: nowrap; text-align: right">2.30 μs</td>
    <td style="white-space: nowrap; text-align: right">2.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.196 K</td>
    <td style="white-space: nowrap; text-align: right">5113.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±3.91%</td>
    <td style="white-space: nowrap; text-align: right">5113.04 μs</td>
    <td style="white-space: nowrap; text-align: right">5254.29 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">913.24 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">907.85 K</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">701.75 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">434.12 K</td>
    <td style="white-space: nowrap; text-align: right">2.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.196 K</td>
    <td style="white-space: nowrap; text-align: right">4669.44x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">632 B</td>
    <td>39.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">752 B</td>
    <td>47.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">2469504 B</td>
    <td>154344.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">1278.77 K</td>
    <td style="white-space: nowrap; text-align: right">0.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">0.78 μs</td>
    <td style="white-space: nowrap; text-align: right">0.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">819.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.22 μs</td>
    <td style="white-space: nowrap; text-align: right">1.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">738.01 K</td>
    <td style="white-space: nowrap; text-align: right">1.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.36 μs</td>
    <td style="white-space: nowrap; text-align: right">1.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">486.14 K</td>
    <td style="white-space: nowrap; text-align: right">2.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2.06 μs</td>
    <td style="white-space: nowrap; text-align: right">2.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.45 K</td>
    <td style="white-space: nowrap; text-align: right">2207.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2207.27 μs</td>
    <td style="white-space: nowrap; text-align: right">2207.27 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap;text-align: right">1278.77 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">819.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">738.01 K</td>
    <td style="white-space: nowrap; text-align: right">1.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">486.14 K</td>
    <td style="white-space: nowrap; text-align: right">2.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.45 K</td>
    <td style="white-space: nowrap; text-align: right">2822.59x</td>
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
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">816 B</td>
    <td>51.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">1207456 B</td>
    <td>75466.0x</td>
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
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">910.75 K</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">668.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.50 μs</td>
    <td style="white-space: nowrap; text-align: right">1.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">524.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.91 μs</td>
    <td style="white-space: nowrap; text-align: right">1.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">523.01 K</td>
    <td style="white-space: nowrap; text-align: right">1.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.91 μs</td>
    <td style="white-space: nowrap; text-align: right">1.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.20 K</td>
    <td style="white-space: nowrap; text-align: right">4997.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">4997.97 μs</td>
    <td style="white-space: nowrap; text-align: right">4997.97 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">910.75 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap; text-align: right">668.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">524.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">523.01 K</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.20 K</td>
    <td style="white-space: nowrap; text-align: right">4551.88x</td>
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
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">752 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, backwards)</td>
    <td style="white-space: nowrap">16 B</td>
    <td>0.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">712 B</td>
    <td>0.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (PersistentVector)</td>
    <td style="white-space: nowrap">944 B</td>
    <td>1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">3121584 B</td>
    <td>4151.04x</td>
  </tr>

</table>


<hr/>

