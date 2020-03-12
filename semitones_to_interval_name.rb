require_relative 'notes'

def semitones_to_interval_name(semitones)
    interval_names = @simple_interval_table.flatten
    semitones.map do |noteindex| 
        interval_names[interval_names.find_index(noteindex.to_s) + 1]   
    end
end
