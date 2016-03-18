defmodule DNA do
  def hamming_distance(strand1, strand2) when length(strand1) == length(strand2) do
    zipped_strands = Enum.zip(strand1, strand2)
    Enum.count(zipped_strands, fn({x, y}) -> x != y end)
  end
  def hamming_distance(_, _), do: nil
end
