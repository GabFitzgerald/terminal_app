require_relative "notes.rb"

def play_interval(noteindex) 
    play_c

    note2 = @one_octave_array[noteindex]
    note2.play

end