require 'colorize'
require 'tty-prompt'

def main_menu
    prompt = TTY::Prompt.new
    menu_selection = prompt.select("What do you want to do?", ["Learn how to play", "Play", "Exit"])
    return menu_selection
end