defmodule Hangman.RulesTest do
  use ExUnit.Case

  test "define_word/0" do
    words = ["grape", "lion", "tiger", "orange", "apple", "banana", "cat"]

    word = Hangman.Rules.define_word()

    assert word in words
  end

  test "success check_letter_position?/2" do
    letter = "a"
    word = "banana"

    position = Hangman.Rules.check_letter_position(word, letter)

    assert position == [1, 3, 5]
  end

  test "invalid check_letter_position?/2" do
    letter = "x"
    word = "banana"

    position = Hangman.Rules.check_letter_position(word, letter)

    assert position == []
  end

  test "replace_hits/3" do
    indexes = [1, 3, 5]
    hits = ["_ ", "_ ", "_ ", "_ ", "_ ", "_ "]

    hits = Hangman.Rules.replace_hits(hits, indexes, "a")
    expected_hits = ["_ ", "a ", "_ ", "a ", "_ ", "a "]

    assert hits == expected_hits
  end

  test "victory?/2" do
    word = "banana"
    hits = ["b ", "a ", "n ", "a ", "n ", "a "]
    assert Hangman.Rules.victory?(word, hits)
  end

  test "game_over?/3" do
    attempts = ["l", "x", "g", "h", "i", "j"]
    assert Hangman.Rules.game_over?(attempts)
  end
end
