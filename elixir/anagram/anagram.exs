defmodule Anagram do
  def match(base, words) do
    anagram(base, words)
  end

  def anagram(base, words) do
    do_anagram(base, words, [])
  end

  defp do_anagram(b, [w|other_words], acc) do
    base = String.downcase(b)
    word = String.downcase(w)
    cond do
      base == word ->
        do_anagram(b, other_words, acc)
      each_letter_matches?(base, word) ->
        do_anagram(b, other_words, [w|acc])
      true ->
        do_anagram(b, other_words, acc)
    end
  end
  defp do_anagram(_, [], acc), do: acc |> Enum.reverse

  defp split_it_up(string), do: String.codepoints(word)
  defp sort_it_up(string), do: split_it_up(string) |> Enum.sort

  defp each_letter_matches?(base, word) do
    split_it_up(base) |> sort_it_up == split_it_up(word) |> sort_it_up
  end
end
