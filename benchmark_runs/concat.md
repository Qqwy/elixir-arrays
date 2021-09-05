
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
    <td style="white-space: nowrap">5 s</td>
  </tr><tr>
    <th>:parallel</th>
    <td style="white-space: nowrap">1</td>
  </tr><tr>
    <th>:warmup</th>
    <td style="white-space: nowrap">2 s</td>
  </tr>
</table>

## Statistics




__Input: 1..10__

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
    <td style="white-space: nowrap; text-align: right">9.27 M</td>
    <td style="white-space: nowrap; text-align: right">107.91 ns</td>
    <td style="white-space: nowrap; text-align: right">±23947.12%</td>
    <td style="white-space: nowrap; text-align: right">65 ns</td>
    <td style="white-space: nowrap; text-align: right">176 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.25 M</td>
    <td style="white-space: nowrap; text-align: right">137.90 ns</td>
    <td style="white-space: nowrap; text-align: right">±6725.05%</td>
    <td style="white-space: nowrap; text-align: right">105 ns</td>
    <td style="white-space: nowrap; text-align: right">157 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">7.24 M</td>
    <td style="white-space: nowrap; text-align: right">138.15 ns</td>
    <td style="white-space: nowrap; text-align: right">±7084.42%</td>
    <td style="white-space: nowrap; text-align: right">104 ns</td>
    <td style="white-space: nowrap; text-align: right">176 ns</td>
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
    <td style="white-space: nowrap;text-align: right">9.27 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">7.25 M</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">7.24 M</td>
    <td style="white-space: nowrap; text-align: right">1.28x</td>
  </tr>

</table>



<hr/>


__Input: 1..100__

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
    <td style="white-space: nowrap; text-align: right">6.34 M</td>
    <td style="white-space: nowrap; text-align: right">157.64 ns</td>
    <td style="white-space: nowrap; text-align: right">±7532.73%</td>
    <td style="white-space: nowrap; text-align: right">116 ns</td>
    <td style="white-space: nowrap; text-align: right">182 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.30 M</td>
    <td style="white-space: nowrap; text-align: right">158.64 ns</td>
    <td style="white-space: nowrap; text-align: right">±7438.60%</td>
    <td style="white-space: nowrap; text-align: right">117 ns</td>
    <td style="white-space: nowrap; text-align: right">219 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.45 M</td>
    <td style="white-space: nowrap; text-align: right">224.52 ns</td>
    <td style="white-space: nowrap; text-align: right">±8342.77%</td>
    <td style="white-space: nowrap; text-align: right">188 ns</td>
    <td style="white-space: nowrap; text-align: right">541 ns</td>
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
    <td style="white-space: nowrap;text-align: right">6.34 M</td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (MapArray)</td>
    <td style="white-space: nowrap; text-align: right">6.30 M</td>
    <td style="white-space: nowrap; text-align: right">1.01x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">4.45 M</td>
    <td style="white-space: nowrap; text-align: right">1.42x</td>
  </tr>

</table>



<hr/>


__Input: 1..1000__

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
    <td style="white-space: nowrap; text-align: right">174.20 ns</td>
    <td style="white-space: nowrap; text-align: right">±12192.37%</td>
    <td style="white-space: nowrap; text-align: right">129 ns</td>
    <td style="white-space: nowrap; text-align: right">214 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Arrays.get/2 (ErlangArray)</td>
    <td style="white-space: nowrap; text-align: right">5.50 M</td>
    <td style="white-space: nowrap; text-align: right">181.79 ns</td>
    <td style="white-space: nowrap; text-align: right">±11587.34%</td>
    <td style="white-space: nowrap; text-align: right">129 ns</td>
    <td style="white-space: nowrap; text-align: right">433 ns</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.66 M</td>
    <td style="white-space: nowrap; text-align: right">1515.14 ns</td>
    <td style="white-space: nowrap; text-align: right">±329.56%</td>
    <td style="white-space: nowrap; text-align: right">1403 ns</td>
    <td style="white-space: nowrap; text-align: right">3362 ns</td>
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
    <td style="white-space: nowrap; text-align: right">5.50 M</td>
    <td style="white-space: nowrap; text-align: right">1.04x</td>
  </tr>

  <tr>
    <td style="white-space: nowrap">Enum.fetch/2 (list)</td>
    <td style="white-space: nowrap; text-align: right">0.66 M</td>
    <td style="white-space: nowrap; text-align: right">8.7x</td>
  </tr>

</table>



<hr/>

