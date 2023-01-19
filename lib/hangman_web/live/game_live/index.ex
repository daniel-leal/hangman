defmodule HangmanWeb.GameLive.Index do
  use HangmanWeb, :live_view
  alias Hangman.Game

  def mount(_params, _session, socket) do
    chosen_word = Game.define_word()

    {:ok,
     socket
     |> assign(:chosen_word, chosen_word)
     |> assign(:hits, Game.init_underscores(chosen_word))
     |> assign(:errors, [])
     |> assign(:alphabet, Game.init_alphabet())
     |> assign(:end_game, false)}
  end

  def handle_event(
        "check",
        %{"letter" => letter},
        %{assigns: %{chosen_word: chosen_word, hits: hits, errors: errors}} = socket
      ) do
    case Game.check_letter_position(chosen_word, letter) do
      [] ->
        handle_event("game_state", assign(socket, :errors, errors ++ [letter]))

      idx ->
        hits = Game.replace_correct_guesses(hits, idx, letter)
        handle_event("game_state", assign(socket, :hits, hits))
    end
  end

  def handle_event("new_game", _value, socket) do
    chosen_word = Game.define_word()

    {:noreply,
     socket
     |> assign(:chosen_word, chosen_word)
     |> assign(:hits, Game.init_underscores(chosen_word))
     |> assign(:errors, [])
     |> assign(:end_game, false)}
  end

  def handle_event(
        "game_state",
        %{assigns: %{chosen_word: chosen_word, hits: hits, errors: errors}} = socket
      ) do
    cond do
      Game.victory?(chosen_word, hits) ->
        {
          :noreply,
          socket
          |> assign(:end_game, true)
          |> put_flash(:info, "You Win!")
        }

      Game.game_over?(errors) ->
        {
          :noreply,
          socket
          |> assign(:end_game, true)
          |> put_flash(:error, "You Loose! Word: #{chosen_word}")
        }

      true ->
        {:noreply, socket}
    end
  end
end
