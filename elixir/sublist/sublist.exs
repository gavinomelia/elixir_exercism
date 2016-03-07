defmodule Sublist do
  def compare(a, a), do: :equal
  def compare(a, b) do
    if Enum.count(a) < Enum.count(b) do
    cond do
      is_contained?(a, b) ->
        :sublist
      true ->
        :unequal
      end
    else
      cond do
        is_contained?(b, a) ->
          :superlist
        true ->
          :unequal
        end
      end
    end

  def is_contained?(a, b) do
    Enum.all?(a, fn(x) -> Enum.member?(b, x) end)
  end
end
