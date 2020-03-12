def difficulty_menu_prompt
    system("clear")
    difficulty_menu = TTY::Prompt.new
    #turn difficulty into its own class
    case difficulty_menu.select("Select difficulty:?", [
        "Easy: tests M2, M3, P4 and octave",
        "Medium: tests M2, M3, P4, P5, M6, M7 and octave",
        "Difficult: tests all intervals up to octave"
    ])
    when "Easy: tests M2, M3, P4 and octave"
        return [2, 4, 5, 12]    
    when "Medium: tests M2, M3, P4, P5, M6, M7 and octave"
        return [0, 2, 4, 5, 7, 9, 11, 12]  
    else "Difficult: tests all intervals up to octave"
        return [*0..12]
    end
    sleep(2)
end
