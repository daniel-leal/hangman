defmodule Hangman.GameTest do
  use ExUnit.Case

  test "define_word/0" do
    words = ["grape", "lion", "tiger", "orange", "apple", "banana", "cat"]

    word = Hangman.Game.define_word()

    assert word in words
  end

  test "success check_letter_position?/2" do
    letter = "a"
    word = "banana"

    position = Hangman.Game.check_letter_position(word, letter)

    assert position == [1, 3, 5]
  end

  test "invalid check_letter_position?/2" do
    letter = "x"
    word = "banana"

    position = Hangman.Game.check_letter_position(word, letter)

    assert position == []
  end

  test "replace_correct_guesses/3" do
    indexes = [1, 3, 5]
    hits = ["_ ", "_ ", "_ ", "_ ", "_ ", "_ "]

    hits = Hangman.Game.replace_correct_guesses(hits, indexes, "a")
    expected_hits = ["_ ", "a ", "_ ", "a ", "_ ", "a "]

    assert hits == expected_hits
  end

  test "victory?/2" do
    word = "banana"
    hits = ["b ", "a ", "n ", "a ", "n ", "a "]
    assert Hangman.Game.victory?(word, hits)
  end

  test "game_over?/3" do
    attempts = ["l", "x", "g", "h", "i", "j"]
    assert Hangman.Game.game_over?(attempts)
  end
end
