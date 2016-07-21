defmodule Matrix do
  def prep_string(str, num_of_chunks) do
    split_string = String.split(str)
    integer_list = Enum.map(split_string, fn(x) -> String.to_integer(x) end)
    Enum.chunk(integer_list, div(length(split_string), num_of_chunks))
  end

  def rows(str) do
    prep_string(str, 2)
  end

  def columns(str) do
    chunked_list = prep_string(str, 4)
    IO.inspect chunked_list
    map_it(chunked_list, [], 0)
  end

  def map_it(chunked_list, acc, acc2) when length(acc) == length(chunked_list) do
    acc |> IO.inspect
  end
  def map_it(chunked_list, acc, acc2) do
    Enum.map(chunked_list, fn(x) -> do_columns(chunked_list, x, acc, acc2) end)
  end
  # def do_columns(list, acc, acc2) when acc2 == length(list), do: acc
  def do_columns(chunked_list, list, acc, acc2) do
    # IO.puts "acc2: #{acc2}"
    # IO.inspect list
    # IO.inspect Enum.at(list, acc2)
    acc = [Enum.at(list, acc2)|acc]
    # IO.inspect acc
    map_it(chunked_list, acc, acc2 + 1)
  end

  # chunked_list = [[1, 2, 3], [4, 5, 6], '\a\b\t', [8, 7, 6]]
  # Enum.map([[1, 2, 3], [4, 5, 6], '\a\b\t', [8, 7, 6]], fn([1, 2, 3]), do_columns([1, 2, 3], []) end)
  # Enum.at([1, 2, 3], 0) is 1
  # Enum.at([1, 2, 3], 1) is 2
  # Enum.at([1, 2, 3], 2) is 3
  # acc = [3, 2, 1]
  # def do_columns([], acc), do: acc
  # def do_columns([head|tail], acc) do
  #   IO.inspect head
  #   acc = [head|acc]
  #   IO.inspect acc
  #   do_columns(tail, acc)
  # end

  @doc """
  Calculates all the saddle points from a string
  representation of a matrix
  """
  def saddle_points(_str) do

  end
end
