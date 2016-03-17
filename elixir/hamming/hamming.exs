defmodule DNA do
  def hamming_distance(strand1, strand2) when length(strand1) == length(strand2) do
    do_hamming_distance(strand1, strand2, 0)
  end
  def hamming_distance(_, _), do: nil

  defp do_hamming_distance([head|a_tail], [head|b_tail], acc) do
    do_hamming_distance(a_tail, b_tail, acc)
  end
  defp do_hamming_distance([_|a_tail], [_|b_tail], acc) do
    do_hamming_distance(a_tail, b_tail, acc + 1)
  end
  defp do_hamming_distance([], [], acc), do: acc
end
