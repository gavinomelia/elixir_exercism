defmodule Sublist do

  def compare(a, a), do: :equal

  def compare(a, b) do
    cond do
      sublist?(a, b, a, b) -> :sublist
      sublist?(b, a, b, a) -> :superlist
      true -> :unequal
    end
  end

  defp sublist?([], _, _, _), do: true
  defp sublist?(_, [], _, _), do: false

  defp sublist?([head | a_tail], [head | b_tail], original_a, original_b) do
    sublist?(a_tail, b_tail, original_a, original_b)
  end

  defp sublist?([_|_], [_|_], original_a, [_|orig_b_tail]) do
    sublist?(original_a, orig_b_tail, original_a, orig_b_tail)
  end

end
