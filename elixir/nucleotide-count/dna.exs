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
    do_histogram(strand, @nucleotides, %{})
  end
  defp do_histogram(strand, [head|tail], acc) do
    do_histogram(strand, tail, Map.put(acc, head, count(strand, head)))
  end
  defp do_histogram(_, [], acc) do
    acc
  end
end
