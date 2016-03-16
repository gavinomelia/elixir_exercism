defmodule Anagram do
  def match(base, words) do
    Enum.filter(words, fn(x) ->
      is_anagram?(base |> String.downcase, x |> String.downcase)
    end)
  end

  defp is_anagram?(word, word), do: false
  defp is_anagram?(base, word) do
    split_and_sort_it_up(base) == split_and_sort_it_up(word)
  end

  defp split_and_sort_it_up(string), do: String.codepoints(string) |> Enum.sort
end
