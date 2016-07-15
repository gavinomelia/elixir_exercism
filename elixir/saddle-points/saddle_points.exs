defmodule Matrix do
  @doc """
  Parses a string representation of a matrix
  to a list of rows
  """
  def rows(str) do
    split_string = String.split(str)
    integer_list = Enum.map(split_string, fn(x) -> String.to_integer(x) end)
    Enum.chunk(integer_list, div(length(split_string), 2))
  end

  @doc """
  Parses a string representation of a matrix
  to a list of columns
  """
  def columns(str) do
    split_string = String.split(str)
    integer_list = Enum.map(split_string, fn(x) -> String.to_integer(x) end)
    thing = Enum.chunk(integer_list, div(length(split_string), 4))
    Enum.map(thing, [], fn(x, acc) -> [List.first(x)|acc] |> IO.inspect end) |> IO.inspect
  end

  @doc """
  Calculates all the saddle points from a string
  representation of a matrix
  """
  def saddle_points(_str) do

  end
end
