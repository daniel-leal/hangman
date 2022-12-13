defmodule Hangman.Game do
  alias Hangman.Rules

  def handle_game(chosen_word, hits, errors) do
    cond do
      Rules.victory?(chosen_word, hits) ->
        IO.puts("Você venceu!!!")
        IO.puts(chosen_word)

      Rules.game_over?(errors) ->
        IO.puts("Você Perdeu!!!")
        IO.puts(chosen_word)

      true ->
        continue(chosen_word, hits, errors)
    end
  end

  def validate(chosen_word, hits, errors) do
    letter =
      IO.gets("Digite uma letra: ")
      |> String.trim()
      |> String.downcase()

    case Rules.check_letter_position(chosen_word, letter) do
      [] ->
        IO.puts("Errou")
        handle_game(chosen_word, hits, errors ++ [letter])

      idx ->
        IO.puts("Acertou")
        hits = Rules.replace_hits(hits, idx, letter)
        handle_game(chosen_word, hits, errors)
    end
  end

  def start do
    chosen_word = Rules.define_word()
    hits = Rules.init_hits(chosen_word)
    validate(chosen_word, hits, [])
  end

  def continue(word, hits, errors) do
    IO.puts(hits)
    IO.puts("Número de tentativas erradas: #{Enum.count(errors)}")
    IO.puts("Tentativas erradas: #{errors}")

    validate(word, hits, errors)
  end
end
