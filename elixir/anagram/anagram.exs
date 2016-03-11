defmodule Anagram do
  # @spec match(String.t, [String.t]) :: [String.t]
  def match(base, words) do
    anagram(base, words)
  end


  def anagram(base, words) do
    do_anagram(base, words, [])
  end

  defp do_anagram(base, [word|other_words], acc) do
    if each_letter_matches?(base, word) do
      do_anagram(base, other_words, [word|acc])
    else
      do_anagram(base, other_words, acc)
    end
  end
  defp do_anagram(_, [], acc), do: acc |> Enum.reverse

  defp each_letter_matches?(base, word), do: do_each_letter_matches?(base, word, 0)

  defp do_each_letter_matches?(base, word, acc) do
    # IO.puts "\nacc: #{acc}"
    # IO.puts "length: #{String.length(base)}"
    # IO.puts "base: #{base}"
    # IO.puts "word: #{word}"
    letter = String.at(base, acc)
    # IO.puts "letter: #{letter}"
    cond do
      String.length(word) == acc -> true
      letter == nil -> false
      String.contains?(word, letter) -> do_each_letter_matches?(base, word, acc + 1)
      true -> false
    end
  end
end
