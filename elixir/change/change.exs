defmodule Change do
  def generate(_, []), do: :error
  def generate(amount, values) do
    change_map = get_change(amount, values)
    if no_change?(change_map) == true do
      :error
    else
      {:ok, change_map}
    end
  end

  def get_change(amount, values) do
    do_get_change(amount, values |> Enum.sort(&(&1 > &2)), %{})
  end
  def do_get_change(amount, [], acc2), do: acc2
  def do_get_change(amount, [head|tail], acc2) do
    divisor = div(amount, head)
    do_get_change(amount - divisor * head, tail, Map.put(acc2, head, divisor))
  end

  def no_change?(change_map) do
    change_map
    |> Map.values
    |> Enum.all?(fn(x) -> x == 0 end)
  end
end
