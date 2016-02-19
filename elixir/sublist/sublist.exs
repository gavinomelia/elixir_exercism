defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, a), do: :equal
  def compare(a, b) do
    if is_contained?(a, b) do
      :sublist
    end
  end


  def is_contained?(a, b) do
    do_contained(a, b, [])
  end

  defp do_contained([head|tail], b, acc) do
    if Enum.member?(b, head) do
      do_contained(tail, b, [head|acc])
    end
  end

  defp do_contained(_a, _b, [_c, _d, _e]), do: true

  defp do_contained([], _b, _acc), do: false

end
