# keys with values of 1
def find_easiset_intervals(attempts)
    # find the noteindexes of the easiest intervals and store in an array
    attempts.map{ |noteindex, _| noteindex if attempts[noteindex] == 1}.compact 
    # map the index to an interval
end

def find_hardest_interval(attempts)
    hardest_inderval_index = []
    hardest_inderval_index.push(attempts.key(attempts.values.max))
end 

