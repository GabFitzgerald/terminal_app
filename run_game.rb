require_relative 'play_interval'
require_relative 'notes'
require 'tty-prompt'
require_relative 'feedback'

def run_game(note_index_array)

    feedback_array = []
    questions_given = note_index_array.length

    system("clear")
    until note_index_array == []
        puts "Name the interval"

        noteindex = note_index_array.sample
        feedback_array.push(noteindex)

        user_answer = "r"
        until user_answer != "r"
            play_interval(noteindex)
            user_answer = STDIN.gets.chomp
        end
        
        if user_answer == @interval[noteindex]
            puts "You are correct!"
            note_index_array.delete(noteindex) 
            # so the user is only asked questions they get wrong again
        else
            puts "It was #{@interval[noteindex]}"
        # add an invalid input error handling here
        end
        sleep(1)
        system("clear")
        # p feedback_array # store this for later
    end

    puts "Well done! You finished the quiz."
    sleep(0.5)
    puts feedback(feedback_array, questions_given)
    sleep(0.5)
    puts "Press enter to return to main menu."
    STDIN.gets
end