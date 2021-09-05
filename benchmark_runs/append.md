
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">22.60 M</td>
    <td style="white-space: nowrap; text-align: right">44.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±1637.95%</td>
    <td style="white-space: nowrap; text-align: right">17 ns</td>
    <td style="white-space: nowrap; text-align: right">260 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.37 M</td>
    <td style="white-space: nowrap; text-align: right">296.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±519.19%</td>
    <td style="white-space: nowrap; text-align: right">170 ns</td>
    <td style="white-space: nowrap; text-align: right">941.72 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.41 M</td>
    <td style="white-space: nowrap; text-align: right">414.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±843.73%</td>
    <td style="white-space: nowrap; text-align: right">114 ns</td>
    <td style="white-space: nowrap; text-align: right">3978 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.148 M</td>
    <td style="white-space: nowrap; text-align: right">6767.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±179.75%</td>
    <td style="white-space: nowrap; text-align: right">4771 ns</td>
    <td style="white-space: nowrap; text-align: right">57050.10 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">22.60 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.37 M</td>
    <td style="white-space: nowrap; text-align: right">6.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.41 M</td>
    <td style="white-space: nowrap; text-align: right">9.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.148 M</td>
    <td style="white-space: nowrap; text-align: right">152.92x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">272 B</td>
    <td>17.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">21.40 M</td>
    <td style="white-space: nowrap; text-align: right">46.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±1070.87%</td>
    <td style="white-space: nowrap; text-align: right">21 ns</td>
    <td style="white-space: nowrap; text-align: right">342 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.52 M</td>
    <td style="white-space: nowrap; text-align: right">221.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±653.28%</td>
    <td style="white-space: nowrap; text-align: right">148 ns</td>
    <td style="white-space: nowrap; text-align: right">550 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.75 M</td>
    <td style="white-space: nowrap; text-align: right">571.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±536.74%</td>
    <td style="white-space: nowrap; text-align: right">194 ns</td>
    <td style="white-space: nowrap; text-align: right">11763.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.52 M</td>
    <td style="white-space: nowrap; text-align: right">659.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±520.83%</td>
    <td style="white-space: nowrap; text-align: right">440 ns</td>
    <td style="white-space: nowrap; text-align: right">2560.90 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">21.40 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.52 M</td>
    <td style="white-space: nowrap; text-align: right">4.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.75 M</td>
    <td style="white-space: nowrap; text-align: right">12.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.52 M</td>
    <td style="white-space: nowrap; text-align: right">14.12x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
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

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">232 B</td>
    <td>14.5x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">19.03 M</td>
    <td style="white-space: nowrap; text-align: right">52.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±1346.38%</td>
    <td style="white-space: nowrap; text-align: right">19 ns</td>
    <td style="white-space: nowrap; text-align: right">192.27 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.09 M</td>
    <td style="white-space: nowrap; text-align: right">323.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±365.43%</td>
    <td style="white-space: nowrap; text-align: right">213 ns</td>
    <td style="white-space: nowrap; text-align: right">1952.28 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.48 M</td>
    <td style="white-space: nowrap; text-align: right">403.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±637.46%</td>
    <td style="white-space: nowrap; text-align: right">201 ns</td>
    <td style="white-space: nowrap; text-align: right">3715.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.01 M</td>
    <td style="white-space: nowrap; text-align: right">987.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±379.42%</td>
    <td style="white-space: nowrap; text-align: right">363 ns</td>
    <td style="white-space: nowrap; text-align: right">22465.40 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">19.03 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.09 M</td>
    <td style="white-space: nowrap; text-align: right">6.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.48 M</td>
    <td style="white-space: nowrap; text-align: right">7.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">1.01 M</td>
    <td style="white-space: nowrap; text-align: right">18.78x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">368 B</td>
    <td>23.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">272 B</td>
    <td>17.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">20.57 M</td>
    <td style="white-space: nowrap; text-align: right">48.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±668.41%</td>
    <td style="white-space: nowrap; text-align: right">32 ns</td>
    <td style="white-space: nowrap; text-align: right">253.61 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.80 M</td>
    <td style="white-space: nowrap; text-align: right">263.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±273.43%</td>
    <td style="white-space: nowrap; text-align: right">223 ns</td>
    <td style="white-space: nowrap; text-align: right">592.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.52 M</td>
    <td style="white-space: nowrap; text-align: right">284.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±170.68%</td>
    <td style="white-space: nowrap; text-align: right">236 ns</td>
    <td style="white-space: nowrap; text-align: right">867.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.56 M</td>
    <td style="white-space: nowrap; text-align: right">1770.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±235.47%</td>
    <td style="white-space: nowrap; text-align: right">703 ns</td>
    <td style="white-space: nowrap; text-align: right">25160.78 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">20.57 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.80 M</td>
    <td style="white-space: nowrap; text-align: right">5.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.52 M</td>
    <td style="white-space: nowrap; text-align: right">5.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.56 M</td>
    <td style="white-space: nowrap; text-align: right">36.42x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">368 B</td>
    <td>23.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.07 M</td>
    <td style="white-space: nowrap; text-align: right">66.36 ns</td>
    <td style="white-space: nowrap; text-align: right">±591.91%</td>
    <td style="white-space: nowrap; text-align: right">45 ns</td>
    <td style="white-space: nowrap; text-align: right">305.88 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.03 M</td>
    <td style="white-space: nowrap; text-align: right">491.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±219.16%</td>
    <td style="white-space: nowrap; text-align: right">237 ns</td>
    <td style="white-space: nowrap; text-align: right">4617.08 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.69 M</td>
    <td style="white-space: nowrap; text-align: right">591.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±366.88%</td>
    <td style="white-space: nowrap; text-align: right">268 ns</td>
    <td style="white-space: nowrap; text-align: right">12094.91 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.38 M</td>
    <td style="white-space: nowrap; text-align: right">2611.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±156.59%</td>
    <td style="white-space: nowrap; text-align: right">1381 ns</td>
    <td style="white-space: nowrap; text-align: right">19545.00 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.07 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.03 M</td>
    <td style="white-space: nowrap; text-align: right">7.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.69 M</td>
    <td style="white-space: nowrap; text-align: right">8.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.38 M</td>
    <td style="white-space: nowrap; text-align: right">39.36x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">15.47 M</td>
    <td style="white-space: nowrap; text-align: right">0.0646 μs</td>
    <td style="white-space: nowrap; text-align: right">±142.01%</td>
    <td style="white-space: nowrap; text-align: right">0.0520 μs</td>
    <td style="white-space: nowrap; text-align: right">0.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">0.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±141.05%</td>
    <td style="white-space: nowrap; text-align: right">0.28 μs</td>
    <td style="white-space: nowrap; text-align: right">4.70 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.73 M</td>
    <td style="white-space: nowrap; text-align: right">1.37 μs</td>
    <td style="white-space: nowrap; text-align: right">±339.09%</td>
    <td style="white-space: nowrap; text-align: right">0.31 μs</td>
    <td style="white-space: nowrap; text-align: right">20.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.123 M</td>
    <td style="white-space: nowrap; text-align: right">8.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±114.85%</td>
    <td style="white-space: nowrap; text-align: right">3.00 μs</td>
    <td style="white-space: nowrap; text-align: right">40.46 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">15.47 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">7.73x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.73 M</td>
    <td style="white-space: nowrap; text-align: right">21.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.123 M</td>
    <td style="white-space: nowrap; text-align: right">125.89x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">13.53 M</td>
    <td style="white-space: nowrap; text-align: right">0.0739 μs</td>
    <td style="white-space: nowrap; text-align: right">±130.11%</td>
    <td style="white-space: nowrap; text-align: right">0.0545 μs</td>
    <td style="white-space: nowrap; text-align: right">0.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.85 M</td>
    <td style="white-space: nowrap; text-align: right">0.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±364.62%</td>
    <td style="white-space: nowrap; text-align: right">0.32 μs</td>
    <td style="white-space: nowrap; text-align: right">4.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.95 M</td>
    <td style="white-space: nowrap; text-align: right">1.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±206.34%</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
    <td style="white-space: nowrap; text-align: right">19.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0658 M</td>
    <td style="white-space: nowrap; text-align: right">15.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.29%</td>
    <td style="white-space: nowrap; text-align: right">6.47 μs</td>
    <td style="white-space: nowrap; text-align: right">65.10 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">13.53 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.85 M</td>
    <td style="white-space: nowrap; text-align: right">7.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.95 M</td>
    <td style="white-space: nowrap; text-align: right">14.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0658 M</td>
    <td style="white-space: nowrap; text-align: right">205.68x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">5139.04 K</td>
    <td style="white-space: nowrap; text-align: right">0.195 μs</td>
    <td style="white-space: nowrap; text-align: right">±471.72%</td>
    <td style="white-space: nowrap; text-align: right">0.111 μs</td>
    <td style="white-space: nowrap; text-align: right">1.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">374.81 K</td>
    <td style="white-space: nowrap; text-align: right">2.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±328.97%</td>
    <td style="white-space: nowrap; text-align: right">0.37 μs</td>
    <td style="white-space: nowrap; text-align: right">44.89 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">304.38 K</td>
    <td style="white-space: nowrap; text-align: right">3.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±151.79%</td>
    <td style="white-space: nowrap; text-align: right">1.99 μs</td>
    <td style="white-space: nowrap; text-align: right">35.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">27.95 K</td>
    <td style="white-space: nowrap; text-align: right">35.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±74.51%</td>
    <td style="white-space: nowrap; text-align: right">24.82 μs</td>
    <td style="white-space: nowrap; text-align: right">133.90 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">5139.04 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">374.81 K</td>
    <td style="white-space: nowrap; text-align: right">13.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">304.38 K</td>
    <td style="white-space: nowrap; text-align: right">16.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">27.95 K</td>
    <td style="white-space: nowrap; text-align: right">183.84x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">408 B</td>
    <td>25.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">464 B</td>
    <td>29.0x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">4.56 M</td>
    <td style="white-space: nowrap; text-align: right">0.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±157.55%</td>
    <td style="white-space: nowrap; text-align: right">0.128 μs</td>
    <td style="white-space: nowrap; text-align: right">2.55 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">0.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±69.23%</td>
    <td style="white-space: nowrap; text-align: right">0.61 μs</td>
    <td style="white-space: nowrap; text-align: right">3.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.91 M</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±71.85%</td>
    <td style="white-space: nowrap; text-align: right">0.91 μs</td>
    <td style="white-space: nowrap; text-align: right">4.74 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0133 M</td>
    <td style="white-space: nowrap; text-align: right">75.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.01%</td>
    <td style="white-space: nowrap; text-align: right">102.41 μs</td>
    <td style="white-space: nowrap; text-align: right">367.58 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">4.56 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">3.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.91 M</td>
    <td style="white-space: nowrap; text-align: right">5.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.0133 M</td>
    <td style="white-space: nowrap; text-align: right">344.05x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">1752.63 K</td>
    <td style="white-space: nowrap; text-align: right">0.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.32%</td>
    <td style="white-space: nowrap; text-align: right">0.41 μs</td>
    <td style="white-space: nowrap; text-align: right">3.43 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">824.49 K</td>
    <td style="white-space: nowrap; text-align: right">1.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.15%</td>
    <td style="white-space: nowrap; text-align: right">1.13 μs</td>
    <td style="white-space: nowrap; text-align: right">2.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">203.71 K</td>
    <td style="white-space: nowrap; text-align: right">4.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±53.75%</td>
    <td style="white-space: nowrap; text-align: right">4.02 μs</td>
    <td style="white-space: nowrap; text-align: right">11.11 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">4.38 K</td>
    <td style="white-space: nowrap; text-align: right">228.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±80.21%</td>
    <td style="white-space: nowrap; text-align: right">308.70 μs</td>
    <td style="white-space: nowrap; text-align: right">801.61 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">1752.63 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">824.49 K</td>
    <td style="white-space: nowrap; text-align: right">2.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">203.71 K</td>
    <td style="white-space: nowrap; text-align: right">8.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">4.38 K</td>
    <td style="white-space: nowrap; text-align: right">399.84x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">1096.49 K</td>
    <td style="white-space: nowrap; text-align: right">0.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±26.75%</td>
    <td style="white-space: nowrap; text-align: right">0.85 μs</td>
    <td style="white-space: nowrap; text-align: right">2.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">663.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±61.91%</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
    <td style="white-space: nowrap; text-align: right">4.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">650.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±44.33%</td>
    <td style="white-space: nowrap; text-align: right">1.21 μs</td>
    <td style="white-space: nowrap; text-align: right">3.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.55 K</td>
    <td style="white-space: nowrap; text-align: right">392.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±78.26%</td>
    <td style="white-space: nowrap; text-align: right">446.11 μs</td>
    <td style="white-space: nowrap; text-align: right">1195.97 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">1096.49 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">663.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">650.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">2.55 K</td>
    <td style="white-space: nowrap; text-align: right">429.98x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
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
    <td style="white-space: nowrap">560 B</td>
    <td>35.0x</td>
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
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">626.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±38.71%</td>
    <td style="white-space: nowrap; text-align: right">1.33 μs</td>
    <td style="white-space: nowrap; text-align: right">2.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">530.56 K</td>
    <td style="white-space: nowrap; text-align: right">1.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±166.24%</td>
    <td style="white-space: nowrap; text-align: right">0.85 μs</td>
    <td style="white-space: nowrap; text-align: right">10.79 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">417.51 K</td>
    <td style="white-space: nowrap; text-align: right">2.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.48%</td>
    <td style="white-space: nowrap; text-align: right">1.34 μs</td>
    <td style="white-space: nowrap; text-align: right">6.14 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.21 K</td>
    <td style="white-space: nowrap; text-align: right">311.64 μs</td>
    <td style="white-space: nowrap; text-align: right">±68.98%</td>
    <td style="white-space: nowrap; text-align: right">256.52 μs</td>
    <td style="white-space: nowrap; text-align: right">957.55 μs</td>
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
    <td style="white-space: nowrap;text-align: right">626.51 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">530.56 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">417.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">3.21 K</td>
    <td style="white-space: nowrap; text-align: right">195.25x</td>
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
    <td style="white-space: nowrap">560 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
    <td>0.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">600 B</td>
    <td>1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">524224 B</td>
    <td>936.11x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">1006.29 K</td>
    <td style="white-space: nowrap; text-align: right">0.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±18.05%</td>
    <td style="white-space: nowrap; text-align: right">0.91 μs</td>
    <td style="white-space: nowrap; text-align: right">1.26 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">715.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.27%</td>
    <td style="white-space: nowrap; text-align: right">1.42 μs</td>
    <td style="white-space: nowrap; text-align: right">1.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">235.57 K</td>
    <td style="white-space: nowrap; text-align: right">4.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±95.68%</td>
    <td style="white-space: nowrap; text-align: right">4.25 μs</td>
    <td style="white-space: nowrap; text-align: right">7.12 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.97 K</td>
    <td style="white-space: nowrap; text-align: right">1036.17 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.94%</td>
    <td style="white-space: nowrap; text-align: right">566.63 μs</td>
    <td style="white-space: nowrap; text-align: right">2888.22 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">1006.29 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">715.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.41x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">235.57 K</td>
    <td style="white-space: nowrap; text-align: right">4.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.97 K</td>
    <td style="white-space: nowrap; text-align: right">1042.69x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>41.0x</td>
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
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">634.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.57 μs</td>
    <td style="white-space: nowrap; text-align: right">1.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">344.83 K</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±79.34%</td>
    <td style="white-space: nowrap; text-align: right">2.90 μs</td>
    <td style="white-space: nowrap; text-align: right">4.53 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">311.28 K</td>
    <td style="white-space: nowrap; text-align: right">3.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±71.91%</td>
    <td style="white-space: nowrap; text-align: right">3.21 μs</td>
    <td style="white-space: nowrap; text-align: right">4.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.27 K</td>
    <td style="white-space: nowrap; text-align: right">3704.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±15.64%</td>
    <td style="white-space: nowrap; text-align: right">3704.19 μs</td>
    <td style="white-space: nowrap; text-align: right">4113.82 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap;text-align: right">634.92 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">344.83 K</td>
    <td style="white-space: nowrap; text-align: right">1.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">311.28 K</td>
    <td style="white-space: nowrap; text-align: right">2.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.27 K</td>
    <td style="white-space: nowrap; text-align: right">2351.87x</td>
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
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">632 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">656 B</td>
    <td>1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
    <td>0.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">2469504 B</td>
    <td>3907.44x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">1193.32 K</td>
    <td style="white-space: nowrap; text-align: right">0.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">0.84 μs</td>
    <td style="white-space: nowrap; text-align: right">0.84 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">807.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">663.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.51 μs</td>
    <td style="white-space: nowrap; text-align: right">1.51 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.44 K</td>
    <td style="white-space: nowrap; text-align: right">2271.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2271.53 μs</td>
    <td style="white-space: nowrap; text-align: right">2271.53 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">1193.32 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">807.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">663.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.44 K</td>
    <td style="white-space: nowrap; text-align: right">2710.65x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap; text-align: right">819.67 K</td>
    <td style="white-space: nowrap; text-align: right">1.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.22 μs</td>
    <td style="white-space: nowrap; text-align: right">1.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">693.96 K</td>
    <td style="white-space: nowrap; text-align: right">1.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.44 μs</td>
    <td style="white-space: nowrap; text-align: right">1.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">526.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.135 K</td>
    <td style="white-space: nowrap; text-align: right">7412.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">7412.01 μs</td>
    <td style="white-space: nowrap; text-align: right">7412.01 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap;text-align: right">819.67 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">693.96 K</td>
    <td style="white-space: nowrap; text-align: right">1.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">526.04 K</td>
    <td style="white-space: nowrap; text-align: right">1.56x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap; text-align: right">0.135 K</td>
    <td style="white-space: nowrap; text-align: right">6075.42x</td>
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
    <td style="white-space: nowrap">[val | list] (list, interpreted backwards)</td>
    <td style="white-space: nowrap">16 B</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (ErlangArray)</td>
    <td style="white-space: nowrap">752 B</td>
    <td>47.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.append/2 (MapArray)</td>
    <td style="white-space: nowrap">712 B</td>
    <td>44.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">list ++ [val] (list)</td>
    <td style="white-space: nowrap">3121584 B</td>
    <td>195099.0x</td>
  </tr>

</table>


<hr/>

