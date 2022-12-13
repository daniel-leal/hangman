defmodule HangmanWeb.GameLive.GallowComponent do
  use HangmanWeb, :live_component

  def render_gallow(errors) do
    case Enum.count(errors) do
      0 ->
        """
        <svg stroke-linecap="round" viewBox="0 0 400 400"><g fill="none" stroke="#b7b7b7" stroke-width="10"></g><g id="gallows"><path d="M297 71v46.7M290.5 101.2L297 99l6.7-2.2M290.5 108.6l6.6-2.2 6.7-2.2M290.5 116l6.6-2.3 6.7-2.2M284.5 155.3c-7-7-7-18 0-25l12.6-12.6 12.6 12.5c7 7 7 18.2 0 25-3.4 3.6-8 5.3-12.5 5.3s-9-1.7-12.5-5.2z" fill="none" stroke="#f7b239" stroke-width="5.8"></path><path d="M217.2 73.2L197.5 93l-76.8 76.7v-42L155.5 93 175.2 73h42z" fill="#b27214"></path><path d="M39 27h35.5v46.2H39z" fill="#b27214"></path><path d="M55.6 27h19v46.2h-19z" fill="#995c0d"></path><path d="M338 27v46.2H120.6V27H338z" fill="#b27214"></path><path d="M217.2 73.2L197.5 93h-42L175.2 73h42z" fill="#995c0d"></path><path d="M120.7 169.7v223H74.5V7.3h46.2v162.3z" fill="#b27214"></path><path d="M388 388c0-3-2.8-5.8-6-5.8H18c-3.2 0-6 2.7-6 6 0 3 2.8 5.8 6 5.8h364c3.2 0 6-2.7 6-6z" fill="#8b5e24"></path></g><g id="Layer1"></g></svg>
        """

      1 ->
        """
        <svg stroke-linecap="round" viewBox="0 0 400 400"><g fill="none" stroke="#b7b7b7" stroke-width="10"></g><g id="gallows"><path d="M297 71v46.7M290.5 101.2L297 99l6.7-2.2M290.5 108.6l6.6-2.2 6.7-2.2M290.5 116l6.6-2.3 6.7-2.2M284.5 155.3c-7-7-7-18 0-25l12.6-12.6 12.6 12.5c7 7 7 18.2 0 25-3.4 3.6-8 5.3-12.5 5.3s-9-1.7-12.5-5.2z" fill="none" stroke="#f7b239" stroke-width="5.8"></path><path d="M217.2 73.2L197.5 93l-76.8 76.7v-42L155.5 93 175.2 73h42z" fill="#b27214"></path><path d="M39 27h35.5v46.2H39z" fill="#b27214"></path><path d="M55.6 27h19v46.2h-19z" fill="#995c0d"></path><path d="M338 27v46.2H120.6V27H338z" fill="#b27214"></path><path d="M217.2 73.2L197.5 93h-42L175.2 73h42z" fill="#995c0d"></path><path d="M120.7 169.7v223H74.5V7.3h46.2v162.3z" fill="#b27214"></path><path d="M388 388c0-3-2.8-5.8-6-5.8H18c-3.2 0-6 2.7-6 6 0 3 2.8 5.8 6 5.8h364c3.2 0 6-2.7 6-6z" fill="#8b5e24"></path></g><g id="Layer1"><circle id="head" cx="297.1" cy="121.4" fill="#b7b7b7" r="28.5"></circle></g></svg>
        """

      2 ->
        """
        <svg stroke-linecap="round" viewBox="0 0 400 400"><g fill="none" stroke="#b7b7b7" stroke-width="10"><path id="core" d="M296.7 144.6v112"></path></g><g id="gallows"><path d="M297 71v46.7M290.5 101.2L297 99l6.7-2.2M290.5 108.6l6.6-2.2 6.7-2.2M290.5 116l6.6-2.3 6.7-2.2M284.5 155.3c-7-7-7-18 0-25l12.6-12.6 12.6 12.5c7 7 7 18.2 0 25-3.4 3.6-8 5.3-12.5 5.3s-9-1.7-12.5-5.2z" fill="none" stroke="#f7b239" stroke-width="5.8"></path><path d="M217.2 73.2L197.5 93l-76.8 76.7v-42L155.5 93 175.2 73h42z" fill="#b27214"></path><path d="M39 27h35.5v46.2H39z" fill="#b27214"></path><path d="M55.6 27h19v46.2h-19z" fill="#995c0d"></path><path d="M338 27v46.2H120.6V27H338z" fill="#b27214"></path><path d="M217.2 73.2L197.5 93h-42L175.2 73h42z" fill="#995c0d"></path><path d="M120.7 169.7v223H74.5V7.3h46.2v162.3z" fill="#b27214"></path><path d="M388 388c0-3-2.8-5.8-6-5.8H18c-3.2 0-6 2.7-6 6 0 3 2.8 5.8 6 5.8h364c3.2 0 6-2.7 6-6z" fill="#8b5e24"></path></g><g id="Layer1"><circle id="head" cx="297.1" cy="121.4" fill="#b7b7b7" r="28.5"></circle></g></svg>
        """

      3 ->
        """
        <svg stroke-linecap="round" viewBox="0 0 400 400"><g fill="none" stroke="#b7b7b7" stroke-width="10"><path id="core" d="M296.7 144.6v112"></path><path id="left-arm" d="M295.5 179.7c-12 0-23.4 0-35-1.7-4.7-.7-9.7-.7-14-3-4-2.2-6-6.5-8.5-9"></path></g><g id="gallows"><path d="M297 71v46.7M290.5 101.2L297 99l6.7-2.2M290.5 108.6l6.6-2.2 6.7-2.2M290.5 116l6.6-2.3 6.7-2.2M284.5 155.3c-7-7-7-18 0-25l12.6-12.6 12.6 12.5c7 7 7 18.2 0 25-3.4 3.6-8 5.3-12.5 5.3s-9-1.7-12.5-5.2z" fill="none" stroke="#f7b239" stroke-width="5.8"></path><path d="M217.2 73.2L197.5 93l-76.8 76.7v-42L155.5 93 175.2 73h42z" fill="#b27214"></path><path d="M39 27h35.5v46.2H39z" fill="#b27214"></path><path d="M55.6 27h19v46.2h-19z" fill="#995c0d"></path><path d="M338 27v46.2H120.6V27H338z" fill="#b27214"></path><path d="M217.2 73.2L197.5 93h-42L175.2 73h42z" fill="#995c0d"></path><path d="M120.7 169.7v223H74.5V7.3h46.2v162.3z" fill="#b27214"></path><path d="M388 388c0-3-2.8-5.8-6-5.8H18c-3.2 0-6 2.7-6 6 0 3 2.8 5.8 6 5.8h364c3.2 0 6-2.7 6-6z" fill="#8b5e24"></path></g><g id="Layer1"><circle id="head" cx="297.1" cy="121.4" fill="#b7b7b7" r="28.5"></circle></g></svg>
        """

      4 ->
        """
        <svg stroke-linecap="round" viewBox="0 0 400 400"><g fill="none" stroke="#b7b7b7" stroke-width="10"><path id="core" d="M296.7 144.6v112"></path><path id="left-arm" d="M295.5 179.7c-12 0-23.4 0-35-1.7-4.7-.7-9.7-.7-14-3-4-2.2-6-6.5-8.5-9"></path><path id="right-arm" d="M296.3 179.6c13.7 0 27.5 2.8 41.2 1.4 7-.7 18.5-6.4 25.2-10.4"></path></g><g id="gallows"><path d="M297 71v46.7M290.5 101.2L297 99l6.7-2.2M290.5 108.6l6.6-2.2 6.7-2.2M290.5 116l6.6-2.3 6.7-2.2M284.5 155.3c-7-7-7-18 0-25l12.6-12.6 12.6 12.5c7 7 7 18.2 0 25-3.4 3.6-8 5.3-12.5 5.3s-9-1.7-12.5-5.2z" fill="none" stroke="#f7b239" stroke-width="5.8"></path><path d="M217.2 73.2L197.5 93l-76.8 76.7v-42L155.5 93 175.2 73h42z" fill="#b27214"></path><path d="M39 27h35.5v46.2H39z" fill="#b27214"></path><path d="M55.6 27h19v46.2h-19z" fill="#995c0d"></path><path d="M338 27v46.2H120.6V27H338z" fill="#b27214"></path><path d="M217.2 73.2L197.5 93h-42L175.2 73h42z" fill="#995c0d"></path><path d="M120.7 169.7v223H74.5V7.3h46.2v162.3z" fill="#b27214"></path><path d="M388 388c0-3-2.8-5.8-6-5.8H18c-3.2 0-6 2.7-6 6 0 3 2.8 5.8 6 5.8h364c3.2 0 6-2.7 6-6z" fill="#8b5e24"></path></g><g id="Layer1"><circle id="head" cx="297.1" cy="121.4" fill="#b7b7b7" r="28.5"></circle></g></svg>
        """

      5 ->
        """
        <svg stroke-linecap="round" viewBox="0 0 400 400"><g fill="none" stroke="#b7b7b7" stroke-width="10"><path id="core" d="M296.7 144.6v112"></path><path id="left-arm" d="M295.5 179.7c-12 0-23.4 0-35-1.7-4.7-.7-9.7-.7-14-3-4-2.2-6-6.5-8.5-9"></path><path id="right-arm" d="M296.3 179.6c13.7 0 27.5 2.8 41.2 1.4 7-.7 18.5-6.4 25.2-10.4"></path><path id="left-leg" d="M295.5 256.5c-5.7 10.4-29 23.4-31.8 25.7-4 3-17 23.3-19.6 26-1.3 1.4-4 1-7.4 1"></path></g><g id="gallows"><path d="M297 71v46.7M290.5 101.2L297 99l6.7-2.2M290.5 108.6l6.6-2.2 6.7-2.2M290.5 116l6.6-2.3 6.7-2.2M284.5 155.3c-7-7-7-18 0-25l12.6-12.6 12.6 12.5c7 7 7 18.2 0 25-3.4 3.6-8 5.3-12.5 5.3s-9-1.7-12.5-5.2z" fill="none" stroke="#f7b239" stroke-width="5.8"></path><path d="M217.2 73.2L197.5 93l-76.8 76.7v-42L155.5 93 175.2 73h42z" fill="#b27214"></path><path d="M39 27h35.5v46.2H39z" fill="#b27214"></path><path d="M55.6 27h19v46.2h-19z" fill="#995c0d"></path><path d="M338 27v46.2H120.6V27H338z" fill="#b27214"></path><path d="M217.2 73.2L197.5 93h-42L175.2 73h42z" fill="#995c0d"></path><path d="M120.7 169.7v223H74.5V7.3h46.2v162.3z" fill="#b27214"></path><path d="M388 388c0-3-2.8-5.8-6-5.8H18c-3.2 0-6 2.7-6 6 0 3 2.8 5.8 6 5.8h364c3.2 0 6-2.7 6-6z" fill="#8b5e24"></path></g><g id="Layer1"><circle id="head" cx="297.1" cy="121.4" fill="#b7b7b7" r="28.5"></circle></g></svg>
        """

      6 ->
        """
        <svg stroke-linecap="round" viewBox="0 0 400 400"><g fill="none" stroke="#b7b7b7" stroke-width="10"><path id="core" d="M296.7 144.6v112"></path><path id="left-arm2" d="M295.5 179.7c-12 0-18.8 10.8-25 21-4.3 6.7-11 24.6-15 35.6"></path><path id="right-arm2" d="M296.3 179.6c13.7 0 20 16 24.6 24 2.2 4 4.8 19 6 32.7"></path><path id="left-leg2" d="M295.5 256.5c-5.2 9.4-9.7 20.4-15 30-2.5 4.6-5.8 19.7-7.8 22.8-3.2 5-4 7.5-7.6 7.5"></path><path id="right-leg2" d="M297.6 256.5c5.8 10.4 12 27.7 14 30.7 3.8 5.6 7.2 22.4 9.8 25 1.4 1.5 1.6 3 5.7 4.6"></path></g><g id="gallows"><path d="M297 71v46.7M290.5 101.2L297 99l6.7-2.2M290.5 108.6l6.6-2.2 6.7-2.2M290.5 116l6.6-2.3 6.7-2.2M284.5 155.3c-7-7-7-18 0-25l12.6-12.6 12.6 12.5c7 7 7 18.2 0 25-3.4 3.6-8 5.3-12.5 5.3s-9-1.7-12.5-5.2z" fill="none" stroke="#f7b239" stroke-width="5.8"></path><path d="M217.2 73.2L197.5 93l-76.8 76.7v-42L155.5 93 175.2 73h42z" fill="#b27214"></path><path d="M39 27h35.5v46.2H39z" fill="#b27214"></path><path d="M55.6 27h19v46.2h-19z" fill="#995c0d"></path><path d="M338 27v46.2H120.6V27H338z" fill="#b27214"></path><path d="M217.2 73.2L197.5 93h-42L175.2 73h42z" fill="#995c0d"></path><path d="M120.7 169.7v223H74.5V7.3h46.2v162.3z" fill="#b27214"></path><path d="M388 388c0-3-2.8-5.8-6-5.8H18c-3.2 0-6 2.7-6 6 0 3 2.8 5.8 6 5.8h364c3.2 0 6-2.7 6-6z" fill="#8b5e24"></path></g><g id="Layer1"><circle id="head2" cx="297.1" cy="139.4" fill="#b7b7b7" r="28.5"></circle><g id="eyes" fill="none" stroke="#000" stroke-width="2"><path d="M291.6 130c-4.2 4.2-4 4.3-8.4 8.4M283.2 130c4.4 4.3 4.4 4.2 8.4 8.4"></path><path d="M311 130c-4 4.2-4 4.3-8.2 8.4M302.8 130c4.4 4.3 4.3 4.2 8.3 8.4"></path></g></g></svg>
        """
    end
  end

  def render(assigns) do
    ~H"""
    <div>
      <%= raw render_gallow(@errors) %>
    </div>
    """
  end
end
