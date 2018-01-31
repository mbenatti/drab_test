defmodule DrabShowWeb.PageCommander do
  use Drab.Commander

  import Phoenix.HTML, only: [sigil_E: 2, safe_to_string: 1]

  # Place your event handlers here
  #
  # def button_clicked(socket, sender) do
  #   set_prop socket, "#output_div", innerHTML: "Clicked the button!"
  # end
  #
  # Place you callbacks here
  #
  # onload :page_loaded 
  #
  # def page_loaded(socket) do
  #   set_prop socket, "div.jumbotron h2", innerText: "This page has been drabbed"
  # end

  def change_select_1(socket, sender) do
    html = ~E"""
            <option>Changed select 1</option>
            <option>Changed select 1(2)</option>
          """
          |> safe_to_string()

    poke socket, welcome_text: "Changed by change_select_1"
    set_prop socket, "select:nth-child(1)", innerHTML: html
  end

  def change_select_2(socket, sender) do
    html = ~E"""
              <option>Changed select 2</option>
              <option>Changed select 2(2)</option>
            """
          |> safe_to_string()

    poke socket, welcome_text: "Changed by change_select_2"
    set_prop socket, "select:nth-child(2)", innerHTML: html
  end
end
