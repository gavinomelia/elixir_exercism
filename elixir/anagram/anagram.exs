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
    if is_anagram?(base, word) do
      do_anagram(b, other_words, [w|acc])
    else
      do_anagram(b, other_words, acc)
    end
  end
  defp do_anagram(_, [], acc), do: acc |> Enum.reverse

  defp is_anagram?(word, word), do: false
  defp is_anagram?(base, word) do
    each_letter_matches?(base, word)
  end

  defp split_and_sort_it_up(string), do: String.codepoints(string) |> Enum.sort

  defp each_letter_matches?(base, word) do
    split_and_sort_it_up(base) == split_and_sort_it_up(word)
  end
end
