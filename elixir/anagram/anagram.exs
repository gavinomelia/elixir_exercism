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

  defp split_it_up(word), do: String.codepoints(word)

  defp each_letter_matches?(base, word) do
    sorted_base = split_it_up(base) |> Enum.sort
    sorted_word = split_it_up(word) |> Enum.sort
    if sorted_base == sorted_word do
      true
    else
      false
    end
  end
end
