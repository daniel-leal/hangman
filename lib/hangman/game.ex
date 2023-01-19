defmodule Hangman.Game do
  @max_attempts 6
  @words ["grape", "lion", "tiger", "orange", "apple", "banana", "cat"]

  def define_word do
    @words
    |> Enum.take_random(1)
    |> to_string()
  end

  def init_underscores(chosen_word) do
    Enum.map(1..String.length(chosen_word), fn _ -> "_ " end)
  end

  # LiveView
  def init_alphabet do
    for n <- ?a..?z, do: <<n::utf8>>
  end

  # LiveView
  def used_words(hits, errors) do
    Enum.map(hits, fn l -> String.trim(l) end) ++ errors
  end

  defp letter_exists?(word, letter), do: String.contains?(word, letter)

  def check_letter_position(word, letter) do
    if letter_exists?(word, letter) do
      word
      |> String.codepoints()
      |> Enum.with_index()
      |> Enum.map(fn {lt, i} ->
        if lt == letter do
          i
        end
      end)
      |> Enum.reject(&is_nil/1)
    else
      []
    end
  end

  def replace_correct_guesses(hits, indexes, letter) do
    hits
    |> Enum.with_index()
    |> Enum.map(fn
      {value, index} -> if index in indexes, do: "#{letter} ", else: value
    end)
  end

  def victory?(chosen_word, hits) do
    word =
      hits
      |> Enum.join()
      |> String.replace(" ", "")

    chosen_word == word
  end

  def game_over?(attempts), do: Enum.count(attempts) == @max_attempts
end
