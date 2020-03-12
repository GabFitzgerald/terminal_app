require_relative "notes.rb"

def how_to_play
    system("clear")
    puts "Make sure you have your sound turned on!
Two notes will play. You need to guess the interval between them.\n" + @intervals_table.render(:ascii) + "\nOnce you get an interval right, you won't be asked it again for that quiz.
The quiz ends when you answer each of the intervals right once.

If you want an interval repeated press 'r'.

Press enter to go back to main menu...
"
    STDIN.gets
end