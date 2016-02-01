defmodule ListOps do

  def count(list) do
    do_count(list, 0)
  end

  defp do_count([], acc) do
    acc
  end

  defp do_count([_head|tail], acc) do
    do_count(tail, acc + 1)
  end

  def reverse(list) do
    do_reverse(list, [])
  end

  defp do_reverse([], acc) do
    acc
  end

  defp do_reverse([head|tail], acc) do
    do_reverse(tail, [head|acc])
  end



  def map(list, fun) do
    do_map(list, [], fun)
  end

  defp do_map([], acc, _fun) do
    reverse(acc)
  end

  defp do_map([head|tail], acc, fun) do
    do_map(tail, [(fun.(head))|acc], fun)
  end


  def filter(list, fun) do
    do_filter(list, [], fun)
  end

  defp do_filter([], acc, _fun) do
    reverse(acc)
  end

  defp do_filter([head|tail], acc, fun) do
    if (fun.(head)) == true do
      do_filter(tail, [head|acc], fun)
    else
      do_filter(tail, acc, fun)
    end
  end

  def reduce(list, acc, fun) do
    do_reduce(list, acc, fun)
  end

  defp do_reduce([], acc, _fun) do
    acc
  end

  defp do_reduce([head|tail], acc, fun) do
    do_reduce(tail, (fun.(head, acc)), fun)
  end


# L.append([1,2,3], [4,5]) == [1,2,3,4,5]

  def append(a, b) do
    do_append(a, b, [])
  end

  def do_append([], [], acc) do
    acc
  end

  def do_append([], b, []) do
    b
  end

  def do_append(a, [], []) do
    a
  end

  def do_append([], b, acc) do
    [acc|b]
  end

  def do_append(a, [], acc) do
    [acc|a]
  end

  def do_append([ahead|atail], [bhead, btail], acc) do
    head = [ahead|bhead]
    do_append(atail, btail, [acc|head])
  end

  # def concat(ll) do
  # end
end
