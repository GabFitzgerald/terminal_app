echo “Welcome to Terminal Ear Test”
echo “Lets begin the install now”
git clone “https://github.com/GabFitzgerald/terminal_app.git”
cd terminal_app
echo “Time to ensure all required gems are installed”
bundle install
echo “All gems have been installed, running application for the first time now”
ruby main.rb

#generate a raw shell link
