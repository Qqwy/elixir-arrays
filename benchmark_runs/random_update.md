
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
    <td style="white-space: nowrap; text-align: right">4.49 M</td>
    <td style="white-space: nowrap; text-align: right">222.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±843.47%</td>
    <td style="white-space: nowrap; text-align: right">158 ns</td>
    <td style="white-space: nowrap; text-align: right">508 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3.07 M</td>
    <td style="white-space: nowrap; text-align: right">325.88 ns</td>
    <td style="white-space: nowrap; text-align: right">±755.64%</td>
    <td style="white-space: nowrap; text-align: right">171 ns</td>
    <td style="white-space: nowrap; text-align: right">335.29 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.67 M</td>
    <td style="white-space: nowrap; text-align: right">375.09 ns</td>
    <td style="white-space: nowrap; text-align: right">±625.98%</td>
    <td style="white-space: nowrap; text-align: right">206 ns</td>
    <td style="white-space: nowrap; text-align: right">646.16 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.41 M</td>
    <td style="white-space: nowrap; text-align: right">415.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±681.17%</td>
    <td style="white-space: nowrap; text-align: right">217 ns</td>
    <td style="white-space: nowrap; text-align: right">390.11 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.80 M</td>
    <td style="white-space: nowrap; text-align: right">556.88 ns</td>
    <td style="white-space: nowrap; text-align: right">±518.09%</td>
    <td style="white-space: nowrap; text-align: right">354 ns</td>
    <td style="white-space: nowrap; text-align: right">791.27 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.79 M</td>
    <td style="white-space: nowrap; text-align: right">558.47 ns</td>
    <td style="white-space: nowrap; text-align: right">±528.88%</td>
    <td style="white-space: nowrap; text-align: right">336 ns</td>
    <td style="white-space: nowrap; text-align: right">727 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.49 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">3.07 M</td>
    <td style="white-space: nowrap; text-align: right">1.46x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.67 M</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.41 M</td>
    <td style="white-space: nowrap; text-align: right">1.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.80 M</td>
    <td style="white-space: nowrap; text-align: right">2.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.79 M</td>
    <td style="white-space: nowrap; text-align: right">2.5x</td>
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
    <td style="white-space: nowrap; text-align: right">3.75 M</td>
    <td style="white-space: nowrap; text-align: right">266.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±447.74%</td>
    <td style="white-space: nowrap; text-align: right">223 ns</td>
    <td style="white-space: nowrap; text-align: right">470.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.63 M</td>
    <td style="white-space: nowrap; text-align: right">379.71 ns</td>
    <td style="white-space: nowrap; text-align: right">±600.37%</td>
    <td style="white-space: nowrap; text-align: right">245 ns</td>
    <td style="white-space: nowrap; text-align: right">688 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.62 M</td>
    <td style="white-space: nowrap; text-align: right">382.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±655.93%</td>
    <td style="white-space: nowrap; text-align: right">220 ns</td>
    <td style="white-space: nowrap; text-align: right">712.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52 M</td>
    <td style="white-space: nowrap; text-align: right">396.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±712.49%</td>
    <td style="white-space: nowrap; text-align: right">208 ns</td>
    <td style="white-space: nowrap; text-align: right">660.22 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.86 M</td>
    <td style="white-space: nowrap; text-align: right">537.43 ns</td>
    <td style="white-space: nowrap; text-align: right">±491.58%</td>
    <td style="white-space: nowrap; text-align: right">358 ns</td>
    <td style="white-space: nowrap; text-align: right">650 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">564.10 ns</td>
    <td style="white-space: nowrap; text-align: right">±559.42%</td>
    <td style="white-space: nowrap; text-align: right">334 ns</td>
    <td style="white-space: nowrap; text-align: right">774 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.75 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.63 M</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.62 M</td>
    <td style="white-space: nowrap; text-align: right">1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.52 M</td>
    <td style="white-space: nowrap; text-align: right">1.49x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.86 M</td>
    <td style="white-space: nowrap; text-align: right">2.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">2.11x</td>
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
    <td style="white-space: nowrap; text-align: right">3.18 M</td>
    <td style="white-space: nowrap; text-align: right">314.08 ns</td>
    <td style="white-space: nowrap; text-align: right">±521.41%</td>
    <td style="white-space: nowrap; text-align: right">246 ns</td>
    <td style="white-space: nowrap; text-align: right">567.58 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.49 M</td>
    <td style="white-space: nowrap; text-align: right">402.32 ns</td>
    <td style="white-space: nowrap; text-align: right">±638.06%</td>
    <td style="white-space: nowrap; text-align: right">241 ns</td>
    <td style="white-space: nowrap; text-align: right">583 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.12 M</td>
    <td style="white-space: nowrap; text-align: right">471.44 ns</td>
    <td style="white-space: nowrap; text-align: right">±581.62%</td>
    <td style="white-space: nowrap; text-align: right">252 ns</td>
    <td style="white-space: nowrap; text-align: right">2552.54 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.85 M</td>
    <td style="white-space: nowrap; text-align: right">540.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±477.50%</td>
    <td style="white-space: nowrap; text-align: right">375 ns</td>
    <td style="white-space: nowrap; text-align: right">647.43 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.67 M</td>
    <td style="white-space: nowrap; text-align: right">599.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±426.01%</td>
    <td style="white-space: nowrap; text-align: right">415 ns</td>
    <td style="white-space: nowrap; text-align: right">2532.28 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.60 M</td>
    <td style="white-space: nowrap; text-align: right">625.25 ns</td>
    <td style="white-space: nowrap; text-align: right">±476.15%</td>
    <td style="white-space: nowrap; text-align: right">417 ns</td>
    <td style="white-space: nowrap; text-align: right">833.97 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.18 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.49 M</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.12 M</td>
    <td style="white-space: nowrap; text-align: right">1.5x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.85 M</td>
    <td style="white-space: nowrap; text-align: right">1.72x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.67 M</td>
    <td style="white-space: nowrap; text-align: right">1.91x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.60 M</td>
    <td style="white-space: nowrap; text-align: right">1.99x</td>
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
    <td style="white-space: nowrap; text-align: right">3.20 M</td>
    <td style="white-space: nowrap; text-align: right">312.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±440.77%</td>
    <td style="white-space: nowrap; text-align: right">257 ns</td>
    <td style="white-space: nowrap; text-align: right">546.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.39 M</td>
    <td style="white-space: nowrap; text-align: right">419.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±562.99%</td>
    <td style="white-space: nowrap; text-align: right">264 ns</td>
    <td style="white-space: nowrap; text-align: right">1395.73 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.13 M</td>
    <td style="white-space: nowrap; text-align: right">469.85 ns</td>
    <td style="white-space: nowrap; text-align: right">±580.07%</td>
    <td style="white-space: nowrap; text-align: right">253 ns</td>
    <td style="white-space: nowrap; text-align: right">2459.52 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.80 M</td>
    <td style="white-space: nowrap; text-align: right">554.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±467.88%</td>
    <td style="white-space: nowrap; text-align: right">397 ns</td>
    <td style="white-space: nowrap; text-align: right">668.92 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">616.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±467.69%</td>
    <td style="white-space: nowrap; text-align: right">416 ns</td>
    <td style="white-space: nowrap; text-align: right">820.27 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.96 M</td>
    <td style="white-space: nowrap; text-align: right">1046.99 ns</td>
    <td style="white-space: nowrap; text-align: right">±301.41%</td>
    <td style="white-space: nowrap; text-align: right">756 ns</td>
    <td style="white-space: nowrap; text-align: right">8590.40 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.20 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.39 M</td>
    <td style="white-space: nowrap; text-align: right">1.34x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.13 M</td>
    <td style="white-space: nowrap; text-align: right">1.51x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.80 M</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.62 M</td>
    <td style="white-space: nowrap; text-align: right">1.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.96 M</td>
    <td style="white-space: nowrap; text-align: right">3.35x</td>
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
    <td style="white-space: nowrap; text-align: right">3.18 M</td>
    <td style="white-space: nowrap; text-align: right">314.92 ns</td>
    <td style="white-space: nowrap; text-align: right">±330.35%</td>
    <td style="white-space: nowrap; text-align: right">275 ns</td>
    <td style="white-space: nowrap; text-align: right">621.50 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.19 M</td>
    <td style="white-space: nowrap; text-align: right">456.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±608.99%</td>
    <td style="white-space: nowrap; text-align: right">254 ns</td>
    <td style="white-space: nowrap; text-align: right">930.08 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.90 M</td>
    <td style="white-space: nowrap; text-align: right">525.65 ns</td>
    <td style="white-space: nowrap; text-align: right">±437.57%</td>
    <td style="white-space: nowrap; text-align: right">428 ns</td>
    <td style="white-space: nowrap; text-align: right">758.92 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.57 M</td>
    <td style="white-space: nowrap; text-align: right">636.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±507.26%</td>
    <td style="white-space: nowrap; text-align: right">423 ns</td>
    <td style="white-space: nowrap; text-align: right">804 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.53 M</td>
    <td style="white-space: nowrap; text-align: right">655.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±1934.35%</td>
    <td style="white-space: nowrap; text-align: right">276 ns</td>
    <td style="white-space: nowrap; text-align: right">1555.46 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.49 M</td>
    <td style="white-space: nowrap; text-align: right">2046.41 ns</td>
    <td style="white-space: nowrap; text-align: right">±219.35%</td>
    <td style="white-space: nowrap; text-align: right">1463 ns</td>
    <td style="white-space: nowrap; text-align: right">23015.40 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.18 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.19 M</td>
    <td style="white-space: nowrap; text-align: right">1.45x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.90 M</td>
    <td style="white-space: nowrap; text-align: right">1.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.57 M</td>
    <td style="white-space: nowrap; text-align: right">2.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.53 M</td>
    <td style="white-space: nowrap; text-align: right">2.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.49 M</td>
    <td style="white-space: nowrap; text-align: right">6.5x</td>
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
    <td style="white-space: nowrap; text-align: right">2.80 M</td>
    <td style="white-space: nowrap; text-align: right">357.05 ns</td>
    <td style="white-space: nowrap; text-align: right">±483.81%</td>
    <td style="white-space: nowrap; text-align: right">280 ns</td>
    <td style="white-space: nowrap; text-align: right">710.08 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.23 M</td>
    <td style="white-space: nowrap; text-align: right">449.22 ns</td>
    <td style="white-space: nowrap; text-align: right">±616.70%</td>
    <td style="white-space: nowrap; text-align: right">274 ns</td>
    <td style="white-space: nowrap; text-align: right">687.93 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">564.70 ns</td>
    <td style="white-space: nowrap; text-align: right">±556.18%</td>
    <td style="white-space: nowrap; text-align: right">315 ns</td>
    <td style="white-space: nowrap; text-align: right">5084.92 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.66 M</td>
    <td style="white-space: nowrap; text-align: right">600.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±492.56%</td>
    <td style="white-space: nowrap; text-align: right">428 ns</td>
    <td style="white-space: nowrap; text-align: right">843 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.41 M</td>
    <td style="white-space: nowrap; text-align: right">711.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±431.70%</td>
    <td style="white-space: nowrap; text-align: right">493 ns</td>
    <td style="white-space: nowrap; text-align: right">920.07 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.25 M</td>
    <td style="white-space: nowrap; text-align: right">4036.46 ns</td>
    <td style="white-space: nowrap; text-align: right">±163.58%</td>
    <td style="white-space: nowrap; text-align: right">2896 ns</td>
    <td style="white-space: nowrap; text-align: right">39308.05 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.80 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.23 M</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.66 M</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.41 M</td>
    <td style="white-space: nowrap; text-align: right">1.99x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.25 M</td>
    <td style="white-space: nowrap; text-align: right">11.3x</td>
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
    <td style="white-space: nowrap; text-align: right">2.52 M</td>
    <td style="white-space: nowrap; text-align: right">396.41 ns</td>
    <td style="white-space: nowrap; text-align: right">±576.28%</td>
    <td style="white-space: nowrap; text-align: right">299 ns</td>
    <td style="white-space: nowrap; text-align: right">683.59 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.90 M</td>
    <td style="white-space: nowrap; text-align: right">525.70 ns</td>
    <td style="white-space: nowrap; text-align: right">±581.83%</td>
    <td style="white-space: nowrap; text-align: right">305 ns</td>
    <td style="white-space: nowrap; text-align: right">788.02 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">564.29 ns</td>
    <td style="white-space: nowrap; text-align: right">±545.89%</td>
    <td style="white-space: nowrap; text-align: right">308 ns</td>
    <td style="white-space: nowrap; text-align: right">752.02 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.50 M</td>
    <td style="white-space: nowrap; text-align: right">667.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±521.10%</td>
    <td style="white-space: nowrap; text-align: right">446 ns</td>
    <td style="white-space: nowrap; text-align: right">818.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.41 M</td>
    <td style="white-space: nowrap; text-align: right">707.41 ns</td>
    <td style="white-space: nowrap; text-align: right">±424.01%</td>
    <td style="white-space: nowrap; text-align: right">493 ns</td>
    <td style="white-space: nowrap; text-align: right">906.22 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.127 M</td>
    <td style="white-space: nowrap; text-align: right">7881.05 ns</td>
    <td style="white-space: nowrap; text-align: right">±129.99%</td>
    <td style="white-space: nowrap; text-align: right">5667.50 ns</td>
    <td style="white-space: nowrap; text-align: right">61722.74 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.52 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.90 M</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.77 M</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.41 M</td>
    <td style="white-space: nowrap; text-align: right">1.78x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.127 M</td>
    <td style="white-space: nowrap; text-align: right">19.88x</td>
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
    <td style="white-space: nowrap; text-align: right">2.25 M</td>
    <td style="white-space: nowrap; text-align: right">443.76 ns</td>
    <td style="white-space: nowrap; text-align: right">±637.69%</td>
    <td style="white-space: nowrap; text-align: right">323 ns</td>
    <td style="white-space: nowrap; text-align: right">769.39 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.85 M</td>
    <td style="white-space: nowrap; text-align: right">539.94 ns</td>
    <td style="white-space: nowrap; text-align: right">±555.56%</td>
    <td style="white-space: nowrap; text-align: right">319 ns</td>
    <td style="white-space: nowrap; text-align: right">860.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.72 M</td>
    <td style="white-space: nowrap; text-align: right">579.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±532.61%</td>
    <td style="white-space: nowrap; text-align: right">329 ns</td>
    <td style="white-space: nowrap; text-align: right">1411.10 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.47 M</td>
    <td style="white-space: nowrap; text-align: right">681.78 ns</td>
    <td style="white-space: nowrap; text-align: right">±530.85%</td>
    <td style="white-space: nowrap; text-align: right">493 ns</td>
    <td style="white-space: nowrap; text-align: right">853.06 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.36 M</td>
    <td style="white-space: nowrap; text-align: right">736.97 ns</td>
    <td style="white-space: nowrap; text-align: right">±424.75%</td>
    <td style="white-space: nowrap; text-align: right">499 ns</td>
    <td style="white-space: nowrap; text-align: right">907.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0613 M</td>
    <td style="white-space: nowrap; text-align: right">16308.49 ns</td>
    <td style="white-space: nowrap; text-align: right">±103.28%</td>
    <td style="white-space: nowrap; text-align: right">11833 ns</td>
    <td style="white-space: nowrap; text-align: right">73674.80 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.25 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.85 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.72 M</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.47 M</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.36 M</td>
    <td style="white-space: nowrap; text-align: right">1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0613 M</td>
    <td style="white-space: nowrap; text-align: right">36.75x</td>
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
    <td style="white-space: nowrap; text-align: right">2.33 M</td>
    <td style="white-space: nowrap; text-align: right">428.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±166.44%</td>
    <td style="white-space: nowrap; text-align: right">357 ns</td>
    <td style="white-space: nowrap; text-align: right">879.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.78 M</td>
    <td style="white-space: nowrap; text-align: right">561.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±91.24%</td>
    <td style="white-space: nowrap; text-align: right">509 ns</td>
    <td style="white-space: nowrap; text-align: right">868.17 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.75 M</td>
    <td style="white-space: nowrap; text-align: right">570.93 ns</td>
    <td style="white-space: nowrap; text-align: right">±547.25%</td>
    <td style="white-space: nowrap; text-align: right">335 ns</td>
    <td style="white-space: nowrap; text-align: right">772.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.67 M</td>
    <td style="white-space: nowrap; text-align: right">597.24 ns</td>
    <td style="white-space: nowrap; text-align: right">±548.36%</td>
    <td style="white-space: nowrap; text-align: right">337 ns</td>
    <td style="white-space: nowrap; text-align: right">712.09 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.28 M</td>
    <td style="white-space: nowrap; text-align: right">781.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±418.61%</td>
    <td style="white-space: nowrap; text-align: right">506 ns</td>
    <td style="white-space: nowrap; text-align: right">968.84 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0318 M</td>
    <td style="white-space: nowrap; text-align: right">31398.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±83.03%</td>
    <td style="white-space: nowrap; text-align: right">24587 ns</td>
    <td style="white-space: nowrap; text-align: right">112064.88 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.33 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.78 M</td>
    <td style="white-space: nowrap; text-align: right">1.31x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.75 M</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.67 M</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.28 M</td>
    <td style="white-space: nowrap; text-align: right">1.82x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0318 M</td>
    <td style="white-space: nowrap; text-align: right">73.27x</td>
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
    <td style="white-space: nowrap; text-align: right">2.41 M</td>
    <td style="white-space: nowrap; text-align: right">414.80 ns</td>
    <td style="white-space: nowrap; text-align: right">±92.75%</td>
    <td style="white-space: nowrap; text-align: right">349 ns</td>
    <td style="white-space: nowrap; text-align: right">811.93 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.02 M</td>
    <td style="white-space: nowrap; text-align: right">496.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±558.96%</td>
    <td style="white-space: nowrap; text-align: right">343 ns</td>
    <td style="white-space: nowrap; text-align: right">687.30 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.73 M</td>
    <td style="white-space: nowrap; text-align: right">579.43 ns</td>
    <td style="white-space: nowrap; text-align: right">±563.18%</td>
    <td style="white-space: nowrap; text-align: right">387 ns</td>
    <td style="white-space: nowrap; text-align: right">766 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.69 M</td>
    <td style="white-space: nowrap; text-align: right">590.13 ns</td>
    <td style="white-space: nowrap; text-align: right">±63.97%</td>
    <td style="white-space: nowrap; text-align: right">527 ns</td>
    <td style="white-space: nowrap; text-align: right">875.45 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.28 M</td>
    <td style="white-space: nowrap; text-align: right">781.11 ns</td>
    <td style="white-space: nowrap; text-align: right">±452.36%</td>
    <td style="white-space: nowrap; text-align: right">574 ns</td>
    <td style="white-space: nowrap; text-align: right">1007.24 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0165 M</td>
    <td style="white-space: nowrap; text-align: right">60536.80 ns</td>
    <td style="white-space: nowrap; text-align: right">±76.82%</td>
    <td style="white-space: nowrap; text-align: right">52042 ns</td>
    <td style="white-space: nowrap; text-align: right">219072.97 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.41 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.02 M</td>
    <td style="white-space: nowrap; text-align: right">1.2x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.73 M</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.69 M</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.28 M</td>
    <td style="white-space: nowrap; text-align: right">1.88x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0165 M</td>
    <td style="white-space: nowrap; text-align: right">145.94x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.34 M</td>
    <td style="white-space: nowrap; text-align: right">745.63 ns</td>
    <td style="white-space: nowrap; text-align: right">±771.85%</td>
    <td style="white-space: nowrap; text-align: right">351 ns</td>
    <td style="white-space: nowrap; text-align: right">791.90 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.23 M</td>
    <td style="white-space: nowrap; text-align: right">813.84 ns</td>
    <td style="white-space: nowrap; text-align: right">±711.20%</td>
    <td style="white-space: nowrap; text-align: right">386 ns</td>
    <td style="white-space: nowrap; text-align: right">1219.00 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.01 M</td>
    <td style="white-space: nowrap; text-align: right">989.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±586.95%</td>
    <td style="white-space: nowrap; text-align: right">570 ns</td>
    <td style="white-space: nowrap; text-align: right">771.88 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.01 M</td>
    <td style="white-space: nowrap; text-align: right">991.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±1585.46%</td>
    <td style="white-space: nowrap; text-align: right">386 ns</td>
    <td style="white-space: nowrap; text-align: right">1433.98 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.171 M</td>
    <td style="white-space: nowrap; text-align: right">5857.82 ns</td>
    <td style="white-space: nowrap; text-align: right">±856.26%</td>
    <td style="white-space: nowrap; text-align: right">581 ns</td>
    <td style="white-space: nowrap; text-align: right">485078.56 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.00607 M</td>
    <td style="white-space: nowrap; text-align: right">164620.62 ns</td>
    <td style="white-space: nowrap; text-align: right">±93.13%</td>
    <td style="white-space: nowrap; text-align: right">111888 ns</td>
    <td style="white-space: nowrap; text-align: right">637884.36 ns</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">1.34 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.23 M</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.01 M</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.01 M</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.171 M</td>
    <td style="white-space: nowrap; text-align: right">7.86x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.00607 M</td>
    <td style="white-space: nowrap; text-align: right">220.78x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2499.25 K</td>
    <td style="white-space: nowrap; text-align: right">0.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±56.94%</td>
    <td style="white-space: nowrap; text-align: right">0.39 μs</td>
    <td style="white-space: nowrap; text-align: right">0.47 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1744.56 K</td>
    <td style="white-space: nowrap; text-align: right">0.57 μs</td>
    <td style="white-space: nowrap; text-align: right">±8.13%</td>
    <td style="white-space: nowrap; text-align: right">0.57 μs</td>
    <td style="white-space: nowrap; text-align: right">0.66 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">706.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.42 μs</td>
    <td style="white-space: nowrap; text-align: right">±821.19%</td>
    <td style="white-space: nowrap; text-align: right">0.35 μs</td>
    <td style="white-space: nowrap; text-align: right">1.85 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">361.24 K</td>
    <td style="white-space: nowrap; text-align: right">2.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±100.20%</td>
    <td style="white-space: nowrap; text-align: right">2.36 μs</td>
    <td style="white-space: nowrap; text-align: right">15.81 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">262.06 K</td>
    <td style="white-space: nowrap; text-align: right">3.82 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.43%</td>
    <td style="white-space: nowrap; text-align: right">3.18 μs</td>
    <td style="white-space: nowrap; text-align: right">17.33 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.01 K</td>
    <td style="white-space: nowrap; text-align: right">332.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±76.91%</td>
    <td style="white-space: nowrap; text-align: right">273.52 μs</td>
    <td style="white-space: nowrap; text-align: right">839.49 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2499.25 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1744.56 K</td>
    <td style="white-space: nowrap; text-align: right">1.43x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">706.23 K</td>
    <td style="white-space: nowrap; text-align: right">3.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">361.24 K</td>
    <td style="white-space: nowrap; text-align: right">6.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">262.06 K</td>
    <td style="white-space: nowrap; text-align: right">9.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">3.01 K</td>
    <td style="white-space: nowrap; text-align: right">831.49x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.52 M</td>
    <td style="white-space: nowrap; text-align: right">0.40 μs</td>
    <td style="white-space: nowrap; text-align: right">±144.25%</td>
    <td style="white-space: nowrap; text-align: right">0.32 μs</td>
    <td style="white-space: nowrap; text-align: right">1.32 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.33 M</td>
    <td style="white-space: nowrap; text-align: right">0.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±14.84%</td>
    <td style="white-space: nowrap; text-align: right">0.41 μs</td>
    <td style="white-space: nowrap; text-align: right">0.61 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.30 M</td>
    <td style="white-space: nowrap; text-align: right">0.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±93.76%</td>
    <td style="white-space: nowrap; text-align: right">0.72 μs</td>
    <td style="white-space: nowrap; text-align: right">1.01 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.23 M</td>
    <td style="white-space: nowrap; text-align: right">4.38 μs</td>
    <td style="white-space: nowrap; text-align: right">±79.30%</td>
    <td style="white-space: nowrap; text-align: right">3.46 μs</td>
    <td style="white-space: nowrap; text-align: right">16.82 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.22 M</td>
    <td style="white-space: nowrap; text-align: right">4.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±65.99%</td>
    <td style="white-space: nowrap; text-align: right">3.82 μs</td>
    <td style="white-space: nowrap; text-align: right">20.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.00126 M</td>
    <td style="white-space: nowrap; text-align: right">794.46 μs</td>
    <td style="white-space: nowrap; text-align: right">±115.01%</td>
    <td style="white-space: nowrap; text-align: right">576.03 μs</td>
    <td style="white-space: nowrap; text-align: right">3879.65 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">2.52 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.33 M</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.30 M</td>
    <td style="white-space: nowrap; text-align: right">1.93x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.23 M</td>
    <td style="white-space: nowrap; text-align: right">11.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.22 M</td>
    <td style="white-space: nowrap; text-align: right">11.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.00126 M</td>
    <td style="white-space: nowrap; text-align: right">2000.3x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">832.80 K</td>
    <td style="white-space: nowrap; text-align: right">1.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±204.23%</td>
    <td style="white-space: nowrap; text-align: right">0.65 μs</td>
    <td style="white-space: nowrap; text-align: right">14.04 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">757.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.32 μs</td>
    <td style="white-space: nowrap; text-align: right">±169.91%</td>
    <td style="white-space: nowrap; text-align: right">0.80 μs</td>
    <td style="white-space: nowrap; text-align: right">14.13 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">478.51 K</td>
    <td style="white-space: nowrap; text-align: right">2.09 μs</td>
    <td style="white-space: nowrap; text-align: right">±117.81%</td>
    <td style="white-space: nowrap; text-align: right">1.47 μs</td>
    <td style="white-space: nowrap; text-align: right">15.90 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">247.01 K</td>
    <td style="white-space: nowrap; text-align: right">4.05 μs</td>
    <td style="white-space: nowrap; text-align: right">±81.84%</td>
    <td style="white-space: nowrap; text-align: right">3.20 μs</td>
    <td style="white-space: nowrap; text-align: right">21.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">201.51 K</td>
    <td style="white-space: nowrap; text-align: right">4.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±62.62%</td>
    <td style="white-space: nowrap; text-align: right">4.14 μs</td>
    <td style="white-space: nowrap; text-align: right">21.91 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.57 K</td>
    <td style="white-space: nowrap; text-align: right">1747.97 μs</td>
    <td style="white-space: nowrap; text-align: right">±97.98%</td>
    <td style="white-space: nowrap; text-align: right">1000.68 μs</td>
    <td style="white-space: nowrap; text-align: right">5358.86 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">832.80 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">757.36 K</td>
    <td style="white-space: nowrap; text-align: right">1.1x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">478.51 K</td>
    <td style="white-space: nowrap; text-align: right">1.74x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">247.01 K</td>
    <td style="white-space: nowrap; text-align: right">3.37x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">201.51 K</td>
    <td style="white-space: nowrap; text-align: right">4.13x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.57 K</td>
    <td style="white-space: nowrap; text-align: right">1455.7x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">441.14 K</td>
    <td style="white-space: nowrap; text-align: right">2.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±28.79%</td>
    <td style="white-space: nowrap; text-align: right">2.17 μs</td>
    <td style="white-space: nowrap; text-align: right">3.71 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">432.31 K</td>
    <td style="white-space: nowrap; text-align: right">2.31 μs</td>
    <td style="white-space: nowrap; text-align: right">±33.89%</td>
    <td style="white-space: nowrap; text-align: right">2.14 μs</td>
    <td style="white-space: nowrap; text-align: right">7.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">342.46 K</td>
    <td style="white-space: nowrap; text-align: right">2.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±19.13%</td>
    <td style="white-space: nowrap; text-align: right">2.84 μs</td>
    <td style="white-space: nowrap; text-align: right">6.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">262.19 K</td>
    <td style="white-space: nowrap; text-align: right">3.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±79.61%</td>
    <td style="white-space: nowrap; text-align: right">3.02 μs</td>
    <td style="white-space: nowrap; text-align: right">16.21 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">186.92 K</td>
    <td style="white-space: nowrap; text-align: right">5.35 μs</td>
    <td style="white-space: nowrap; text-align: right">±73.91%</td>
    <td style="white-space: nowrap; text-align: right">3.77 μs</td>
    <td style="white-space: nowrap; text-align: right">17.19 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.176 K</td>
    <td style="white-space: nowrap; text-align: right">5669.94 μs</td>
    <td style="white-space: nowrap; text-align: right">±85.61%</td>
    <td style="white-space: nowrap; text-align: right">3908.99 μs</td>
    <td style="white-space: nowrap; text-align: right">19721.13 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">441.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">432.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">342.46 K</td>
    <td style="white-space: nowrap; text-align: right">1.29x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">262.19 K</td>
    <td style="white-space: nowrap; text-align: right">1.68x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">186.92 K</td>
    <td style="white-space: nowrap; text-align: right">2.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.176 K</td>
    <td style="white-space: nowrap; text-align: right">2501.22x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">441.04 K</td>
    <td style="white-space: nowrap; text-align: right">2.27 μs</td>
    <td style="white-space: nowrap; text-align: right">±11.01%</td>
    <td style="white-space: nowrap; text-align: right">2.21 μs</td>
    <td style="white-space: nowrap; text-align: right">3.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">380.99 K</td>
    <td style="white-space: nowrap; text-align: right">2.62 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.05%</td>
    <td style="white-space: nowrap; text-align: right">2.61 μs</td>
    <td style="white-space: nowrap; text-align: right">3.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">274.14 K</td>
    <td style="white-space: nowrap; text-align: right">3.65 μs</td>
    <td style="white-space: nowrap; text-align: right">±30.98%</td>
    <td style="white-space: nowrap; text-align: right">3.45 μs</td>
    <td style="white-space: nowrap; text-align: right">12.68 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">223.54 K</td>
    <td style="white-space: nowrap; text-align: right">4.47 μs</td>
    <td style="white-space: nowrap; text-align: right">±22.79%</td>
    <td style="white-space: nowrap; text-align: right">4.10 μs</td>
    <td style="white-space: nowrap; text-align: right">7.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">212.02 K</td>
    <td style="white-space: nowrap; text-align: right">4.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±64.44%</td>
    <td style="white-space: nowrap; text-align: right">3.44 μs</td>
    <td style="white-space: nowrap; text-align: right">17.39 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0813 K</td>
    <td style="white-space: nowrap; text-align: right">12305.78 μs</td>
    <td style="white-space: nowrap; text-align: right">±75.66%</td>
    <td style="white-space: nowrap; text-align: right">11495.86 μs</td>
    <td style="white-space: nowrap; text-align: right">37512.05 μs</td>
  </tr>

</table>


Comparison

<table style="width: 1%">
  <tr>
    <th>Name</th>
    <th style="text-align: right">IPS</th>
    <th style="text-align: right">Slower</th>
  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap;text-align: right">441.04 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">380.99 K</td>
    <td style="white-space: nowrap; text-align: right">1.16x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">274.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">223.54 K</td>
    <td style="white-space: nowrap; text-align: right">1.97x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">212.02 K</td>
    <td style="white-space: nowrap; text-align: right">2.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0813 K</td>
    <td style="white-space: nowrap; text-align: right">5427.32x</td>
  </tr>

</table>



<hr/>

