
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
    <td style="white-space: nowrap; text-align: right">4.46 M</td>
    <td style="white-space: nowrap; text-align: right">224.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±665.06%</td>
    <td style="white-space: nowrap; text-align: right">150 ns</td>
    <td style="white-space: nowrap; text-align: right">511.57 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.75 M</td>
    <td style="white-space: nowrap; text-align: right">363.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±724.03%</td>
    <td style="white-space: nowrap; text-align: right">165 ns</td>
    <td style="white-space: nowrap; text-align: right">904.01 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.30 M</td>
    <td style="white-space: nowrap; text-align: right">435.00 ns</td>
    <td style="white-space: nowrap; text-align: right">±680.76%</td>
    <td style="white-space: nowrap; text-align: right">198 ns</td>
    <td style="white-space: nowrap; text-align: right">2174.46 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.04 M</td>
    <td style="white-space: nowrap; text-align: right">490.03 ns</td>
    <td style="white-space: nowrap; text-align: right">±717.18%</td>
    <td style="white-space: nowrap; text-align: right">216 ns</td>
    <td style="white-space: nowrap; text-align: right">788.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.69 M</td>
    <td style="white-space: nowrap; text-align: right">593.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±524.27%</td>
    <td style="white-space: nowrap; text-align: right">343 ns</td>
    <td style="white-space: nowrap; text-align: right">826 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.51 M</td>
    <td style="white-space: nowrap; text-align: right">662.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±506.88%</td>
    <td style="white-space: nowrap; text-align: right">379 ns</td>
    <td style="white-space: nowrap; text-align: right">1568.70 ns</td>
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
    <td style="white-space: nowrap;text-align: right">4.46 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.75 M</td>
    <td style="white-space: nowrap; text-align: right">1.62x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.30 M</td>
    <td style="white-space: nowrap; text-align: right">1.94x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">2.04 M</td>
    <td style="white-space: nowrap; text-align: right">2.18x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.69 M</td>
    <td style="white-space: nowrap; text-align: right">2.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.51 M</td>
    <td style="white-space: nowrap; text-align: right">2.95x</td>
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
    <td style="white-space: nowrap; text-align: right">3.29 M</td>
    <td style="white-space: nowrap; text-align: right">304.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±633.12%</td>
    <td style="white-space: nowrap; text-align: right">223 ns</td>
    <td style="white-space: nowrap; text-align: right">488.47 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.94 M</td>
    <td style="white-space: nowrap; text-align: right">340.41 ns</td>
    <td style="white-space: nowrap; text-align: right">±526.02%</td>
    <td style="white-space: nowrap; text-align: right">242 ns</td>
    <td style="white-space: nowrap; text-align: right">728 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.38 M</td>
    <td style="white-space: nowrap; text-align: right">421.02 ns</td>
    <td style="white-space: nowrap; text-align: right">±665.33%</td>
    <td style="white-space: nowrap; text-align: right">201 ns</td>
    <td style="white-space: nowrap; text-align: right">1629.11 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.36 M</td>
    <td style="white-space: nowrap; text-align: right">424.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±642.78%</td>
    <td style="white-space: nowrap; text-align: right">221 ns</td>
    <td style="white-space: nowrap; text-align: right">1073 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.68 M</td>
    <td style="white-space: nowrap; text-align: right">595.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±511.73%</td>
    <td style="white-space: nowrap; text-align: right">385 ns</td>
    <td style="white-space: nowrap; text-align: right">882 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">634.38 ns</td>
    <td style="white-space: nowrap; text-align: right">±589.42%</td>
    <td style="white-space: nowrap; text-align: right">346 ns</td>
    <td style="white-space: nowrap; text-align: right">881.46 ns</td>
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
    <td style="white-space: nowrap;text-align: right">3.29 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.94 M</td>
    <td style="white-space: nowrap; text-align: right">1.12x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.38 M</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.36 M</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.68 M</td>
    <td style="white-space: nowrap; text-align: right">1.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">2.09x</td>
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
    <td style="white-space: nowrap; text-align: right">3.13 M</td>
    <td style="white-space: nowrap; text-align: right">319.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±537.07%</td>
    <td style="white-space: nowrap; text-align: right">238 ns</td>
    <td style="white-space: nowrap; text-align: right">515.36 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.27 M</td>
    <td style="white-space: nowrap; text-align: right">440.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±634.47%</td>
    <td style="white-space: nowrap; text-align: right">231 ns</td>
    <td style="white-space: nowrap; text-align: right">673.69 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.92 M</td>
    <td style="white-space: nowrap; text-align: right">521.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±357.46%</td>
    <td style="white-space: nowrap; text-align: right">390 ns</td>
    <td style="white-space: nowrap; text-align: right">708.85 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.85 M</td>
    <td style="white-space: nowrap; text-align: right">540.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±619.43%</td>
    <td style="white-space: nowrap; text-align: right">241 ns</td>
    <td style="white-space: nowrap; text-align: right">5172.61 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">622.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±417.85%</td>
    <td style="white-space: nowrap; text-align: right">417 ns</td>
    <td style="white-space: nowrap; text-align: right">2923.55 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.52 M</td>
    <td style="white-space: nowrap; text-align: right">659.95 ns</td>
    <td style="white-space: nowrap; text-align: right">±512.15%</td>
    <td style="white-space: nowrap; text-align: right">402 ns</td>
    <td style="white-space: nowrap; text-align: right">1134.30 ns</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.27 M</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.92 M</td>
    <td style="white-space: nowrap; text-align: right">1.63x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.85 M</td>
    <td style="white-space: nowrap; text-align: right">1.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">1.61 M</td>
    <td style="white-space: nowrap; text-align: right">1.95x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.52 M</td>
    <td style="white-space: nowrap; text-align: right">2.07x</td>
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
    <td style="white-space: nowrap; text-align: right">2.96 M</td>
    <td style="white-space: nowrap; text-align: right">337.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±581.50%</td>
    <td style="white-space: nowrap; text-align: right">248 ns</td>
    <td style="white-space: nowrap; text-align: right">621 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.09 M</td>
    <td style="white-space: nowrap; text-align: right">477.74 ns</td>
    <td style="white-space: nowrap; text-align: right">±727.30%</td>
    <td style="white-space: nowrap; text-align: right">234 ns</td>
    <td style="white-space: nowrap; text-align: right">654.82 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.94 M</td>
    <td style="white-space: nowrap; text-align: right">514.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±605.03%</td>
    <td style="white-space: nowrap; text-align: right">238 ns</td>
    <td style="white-space: nowrap; text-align: right">5145.16 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.56 M</td>
    <td style="white-space: nowrap; text-align: right">640.55 ns</td>
    <td style="white-space: nowrap; text-align: right">±460.76%</td>
    <td style="white-space: nowrap; text-align: right">433 ns</td>
    <td style="white-space: nowrap; text-align: right">911.84 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.42 M</td>
    <td style="white-space: nowrap; text-align: right">703.91 ns</td>
    <td style="white-space: nowrap; text-align: right">±494.40%</td>
    <td style="white-space: nowrap; text-align: right">406 ns</td>
    <td style="white-space: nowrap; text-align: right">1987 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.87 M</td>
    <td style="white-space: nowrap; text-align: right">1145.93 ns</td>
    <td style="white-space: nowrap; text-align: right">±340.11%</td>
    <td style="white-space: nowrap; text-align: right">765 ns</td>
    <td style="white-space: nowrap; text-align: right">14718.40 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.96 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.09 M</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.94 M</td>
    <td style="white-space: nowrap; text-align: right">1.52x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.56 M</td>
    <td style="white-space: nowrap; text-align: right">1.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.42 M</td>
    <td style="white-space: nowrap; text-align: right">2.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.87 M</td>
    <td style="white-space: nowrap; text-align: right">3.4x</td>
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
    <td style="white-space: nowrap; text-align: right">2.77 M</td>
    <td style="white-space: nowrap; text-align: right">361.43 ns</td>
    <td style="white-space: nowrap; text-align: right">±533.41%</td>
    <td style="white-space: nowrap; text-align: right">270 ns</td>
    <td style="white-space: nowrap; text-align: right">616.04 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">499.39 ns</td>
    <td style="white-space: nowrap; text-align: right">±654.32%</td>
    <td style="white-space: nowrap; text-align: right">240 ns</td>
    <td style="white-space: nowrap; text-align: right">3782.29 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.89 M</td>
    <td style="white-space: nowrap; text-align: right">529.77 ns</td>
    <td style="white-space: nowrap; text-align: right">±663.01%</td>
    <td style="white-space: nowrap; text-align: right">252 ns</td>
    <td style="white-space: nowrap; text-align: right">1363.94 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">632.98 ns</td>
    <td style="white-space: nowrap; text-align: right">±427.00%</td>
    <td style="white-space: nowrap; text-align: right">455 ns</td>
    <td style="white-space: nowrap; text-align: right">875 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.45 M</td>
    <td style="white-space: nowrap; text-align: right">687.56 ns</td>
    <td style="white-space: nowrap; text-align: right">±456.56%</td>
    <td style="white-space: nowrap; text-align: right">425 ns</td>
    <td style="white-space: nowrap; text-align: right">1861.94 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.47 M</td>
    <td style="white-space: nowrap; text-align: right">2138.11 ns</td>
    <td style="white-space: nowrap; text-align: right">±245.44%</td>
    <td style="white-space: nowrap; text-align: right">1438 ns</td>
    <td style="white-space: nowrap; text-align: right">23859.14 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.77 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.00 M</td>
    <td style="white-space: nowrap; text-align: right">1.38x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.89 M</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">1.75x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.45 M</td>
    <td style="white-space: nowrap; text-align: right">1.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.47 M</td>
    <td style="white-space: nowrap; text-align: right">5.92x</td>
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
    <td style="white-space: nowrap; text-align: right">2.62 M</td>
    <td style="white-space: nowrap; text-align: right">381.59 ns</td>
    <td style="white-space: nowrap; text-align: right">±531.79%</td>
    <td style="white-space: nowrap; text-align: right">281 ns</td>
    <td style="white-space: nowrap; text-align: right">677.74 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.40 M</td>
    <td style="white-space: nowrap; text-align: right">417.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±659.23%</td>
    <td style="white-space: nowrap; text-align: right">247 ns</td>
    <td style="white-space: nowrap; text-align: right">535 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">634.40 ns</td>
    <td style="white-space: nowrap; text-align: right">±593.10%</td>
    <td style="white-space: nowrap; text-align: right">295 ns</td>
    <td style="white-space: nowrap; text-align: right">9106.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.54 M</td>
    <td style="white-space: nowrap; text-align: right">647.26 ns</td>
    <td style="white-space: nowrap; text-align: right">±471.64%</td>
    <td style="white-space: nowrap; text-align: right">441 ns</td>
    <td style="white-space: nowrap; text-align: right">984 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">776.72 ns</td>
    <td style="white-space: nowrap; text-align: right">±433.10%</td>
    <td style="white-space: nowrap; text-align: right">493 ns</td>
    <td style="white-space: nowrap; text-align: right">1335 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.24 M</td>
    <td style="white-space: nowrap; text-align: right">4202.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±174.07%</td>
    <td style="white-space: nowrap; text-align: right">2894.50 ns</td>
    <td style="white-space: nowrap; text-align: right">39587.20 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.62 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.40 M</td>
    <td style="white-space: nowrap; text-align: right">1.09x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">1.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.54 M</td>
    <td style="white-space: nowrap; text-align: right">1.7x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">2.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.24 M</td>
    <td style="white-space: nowrap; text-align: right">11.01x</td>
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
    <td style="white-space: nowrap; text-align: right">2.48 M</td>
    <td style="white-space: nowrap; text-align: right">403.04 ns</td>
    <td style="white-space: nowrap; text-align: right">±446.79%</td>
    <td style="white-space: nowrap; text-align: right">302 ns</td>
    <td style="white-space: nowrap; text-align: right">705.34 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.09 M</td>
    <td style="white-space: nowrap; text-align: right">478.34 ns</td>
    <td style="white-space: nowrap; text-align: right">±593.07%</td>
    <td style="white-space: nowrap; text-align: right">278 ns</td>
    <td style="white-space: nowrap; text-align: right">690.60 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.79 M</td>
    <td style="white-space: nowrap; text-align: right">559.61 ns</td>
    <td style="white-space: nowrap; text-align: right">±268.26%</td>
    <td style="white-space: nowrap; text-align: right">464 ns</td>
    <td style="white-space: nowrap; text-align: right">1090 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.68 M</td>
    <td style="white-space: nowrap; text-align: right">594.60 ns</td>
    <td style="white-space: nowrap; text-align: right">±614.95%</td>
    <td style="white-space: nowrap; text-align: right">292 ns</td>
    <td style="white-space: nowrap; text-align: right">7825.38 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">775.06 ns</td>
    <td style="white-space: nowrap; text-align: right">±462.54%</td>
    <td style="white-space: nowrap; text-align: right">491 ns</td>
    <td style="white-space: nowrap; text-align: right">1256.77 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.120 M</td>
    <td style="white-space: nowrap; text-align: right">8358.80 ns</td>
    <td style="white-space: nowrap; text-align: right">±139.06%</td>
    <td style="white-space: nowrap; text-align: right">5870 ns</td>
    <td style="white-space: nowrap; text-align: right">63423.34 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.48 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.09 M</td>
    <td style="white-space: nowrap; text-align: right">1.19x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.79 M</td>
    <td style="white-space: nowrap; text-align: right">1.39x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.68 M</td>
    <td style="white-space: nowrap; text-align: right">1.48x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.29 M</td>
    <td style="white-space: nowrap; text-align: right">1.92x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.120 M</td>
    <td style="white-space: nowrap; text-align: right">20.74x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">2.10 M</td>
    <td style="white-space: nowrap; text-align: right">475.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±515.79%</td>
    <td style="white-space: nowrap; text-align: right">293 ns</td>
    <td style="white-space: nowrap; text-align: right">734 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.84 M</td>
    <td style="white-space: nowrap; text-align: right">544.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±833.36%</td>
    <td style="white-space: nowrap; text-align: right">334 ns</td>
    <td style="white-space: nowrap; text-align: right">744.84 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">646.27 ns</td>
    <td style="white-space: nowrap; text-align: right">±611.94%</td>
    <td style="white-space: nowrap; text-align: right">316 ns</td>
    <td style="white-space: nowrap; text-align: right">1042.84 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">726.21 ns</td>
    <td style="white-space: nowrap; text-align: right">±517.18%</td>
    <td style="white-space: nowrap; text-align: right">507 ns</td>
    <td style="white-space: nowrap; text-align: right">1017.80 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.23 M</td>
    <td style="white-space: nowrap; text-align: right">812.19 ns</td>
    <td style="white-space: nowrap; text-align: right">±431.76%</td>
    <td style="white-space: nowrap; text-align: right">513 ns</td>
    <td style="white-space: nowrap; text-align: right">1194.76 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0571 M</td>
    <td style="white-space: nowrap; text-align: right">17510.07 ns</td>
    <td style="white-space: nowrap; text-align: right">±108.44%</td>
    <td style="white-space: nowrap; text-align: right">12091.50 ns</td>
    <td style="white-space: nowrap; text-align: right">78697.20 ns</td>
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
    <td style="white-space: nowrap;text-align: right">2.10 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.84 M</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.38 M</td>
    <td style="white-space: nowrap; text-align: right">1.53x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.23 M</td>
    <td style="white-space: nowrap; text-align: right">1.71x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0571 M</td>
    <td style="white-space: nowrap; text-align: right">36.82x</td>
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
    <td style="white-space: nowrap; text-align: right">1.91 M</td>
    <td style="white-space: nowrap; text-align: right">522.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±206.85%</td>
    <td style="white-space: nowrap; text-align: right">404 ns</td>
    <td style="white-space: nowrap; text-align: right">1306.16 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.59 M</td>
    <td style="white-space: nowrap; text-align: right">630.86 ns</td>
    <td style="white-space: nowrap; text-align: right">±133.62%</td>
    <td style="white-space: nowrap; text-align: right">547 ns</td>
    <td style="white-space: nowrap; text-align: right">1225.48 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">646.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±616.34%</td>
    <td style="white-space: nowrap; text-align: right">331 ns</td>
    <td style="white-space: nowrap; text-align: right">829.35 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">646.67 ns</td>
    <td style="white-space: nowrap; text-align: right">±584.98%</td>
    <td style="white-space: nowrap; text-align: right">316 ns</td>
    <td style="white-space: nowrap; text-align: right">1998.48 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.19 M</td>
    <td style="white-space: nowrap; text-align: right">840.42 ns</td>
    <td style="white-space: nowrap; text-align: right">±441.86%</td>
    <td style="white-space: nowrap; text-align: right">503 ns</td>
    <td style="white-space: nowrap; text-align: right">14078.19 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0298 M</td>
    <td style="white-space: nowrap; text-align: right">33573.87 ns</td>
    <td style="white-space: nowrap; text-align: right">±90.90%</td>
    <td style="white-space: nowrap; text-align: right">25307 ns</td>
    <td style="white-space: nowrap; text-align: right">132119.08 ns</td>
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
    <td style="white-space: nowrap;text-align: right">1.91 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.59 M</td>
    <td style="white-space: nowrap; text-align: right">1.21x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.55 M</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.19 M</td>
    <td style="white-space: nowrap; text-align: right">1.61x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0298 M</td>
    <td style="white-space: nowrap; text-align: right">64.21x</td>
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
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">1.92 M</td>
    <td style="white-space: nowrap; text-align: right">522.11 ns</td>
    <td style="white-space: nowrap; text-align: right">±596.70%</td>
    <td style="white-space: nowrap; text-align: right">326 ns</td>
    <td style="white-space: nowrap; text-align: right">559.20 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.82 M</td>
    <td style="white-space: nowrap; text-align: right">550.50 ns</td>
    <td style="white-space: nowrap; text-align: right">±214.07%</td>
    <td style="white-space: nowrap; text-align: right">402 ns</td>
    <td style="white-space: nowrap; text-align: right">1570.40 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.68 M</td>
    <td style="white-space: nowrap; text-align: right">593.54 ns</td>
    <td style="white-space: nowrap; text-align: right">±608.63%</td>
    <td style="white-space: nowrap; text-align: right">350 ns</td>
    <td style="white-space: nowrap; text-align: right">519.68 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">634.89 ns</td>
    <td style="white-space: nowrap; text-align: right">±88.47%</td>
    <td style="white-space: nowrap; text-align: right">565 ns</td>
    <td style="white-space: nowrap; text-align: right">1147.52 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.21 M</td>
    <td style="white-space: nowrap; text-align: right">826.23 ns</td>
    <td style="white-space: nowrap; text-align: right">±404.59%</td>
    <td style="white-space: nowrap; text-align: right">579 ns</td>
    <td style="white-space: nowrap; text-align: right">756.24 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0151 M</td>
    <td style="white-space: nowrap; text-align: right">66370.31 ns</td>
    <td style="white-space: nowrap; text-align: right">±80.88%</td>
    <td style="white-space: nowrap; text-align: right">54930 ns</td>
    <td style="white-space: nowrap; text-align: right">233637.76 ns</td>
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
    <td style="white-space: nowrap;text-align: right">1.92 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.82 M</td>
    <td style="white-space: nowrap; text-align: right">1.05x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.68 M</td>
    <td style="white-space: nowrap; text-align: right">1.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">1.58 M</td>
    <td style="white-space: nowrap; text-align: right">1.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.21 M</td>
    <td style="white-space: nowrap; text-align: right">1.58x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0151 M</td>
    <td style="white-space: nowrap; text-align: right">127.12x</td>
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
    <td style="white-space: nowrap; text-align: right">1238.48 K</td>
    <td style="white-space: nowrap; text-align: right">0.81 μs</td>
    <td style="white-space: nowrap; text-align: right">±826.36%</td>
    <td style="white-space: nowrap; text-align: right">0.35 μs</td>
    <td style="white-space: nowrap; text-align: right">0.79 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1150.20 K</td>
    <td style="white-space: nowrap; text-align: right">0.87 μs</td>
    <td style="white-space: nowrap; text-align: right">±742.01%</td>
    <td style="white-space: nowrap; text-align: right">0.39 μs</td>
    <td style="white-space: nowrap; text-align: right">0.63 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">911.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.10 μs</td>
    <td style="white-space: nowrap; text-align: right">±567.99%</td>
    <td style="white-space: nowrap; text-align: right">0.59 μs</td>
    <td style="white-space: nowrap; text-align: right">2.35 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">308.00 K</td>
    <td style="white-space: nowrap; text-align: right">3.25 μs</td>
    <td style="white-space: nowrap; text-align: right">±1159.02%</td>
    <td style="white-space: nowrap; text-align: right">0.51 μs</td>
    <td style="white-space: nowrap; text-align: right">17.41 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">143.31 K</td>
    <td style="white-space: nowrap; text-align: right">6.98 μs</td>
    <td style="white-space: nowrap; text-align: right">±820.34%</td>
    <td style="white-space: nowrap; text-align: right">0.65 μs</td>
    <td style="white-space: nowrap; text-align: right">486.05 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">5.69 K</td>
    <td style="white-space: nowrap; text-align: right">175.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±98.45%</td>
    <td style="white-space: nowrap; text-align: right">119.58 μs</td>
    <td style="white-space: nowrap; text-align: right">805.93 μs</td>
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
    <td style="white-space: nowrap;text-align: right">1238.48 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1150.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">911.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.36x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">308.00 K</td>
    <td style="white-space: nowrap; text-align: right">4.02x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">143.31 K</td>
    <td style="white-space: nowrap; text-align: right">8.64x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">5.69 K</td>
    <td style="white-space: nowrap; text-align: right">217.78x</td>
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
    <td style="white-space: nowrap; text-align: right">2294.73 K</td>
    <td style="white-space: nowrap; text-align: right">0.44 μs</td>
    <td style="white-space: nowrap; text-align: right">±194.92%</td>
    <td style="white-space: nowrap; text-align: right">0.39 μs</td>
    <td style="white-space: nowrap; text-align: right">0.50 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1492.31 K</td>
    <td style="white-space: nowrap; text-align: right">0.67 μs</td>
    <td style="white-space: nowrap; text-align: right">±130.15%</td>
    <td style="white-space: nowrap; text-align: right">0.62 μs</td>
    <td style="white-space: nowrap; text-align: right">0.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">624.76 K</td>
    <td style="white-space: nowrap; text-align: right">1.60 μs</td>
    <td style="white-space: nowrap; text-align: right">±819.70%</td>
    <td style="white-space: nowrap; text-align: right">0.37 μs</td>
    <td style="white-space: nowrap; text-align: right">16.79 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">554.68 K</td>
    <td style="white-space: nowrap; text-align: right">1.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±120.94%</td>
    <td style="white-space: nowrap; text-align: right">1.42 μs</td>
    <td style="white-space: nowrap; text-align: right">17.31 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">260.50 K</td>
    <td style="white-space: nowrap; text-align: right">3.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±82.11%</td>
    <td style="white-space: nowrap; text-align: right">3.27 μs</td>
    <td style="white-space: nowrap; text-align: right">18.27 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.92 K</td>
    <td style="white-space: nowrap; text-align: right">342.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±84.92%</td>
    <td style="white-space: nowrap; text-align: right">231.76 μs</td>
    <td style="white-space: nowrap; text-align: right">1062.93 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2294.73 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1492.31 K</td>
    <td style="white-space: nowrap; text-align: right">1.54x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">624.76 K</td>
    <td style="white-space: nowrap; text-align: right">3.67x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">554.68 K</td>
    <td style="white-space: nowrap; text-align: right">4.14x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">260.50 K</td>
    <td style="white-space: nowrap; text-align: right">8.81x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">2.92 K</td>
    <td style="white-space: nowrap; text-align: right">786.37x</td>
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
    <td style="white-space: nowrap; text-align: right">2.59 M</td>
    <td style="white-space: nowrap; text-align: right">0.39 μs</td>
    <td style="white-space: nowrap; text-align: right">±115.70%</td>
    <td style="white-space: nowrap; text-align: right">0.33 μs</td>
    <td style="white-space: nowrap; text-align: right">1.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.08 M</td>
    <td style="white-space: nowrap; text-align: right">0.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±152.42%</td>
    <td style="white-space: nowrap; text-align: right">0.41 μs</td>
    <td style="white-space: nowrap; text-align: right">0.93 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.32 M</td>
    <td style="white-space: nowrap; text-align: right">0.76 μs</td>
    <td style="white-space: nowrap; text-align: right">±112.40%</td>
    <td style="white-space: nowrap; text-align: right">0.69 μs</td>
    <td style="white-space: nowrap; text-align: right">1.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.34 M</td>
    <td style="white-space: nowrap; text-align: right">2.96 μs</td>
    <td style="white-space: nowrap; text-align: right">±86.72%</td>
    <td style="white-space: nowrap; text-align: right">2.56 μs</td>
    <td style="white-space: nowrap; text-align: right">21.99 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.196 M</td>
    <td style="white-space: nowrap; text-align: right">5.11 μs</td>
    <td style="white-space: nowrap; text-align: right">±57.65%</td>
    <td style="white-space: nowrap; text-align: right">4.46 μs</td>
    <td style="white-space: nowrap; text-align: right">21.08 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.00126 M</td>
    <td style="white-space: nowrap; text-align: right">792.04 μs</td>
    <td style="white-space: nowrap; text-align: right">±106.81%</td>
    <td style="white-space: nowrap; text-align: right">567.17 μs</td>
    <td style="white-space: nowrap; text-align: right">4029.11 μs</td>
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
    <td style="white-space: nowrap;text-align: right">2.59 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">2.08 M</td>
    <td style="white-space: nowrap; text-align: right">1.24x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">1.32 M</td>
    <td style="white-space: nowrap; text-align: right">1.96x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.34 M</td>
    <td style="white-space: nowrap; text-align: right">7.66x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">0.196 M</td>
    <td style="white-space: nowrap; text-align: right">13.22x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.00126 M</td>
    <td style="white-space: nowrap; text-align: right">2049.18x</td>
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
    <td style="white-space: nowrap; text-align: right">831.14 K</td>
    <td style="white-space: nowrap; text-align: right">1.20 μs</td>
    <td style="white-space: nowrap; text-align: right">±149.56%</td>
    <td style="white-space: nowrap; text-align: right">0.81 μs</td>
    <td style="white-space: nowrap; text-align: right">14.28 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">660.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.52 μs</td>
    <td style="white-space: nowrap; text-align: right">±142.18%</td>
    <td style="white-space: nowrap; text-align: right">1.00 μs</td>
    <td style="white-space: nowrap; text-align: right">15.07 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">565.77 K</td>
    <td style="white-space: nowrap; text-align: right">1.77 μs</td>
    <td style="white-space: nowrap; text-align: right">±71.30%</td>
    <td style="white-space: nowrap; text-align: right">1.47 μs</td>
    <td style="white-space: nowrap; text-align: right">6.34 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">225.49 K</td>
    <td style="white-space: nowrap; text-align: right">4.43 μs</td>
    <td style="white-space: nowrap; text-align: right">±67.95%</td>
    <td style="white-space: nowrap; text-align: right">3.81 μs</td>
    <td style="white-space: nowrap; text-align: right">22.72 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">182.56 K</td>
    <td style="white-space: nowrap; text-align: right">5.48 μs</td>
    <td style="white-space: nowrap; text-align: right">±58.66%</td>
    <td style="white-space: nowrap; text-align: right">4.80 μs</td>
    <td style="white-space: nowrap; text-align: right">26.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.58 K</td>
    <td style="white-space: nowrap; text-align: right">1721.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±97.30%</td>
    <td style="white-space: nowrap; text-align: right">972.42 μs</td>
    <td style="white-space: nowrap; text-align: right">5621.72 μs</td>
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
    <td style="white-space: nowrap;text-align: right">831.14 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">660.06 K</td>
    <td style="white-space: nowrap; text-align: right">1.26x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">565.77 K</td>
    <td style="white-space: nowrap; text-align: right">1.47x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">225.49 K</td>
    <td style="white-space: nowrap; text-align: right">3.69x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">182.56 K</td>
    <td style="white-space: nowrap; text-align: right">4.55x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.58 K</td>
    <td style="white-space: nowrap; text-align: right">1431.09x</td>
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
    <td style="white-space: nowrap; text-align: right">394.93 K</td>
    <td style="white-space: nowrap; text-align: right">2.53 μs</td>
    <td style="white-space: nowrap; text-align: right">±20.01%</td>
    <td style="white-space: nowrap; text-align: right">2.43 μs</td>
    <td style="white-space: nowrap; text-align: right">4.86 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">372.24 K</td>
    <td style="white-space: nowrap; text-align: right">2.69 μs</td>
    <td style="white-space: nowrap; text-align: right">±47.20%</td>
    <td style="white-space: nowrap; text-align: right">2.46 μs</td>
    <td style="white-space: nowrap; text-align: right">10.78 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">282.23 K</td>
    <td style="white-space: nowrap; text-align: right">3.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±16.42%</td>
    <td style="white-space: nowrap; text-align: right">3.43 μs</td>
    <td style="white-space: nowrap; text-align: right">5.69 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">220.43 K</td>
    <td style="white-space: nowrap; text-align: right">4.54 μs</td>
    <td style="white-space: nowrap; text-align: right">±85.15%</td>
    <td style="white-space: nowrap; text-align: right">3.70 μs</td>
    <td style="white-space: nowrap; text-align: right">23.75 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">208.28 K</td>
    <td style="white-space: nowrap; text-align: right">4.80 μs</td>
    <td style="white-space: nowrap; text-align: right">±10.39%</td>
    <td style="white-space: nowrap; text-align: right">4.71 μs</td>
    <td style="white-space: nowrap; text-align: right">6.25 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.189 K</td>
    <td style="white-space: nowrap; text-align: right">5285.72 μs</td>
    <td style="white-space: nowrap; text-align: right">±83.70%</td>
    <td style="white-space: nowrap; text-align: right">3740.60 μs</td>
    <td style="white-space: nowrap; text-align: right">20272.90 μs</td>
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
    <td style="white-space: nowrap;text-align: right">394.93 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (PersistentVector)</td>
    <td style="white-space: nowrap; text-align: right">372.24 K</td>
    <td style="white-space: nowrap; text-align: right">1.06x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">282.23 K</td>
    <td style="white-space: nowrap; text-align: right">1.4x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">220.43 K</td>
    <td style="white-space: nowrap; text-align: right">1.79x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">208.28 K</td>
    <td style="white-space: nowrap; text-align: right">1.9x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.189 K</td>
    <td style="white-space: nowrap; text-align: right">2087.5x</td>
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
    <td style="white-space: nowrap; text-align: right">339.08 K</td>
    <td style="white-space: nowrap; text-align: right">2.95 μs</td>
    <td style="white-space: nowrap; text-align: right">±45.80%</td>
    <td style="white-space: nowrap; text-align: right">2.65 μs</td>
    <td style="white-space: nowrap; text-align: right">11.40 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">326.32 K</td>
    <td style="white-space: nowrap; text-align: right">3.06 μs</td>
    <td style="white-space: nowrap; text-align: right">±59.69%</td>
    <td style="white-space: nowrap; text-align: right">2.74 μs</td>
    <td style="white-space: nowrap; text-align: right">15.06 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">255.16 K</td>
    <td style="white-space: nowrap; text-align: right">3.92 μs</td>
    <td style="white-space: nowrap; text-align: right">±9.73%</td>
    <td style="white-space: nowrap; text-align: right">3.88 μs</td>
    <td style="white-space: nowrap; text-align: right">5.38 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">171.20 K</td>
    <td style="white-space: nowrap; text-align: right">5.84 μs</td>
    <td style="white-space: nowrap; text-align: right">±79.57%</td>
    <td style="white-space: nowrap; text-align: right">4.32 μs</td>
    <td style="white-space: nowrap; text-align: right">20.58 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">110.10 K</td>
    <td style="white-space: nowrap; text-align: right">9.08 μs</td>
    <td style="white-space: nowrap; text-align: right">±70.96%</td>
    <td style="white-space: nowrap; text-align: right">5.99 μs</td>
    <td style="white-space: nowrap; text-align: right">26.24 μs</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0919 K</td>
    <td style="white-space: nowrap; text-align: right">10877.73 μs</td>
    <td style="white-space: nowrap; text-align: right">±77.66%</td>
    <td style="white-space: nowrap; text-align: right">10427.30 μs</td>
    <td style="white-space: nowrap; text-align: right">32736.03 μs</td>
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
    <td style="white-space: nowrap;text-align: right">339.08 K</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">326.32 K</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">255.16 K</td>
    <td style="white-space: nowrap; text-align: right">1.33x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.replace/3 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">171.20 K</td>
    <td style="white-space: nowrap; text-align: right">1.98x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">put_in/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">110.10 K</td>
    <td style="white-space: nowrap; text-align: right">3.08x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">List.replace_at/3</td>
    <td style="white-space: nowrap; text-align: right">0.0919 K</td>
    <td style="white-space: nowrap; text-align: right">3688.42x</td>
  </tr>

</table>



<hr/>

