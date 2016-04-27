
defmodule ETL do
  def transform(input) do
    do_transform(input, 1, %{})
  end

  def do_transform(_, acc1, acc2) when acc1 > 10, do: acc2
  def do_transform(input, acc1, acc2) do
    cond do
      input[acc1] == nil ->
        do_transform(input, acc1 + 1, acc2)
      true ->
        Enum.reduce(input[acc1], acc2, fn(x, acc2) ->
        do_transform(input, acc1 + 1, Map.put(acc2, String.downcase(x), acc1)) end)
          end
        end
      end
