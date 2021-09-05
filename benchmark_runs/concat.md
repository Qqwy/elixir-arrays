
# Benchmark

Comparing `Arrays.concat` with `Enum.concat` (which concatenates plain lists).

Lists will probably always win out, as
concatenating many elements to the end of a list can be done
in a very fast way by building the list up in reverse (and reversing it at the end).

However, it is a good baseline to see how much overhead the array implementations bring
w.r.t. lists for this kind of operation.


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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1113.02 K</td>
    <td style="white-space: nowrap; text-align: right">0.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±314.65%</td>
    <td style="white-space: nowrap; text-align: right">0.69 μs</td>
    <td style="white-space: nowrap; text-align: right">1.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">99.18 K</td>
    <td style="white-space: nowrap; text-align: right">10.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.11%</td>
    <td style="white-space: nowrap; text-align: right">6.84 μs</td>
    <td style="white-space: nowrap; text-align: right">56.92 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">93.38 K</td>
    <td style="white-space: nowrap; text-align: right">10.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±90.18%</td>
    <td style="white-space: nowrap; text-align: right">7.32 μs</td>
    <td style="white-space: nowrap; text-align: right">47.47 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1113.02 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">99.18 K</td>
    <td style="white-space: nowrap; text-align: right">11.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">93.38 K</td>
    <td style="white-space: nowrap; text-align: right">11.92x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">1.13 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">12.82 KB</td>
    <td>11.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">12.82 KB</td>
    <td>11.32x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">598.38 K</td>
    <td style="white-space: nowrap; text-align: right">1.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±247.28%</td>
    <td style="white-space: nowrap; text-align: right">1.22 μs</td>
    <td style="white-space: nowrap; text-align: right">22.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">65.43 K</td>
    <td style="white-space: nowrap; text-align: right">15.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±53.46%</td>
    <td style="white-space: nowrap; text-align: right">11.73 μs</td>
    <td style="white-space: nowrap; text-align: right">43.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">46.19 K</td>
    <td style="white-space: nowrap; text-align: right">21.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±95.07%</td>
    <td style="white-space: nowrap; text-align: right">15.12 μs</td>
    <td style="white-space: nowrap; text-align: right">79.23 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">598.38 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">65.43 K</td>
    <td style="white-space: nowrap; text-align: right">9.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">46.19 K</td>
    <td style="white-space: nowrap; text-align: right">12.95x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">1.52 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">20.50 KB</td>
    <td>13.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">20.50 KB</td>
    <td>13.46x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">304.07 K</td>
    <td style="white-space: nowrap; text-align: right">3.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±181.31%</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
    <td style="white-space: nowrap; text-align: right">36.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">37.08 K</td>
    <td style="white-space: nowrap; text-align: right">26.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±37.92%</td>
    <td style="white-space: nowrap; text-align: right">21.07 μs</td>
    <td style="white-space: nowrap; text-align: right">51.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">28.39 K</td>
    <td style="white-space: nowrap; text-align: right">35.23 μs</td>
    <td style="white-space: nowrap; text-align: right">±102.12%</td>
    <td style="white-space: nowrap; text-align: right">27.77 μs</td>
    <td style="white-space: nowrap; text-align: right">96.51 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">304.07 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">37.08 K</td>
    <td style="white-space: nowrap; text-align: right">8.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">28.39 K</td>
    <td style="white-space: nowrap; text-align: right">10.71x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">3.12 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">38.21 KB</td>
    <td>12.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">38.21 KB</td>
    <td>12.26x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">144.71 K</td>
    <td style="white-space: nowrap; text-align: right">6.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±130.56%</td>
    <td style="white-space: nowrap; text-align: right">4.60 μs</td>
    <td style="white-space: nowrap; text-align: right">59.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">16.46 K</td>
    <td style="white-space: nowrap; text-align: right">60.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.13%</td>
    <td style="white-space: nowrap; text-align: right">63.26 μs</td>
    <td style="white-space: nowrap; text-align: right">83.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">13.46 K</td>
    <td style="white-space: nowrap; text-align: right">74.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±36.74%</td>
    <td style="white-space: nowrap; text-align: right">66.71 μs</td>
    <td style="white-space: nowrap; text-align: right">196.24 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">144.71 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">16.46 K</td>
    <td style="white-space: nowrap; text-align: right">8.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">13.46 K</td>
    <td style="white-space: nowrap; text-align: right">10.75x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">4.51 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">78.16 KB</td>
    <td>17.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">78.16 KB</td>
    <td>17.34x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">78.11 K</td>
    <td style="white-space: nowrap; text-align: right">12.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±74.33%</td>
    <td style="white-space: nowrap; text-align: right">9.07 μs</td>
    <td style="white-space: nowrap; text-align: right">45.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.89 K</td>
    <td style="white-space: nowrap; text-align: right">169.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.44%</td>
    <td style="white-space: nowrap; text-align: right">156.24 μs</td>
    <td style="white-space: nowrap; text-align: right">303.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.58 K</td>
    <td style="white-space: nowrap; text-align: right">179.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±40.24%</td>
    <td style="white-space: nowrap; text-align: right">158.77 μs</td>
    <td style="white-space: nowrap; text-align: right">487.59 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">78.11 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.89 K</td>
    <td style="white-space: nowrap; text-align: right">13.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">5.58 K</td>
    <td style="white-space: nowrap; text-align: right">14.01x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">9.05 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">165.01 KB</td>
    <td>18.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">165.01 KB</td>
    <td>18.22x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">39.21 K</td>
    <td style="white-space: nowrap; text-align: right">25.50 μs</td>
    <td style="white-space: nowrap; text-align: right">±50.40%</td>
    <td style="white-space: nowrap; text-align: right">18.08 μs</td>
    <td style="white-space: nowrap; text-align: right">57.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.05 K</td>
    <td style="white-space: nowrap; text-align: right">327.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±12.32%</td>
    <td style="white-space: nowrap; text-align: right">313.78 μs</td>
    <td style="white-space: nowrap; text-align: right">508.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.10 K</td>
    <td style="white-space: nowrap; text-align: right">476.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±32.79%</td>
    <td style="white-space: nowrap; text-align: right">429.29 μs</td>
    <td style="white-space: nowrap; text-align: right">1101.74 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">39.21 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.05 K</td>
    <td style="white-space: nowrap; text-align: right">12.84x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.10 K</td>
    <td style="white-space: nowrap; text-align: right">18.67x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">21.32 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">358.31 KB</td>
    <td>16.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">358.31 KB</td>
    <td>16.81x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">19.30 K</td>
    <td style="white-space: nowrap; text-align: right">51.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±27.70%</td>
    <td style="white-space: nowrap; text-align: right">54.34 μs</td>
    <td style="white-space: nowrap; text-align: right">76.22 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.38 K</td>
    <td style="white-space: nowrap; text-align: right">724.18 μs</td>
    <td style="white-space: nowrap; text-align: right">±5.50%</td>
    <td style="white-space: nowrap; text-align: right">717.95 μs</td>
    <td style="white-space: nowrap; text-align: right">848.57 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.34 K</td>
    <td style="white-space: nowrap; text-align: right">748.19 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.06%</td>
    <td style="white-space: nowrap; text-align: right">720.39 μs</td>
    <td style="white-space: nowrap; text-align: right">1208.17 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">19.30 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.38 K</td>
    <td style="white-space: nowrap; text-align: right">13.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.34 K</td>
    <td style="white-space: nowrap; text-align: right">14.44x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">32.43 KB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">777.35 KB</td>
    <td>23.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">777.35 KB</td>
    <td>23.97x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">8595.66</td>
    <td style="white-space: nowrap; text-align: right">0.116 ms</td>
    <td style="white-space: nowrap; text-align: right">±16.28%</td>
    <td style="white-space: nowrap; text-align: right">0.118 ms</td>
    <td style="white-space: nowrap; text-align: right">0.165 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">610.45</td>
    <td style="white-space: nowrap; text-align: right">1.64 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.12%</td>
    <td style="white-space: nowrap; text-align: right">1.63 ms</td>
    <td style="white-space: nowrap; text-align: right">1.84 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">423.12</td>
    <td style="white-space: nowrap; text-align: right">2.36 ms</td>
    <td style="white-space: nowrap; text-align: right">±40.45%</td>
    <td style="white-space: nowrap; text-align: right">1.88 ms</td>
    <td style="white-space: nowrap; text-align: right">5.48 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">8595.66</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">610.45</td>
    <td style="white-space: nowrap; text-align: right">14.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">423.12</td>
    <td style="white-space: nowrap; text-align: right">20.32x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">0.0634 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1.65 MB</td>
    <td>26.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">1.65 MB</td>
    <td>26.05x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">3478.00</td>
    <td style="white-space: nowrap; text-align: right">0.29 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.62%</td>
    <td style="white-space: nowrap; text-align: right">0.29 ms</td>
    <td style="white-space: nowrap; text-align: right">0.35 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">282.00</td>
    <td style="white-space: nowrap; text-align: right">3.55 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.43%</td>
    <td style="white-space: nowrap; text-align: right">3.53 ms</td>
    <td style="white-space: nowrap; text-align: right">3.99 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">277.02</td>
    <td style="white-space: nowrap; text-align: right">3.61 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.32%</td>
    <td style="white-space: nowrap; text-align: right">3.54 ms</td>
    <td style="white-space: nowrap; text-align: right">5.54 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">3478.00</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">282.00</td>
    <td style="white-space: nowrap; text-align: right">12.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">277.02</td>
    <td style="white-space: nowrap; text-align: right">12.55x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">0.147 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">3.57 MB</td>
    <td>24.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">3.57 MB</td>
    <td>24.34x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">1744.81</td>
    <td style="white-space: nowrap; text-align: right">0.57 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.14%</td>
    <td style="white-space: nowrap; text-align: right">0.58 ms</td>
    <td style="white-space: nowrap; text-align: right">0.75 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">134.61</td>
    <td style="white-space: nowrap; text-align: right">7.43 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.03%</td>
    <td style="white-space: nowrap; text-align: right">7.45 ms</td>
    <td style="white-space: nowrap; text-align: right">8.28 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">81.60</td>
    <td style="white-space: nowrap; text-align: right">12.26 ms</td>
    <td style="white-space: nowrap; text-align: right">±34.04%</td>
    <td style="white-space: nowrap; text-align: right">11.40 ms</td>
    <td style="white-space: nowrap; text-align: right">20.04 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">1744.81</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">134.61</td>
    <td style="white-space: nowrap; text-align: right">12.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">81.60</td>
    <td style="white-space: nowrap; text-align: right">21.38x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">0.39 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">7.73 MB</td>
    <td>20.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">7.73 MB</td>
    <td>20.05x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">812.20</td>
    <td style="white-space: nowrap; text-align: right">1.23 ms</td>
    <td style="white-space: nowrap; text-align: right">±11.02%</td>
    <td style="white-space: nowrap; text-align: right">1.17 ms</td>
    <td style="white-space: nowrap; text-align: right">1.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">62.37</td>
    <td style="white-space: nowrap; text-align: right">16.03 ms</td>
    <td style="white-space: nowrap; text-align: right">±6.44%</td>
    <td style="white-space: nowrap; text-align: right">15.68 ms</td>
    <td style="white-space: nowrap; text-align: right">18.36 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">61.19</td>
    <td style="white-space: nowrap; text-align: right">16.34 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.15%</td>
    <td style="white-space: nowrap; text-align: right">16.13 ms</td>
    <td style="white-space: nowrap; text-align: right">22.98 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">812.20</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">62.37</td>
    <td style="white-space: nowrap; text-align: right">13.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">61.19</td>
    <td style="white-space: nowrap; text-align: right">13.27x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">0.57 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">16.51 MB</td>
    <td>28.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">16.51 MB</td>
    <td>28.83x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">398.61</td>
    <td style="white-space: nowrap; text-align: right">2.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.84%</td>
    <td style="white-space: nowrap; text-align: right">2.53 ms</td>
    <td style="white-space: nowrap; text-align: right">2.76 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">28.83</td>
    <td style="white-space: nowrap; text-align: right">34.69 ms</td>
    <td style="white-space: nowrap; text-align: right">±2.87%</td>
    <td style="white-space: nowrap; text-align: right">34.59 ms</td>
    <td style="white-space: nowrap; text-align: right">37.11 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">28.16</td>
    <td style="white-space: nowrap; text-align: right">35.51 ms</td>
    <td style="white-space: nowrap; text-align: right">±8.18%</td>
    <td style="white-space: nowrap; text-align: right">34.49 ms</td>
    <td style="white-space: nowrap; text-align: right">44.32 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">398.61</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">28.83</td>
    <td style="white-space: nowrap; text-align: right">13.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">28.16</td>
    <td style="white-space: nowrap; text-align: right">14.15x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">1.01 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">35.16 MB</td>
    <td>34.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">35.16 MB</td>
    <td>34.81x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">156.23</td>
    <td style="white-space: nowrap; text-align: right">6.40 ms</td>
    <td style="white-space: nowrap; text-align: right">±4.29%</td>
    <td style="white-space: nowrap; text-align: right">6.43 ms</td>
    <td style="white-space: nowrap; text-align: right">6.92 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">12.18</td>
    <td style="white-space: nowrap; text-align: right">82.12 ms</td>
    <td style="white-space: nowrap; text-align: right">±3.71%</td>
    <td style="white-space: nowrap; text-align: right">81.87 ms</td>
    <td style="white-space: nowrap; text-align: right">86.25 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">10.43</td>
    <td style="white-space: nowrap; text-align: right">95.86 ms</td>
    <td style="white-space: nowrap; text-align: right">±12.21%</td>
    <td style="white-space: nowrap; text-align: right">93.66 ms</td>
    <td style="white-space: nowrap; text-align: right">111.26 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">156.23</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">12.18</td>
    <td style="white-space: nowrap; text-align: right">12.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">10.43</td>
    <td style="white-space: nowrap; text-align: right">14.98x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">3.43 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">74.92 MB</td>
    <td>21.87x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">74.92 MB</td>
    <td>21.87x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">89.24</td>
    <td style="white-space: nowrap; text-align: right">11.21 ms</td>
    <td style="white-space: nowrap; text-align: right">±9.11%</td>
    <td style="white-space: nowrap; text-align: right">10.88 ms</td>
    <td style="white-space: nowrap; text-align: right">15.97 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.88</td>
    <td style="white-space: nowrap; text-align: right">204.95 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.76%</td>
    <td style="white-space: nowrap; text-align: right">204.91 ms</td>
    <td style="white-space: nowrap; text-align: right">206.54 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.95</td>
    <td style="white-space: nowrap; text-align: right">512.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">512.30 ms</td>
    <td style="white-space: nowrap; text-align: right">512.30 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">89.24</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">4.88</td>
    <td style="white-space: nowrap; text-align: right">18.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.95</td>
    <td style="white-space: nowrap; text-align: right">45.72x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">6.93 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">158.93 MB</td>
    <td>22.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">158.93 MB</td>
    <td>22.94x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">39.53</td>
    <td style="white-space: nowrap; text-align: right">25.30 ms</td>
    <td style="white-space: nowrap; text-align: right">±10.13%</td>
    <td style="white-space: nowrap; text-align: right">23.95 ms</td>
    <td style="white-space: nowrap; text-align: right">32.51 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00</td>
    <td style="white-space: nowrap; text-align: right">500.04 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">500.04 ms</td>
    <td style="white-space: nowrap; text-align: right">500.04 ms</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.88</td>
    <td style="white-space: nowrap; text-align: right">530.58 ms</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">530.58 ms</td>
    <td style="white-space: nowrap; text-align: right">530.58 ms</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">39.53</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00</td>
    <td style="white-space: nowrap; text-align: right">19.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.88</td>
    <td style="white-space: nowrap; text-align: right">20.97x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">14.25 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">334.07 MB</td>
    <td>23.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">334.07 MB</td>
    <td>23.45x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">13.80</td>
    <td style="white-space: nowrap; text-align: right">0.0725 s</td>
    <td style="white-space: nowrap; text-align: right">±2.89%</td>
    <td style="white-space: nowrap; text-align: right">0.0721 s</td>
    <td style="white-space: nowrap; text-align: right">0.0770 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.84</td>
    <td style="white-space: nowrap; text-align: right">1.19 s</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.19 s</td>
    <td style="white-space: nowrap; text-align: right">1.19 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.54</td>
    <td style="white-space: nowrap; text-align: right">1.86 s</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">1.86 s</td>
    <td style="white-space: nowrap; text-align: right">1.86 s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">13.80</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.84</td>
    <td style="white-space: nowrap; text-align: right">16.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.54</td>
    <td style="white-space: nowrap; text-align: right">25.72x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">30.18 MB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">700.80 MB</td>
    <td>23.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">700.80 MB</td>
    <td>23.22x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">5.54</td>
    <td style="white-space: nowrap; text-align: right">0.180 s</td>
    <td style="white-space: nowrap; text-align: right">±6.97%</td>
    <td style="white-space: nowrap; text-align: right">0.183 s</td>
    <td style="white-space: nowrap; text-align: right">0.192 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.38</td>
    <td style="white-space: nowrap; text-align: right">2.64 s</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">2.64 s</td>
    <td style="white-space: nowrap; text-align: right">2.64 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.29</td>
    <td style="white-space: nowrap; text-align: right">3.49 s</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">3.49 s</td>
    <td style="white-space: nowrap; text-align: right">3.49 s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">5.54</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.38</td>
    <td style="white-space: nowrap; text-align: right">14.65x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.29</td>
    <td style="white-space: nowrap; text-align: right">19.34x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">0.0585 GB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">1.44 GB</td>
    <td>24.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">1.44 GB</td>
    <td>24.6x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">2.27</td>
    <td style="white-space: nowrap; text-align: right">0.44 s</td>
    <td style="white-space: nowrap; text-align: right">±1.65%</td>
    <td style="white-space: nowrap; text-align: right">0.44 s</td>
    <td style="white-space: nowrap; text-align: right">0.45 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.151</td>
    <td style="white-space: nowrap; text-align: right">6.64 s</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">6.64 s</td>
    <td style="white-space: nowrap; text-align: right">6.64 s</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.0914</td>
    <td style="white-space: nowrap; text-align: right">10.94 s</td>
    <td style="white-space: nowrap; text-align: right">±0.00%</td>
    <td style="white-space: nowrap; text-align: right">10.94 s</td>
    <td style="white-space: nowrap; text-align: right">10.94 s</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap;text-align: right">2.27</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.151</td>
    <td style="white-space: nowrap; text-align: right">15.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.0914</td>
    <td style="white-space: nowrap; text-align: right">24.86x</td>
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
    <td style="white-space: nowrap">Enum.concat/2 (list)</td>
    <td style="white-space: nowrap">0.120 GB</td>
<td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (MapArray)</td>
    <td style="white-space: nowrap">3.02 GB</td>
    <td>25.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.concat/2 (ErlangArray)</td>
    <td style="white-space: nowrap">3.02 GB</td>
    <td>25.22x</td>
  </tr>

</table>


<hr/>

