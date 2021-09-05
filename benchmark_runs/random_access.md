
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
    <td style="white-space: nowrap; text-align: right">3.28 M</td>
    <td style="white-space: nowrap; text-align: right">305.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±682.99%</td>
    <td style="white-space: nowrap; text-align: right">178 ns</td>
    <td style="white-space: nowrap; text-align: right">1100.95 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">422.18 ns</td>
    <td style="white-space: nowrap; text-align: right">±687.77%</td>
    <td style="white-space: nowrap; text-align: right">205 ns</td>
    <td style="white-space: nowrap; text-align: right">491.14 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.85 M</td>
    <td style="white-space: nowrap; text-align: right">541.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±592.06%</td>
    <td style="white-space: nowrap; text-align: right">216 ns</td>
    <td style="white-space: nowrap; text-align: right">3536.30 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.64 M</td>
    <td style="white-space: nowrap; text-align: right">608.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±551.09%</td>
    <td style="white-space: nowrap; text-align: right">335 ns</td>
    <td style="white-space: nowrap; text-align: right">1475.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.34 M</td>
    <td style="white-space: nowrap; text-align: right">748.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±334.14%</td>
    <td style="white-space: nowrap; text-align: right">413 ns</td>
    <td style="white-space: nowrap; text-align: right">5406.37 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.28 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.85 M</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.64 M</td>
    <td style="white-space: nowrap; text-align: right">1.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.34 M</td>
    <td style="white-space: nowrap; text-align: right">2.45x</td>
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
    <td style="white-space: nowrap; text-align: right">3.95 M</td>
    <td style="white-space: nowrap; text-align: right">252.96 ns</td>
    <td style="white-space: nowrap; text-align: right">±494.16%</td>
    <td style="white-space: nowrap; text-align: right">209 ns</td>
    <td style="white-space: nowrap; text-align: right">332.49 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.24 M</td>
    <td style="white-space: nowrap; text-align: right">308.37 ns</td>
    <td style="white-space: nowrap; text-align: right">±502.17%</td>
    <td style="white-space: nowrap; text-align: right">217 ns</td>
    <td style="white-space: nowrap; text-align: right">830.64 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.22 M</td>
    <td style="white-space: nowrap; text-align: right">449.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±524.54%</td>
    <td style="white-space: nowrap; text-align: right">276 ns</td>
    <td style="white-space: nowrap; text-align: right">2527.66 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.81 M</td>
    <td style="white-space: nowrap; text-align: right">551.92 ns</td>
    <td style="white-space: nowrap; text-align: right">±527.83%</td>
    <td style="white-space: nowrap; text-align: right">342 ns</td>
    <td style="white-space: nowrap; text-align: right">856.32 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.43 M</td>
    <td style="white-space: nowrap; text-align: right">698.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±421.91%</td>
    <td style="white-space: nowrap; text-align: right">409 ns</td>
    <td style="white-space: nowrap; text-align: right">3244.52 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.95 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.24 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.22 M</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.81 M</td>
    <td style="white-space: nowrap; text-align: right">2.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.43 M</td>
    <td style="white-space: nowrap; text-align: right">2.76x</td>
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
    <td style="white-space: nowrap; text-align: right">3.48 M</td>
    <td style="white-space: nowrap; text-align: right">287.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±494.51%</td>
    <td style="white-space: nowrap; text-align: right">217 ns</td>
    <td style="white-space: nowrap; text-align: right">766 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.22 M</td>
    <td style="white-space: nowrap; text-align: right">450.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±371.79%</td>
    <td style="white-space: nowrap; text-align: right">267 ns</td>
    <td style="white-space: nowrap; text-align: right">2314.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.73 M</td>
    <td style="white-space: nowrap; text-align: right">577.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±519.82%</td>
    <td style="white-space: nowrap; text-align: right">365 ns</td>
    <td style="white-space: nowrap; text-align: right">994.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">616.18 ns</td>
    <td style="white-space: nowrap; text-align: right">±498.28%</td>
    <td style="white-space: nowrap; text-align: right">377 ns</td>
    <td style="white-space: nowrap; text-align: right">1799.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">622.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±434.39%</td>
    <td style="white-space: nowrap; text-align: right">420 ns</td>
    <td style="white-space: nowrap; text-align: right">2629.65 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.48 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.22 M</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.73 M</td>
    <td style="white-space: nowrap; text-align: right">2.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">2.15x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">2.17x</td>
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
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">319.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±587.56%</td>
    <td style="white-space: nowrap; text-align: right">230 ns</td>
    <td style="white-space: nowrap; text-align: right">686.42 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.95 M</td>
    <td style="white-space: nowrap; text-align: right">511.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±447.46%</td>
    <td style="white-space: nowrap; text-align: right">296 ns</td>
    <td style="white-space: nowrap; text-align: right">3020.28 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.71 M</td>
    <td style="white-space: nowrap; text-align: right">586.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±441.44%</td>
    <td style="white-space: nowrap; text-align: right">391 ns</td>
    <td style="white-space: nowrap; text-align: right">1567.77 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.31 M</td>
    <td style="white-space: nowrap; text-align: right">761.48 ns</td>
    <td style="white-space: nowrap; text-align: right">±442.60%</td>
    <td style="white-space: nowrap; text-align: right">438 ns</td>
    <td style="white-space: nowrap; text-align: right">3575.92 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.90 M</td>
    <td style="white-space: nowrap; text-align: right">1110.82 ns</td>
    <td style="white-space: nowrap; text-align: right">±310.12%</td>
    <td style="white-space: nowrap; text-align: right">777 ns</td>
    <td style="white-space: nowrap; text-align: right">9066.20 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.13 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.95 M</td>
    <td style="white-space: nowrap; text-align: right">1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.71 M</td>
    <td style="white-space: nowrap; text-align: right">1.83x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.31 M</td>
    <td style="white-space: nowrap; text-align: right">2.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.90 M</td>
    <td style="white-space: nowrap; text-align: right">3.48x</td>
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
    <td style="white-space: nowrap; text-align: right">3.07 M</td>
    <td style="white-space: nowrap; text-align: right">326.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±463.02%</td>
    <td style="white-space: nowrap; text-align: right">246 ns</td>
    <td style="white-space: nowrap; text-align: right">880.27 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.82 M</td>
    <td style="white-space: nowrap; text-align: right">355.05 ns</td>
    <td style="white-space: nowrap; text-align: right">±538.49%</td>
    <td style="white-space: nowrap; text-align: right">255 ns</td>
    <td style="white-space: nowrap; text-align: right">920.85 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.69 M</td>
    <td style="white-space: nowrap; text-align: right">591.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±480.40%</td>
    <td style="white-space: nowrap; text-align: right">398 ns</td>
    <td style="white-space: nowrap; text-align: right">1387.18 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">622.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±450.24%</td>
    <td style="white-space: nowrap; text-align: right">421 ns</td>
    <td style="white-space: nowrap; text-align: right">1119 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.48 M</td>
    <td style="white-space: nowrap; text-align: right">2090.68 ns</td>
    <td style="white-space: nowrap; text-align: right">±221.05%</td>
    <td style="white-space: nowrap; text-align: right">1516 ns</td>
    <td style="white-space: nowrap; text-align: right">23481.37 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.07 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.82 M</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.69 M</td>
    <td style="white-space: nowrap; text-align: right">1.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">1.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.48 M</td>
    <td style="white-space: nowrap; text-align: right">6.41x</td>
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
    <td style="white-space: nowrap; text-align: right">2.72 M</td>
    <td style="white-space: nowrap; text-align: right">368.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±541.45%</td>
    <td style="white-space: nowrap; text-align: right">262 ns</td>
    <td style="white-space: nowrap; text-align: right">940.86 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.50 M</td>
    <td style="white-space: nowrap; text-align: right">400.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±351.23%</td>
    <td style="white-space: nowrap; text-align: right">276 ns</td>
    <td style="white-space: nowrap; text-align: right">1529.06 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.73 M</td>
    <td style="white-space: nowrap; text-align: right">578.28 ns</td>
    <td style="white-space: nowrap; text-align: right">±487.22%</td>
    <td style="white-space: nowrap; text-align: right">406 ns</td>
    <td style="white-space: nowrap; text-align: right">784.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.70 M</td>
    <td style="white-space: nowrap; text-align: right">588.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±478.23%</td>
    <td style="white-space: nowrap; text-align: right">407 ns</td>
    <td style="white-space: nowrap; text-align: right">897.08 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.21 M</td>
    <td style="white-space: nowrap; text-align: right">4803.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±227.01%</td>
    <td style="white-space: nowrap; text-align: right">3121 ns</td>
    <td style="white-space: nowrap; text-align: right">52301.68 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.72 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.73 M</td>
    <td style="white-space: nowrap; text-align: right">1.57x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.70 M</td>
    <td style="white-space: nowrap; text-align: right">1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.21 M</td>
    <td style="white-space: nowrap; text-align: right">13.05x</td>
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
    <td style="white-space: nowrap; text-align: right">2.55 M</td>
    <td style="white-space: nowrap; text-align: right">392.16 ns</td>
    <td style="white-space: nowrap; text-align: right">±439.87%</td>
    <td style="white-space: nowrap; text-align: right">284 ns</td>
    <td style="white-space: nowrap; text-align: right">1141.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.51 M</td>
    <td style="white-space: nowrap; text-align: right">662.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±532.34%</td>
    <td style="white-space: nowrap; text-align: right">435 ns</td>
    <td style="white-space: nowrap; text-align: right">861.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.44 M</td>
    <td style="white-space: nowrap; text-align: right">695.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±535.62%</td>
    <td style="white-space: nowrap; text-align: right">429 ns</td>
    <td style="white-space: nowrap; text-align: right">1083.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.22 M</td>
    <td style="white-space: nowrap; text-align: right">819.33 ns</td>
    <td style="white-space: nowrap; text-align: right">±346.93%</td>
    <td style="white-space: nowrap; text-align: right">390 ns</td>
    <td style="white-space: nowrap; text-align: right">5843.98 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.106 M</td>
    <td style="white-space: nowrap; text-align: right">9426.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±128.20%</td>
    <td style="white-space: nowrap; text-align: right">6628 ns</td>
    <td style="white-space: nowrap; text-align: right">63760.04 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.55 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.51 M</td>
    <td style="white-space: nowrap; text-align: right">1.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.44 M</td>
    <td style="white-space: nowrap; text-align: right">1.77x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.22 M</td>
    <td style="white-space: nowrap; text-align: right">2.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.106 M</td>
    <td style="white-space: nowrap; text-align: right">24.04x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.01 M</td>
    <td style="white-space: nowrap; text-align: right">497.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±693.67%</td>
    <td style="white-space: nowrap; text-align: right">313 ns</td>
    <td style="white-space: nowrap; text-align: right">1330.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.46 M</td>
    <td style="white-space: nowrap; text-align: right">683.16 ns</td>
    <td style="white-space: nowrap; text-align: right">±511.08%</td>
    <td style="white-space: nowrap; text-align: right">478 ns</td>
    <td style="white-space: nowrap; text-align: right">1524.64 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.20 M</td>
    <td style="white-space: nowrap; text-align: right">831.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±455.81%</td>
    <td style="white-space: nowrap; text-align: right">535 ns</td>
    <td style="white-space: nowrap; text-align: right">3217.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.99 M</td>
    <td style="white-space: nowrap; text-align: right">1014.51 ns</td>
    <td style="white-space: nowrap; text-align: right">±424.62%</td>
    <td style="white-space: nowrap; text-align: right">426 ns</td>
    <td style="white-space: nowrap; text-align: right">7581.70 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0510 M</td>
    <td style="white-space: nowrap; text-align: right">19604.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±144.29%</td>
    <td style="white-space: nowrap; text-align: right">12390.50 ns</td>
    <td style="white-space: nowrap; text-align: right">126141.14 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.01 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.46 M</td>
    <td style="white-space: nowrap; text-align: right">1.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.20 M</td>
    <td style="white-space: nowrap; text-align: right">1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.99 M</td>
    <td style="white-space: nowrap; text-align: right">2.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0510 M</td>
    <td style="white-space: nowrap; text-align: right">39.38x</td>
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
    <td style="white-space: nowrap; text-align: right">2.10 M</td>
    <td style="white-space: nowrap; text-align: right">476.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±161.19%</td>
    <td style="white-space: nowrap; text-align: right">356 ns</td>
    <td style="white-space: nowrap; text-align: right">2195.16 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.86 M</td>
    <td style="white-space: nowrap; text-align: right">536.66 ns</td>
    <td style="white-space: nowrap; text-align: right">±110.00%</td>
    <td style="white-space: nowrap; text-align: right">385 ns</td>
    <td style="white-space: nowrap; text-align: right">2903.29 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.67 M</td>
    <td style="white-space: nowrap; text-align: right">597.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±103.47%</td>
    <td style="white-space: nowrap; text-align: right">519 ns</td>
    <td style="white-space: nowrap; text-align: right">1888.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.48 M</td>
    <td style="white-space: nowrap; text-align: right">2077.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±170.56%</td>
    <td style="white-space: nowrap; text-align: right">994.50 ns</td>
    <td style="white-space: nowrap; text-align: right">17662.51 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0261 M</td>
    <td style="white-space: nowrap; text-align: right">38312.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±104.03%</td>
    <td style="white-space: nowrap; text-align: right">27801.50 ns</td>
    <td style="white-space: nowrap; text-align: right">162189.55 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.10 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.86 M</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.67 M</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.48 M</td>
    <td style="white-space: nowrap; text-align: right">4.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0261 M</td>
    <td style="white-space: nowrap; text-align: right">80.4x</td>
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
    <td style="white-space: nowrap; text-align: right">1.76 M</td>
    <td style="white-space: nowrap; text-align: right">569.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±170.89%</td>
    <td style="white-space: nowrap; text-align: right">382.50 ns</td>
    <td style="white-space: nowrap; text-align: right">3765.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.50 M</td>
    <td style="white-space: nowrap; text-align: right">666.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±115.77%</td>
    <td style="white-space: nowrap; text-align: right">546 ns</td>
    <td style="white-space: nowrap; text-align: right">2023.32 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.34 M</td>
    <td style="white-space: nowrap; text-align: right">743.80 ns</td>
    <td style="white-space: nowrap; text-align: right">±146.98%</td>
    <td style="white-space: nowrap; text-align: right">545 ns</td>
    <td style="white-space: nowrap; text-align: right">3933.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.86 M</td>
    <td style="white-space: nowrap; text-align: right">1160.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±207.62%</td>
    <td style="white-space: nowrap; text-align: right">563 ns</td>
    <td style="white-space: nowrap; text-align: right">11234.45 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0144 M</td>
    <td style="white-space: nowrap; text-align: right">69246.66 ns</td>
    <td style="white-space: nowrap; text-align: right">±83.78%</td>
    <td style="white-space: nowrap; text-align: right">57513.50 ns</td>
    <td style="white-space: nowrap; text-align: right">257069.05 ns</td>
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
    <td style="white-space: nowrap;text-align: right">1.76 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.34 M</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">0.86 M</td>
    <td style="white-space: nowrap; text-align: right">2.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0144 M</td>
    <td style="white-space: nowrap; text-align: right">121.66x</td>
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
    <td style="white-space: nowrap; text-align: right">831.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±1412.15%</td>
    <td style="white-space: nowrap; text-align: right">0.58 μs</td>
    <td style="white-space: nowrap; text-align: right">1.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">435.72 K</td>
    <td style="white-space: nowrap; text-align: right">2.30 μs</td>
    <td style="white-space: nowrap; text-align: right">±1229.29%</td>
    <td style="white-space: nowrap; text-align: right">0.44 μs</td>
    <td style="white-space: nowrap; text-align: right">6.15 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">182.74 K</td>
    <td style="white-space: nowrap; text-align: right">5.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±139.76%</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
    <td style="white-space: nowrap; text-align: right">36.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">116.03 K</td>
    <td style="white-space: nowrap; text-align: right">8.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±628.84%</td>
    <td style="white-space: nowrap; text-align: right">1.04 μs</td>
    <td style="white-space: nowrap; text-align: right">487.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.45 K</td>
    <td style="white-space: nowrap; text-align: right">408.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±125.19%</td>
    <td style="white-space: nowrap; text-align: right">214.63 μs</td>
    <td style="white-space: nowrap; text-align: right">2466.79 μs</td>
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
    <td style="white-space: nowrap;text-align: right">831.06 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">435.72 K</td>
    <td style="white-space: nowrap; text-align: right">1.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">182.74 K</td>
    <td style="white-space: nowrap; text-align: right">4.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">116.03 K</td>
    <td style="white-space: nowrap; text-align: right">7.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.45 K</td>
    <td style="white-space: nowrap; text-align: right">339.2x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">342.06 K</td>
    <td style="white-space: nowrap; text-align: right">2.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±107.33%</td>
    <td style="white-space: nowrap; text-align: right">2.35 μs</td>
    <td style="white-space: nowrap; text-align: right">18.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">251.25 K</td>
    <td style="white-space: nowrap; text-align: right">3.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±97.06%</td>
    <td style="white-space: nowrap; text-align: right">3.09 μs</td>
    <td style="white-space: nowrap; text-align: right">18.79 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">237.29 K</td>
    <td style="white-space: nowrap; text-align: right">4.21 μs</td>
    <td style="white-space: nowrap; text-align: right">±109.00%</td>
    <td style="white-space: nowrap; text-align: right">2.74 μs</td>
    <td style="white-space: nowrap; text-align: right">27.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">148.61 K</td>
    <td style="white-space: nowrap; text-align: right">6.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±96.85%</td>
    <td style="white-space: nowrap; text-align: right">3.99 μs</td>
    <td style="white-space: nowrap; text-align: right">35.86 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.20 K</td>
    <td style="white-space: nowrap; text-align: right">454.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±122.98%</td>
    <td style="white-space: nowrap; text-align: right">292.71 μs</td>
    <td style="white-space: nowrap; text-align: right">3058.50 μs</td>
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
    <td style="white-space: nowrap;text-align: right">342.06 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">251.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">237.29 K</td>
    <td style="white-space: nowrap; text-align: right">1.44x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">148.61 K</td>
    <td style="white-space: nowrap; text-align: right">2.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.20 K</td>
    <td style="white-space: nowrap; text-align: right">155.48x</td>
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
    <td style="white-space: nowrap; text-align: right">211.55 K</td>
    <td style="white-space: nowrap; text-align: right">4.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±78.67%</td>
    <td style="white-space: nowrap; text-align: right">3.74 μs</td>
    <td style="white-space: nowrap; text-align: right">25.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">197.13 K</td>
    <td style="white-space: nowrap; text-align: right">5.07 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.91%</td>
    <td style="white-space: nowrap; text-align: right">4.13 μs</td>
    <td style="white-space: nowrap; text-align: right">22.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">140.07 K</td>
    <td style="white-space: nowrap; text-align: right">7.14 μs</td>
    <td style="white-space: nowrap; text-align: right">±72.51%</td>
    <td style="white-space: nowrap; text-align: right">5.81 μs</td>
    <td style="white-space: nowrap; text-align: right">34.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">121.06 K</td>
    <td style="white-space: nowrap; text-align: right">8.26 μs</td>
    <td style="white-space: nowrap; text-align: right">±85.02%</td>
    <td style="white-space: nowrap; text-align: right">5.73 μs</td>
    <td style="white-space: nowrap; text-align: right">39.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.14 K</td>
    <td style="white-space: nowrap; text-align: right">878.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±108.92%</td>
    <td style="white-space: nowrap; text-align: right">625.03 μs</td>
    <td style="white-space: nowrap; text-align: right">4311.11 μs</td>
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
    <td style="white-space: nowrap;text-align: right">211.55 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">197.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">140.07 K</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">121.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.14 K</td>
    <td style="white-space: nowrap; text-align: right">185.95x</td>
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
    <td style="white-space: nowrap; text-align: right">186.99 K</td>
    <td style="white-space: nowrap; text-align: right">5.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±51.08%</td>
    <td style="white-space: nowrap; text-align: right">4.40 μs</td>
    <td style="white-space: nowrap; text-align: right">17.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">170.13 K</td>
    <td style="white-space: nowrap; text-align: right">5.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±45.37%</td>
    <td style="white-space: nowrap; text-align: right">5.36 μs</td>
    <td style="white-space: nowrap; text-align: right">15.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">94.11 K</td>
    <td style="white-space: nowrap; text-align: right">10.63 μs</td>
    <td style="white-space: nowrap; text-align: right">±103.34%</td>
    <td style="white-space: nowrap; text-align: right">5.41 μs</td>
    <td style="white-space: nowrap; text-align: right">47.02 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">81.96 K</td>
    <td style="white-space: nowrap; text-align: right">12.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±94.25%</td>
    <td style="white-space: nowrap; text-align: right">7.93 μs</td>
    <td style="white-space: nowrap; text-align: right">62.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.56 K</td>
    <td style="white-space: nowrap; text-align: right">1799.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±96.06%</td>
    <td style="white-space: nowrap; text-align: right">1101.63 μs</td>
    <td style="white-space: nowrap; text-align: right">6768.54 μs</td>
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
    <td style="white-space: nowrap;text-align: right">186.99 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">170.13 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">94.11 K</td>
    <td style="white-space: nowrap; text-align: right">1.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">81.96 K</td>
    <td style="white-space: nowrap; text-align: right">2.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.56 K</td>
    <td style="white-space: nowrap; text-align: right">336.47x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">252.68 K</td>
    <td style="white-space: nowrap; text-align: right">3.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±53.74%</td>
    <td style="white-space: nowrap; text-align: right">3.36 μs</td>
    <td style="white-space: nowrap; text-align: right">15.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">191.63 K</td>
    <td style="white-space: nowrap; text-align: right">5.22 μs</td>
    <td style="white-space: nowrap; text-align: right">±94.57%</td>
    <td style="white-space: nowrap; text-align: right">3.91 μs</td>
    <td style="white-space: nowrap; text-align: right">30.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">105.18 K</td>
    <td style="white-space: nowrap; text-align: right">9.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±74.15%</td>
    <td style="white-space: nowrap; text-align: right">6.84 μs</td>
    <td style="white-space: nowrap; text-align: right">32.54 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">84.56 K</td>
    <td style="white-space: nowrap; text-align: right">11.83 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.79%</td>
    <td style="white-space: nowrap; text-align: right">7.50 μs</td>
    <td style="white-space: nowrap; text-align: right">47.88 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.187 K</td>
    <td style="white-space: nowrap; text-align: right">5336.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±104.26%</td>
    <td style="white-space: nowrap; text-align: right">4076.13 μs</td>
    <td style="white-space: nowrap; text-align: right">29626.35 μs</td>
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
    <td style="white-space: nowrap;text-align: right">252.68 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">191.63 K</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">105.18 K</td>
    <td style="white-space: nowrap; text-align: right">2.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">84.56 K</td>
    <td style="white-space: nowrap; text-align: right">2.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.187 K</td>
    <td style="white-space: nowrap; text-align: right">1348.51x</td>
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
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">208.22 K</td>
    <td style="white-space: nowrap; text-align: right">4.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.57%</td>
    <td style="white-space: nowrap; text-align: right">4.46 μs</td>
    <td style="white-space: nowrap; text-align: right">7.49 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">194.25 K</td>
    <td style="white-space: nowrap; text-align: right">5.15 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.14%</td>
    <td style="white-space: nowrap; text-align: right">5.51 μs</td>
    <td style="white-space: nowrap; text-align: right">6.79 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">104.10 K</td>
    <td style="white-space: nowrap; text-align: right">9.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±44.53%</td>
    <td style="white-space: nowrap; text-align: right">7.61 μs</td>
    <td style="white-space: nowrap; text-align: right">20.00 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">94.72 K</td>
    <td style="white-space: nowrap; text-align: right">10.56 μs</td>
    <td style="white-space: nowrap; text-align: right">±114.78%</td>
    <td style="white-space: nowrap; text-align: right">6.27 μs</td>
    <td style="white-space: nowrap; text-align: right">47.94 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0799 K</td>
    <td style="white-space: nowrap; text-align: right">12508.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±89.85%</td>
    <td style="white-space: nowrap; text-align: right">9717.85 μs</td>
    <td style="white-space: nowrap; text-align: right">55453.81 μs</td>
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
    <td style="white-space: nowrap;text-align: right">208.22 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">194.25 K</td>
    <td style="white-space: nowrap; text-align: right">1.07x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">104.10 K</td>
    <td style="white-space: nowrap; text-align: right">2.0x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">94.72 K</td>
    <td style="white-space: nowrap; text-align: right">2.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0799 K</td>
    <td style="white-space: nowrap; text-align: right">2604.65x</td>
  </tr>

</table>



<hr/>

