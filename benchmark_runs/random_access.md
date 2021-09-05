
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
    <td style="white-space: nowrap; text-align: right">2.94 M</td>
    <td style="white-space: nowrap; text-align: right">339.82 ns</td>
    <td style="white-space: nowrap; text-align: right">±696.34%</td>
    <td style="white-space: nowrap; text-align: right">171 ns</td>
    <td style="white-space: nowrap; text-align: right">1461.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.75 M</td>
    <td style="white-space: nowrap; text-align: right">572.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±519.28%</td>
    <td style="white-space: nowrap; text-align: right">345 ns</td>
    <td style="white-space: nowrap; text-align: right">1063.31 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.64 M</td>
    <td style="white-space: nowrap; text-align: right">608.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±808.12%</td>
    <td style="white-space: nowrap; text-align: right">242 ns</td>
    <td style="white-space: nowrap; text-align: right">2111.90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.64 M</td>
    <td style="white-space: nowrap; text-align: right">611.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±660.62%</td>
    <td style="white-space: nowrap; text-align: right">285 ns</td>
    <td style="white-space: nowrap; text-align: right">1379.56 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.40 M</td>
    <td style="white-space: nowrap; text-align: right">711.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±686.82%</td>
    <td style="white-space: nowrap; text-align: right">352 ns</td>
    <td style="white-space: nowrap; text-align: right">4050.88 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.94 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.75 M</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.64 M</td>
    <td style="white-space: nowrap; text-align: right">1.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.64 M</td>
    <td style="white-space: nowrap; text-align: right">1.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.40 M</td>
    <td style="white-space: nowrap; text-align: right">2.09x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.47 M</td>
    <td style="white-space: nowrap; text-align: right">405.30 ns</td>
    <td style="white-space: nowrap; text-align: right">±457.87%</td>
    <td style="white-space: nowrap; text-align: right">275 ns</td>
    <td style="white-space: nowrap; text-align: right">1787.90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">421.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±372.79%</td>
    <td style="white-space: nowrap; text-align: right">281 ns</td>
    <td style="white-space: nowrap; text-align: right">1764.71 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.29 M</td>
    <td style="white-space: nowrap; text-align: right">435.98 ns</td>
    <td style="white-space: nowrap; text-align: right">±467.25%</td>
    <td style="white-space: nowrap; text-align: right">280 ns</td>
    <td style="white-space: nowrap; text-align: right">2439.32 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.47 M</td>
    <td style="white-space: nowrap; text-align: right">682.37 ns</td>
    <td style="white-space: nowrap; text-align: right">±319.07%</td>
    <td style="white-space: nowrap; text-align: right">426 ns</td>
    <td style="white-space: nowrap; text-align: right">2777.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.33 M</td>
    <td style="white-space: nowrap; text-align: right">751.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±591.89%</td>
    <td style="white-space: nowrap; text-align: right">419 ns</td>
    <td style="white-space: nowrap; text-align: right">3505.24 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.47 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.29 M</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.47 M</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.33 M</td>
    <td style="white-space: nowrap; text-align: right">1.85x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.39 M</td>
    <td style="white-space: nowrap; text-align: right">418.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±439.34%</td>
    <td style="white-space: nowrap; text-align: right">294 ns</td>
    <td style="white-space: nowrap; text-align: right">1973.28 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">499.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±346.42%</td>
    <td style="white-space: nowrap; text-align: right">385 ns</td>
    <td style="white-space: nowrap; text-align: right">1006.19 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.72 M</td>
    <td style="white-space: nowrap; text-align: right">580.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±245.51%</td>
    <td style="white-space: nowrap; text-align: right">289 ns</td>
    <td style="white-space: nowrap; text-align: right">4811.97 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">622.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±411.38%</td>
    <td style="white-space: nowrap; text-align: right">439 ns</td>
    <td style="white-space: nowrap; text-align: right">2500.46 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">645.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±323.80%</td>
    <td style="white-space: nowrap; text-align: right">434 ns</td>
    <td style="white-space: nowrap; text-align: right">3300.64 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.39 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.72 M</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.20 M</td>
    <td style="white-space: nowrap; text-align: right">455.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±280.74%</td>
    <td style="white-space: nowrap; text-align: right">337 ns</td>
    <td style="white-space: nowrap; text-align: right">2261.21 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.15 M</td>
    <td style="white-space: nowrap; text-align: right">465.51 ns</td>
    <td style="white-space: nowrap; text-align: right">±399.80%</td>
    <td style="white-space: nowrap; text-align: right">309 ns</td>
    <td style="white-space: nowrap; text-align: right">2494.85 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.68 M</td>
    <td style="white-space: nowrap; text-align: right">595.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±477.11%</td>
    <td style="white-space: nowrap; text-align: right">409 ns</td>
    <td style="white-space: nowrap; text-align: right">1035.73 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">622.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±413.53%</td>
    <td style="white-space: nowrap; text-align: right">416 ns</td>
    <td style="white-space: nowrap; text-align: right">1933.75 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.83 M</td>
    <td style="white-space: nowrap; text-align: right">1200.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±294.54%</td>
    <td style="white-space: nowrap; text-align: right">825 ns</td>
    <td style="white-space: nowrap; text-align: right">13504.10 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.20 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.15 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.68 M</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.83 M</td>
    <td style="white-space: nowrap; text-align: right">2.64x</td>
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
    <td style="white-space: nowrap; text-align: right">2.16 M</td>
    <td style="white-space: nowrap; text-align: right">462.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±429.37%</td>
    <td style="white-space: nowrap; text-align: right">305 ns</td>
    <td style="white-space: nowrap; text-align: right">1917.64 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.93 M</td>
    <td style="white-space: nowrap; text-align: right">518.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±850.76%</td>
    <td style="white-space: nowrap; text-align: right">304 ns</td>
    <td style="white-space: nowrap; text-align: right">2325.83 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">632.05 ns</td>
    <td style="white-space: nowrap; text-align: right">±442.78%</td>
    <td style="white-space: nowrap; text-align: right">421 ns</td>
    <td style="white-space: nowrap; text-align: right">2059.61 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.35 M</td>
    <td style="white-space: nowrap; text-align: right">743.41 ns</td>
    <td style="white-space: nowrap; text-align: right">±429.13%</td>
    <td style="white-space: nowrap; text-align: right">431 ns</td>
    <td style="white-space: nowrap; text-align: right">3900.94 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.40 M</td>
    <td style="white-space: nowrap; text-align: right">2499.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±228.58%</td>
    <td style="white-space: nowrap; text-align: right">1656 ns</td>
    <td style="white-space: nowrap; text-align: right">28800.68 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.16 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.93 M</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.35 M</td>
    <td style="white-space: nowrap; text-align: right">1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.40 M</td>
    <td style="white-space: nowrap; text-align: right">5.41x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.23 M</td>
    <td style="white-space: nowrap; text-align: right">447.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±472.64%</td>
    <td style="white-space: nowrap; text-align: right">295 ns</td>
    <td style="white-space: nowrap; text-align: right">2149.79 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.65 M</td>
    <td style="white-space: nowrap; text-align: right">606.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±466.35%</td>
    <td style="white-space: nowrap; text-align: right">422 ns</td>
    <td style="white-space: nowrap; text-align: right">1119.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.48 M</td>
    <td style="white-space: nowrap; text-align: right">675.91 ns</td>
    <td style="white-space: nowrap; text-align: right">±327.23%</td>
    <td style="white-space: nowrap; text-align: right">452 ns</td>
    <td style="white-space: nowrap; text-align: right">3537.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.10 M</td>
    <td style="white-space: nowrap; text-align: right">908.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±273.08%</td>
    <td style="white-space: nowrap; text-align: right">652 ns</td>
    <td style="white-space: nowrap; text-align: right">5083.00 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.22 M</td>
    <td style="white-space: nowrap; text-align: right">4499.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±290.13%</td>
    <td style="white-space: nowrap; text-align: right">3170 ns</td>
    <td style="white-space: nowrap; text-align: right">39988.02 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.23 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.65 M</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.48 M</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.10 M</td>
    <td style="white-space: nowrap; text-align: right">2.03x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.22 M</td>
    <td style="white-space: nowrap; text-align: right">10.05x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.17 M</td>
    <td style="white-space: nowrap; text-align: right">459.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±382.95%</td>
    <td style="white-space: nowrap; text-align: right">309 ns</td>
    <td style="white-space: nowrap; text-align: right">1993.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.60 M</td>
    <td style="white-space: nowrap; text-align: right">626.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±395.76%</td>
    <td style="white-space: nowrap; text-align: right">449 ns</td>
    <td style="white-space: nowrap; text-align: right">1722.32 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.31 M</td>
    <td style="white-space: nowrap; text-align: right">762.58 ns</td>
    <td style="white-space: nowrap; text-align: right">±485.41%</td>
    <td style="white-space: nowrap; text-align: right">455 ns</td>
    <td style="white-space: nowrap; text-align: right">4147.95 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">946.80 ns</td>
    <td style="white-space: nowrap; text-align: right">±402.81%</td>
    <td style="white-space: nowrap; text-align: right">605 ns</td>
    <td style="white-space: nowrap; text-align: right">4006.46 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.101 M</td>
    <td style="white-space: nowrap; text-align: right">9939.30 ns</td>
    <td style="white-space: nowrap; text-align: right">±192.96%</td>
    <td style="white-space: nowrap; text-align: right">6792 ns</td>
    <td style="white-space: nowrap; text-align: right">77480.60 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.17 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.60 M</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.31 M</td>
    <td style="white-space: nowrap; text-align: right">1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.06 M</td>
    <td style="white-space: nowrap; text-align: right">2.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.101 M</td>
    <td style="white-space: nowrap; text-align: right">21.61x</td>
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
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1399.73 K</td>
    <td style="white-space: nowrap; text-align: right">0.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±521.98%</td>
    <td style="white-space: nowrap; text-align: right">0.48 μs</td>
    <td style="white-space: nowrap; text-align: right">1.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1174.46 K</td>
    <td style="white-space: nowrap; text-align: right">0.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±462.99%</td>
    <td style="white-space: nowrap; text-align: right">0.51 μs</td>
    <td style="white-space: nowrap; text-align: right">4.03 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">858.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.16 μs</td>
    <td style="white-space: nowrap; text-align: right">±306.98%</td>
    <td style="white-space: nowrap; text-align: right">0.64 μs</td>
    <td style="white-space: nowrap; text-align: right">7.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">695.80 K</td>
    <td style="white-space: nowrap; text-align: right">1.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±400.65%</td>
    <td style="white-space: nowrap; text-align: right">0.84 μs</td>
    <td style="white-space: nowrap; text-align: right">10.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">51.61 K</td>
    <td style="white-space: nowrap; text-align: right">19.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±128.89%</td>
    <td style="white-space: nowrap; text-align: right">13.18 μs</td>
    <td style="white-space: nowrap; text-align: right">97.63 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1399.73 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1174.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">858.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">695.80 K</td>
    <td style="white-space: nowrap; text-align: right">2.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">51.61 K</td>
    <td style="white-space: nowrap; text-align: right">27.12x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.90 M</td>
    <td style="white-space: nowrap; text-align: right">525.69 ns</td>
    <td style="white-space: nowrap; text-align: right">±168.84%</td>
    <td style="white-space: nowrap; text-align: right">432 ns</td>
    <td style="white-space: nowrap; text-align: right">1430.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">615.46 ns</td>
    <td style="white-space: nowrap; text-align: right">±165.74%</td>
    <td style="white-space: nowrap; text-align: right">506 ns</td>
    <td style="white-space: nowrap; text-align: right">1797.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.16 M</td>
    <td style="white-space: nowrap; text-align: right">862.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±174.89%</td>
    <td style="white-space: nowrap; text-align: right">566 ns</td>
    <td style="white-space: nowrap; text-align: right">8291.84 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.84 M</td>
    <td style="white-space: nowrap; text-align: right">1195.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±171.40%</td>
    <td style="white-space: nowrap; text-align: right">612 ns</td>
    <td style="white-space: nowrap; text-align: right">9739.86 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0283 M</td>
    <td style="white-space: nowrap; text-align: right">35294.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±101.42%</td>
    <td style="white-space: nowrap; text-align: right">26484.50 ns</td>
    <td style="white-space: nowrap; text-align: right">138864.94 ns</td>
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
    <td style="white-space: nowrap;text-align: right">1.90 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.16 M</td>
    <td style="white-space: nowrap; text-align: right">1.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.84 M</td>
    <td style="white-space: nowrap; text-align: right">2.27x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0283 M</td>
    <td style="white-space: nowrap; text-align: right">67.14x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2043.17 K</td>
    <td style="white-space: nowrap; text-align: right">0.49 μs</td>
    <td style="white-space: nowrap; text-align: right">±167.95%</td>
    <td style="white-space: nowrap; text-align: right">0.37 μs</td>
    <td style="white-space: nowrap; text-align: right">1.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1039.39 K</td>
    <td style="white-space: nowrap; text-align: right">0.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±215.39%</td>
    <td style="white-space: nowrap; text-align: right">0.57 μs</td>
    <td style="white-space: nowrap; text-align: right">9.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">824.33 K</td>
    <td style="white-space: nowrap; text-align: right">1.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±250.00%</td>
    <td style="white-space: nowrap; text-align: right">0.60 μs</td>
    <td style="white-space: nowrap; text-align: right">19.09 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">567.34 K</td>
    <td style="white-space: nowrap; text-align: right">1.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±160.37%</td>
    <td style="white-space: nowrap; text-align: right">0.85 μs</td>
    <td style="white-space: nowrap; text-align: right">13.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">12.56 K</td>
    <td style="white-space: nowrap; text-align: right">79.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±123.76%</td>
    <td style="white-space: nowrap; text-align: right">61.11 μs</td>
    <td style="white-space: nowrap; text-align: right">381.68 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2043.17 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1039.39 K</td>
    <td style="white-space: nowrap; text-align: right">1.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">824.33 K</td>
    <td style="white-space: nowrap; text-align: right">2.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">567.34 K</td>
    <td style="white-space: nowrap; text-align: right">3.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">12.56 K</td>
    <td style="white-space: nowrap; text-align: right">162.62x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">227.29 K</td>
    <td style="white-space: nowrap; text-align: right">4.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±138.60%</td>
    <td style="white-space: nowrap; text-align: right">2.74 μs</td>
    <td style="white-space: nowrap; text-align: right">34.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">211.73 K</td>
    <td style="white-space: nowrap; text-align: right">4.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±120.18%</td>
    <td style="white-space: nowrap; text-align: right">2.66 μs</td>
    <td style="white-space: nowrap; text-align: right">31.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">156.57 K</td>
    <td style="white-space: nowrap; text-align: right">6.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±800.34%</td>
    <td style="white-space: nowrap; text-align: right">0.71 μs</td>
    <td style="white-space: nowrap; text-align: right">485.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">90.83 K</td>
    <td style="white-space: nowrap; text-align: right">11.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±703.19%</td>
    <td style="white-space: nowrap; text-align: right">0.73 μs</td>
    <td style="white-space: nowrap; text-align: right">603.44 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">4.33 K</td>
    <td style="white-space: nowrap; text-align: right">230.79 μs</td>
    <td style="white-space: nowrap; text-align: right">±124.25%</td>
    <td style="white-space: nowrap; text-align: right">133.64 μs</td>
    <td style="white-space: nowrap; text-align: right">1352.74 μs</td>
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
    <td style="white-space: nowrap;text-align: right">227.29 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">211.73 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">156.57 K</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">90.83 K</td>
    <td style="white-space: nowrap; text-align: right">2.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">4.33 K</td>
    <td style="white-space: nowrap; text-align: right">52.46x</td>
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
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">204.84 K</td>
    <td style="white-space: nowrap; text-align: right">4.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±95.50%</td>
    <td style="white-space: nowrap; text-align: right">3.53 μs</td>
    <td style="white-space: nowrap; text-align: right">31.17 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">186.49 K</td>
    <td style="white-space: nowrap; text-align: right">5.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±126.88%</td>
    <td style="white-space: nowrap; text-align: right">3.53 μs</td>
    <td style="white-space: nowrap; text-align: right">41.46 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">166.79 K</td>
    <td style="white-space: nowrap; text-align: right">6.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±207.33%</td>
    <td style="white-space: nowrap; text-align: right">3.32 μs</td>
    <td style="white-space: nowrap; text-align: right">38.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">165.10 K</td>
    <td style="white-space: nowrap; text-align: right">6.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±130.06%</td>
    <td style="white-space: nowrap; text-align: right">3.63 μs</td>
    <td style="white-space: nowrap; text-align: right">45.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.25 K</td>
    <td style="white-space: nowrap; text-align: right">444.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±122.70%</td>
    <td style="white-space: nowrap; text-align: right">294.57 μs</td>
    <td style="white-space: nowrap; text-align: right">2953.03 μs</td>
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
    <td style="white-space: nowrap;text-align: right">204.84 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">186.49 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">166.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.23x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">165.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.25 K</td>
    <td style="white-space: nowrap; text-align: right">91.07x</td>
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
    <td style="white-space: nowrap; text-align: right">259.75 K</td>
    <td style="white-space: nowrap; text-align: right">3.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±89.56%</td>
    <td style="white-space: nowrap; text-align: right">3.08 μs</td>
    <td style="white-space: nowrap; text-align: right">27.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">218.38 K</td>
    <td style="white-space: nowrap; text-align: right">4.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.08%</td>
    <td style="white-space: nowrap; text-align: right">3.88 μs</td>
    <td style="white-space: nowrap; text-align: right">32.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">140.55 K</td>
    <td style="white-space: nowrap; text-align: right">7.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±83.19%</td>
    <td style="white-space: nowrap; text-align: right">5.11 μs</td>
    <td style="white-space: nowrap; text-align: right">37.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">132.86 K</td>
    <td style="white-space: nowrap; text-align: right">7.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.70%</td>
    <td style="white-space: nowrap; text-align: right">5.67 μs</td>
    <td style="white-space: nowrap; text-align: right">43.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.93 K</td>
    <td style="white-space: nowrap; text-align: right">1070.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±150.01%</td>
    <td style="white-space: nowrap; text-align: right">647.61 μs</td>
    <td style="white-space: nowrap; text-align: right">11058.30 μs</td>
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
    <td style="white-space: nowrap;text-align: right">259.75 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">218.38 K</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">140.55 K</td>
    <td style="white-space: nowrap; text-align: right">1.85x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">132.86 K</td>
    <td style="white-space: nowrap; text-align: right">1.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.93 K</td>
    <td style="white-space: nowrap; text-align: right">278.05x</td>
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
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">197.74 K</td>
    <td style="white-space: nowrap; text-align: right">5.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±65.16%</td>
    <td style="white-space: nowrap; text-align: right">4.35 μs</td>
    <td style="white-space: nowrap; text-align: right">27.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">144.77 K</td>
    <td style="white-space: nowrap; text-align: right">6.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±108.17%</td>
    <td style="white-space: nowrap; text-align: right">4.67 μs</td>
    <td style="white-space: nowrap; text-align: right">54.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">144.77 K</td>
    <td style="white-space: nowrap; text-align: right">6.91 μs</td>
    <td style="white-space: nowrap; text-align: right">±84.51%</td>
    <td style="white-space: nowrap; text-align: right">5.61 μs</td>
    <td style="white-space: nowrap; text-align: right">45.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">124.79 K</td>
    <td style="white-space: nowrap; text-align: right">8.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±101.28%</td>
    <td style="white-space: nowrap; text-align: right">6.14 μs</td>
    <td style="white-space: nowrap; text-align: right">55.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.39 K</td>
    <td style="white-space: nowrap; text-align: right">2555.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±100.72%</td>
    <td style="white-space: nowrap; text-align: right">1480.94 μs</td>
    <td style="white-space: nowrap; text-align: right">12838.59 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">197.74 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">144.77 K</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">144.77 K</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">124.79 K</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.39 K</td>
    <td style="white-space: nowrap; text-align: right">505.4x</td>
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
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">198.86 K</td>
    <td style="white-space: nowrap; text-align: right">5.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.14%</td>
    <td style="white-space: nowrap; text-align: right">4.14 μs</td>
    <td style="white-space: nowrap; text-align: right">17.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">151.92 K</td>
    <td style="white-space: nowrap; text-align: right">6.58 μs</td>
    <td style="white-space: nowrap; text-align: right">±50.37%</td>
    <td style="white-space: nowrap; text-align: right">5.95 μs</td>
    <td style="white-space: nowrap; text-align: right">19.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">131.81 K</td>
    <td style="white-space: nowrap; text-align: right">7.59 μs</td>
    <td style="white-space: nowrap; text-align: right">±74.34%</td>
    <td style="white-space: nowrap; text-align: right">6.07 μs</td>
    <td style="white-space: nowrap; text-align: right">27.23 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">124.90 K</td>
    <td style="white-space: nowrap; text-align: right">8.01 μs</td>
    <td style="white-space: nowrap; text-align: right">±88.48%</td>
    <td style="white-space: nowrap; text-align: right">5.85 μs</td>
    <td style="white-space: nowrap; text-align: right">31.45 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.131 K</td>
    <td style="white-space: nowrap; text-align: right">7613.36 μs</td>
    <td style="white-space: nowrap; text-align: right">±123.73%</td>
    <td style="white-space: nowrap; text-align: right">4381.36 μs</td>
    <td style="white-space: nowrap; text-align: right">39287.37 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap;text-align: right">198.86 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">151.92 K</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">131.81 K</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">124.90 K</td>
    <td style="white-space: nowrap; text-align: right">1.59x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.131 K</td>
    <td style="white-space: nowrap; text-align: right">1514.03x</td>
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
    <td style="white-space: nowrap; text-align: right">177.95 K</td>
    <td style="white-space: nowrap; text-align: right">5.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±24.76%</td>
    <td style="white-space: nowrap; text-align: right">5.86 μs</td>
    <td style="white-space: nowrap; text-align: right">7.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">167.00 K</td>
    <td style="white-space: nowrap; text-align: right">5.99 μs</td>
    <td style="white-space: nowrap; text-align: right">±31.71%</td>
    <td style="white-space: nowrap; text-align: right">5.67 μs</td>
    <td style="white-space: nowrap; text-align: right">11.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">157.84 K</td>
    <td style="white-space: nowrap; text-align: right">6.34 μs</td>
    <td style="white-space: nowrap; text-align: right">±75.41%</td>
    <td style="white-space: nowrap; text-align: right">4.43 μs</td>
    <td style="white-space: nowrap; text-align: right">22.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">115.28 K</td>
    <td style="white-space: nowrap; text-align: right">8.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.61%</td>
    <td style="white-space: nowrap; text-align: right">5.73 μs</td>
    <td style="white-space: nowrap; text-align: right">31.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0606 K</td>
    <td style="white-space: nowrap; text-align: right">16503.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±119.29%</td>
    <td style="white-space: nowrap; text-align: right">12012.04 μs</td>
    <td style="white-space: nowrap; text-align: right">66823.62 μs</td>
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
    <td style="white-space: nowrap;text-align: right">177.95 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">167.00 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">157.84 K</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">115.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0606 K</td>
    <td style="white-space: nowrap; text-align: right">2936.76x</td>
  </tr>

</table>



<hr/>

