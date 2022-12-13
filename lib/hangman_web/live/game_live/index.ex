defmodule HangmanWeb.GameLive.Index do
  use HangmanWeb, :live_view
  alias Hangman.Rules

  def mount(_params, _session, socket) do
    chosen_word = Rules.define_word()

    {:ok,
     socket
     |> assign(:chosen_word, chosen_word)
     |> assign(:hits, Rules.init_hits(chosen_word))
     |> assign(:errors, [])
     |> assign(:alphabet, Rules.init_alphabet())
     |> assign(:end_game, false)}
  end

  def handle_event(
        "check",
        %{"letter" => letter},
        %{assigns: %{chosen_word: chosen_word, hits: hits, errors: errors}} = socket
      ) do
    case Rules.check_letter_position(chosen_word, letter) do
      [] ->
        handle_event("game_status", assign(socket, :errors, errors ++ [letter]))

      idx ->
        hits = Rules.replace_hits(hits, idx, letter)
        handle_event("game_status", assign(socket, :hits, hits))
    end
  end

  def handle_event("new_game", _value, socket) do
    chosen_word = Rules.define_word()

    {:noreply,
     socket
     |> assign(:chosen_word, chosen_word)
     |> assign(:hits, Rules.init_hits(chosen_word))
     |> assign(:errors, [])
     |> assign(:end_game, false)}
  end

  def handle_event(
        "game_status",
        %{assigns: %{chosen_word: chosen_word, hits: hits, errors: errors}} = socket
      ) do
    cond do
      Rules.victory?(chosen_word, hits) ->
        {
          :noreply,
          socket
          |> assign(:end_game, true)
          |> put_flash(:info, "You Win!")
        }

      Rules.game_over?(errors) ->
        {
          :noreply,
          socket
          |> assign(:end_game, true)
          |> put_flash(:error, "You Loose!\nWord: #{chosen_word}")
        }

      true ->
        {:noreply, socket}
    end
  end
end
