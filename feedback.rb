require_relative 'notes'
require_relative 'semitones_to_interval_name'
require_relative 'find_intervals'

def feedback(array_of_note_indexes, noteindex)
    attempts = array_of_note_indexes.tally
    # makes a hash of all the inervals that were right on first try

    easiest_interval = find_easiset_intervals(attempts)
    easiest_interval_names =  semitones_to_interval_name(easiest_interval).join(', ')
    
    hardest_interval = find_hardest_interval(attempts) 
    hardest_interval_name =  semitones_to_interval_name(hardest_interval).join
    
    # give a final score as a percentage
    score = ((noteindex.to_f / (array_of_note_indexes.length.to_f)) *100).round(0)

    #message to return
    if score >= 100
        return "Perfect score!"
    else
        return "You got these intervals in the first try: #{easiest_interval_names}
You struggled most with: #{hardest_interval_name}
Final score: #{score} %"
    end
end
