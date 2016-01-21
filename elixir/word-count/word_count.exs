defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """

  def count(sentence) do
    ignore_punctuation_and_case = sentence |> String.downcase |> String.replace(~r([^[:alpha:]|\d-])u, " ")
    split = String.split(ignore_punctuation_and_case)
    Map.new(split, fn(x) -> {x, Enum.count(split, fn(c) -> c == x end)} end)
  end
end
