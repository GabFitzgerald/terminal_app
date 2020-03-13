# Terminal Ear Training

## Installation

TODO: Installation instructions


### Dependencies

### Hardware Requirements

## GitHub link
https://github.com/GabFitzgerald/terminal_app


## Software Development Plan - 300 - 500
Ear training is an integral part of learning music, and being able to identify specific intervals accurately has many applications for musicians, such as playing songs by ear, being able to write down a tune they have in their head, and enhancing their understanding of music in general. The Terminal Ear Training application will help musicians, or anyone wanting to improve their musicianship identify the distance between notes by listening to them. 

Specifically, the user will run the application, and be presented an interval test.


Develop a statement of purpose and scope for your application. It must include:
- describe at a high level what the application will do
- identify the problem it will solve and explain why you are developing it
- identify the target audience
- explain how a member of the target audience will use it


## Features (minimum of 3) - 100 words each

Interval Test
This feature 
After selecting the difficulty, or customising the test using the command line input feature, the program will create a bank of questions (stored in an array), then randomly select a question and present it to the user. This is achieved by playing the present note of C, then playing the note corresponding to the interval above it. For example, if the program selects minor 2nd, it will play a C, followed by a C#. The user then gets the opportunity to input their response. They also have the option of repeating the interval. Once a response is entered, if it is wrong, the correct answer will be presented and a new random question is selected from the question bank. If the user was correct, the

1. Interval test
- a set difficulty can be selected
- plays C and random other note
- interval can be repeated if the user types r

- test runs until the user gets all intervals correct one

2. Test feedback
- final score as a percentage
- lists the intervals you got right first time
- give an interval that you need to work on
- packages this feedback into one string - if you got a perfect score will give you a compliment

3. Custom Test.
- if the difficulties were a bit limited and you want to work on specific intervals, a custom test can be made using the ARGV


## User Experience 
- how the user will find out how to interact with / use each feature
- how the user will interact with / use each feature
- how errors will be handled by the application and displayed to the user


## Control Flow Diagram
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML.


## Implementation plan 
Trello board
https://trello.com/b/gZL9U85A/terminal-app-assignment




## Help Documentation
includes a set of instructions which accurately describe how to use and install the application.
- steps to install the application
- any dependencies required by the application to operate - still need to list them even if they are in your gemfile
- any system/hardware requirements
e.g. suitable ruby interpreter - 

*do not include how to install ruby environment - but it is a required system
