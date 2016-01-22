defmodule ListOps do

  def count(list) do
    do_count(list, 0)
  end

  defp do_count([], acc) do
    acc
  end

  defp do_count([head|tail], acc) do
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

  def do_map([], acc, fun) do
    acc
  end

  def do_map([head|tail], acc, fun) do
    do_map(tail, [head|acc], fun)
  end
  #
  # def filter(l, f) do
  # end
  #
  # def reduce(l, acc, f) do
  # end
  #
  # def append(a, b) do
  # end
  #
  # def concat(ll) do
  # end
end
