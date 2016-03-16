defmodule DNA do
  @nucleotides [?A, ?C, ?G, ?T]

  def count(strand, nucleotide) do
    validate(strand, nucleotide)
    Enum.count(strand, fn(x) -> x == nucleotide end)
  end

  def validate(strand, nucleotide) do
    cond do
      Enum.any?(strand, fn(x) -> (Enum.member?(@nucleotides, x) == false) end) ->
        raise ArgumentError
      (Enum.member?(@nucleotides, nucleotide) == false) ->
          raise ArgumentError
      true -> true
    end
  end

  def histogram(strand) do
    Enum.reduce(@nucleotides, %{}, fn(x, acc) -> Map.put(acc, x, count(strand, x)) end)
  end
end
