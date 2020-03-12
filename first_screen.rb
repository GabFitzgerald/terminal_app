require 'tty-prompt'
require_relative 'main_menu'
require_relative 'how_to_play'
require 'colorize'
require_relative 'difficulty_menu_prompt'
require_relative 'run_game'
require 'sounder'

system("clear")
puts "Welcome to Terminal Ear Training".yellow
# play a cute intro piano sound
sleep (0.5)
loop do
    main_menu = TTY::Prompt.new
    # case menu.select("What do you want to do?", ["Learn how to play", "Play", "Exit"])
    case main_menu.select("What do you want to do?", ["How to play", "Play", "Exit"])
    when "How to play"
        how_to_play
    when "Play"
        # run_game(difficulty_menu_prompt)
        # user_input = ARGV
        begin 
            note_index_array = ARGV.map(&:to_i)  
            raise CustomTestError, "Incorrect command line input" if note_index_array.any? { |valid| not (0..13).include?(valid) }
        rescue => exception
            puts "Available intervals are 0-13 semitones. Check command line input."
            break
        end
        if ARGV != []
            run_game(note_index_array)
        else
            run_game(difficulty_menu_prompt)  
        end
        
    else
        break
    end   
    sleep(0.5)
    system("clear")
end

puts "Thank you for playing"









