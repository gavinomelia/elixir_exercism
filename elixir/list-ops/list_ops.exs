defmodule ListOps do

  def count(list), do: do_count(list, 0)

  defp do_count([], acc), do: acc
  defp do_count([_head|tail], acc), do: do_count(tail, acc + 1)


  def reverse(list), do: do_reverse(list, [])

  defp do_reverse([], acc), do: acc
  defp do_reverse([head|tail], acc), do: do_reverse(tail, [head|acc])


  def map(list, fun), do: do_map(list, [], fun)

  defp do_map([], acc, _fun), do: reverse(acc)
  defp do_map([head|tail], acc, fun), do: do_map(tail, [(fun.(head))|acc], fun)

  def filter(list, fun), do: do_filter(list, [], fun)


  defp do_filter([], acc, _fun), do: reverse(acc)
  defp do_filter([head|tail], acc, fun) do
    if (fun.(head)) == true do
    do_filter(tail, [head|acc], fun)
  else
    do_filter(tail, acc, fun)
  end
end

def reduce(list, acc, fun), do: do_reduce(list, acc, fun)


defp do_reduce([], acc, _fun), do: acc
defp do_reduce([head|tail], acc, fun), do: do_reduce(tail, (fun.(head, acc)), fun)


def append(a, b), do: do_append(a |> reverse, b)

defp do_append([head|tail], acc), do: do_append(tail, [head|acc])
defp do_append([], acc), do: acc



def concat(list_of_lists), do: do_concat(list_of_lists, [])

defp do_concat([], acc), do: acc |> reverse
defp do_concat([head|tail], acc), do: do_concat(tail, do_flatten(head, acc))


defp do_flatten([head|tail], acc), do: do_flatten(tail, [head|acc])
defp do_flatten([], acc), do: acc

end
