defmodule Words do
  def count(sentence) do
    sentence
    |> ignore_punctuation_and_case
    |> String.split
    |> count_map
  end

  defp count_map(split) do
    Map.new(split, fn(x) -> {x, Enum.count(split, fn(c) -> c == x end)} end)
  end

  defp ignore_punctuation_and_case(sentence) do
    sentence
    |> String.downcase
    |> String.replace(~r([^[:alpha:]|\d-])u, " ")
  end
end
