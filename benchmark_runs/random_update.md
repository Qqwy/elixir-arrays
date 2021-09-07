
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
    <td style="white-space: nowrap; text-align: right">4.25 M</td>
    <td style="white-space: nowrap; text-align: right">235.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±871.34%</td>
    <td style="white-space: nowrap; text-align: right">160 ns</td>
    <td style="white-space: nowrap; text-align: right">461.38 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.08 M</td>
    <td style="white-space: nowrap; text-align: right">481.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±844.64%</td>
    <td style="white-space: nowrap; text-align: right">207 ns</td>
    <td style="white-space: nowrap; text-align: right">510.46 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.96 M</td>
    <td style="white-space: nowrap; text-align: right">509.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±828.80%</td>
    <td style="white-space: nowrap; text-align: right">215 ns</td>
    <td style="white-space: nowrap; text-align: right">662.30 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.64 M</td>
    <td style="white-space: nowrap; text-align: right">610.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±614.70%</td>
    <td style="white-space: nowrap; text-align: right">367 ns</td>
    <td style="white-space: nowrap; text-align: right">799.12 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">616.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±628.98%</td>
    <td style="white-space: nowrap; text-align: right">358 ns</td>
    <td style="white-space: nowrap; text-align: right">747.36 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.25 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.08 M</td>
    <td style="white-space: nowrap; text-align: right">2.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.96 M</td>
    <td style="white-space: nowrap; text-align: right">2.17x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.64 M</td>
    <td style="white-space: nowrap; text-align: right">2.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">2.62x</td>
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
    <td style="white-space: nowrap; text-align: right">3.54 M</td>
    <td style="white-space: nowrap; text-align: right">282.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±590.31%</td>
    <td style="white-space: nowrap; text-align: right">230 ns</td>
    <td style="white-space: nowrap; text-align: right">394.26 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.46 M</td>
    <td style="white-space: nowrap; text-align: right">289.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±625.50%</td>
    <td style="white-space: nowrap; text-align: right">230 ns</td>
    <td style="white-space: nowrap; text-align: right">437.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.59 M</td>
    <td style="white-space: nowrap; text-align: right">385.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±708.23%</td>
    <td style="white-space: nowrap; text-align: right">249 ns</td>
    <td style="white-space: nowrap; text-align: right">658.02 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.96 M</td>
    <td style="white-space: nowrap; text-align: right">510.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±620.64%</td>
    <td style="white-space: nowrap; text-align: right">358 ns</td>
    <td style="white-space: nowrap; text-align: right">627.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.70 M</td>
    <td style="white-space: nowrap; text-align: right">589.50 ns</td>
    <td style="white-space: nowrap; text-align: right">±615.54%</td>
    <td style="white-space: nowrap; text-align: right">371 ns</td>
    <td style="white-space: nowrap; text-align: right">713.03 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.54 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.46 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.59 M</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.96 M</td>
    <td style="white-space: nowrap; text-align: right">1.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.70 M</td>
    <td style="white-space: nowrap; text-align: right">2.08x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.42 M</td>
    <td style="white-space: nowrap; text-align: right">292.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±545.71%</td>
    <td style="white-space: nowrap; text-align: right">241 ns</td>
    <td style="white-space: nowrap; text-align: right">501.16 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.28 M</td>
    <td style="white-space: nowrap; text-align: right">305.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±627.54%</td>
    <td style="white-space: nowrap; text-align: right">238 ns</td>
    <td style="white-space: nowrap; text-align: right">407 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.78 M</td>
    <td style="white-space: nowrap; text-align: right">562.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±560.88%</td>
    <td style="white-space: nowrap; text-align: right">395 ns</td>
    <td style="white-space: nowrap; text-align: right">705.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">564.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±578.45%</td>
    <td style="white-space: nowrap; text-align: right">385 ns</td>
    <td style="white-space: nowrap; text-align: right">706.29 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.60 M</td>
    <td style="white-space: nowrap; text-align: right">626.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±548.46%</td>
    <td style="white-space: nowrap; text-align: right">410 ns</td>
    <td style="white-space: nowrap; text-align: right">1070.34 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.42 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.28 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.78 M</td>
    <td style="white-space: nowrap; text-align: right">1.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">1.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.60 M</td>
    <td style="white-space: nowrap; text-align: right">2.14x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.40 M</td>
    <td style="white-space: nowrap; text-align: right">294.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±517.27%</td>
    <td style="white-space: nowrap; text-align: right">255 ns</td>
    <td style="white-space: nowrap; text-align: right">403 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.26 M</td>
    <td style="white-space: nowrap; text-align: right">306.66 ns</td>
    <td style="white-space: nowrap; text-align: right">±595.77%</td>
    <td style="white-space: nowrap; text-align: right">251 ns</td>
    <td style="white-space: nowrap; text-align: right">384.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">566.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±527.38%</td>
    <td style="white-space: nowrap; text-align: right">413 ns</td>
    <td style="white-space: nowrap; text-align: right">666.95 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.73 M</td>
    <td style="white-space: nowrap; text-align: right">577.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±546.11%</td>
    <td style="white-space: nowrap; text-align: right">407 ns</td>
    <td style="white-space: nowrap; text-align: right">764 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.86 M</td>
    <td style="white-space: nowrap; text-align: right">1161.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±434.30%</td>
    <td style="white-space: nowrap; text-align: right">746 ns</td>
    <td style="white-space: nowrap; text-align: right">8989.58 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.40 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.26 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">1.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.73 M</td>
    <td style="white-space: nowrap; text-align: right">1.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.86 M</td>
    <td style="white-space: nowrap; text-align: right">3.95x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">3.21 M</td>
    <td style="white-space: nowrap; text-align: right">311.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±568.12%</td>
    <td style="white-space: nowrap; text-align: right">265 ns</td>
    <td style="white-space: nowrap; text-align: right">524 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.85 M</td>
    <td style="white-space: nowrap; text-align: right">350.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±654.15%</td>
    <td style="white-space: nowrap; text-align: right">264 ns</td>
    <td style="white-space: nowrap; text-align: right">554.86 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.70 M</td>
    <td style="white-space: nowrap; text-align: right">586.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±541.89%</td>
    <td style="white-space: nowrap; text-align: right">424 ns</td>
    <td style="white-space: nowrap; text-align: right">796.44 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.68 M</td>
    <td style="white-space: nowrap; text-align: right">594.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±581.02%</td>
    <td style="white-space: nowrap; text-align: right">419 ns</td>
    <td style="white-space: nowrap; text-align: right">829.42 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.48 M</td>
    <td style="white-space: nowrap; text-align: right">2083.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±278.78%</td>
    <td style="white-space: nowrap; text-align: right">1423 ns</td>
    <td style="white-space: nowrap; text-align: right">23199.46 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.21 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.85 M</td>
    <td style="white-space: nowrap; text-align: right">1.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.70 M</td>
    <td style="white-space: nowrap; text-align: right">1.89x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.68 M</td>
    <td style="white-space: nowrap; text-align: right">1.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.48 M</td>
    <td style="white-space: nowrap; text-align: right">6.7x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">3.17 M</td>
    <td style="white-space: nowrap; text-align: right">315.18 ns</td>
    <td style="white-space: nowrap; text-align: right">±488.43%</td>
    <td style="white-space: nowrap; text-align: right">270 ns</td>
    <td style="white-space: nowrap; text-align: right">577.15 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.78 M</td>
    <td style="white-space: nowrap; text-align: right">359.43 ns</td>
    <td style="white-space: nowrap; text-align: right">±510.76%</td>
    <td style="white-space: nowrap; text-align: right">289 ns</td>
    <td style="white-space: nowrap; text-align: right">608 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.71 M</td>
    <td style="white-space: nowrap; text-align: right">585.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±530.86%</td>
    <td style="white-space: nowrap; text-align: right">420 ns</td>
    <td style="white-space: nowrap; text-align: right">835.45 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">616.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±537.57%</td>
    <td style="white-space: nowrap; text-align: right">433 ns</td>
    <td style="white-space: nowrap; text-align: right">863.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.23 M</td>
    <td style="white-space: nowrap; text-align: right">4286.64 ns</td>
    <td style="white-space: nowrap; text-align: right">±210.99%</td>
    <td style="white-space: nowrap; text-align: right">2862 ns</td>
    <td style="white-space: nowrap; text-align: right">49642.76 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.17 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.78 M</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.71 M</td>
    <td style="white-space: nowrap; text-align: right">1.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">1.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.23 M</td>
    <td style="white-space: nowrap; text-align: right">13.6x</td>
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
    <td style="white-space: nowrap; text-align: right">2.78 M</td>
    <td style="white-space: nowrap; text-align: right">360.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±560.43%</td>
    <td style="white-space: nowrap; text-align: right">289 ns</td>
    <td style="white-space: nowrap; text-align: right">616.88 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.56 M</td>
    <td style="white-space: nowrap; text-align: right">389.91 ns</td>
    <td style="white-space: nowrap; text-align: right">±621.01%</td>
    <td style="white-space: nowrap; text-align: right">295 ns</td>
    <td style="white-space: nowrap; text-align: right">649.88 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.56 M</td>
    <td style="white-space: nowrap; text-align: right">641.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±536.86%</td>
    <td style="white-space: nowrap; text-align: right">456 ns</td>
    <td style="white-space: nowrap; text-align: right">846.83 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.54 M</td>
    <td style="white-space: nowrap; text-align: right">649.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±569.87%</td>
    <td style="white-space: nowrap; text-align: right">441 ns</td>
    <td style="white-space: nowrap; text-align: right">911.25 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.118 M</td>
    <td style="white-space: nowrap; text-align: right">8469.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±157.19%</td>
    <td style="white-space: nowrap; text-align: right">5665 ns</td>
    <td style="white-space: nowrap; text-align: right">81264.50 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.78 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.56 M</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.56 M</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.54 M</td>
    <td style="white-space: nowrap; text-align: right">1.8x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.118 M</td>
    <td style="white-space: nowrap; text-align: right">23.51x</td>
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
    <td style="white-space: nowrap; text-align: right">2.37 M</td>
    <td style="white-space: nowrap; text-align: right">422.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±589.60%</td>
    <td style="white-space: nowrap; text-align: right">319 ns</td>
    <td style="white-space: nowrap; text-align: right">654.18 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.24 M</td>
    <td style="white-space: nowrap; text-align: right">445.73 ns</td>
    <td style="white-space: nowrap; text-align: right">±568.06%</td>
    <td style="white-space: nowrap; text-align: right">328 ns</td>
    <td style="white-space: nowrap; text-align: right">746.16 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">631.51 ns</td>
    <td style="white-space: nowrap; text-align: right">±448.25%</td>
    <td style="white-space: nowrap; text-align: right">501 ns</td>
    <td style="white-space: nowrap; text-align: right">894 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.54 M</td>
    <td style="white-space: nowrap; text-align: right">649.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±537.40%</td>
    <td style="white-space: nowrap; text-align: right">478 ns</td>
    <td style="white-space: nowrap; text-align: right">902.26 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0599 M</td>
    <td style="white-space: nowrap; text-align: right">16695.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±111.42%</td>
    <td style="white-space: nowrap; text-align: right">11537 ns</td>
    <td style="white-space: nowrap; text-align: right">81676.58 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.37 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.24 M</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.54 M</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0599 M</td>
    <td style="white-space: nowrap; text-align: right">39.49x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.57 M</td>
    <td style="white-space: nowrap; text-align: right">388.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±98.19%</td>
    <td style="white-space: nowrap; text-align: right">345 ns</td>
    <td style="white-space: nowrap; text-align: right">700 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52 M</td>
    <td style="white-space: nowrap; text-align: right">396.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±158.10%</td>
    <td style="white-space: nowrap; text-align: right">335 ns</td>
    <td style="white-space: nowrap; text-align: right">691.02 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.72 M</td>
    <td style="white-space: nowrap; text-align: right">580.64 ns</td>
    <td style="white-space: nowrap; text-align: right">±103.90%</td>
    <td style="white-space: nowrap; text-align: right">518 ns</td>
    <td style="white-space: nowrap; text-align: right">1077.46 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.70 M</td>
    <td style="white-space: nowrap; text-align: right">586.75 ns</td>
    <td style="white-space: nowrap; text-align: right">±88.34%</td>
    <td style="white-space: nowrap; text-align: right">534 ns</td>
    <td style="white-space: nowrap; text-align: right">1021.23 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0321 M</td>
    <td style="white-space: nowrap; text-align: right">31169.41 ns</td>
    <td style="white-space: nowrap; text-align: right">±85.83%</td>
    <td style="white-space: nowrap; text-align: right">24105 ns</td>
    <td style="white-space: nowrap; text-align: right">110488.40 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.57 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.72 M</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.70 M</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0321 M</td>
    <td style="white-space: nowrap; text-align: right">80.23x</td>
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
    <td style="white-space: nowrap; text-align: right">2.40 M</td>
    <td style="white-space: nowrap; text-align: right">417.51 ns</td>
    <td style="white-space: nowrap; text-align: right">±28.84%</td>
    <td style="white-space: nowrap; text-align: right">371 ns</td>
    <td style="white-space: nowrap; text-align: right">671.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.34 M</td>
    <td style="white-space: nowrap; text-align: right">427.35 ns</td>
    <td style="white-space: nowrap; text-align: right">±29.99%</td>
    <td style="white-space: nowrap; text-align: right">374.50 ns</td>
    <td style="white-space: nowrap; text-align: right">824.79 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.64 M</td>
    <td style="white-space: nowrap; text-align: right">610.83 ns</td>
    <td style="white-space: nowrap; text-align: right">±73.23%</td>
    <td style="white-space: nowrap; text-align: right">544 ns</td>
    <td style="white-space: nowrap; text-align: right">1085.86 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.63 M</td>
    <td style="white-space: nowrap; text-align: right">613.75 ns</td>
    <td style="white-space: nowrap; text-align: right">±77.47%</td>
    <td style="white-space: nowrap; text-align: right">532 ns</td>
    <td style="white-space: nowrap; text-align: right">1428.81 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0166 M</td>
    <td style="white-space: nowrap; text-align: right">60292.17 ns</td>
    <td style="white-space: nowrap; text-align: right">±75.87%</td>
    <td style="white-space: nowrap; text-align: right">52750 ns</td>
    <td style="white-space: nowrap; text-align: right">220834.00 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.40 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.34 M</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.64 M</td>
    <td style="white-space: nowrap; text-align: right">1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.63 M</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0166 M</td>
    <td style="white-space: nowrap; text-align: right">144.41x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">494.25 K</td>
    <td style="white-space: nowrap; text-align: right">2.02 μs</td>
    <td style="white-space: nowrap; text-align: right">±1356.63%</td>
    <td style="white-space: nowrap; text-align: right">0.39 μs</td>
    <td style="white-space: nowrap; text-align: right">1.52 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">372.80 K</td>
    <td style="white-space: nowrap; text-align: right">2.68 μs</td>
    <td style="white-space: nowrap; text-align: right">±1234.29%</td>
    <td style="white-space: nowrap; text-align: right">0.43 μs</td>
    <td style="white-space: nowrap; text-align: right">1.73 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">254.96 K</td>
    <td style="white-space: nowrap; text-align: right">3.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±1014.28%</td>
    <td style="white-space: nowrap; text-align: right">0.60 μs</td>
    <td style="white-space: nowrap; text-align: right">3.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">228.30 K</td>
    <td style="white-space: nowrap; text-align: right">4.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±966.49%</td>
    <td style="white-space: nowrap; text-align: right">0.59 μs</td>
    <td style="white-space: nowrap; text-align: right">2.64 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">6.39 K</td>
    <td style="white-space: nowrap; text-align: right">156.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.66%</td>
    <td style="white-space: nowrap; text-align: right">106.87 μs</td>
    <td style="white-space: nowrap; text-align: right">650.85 μs</td>
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
    <td style="white-space: nowrap;text-align: right">494.25 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">372.80 K</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">254.96 K</td>
    <td style="white-space: nowrap; text-align: right">1.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">228.30 K</td>
    <td style="white-space: nowrap; text-align: right">2.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">6.39 K</td>
    <td style="white-space: nowrap; text-align: right">77.36x</td>
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
    <td style="white-space: nowrap; text-align: right">376.52 K</td>
    <td style="white-space: nowrap; text-align: right">2.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±97.66%</td>
    <td style="white-space: nowrap; text-align: right">2.37 μs</td>
    <td style="white-space: nowrap; text-align: right">15.83 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">347.27 K</td>
    <td style="white-space: nowrap; text-align: right">2.88 μs</td>
    <td style="white-space: nowrap; text-align: right">±114.54%</td>
    <td style="white-space: nowrap; text-align: right">2.32 μs</td>
    <td style="white-space: nowrap; text-align: right">19.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">285.21 K</td>
    <td style="white-space: nowrap; text-align: right">3.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±74.62%</td>
    <td style="white-space: nowrap; text-align: right">3.15 μs</td>
    <td style="white-space: nowrap; text-align: right">16.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">248.10 K</td>
    <td style="white-space: nowrap; text-align: right">4.03 μs</td>
    <td style="white-space: nowrap; text-align: right">±89.86%</td>
    <td style="white-space: nowrap; text-align: right">3.25 μs</td>
    <td style="white-space: nowrap; text-align: right">20.77 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.14 K</td>
    <td style="white-space: nowrap; text-align: right">318.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.88%</td>
    <td style="white-space: nowrap; text-align: right">235.39 μs</td>
    <td style="white-space: nowrap; text-align: right">864.02 μs</td>
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
    <td style="white-space: nowrap;text-align: right">376.52 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">347.27 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">285.21 K</td>
    <td style="white-space: nowrap; text-align: right">1.32x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">248.10 K</td>
    <td style="white-space: nowrap; text-align: right">1.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.14 K</td>
    <td style="white-space: nowrap; text-align: right">119.93x</td>
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
    <td style="white-space: nowrap; text-align: right">259.89 K</td>
    <td style="white-space: nowrap; text-align: right">3.85 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.74%</td>
    <td style="white-space: nowrap; text-align: right">3.12 μs</td>
    <td style="white-space: nowrap; text-align: right">20.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">253.77 K</td>
    <td style="white-space: nowrap; text-align: right">3.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±96.93%</td>
    <td style="white-space: nowrap; text-align: right">2.84 μs</td>
    <td style="white-space: nowrap; text-align: right">16.74 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">212.22 K</td>
    <td style="white-space: nowrap; text-align: right">4.71 μs</td>
    <td style="white-space: nowrap; text-align: right">±71.91%</td>
    <td style="white-space: nowrap; text-align: right">3.84 μs</td>
    <td style="white-space: nowrap; text-align: right">17.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">207.49 K</td>
    <td style="white-space: nowrap; text-align: right">4.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.81%</td>
    <td style="white-space: nowrap; text-align: right">3.93 μs</td>
    <td style="white-space: nowrap; text-align: right">21.37 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.33 K</td>
    <td style="white-space: nowrap; text-align: right">749.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±111.07%</td>
    <td style="white-space: nowrap; text-align: right">597.16 μs</td>
    <td style="white-space: nowrap; text-align: right">3939.50 μs</td>
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
    <td style="white-space: nowrap;text-align: right">259.89 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">253.77 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">212.22 K</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">207.49 K</td>
    <td style="white-space: nowrap; text-align: right">1.25x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.33 K</td>
    <td style="white-space: nowrap; text-align: right">194.73x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">289.87 K</td>
    <td style="white-space: nowrap; text-align: right">3.45 μs</td>
    <td style="white-space: nowrap; text-align: right">±72.26%</td>
    <td style="white-space: nowrap; text-align: right">2.99 μs</td>
    <td style="white-space: nowrap; text-align: right">21.76 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">273.45 K</td>
    <td style="white-space: nowrap; text-align: right">3.66 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.16%</td>
    <td style="white-space: nowrap; text-align: right">3.17 μs</td>
    <td style="white-space: nowrap; text-align: right">16.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">181.53 K</td>
    <td style="white-space: nowrap; text-align: right">5.51 μs</td>
    <td style="white-space: nowrap; text-align: right">±61.61%</td>
    <td style="white-space: nowrap; text-align: right">4.36 μs</td>
    <td style="white-space: nowrap; text-align: right">20.59 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">173.43 K</td>
    <td style="white-space: nowrap; text-align: right">5.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.96%</td>
    <td style="white-space: nowrap; text-align: right">4.54 μs</td>
    <td style="white-space: nowrap; text-align: right">23.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.54 K</td>
    <td style="white-space: nowrap; text-align: right">1865.90 μs</td>
    <td style="white-space: nowrap; text-align: right">±90.51%</td>
    <td style="white-space: nowrap; text-align: right">1023.70 μs</td>
    <td style="white-space: nowrap; text-align: right">5298.06 μs</td>
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
    <td style="white-space: nowrap;text-align: right">289.87 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">273.45 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">181.53 K</td>
    <td style="white-space: nowrap; text-align: right">1.6x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">173.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.54 K</td>
    <td style="white-space: nowrap; text-align: right">540.86x</td>
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
    <td style="white-space: nowrap; text-align: right">292.95 K</td>
    <td style="white-space: nowrap; text-align: right">3.41 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.08%</td>
    <td style="white-space: nowrap; text-align: right">2.92 μs</td>
    <td style="white-space: nowrap; text-align: right">15.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">225.12 K</td>
    <td style="white-space: nowrap; text-align: right">4.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±97.83%</td>
    <td style="white-space: nowrap; text-align: right">3.00 μs</td>
    <td style="white-space: nowrap; text-align: right">20.42 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">216.66 K</td>
    <td style="white-space: nowrap; text-align: right">4.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.60%</td>
    <td style="white-space: nowrap; text-align: right">3.85 μs</td>
    <td style="white-space: nowrap; text-align: right">22.95 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">202.33 K</td>
    <td style="white-space: nowrap; text-align: right">4.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±72.39%</td>
    <td style="white-space: nowrap; text-align: right">3.92 μs</td>
    <td style="white-space: nowrap; text-align: right">19.36 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.200 K</td>
    <td style="white-space: nowrap; text-align: right">5006.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.08%</td>
    <td style="white-space: nowrap; text-align: right">3609.72 μs</td>
    <td style="white-space: nowrap; text-align: right">21111.87 μs</td>
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
    <td style="white-space: nowrap;text-align: right">292.95 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">225.12 K</td>
    <td style="white-space: nowrap; text-align: right">1.3x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">216.66 K</td>
    <td style="white-space: nowrap; text-align: right">1.35x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">202.33 K</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.200 K</td>
    <td style="white-space: nowrap; text-align: right">1466.6x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">295.22 K</td>
    <td style="white-space: nowrap; text-align: right">3.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±17.83%</td>
    <td style="white-space: nowrap; text-align: right">3.23 μs</td>
    <td style="white-space: nowrap; text-align: right">5.67 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">233.60 K</td>
    <td style="white-space: nowrap; text-align: right">4.28 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.93%</td>
    <td style="white-space: nowrap; text-align: right">3.13 μs</td>
    <td style="white-space: nowrap; text-align: right">16.11 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">178.30 K</td>
    <td style="white-space: nowrap; text-align: right">5.61 μs</td>
    <td style="white-space: nowrap; text-align: right">±66.28%</td>
    <td style="white-space: nowrap; text-align: right">4.38 μs</td>
    <td style="white-space: nowrap; text-align: right">17.62 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">158.96 K</td>
    <td style="white-space: nowrap; text-align: right">6.29 μs</td>
    <td style="white-space: nowrap; text-align: right">±76.62%</td>
    <td style="white-space: nowrap; text-align: right">4.24 μs</td>
    <td style="white-space: nowrap; text-align: right">20.16 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.115 K</td>
    <td style="white-space: nowrap; text-align: right">8726.00 μs</td>
    <td style="white-space: nowrap; text-align: right">±99.80%</td>
    <td style="white-space: nowrap; text-align: right">5264.81 μs</td>
    <td style="white-space: nowrap; text-align: right">37108.15 μs</td>
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
    <td style="white-space: nowrap;text-align: right">295.22 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">233.60 K</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">178.30 K</td>
    <td style="white-space: nowrap; text-align: right">1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">158.96 K</td>
    <td style="white-space: nowrap; text-align: right">1.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.115 K</td>
    <td style="white-space: nowrap; text-align: right">2576.07x</td>
  </tr>

</table>



<hr/>

