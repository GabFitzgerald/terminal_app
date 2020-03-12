require 'sounder'
require 'tty-table'

c4 = Sounder::Sound.new '../sound_files/C4.mp3'
db4 = Sounder::Sound.new '../sound_files/Db4.mp3'
d4 = Sounder::Sound.new '../sound_files/D4.mp3'
eb4 = Sounder::Sound.new '../sound_files/Eb4.mp3'
e4 = Sounder::Sound.new '../sound_files/E4.mp3'
f4 = Sounder::Sound.new '../sound_files/F4.mp3'
gb4 = Sounder::Sound.new '../sound_files/Gb4.mp3'
g4 = Sounder::Sound.new '../sound_files/G4.mp3'
ab4 = Sounder::Sound.new '../sound_files/Ab4.mp3'
a4 = Sounder::Sound.new '../sound_files/A4.mp3'
bb4 = Sounder::Sound.new '../sound_files/Bb4.mp3'
b4 = Sounder::Sound.new '../sound_files/B4.mp3'
c5 = Sounder::Sound.new '../sound_files/C5.mp3'

@one_octave_array = [c4, db4, d4, eb4, e4, f4, gb4, g4, ab4, a4, bb4, b4, c5]

@interval = ["same note", "m2", "M2", "m3", "M3", "P4", "tritone", "P5", "m6",
    "M6", "m7", "M7", "octave"]

@simple_interval_table =  [['Number of semitones','If you think the inverval it is:','Type:'], 
['0', 'the same note', 'same note'], 
['1', 'minor 2nd', 'm2'],
['2', 'major 2nd', 'M2'],
['3', 'minor 3rd', 'm3'],
['4', 'major 3rd', 'M3'],
['5', 'perfect 4th', 'P4'],
['6', 'a tritone', 'tritone'],
['7', 'perfect 5th', 'P5'],
['8', 'minor 6th', 'm6'],
['9', 'major 6th', 'M6'],
['10', 'minor 7th', 'm7'],
['11', 'major 7th', 'M7'],
['12', 'octave/perfect 8th', 'octave']]

@intervals_table = TTY::Table.new @simple_interval_table

def play_c 
    c4 = Sounder::Sound.new '../sound_files/C4.mp3'
    c4.play
    sleep(1)
end