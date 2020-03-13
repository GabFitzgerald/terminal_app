# Terminal Ear Training

## Help Documentation
### Installation
1. Install Ruby
2. Run shell command TODO

TODO: Installation instructions

### Dependencies
TODO: lift from gemfile

### Hardware Requirements
- suitable ruby interpreter
- sound output e.g. speakers

## GitHub link
https://github.com/GabFitzgerald/terminal_app

## Purpose & Scope
Ear training is an integral part of learning music, and being able to identify specific intervals accurately has many applications for musicians, such as playing songs by ear, being able to write down a tune they have in their head, and enhancing their understanding of music in general. The Terminal Ear Training application will help musicians, or anyone wanting to improve their musicianship identify the distance between notes by listening to them.

- identify the problem it will solve and explain why you are developing it
- identify the target audience
- explain how a member of the target audience will use it

Specifically, the user will run the application, and be presented an interval test.

- describe at a high level what the application will do
- explain the scope of the application


## Features

1. Interval Test \
This feature presents the user with two notes, then the user inputs their guess. After selecting the difficulty, or customising the test using the command line input feature, the program will create a bank of questions (stored in an array), then randomly select a question and present it to the user. This is achieved by playing the present note of C, then playing the note corresponding to the interval above it. For example, if the program selects minor 2nd, it will play a C, followed by a C#. The user then gets the opportunity to input their response. They also have the option of repeating the interval. Once a response is entered, if it is wrong, the correct answer will be presented and a new random question is selected from the question bank. If the user was correct, the question is removed from the question bank. The quiz finishes once all questions have been answered right once and the question bank is empty.

2. Detailed Test Feedback\
After each ear test, the user will be given some feedback on the particular intervals they did well at, the intervals they need to improve and a final score is given. This feature is implemented by storing each random question in an array as the question is generated. The questions that they got right the first time appear once in the array, so that is how they are found. The questions they did worse at will appear the most number of times in the array. The final score percentage is calculated by dividing the length of the original question bank array by the total number of questions given. As questions are repeated when they are incorrect, this method gives an accurate score. This information is packaged together into a string and presented to the user once the test in complete.

3. Custom Test \
If the user wishes to test only specific intervals, the command line can be used to design a specific test. To do this, following the command to run, intervals that you want to be tested on can be added, space separated in semitones to the command line. The below code will test perfect 4th, perfect 5th, major 6th and octave.
```ruby 
ruby main.rb {space separated intervals (semitones)}
e.g. ruby main.rb 5 7 9 12
```

## User Experience 
When the application is run, the user will be presented the main menu screen. They can select 'How to Play', which will give them some information of how to play the game then loop them back to the main menu. They can select 'Play' which will begin the test or select 'Exit' which will end the program. These menu are selected with arrow keys, then pressing enter.

Once 'Play' is selected, unless a custom test was added, the user will select a difficulty. This decides the question bank. The questions are given as explained in Features. For each question, the user must input the exact shorthand answer from the 'How to Play' screen to get the question correct. For example, if they think it was a minor second, they must input 'm2', if they think it was a major 2nd, they must input 'M2'. The user also has the option of repeating the sound by inputing 'r', they can continue to input 'r' until any other text is input, which returns their instant feedback. If correct, they will be told they got the question right and the next question is presented. If they were not right, the correct answer is output to the screen and the next question is presented. This loops until there are no questions left and the quiz ends. The user's detailed feedback is the given, the program then loops back to the main menu, where they can play again, review the rules or exit the program.


## Control Flow Diagrams
![general control flow diagram](../docs/general_control_flow_diagram.png)
\
![detailed game control flow diagram](../docs/detailed_game_control_flow_diagram.png)

## Implementation plan 
![Trello Screenshot](../docs/trello_screenshot.png)
Project management platform, Trello, link: https://trello.com/b/gZL9U85A/terminal-app-assignment
