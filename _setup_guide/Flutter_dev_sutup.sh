
mkdir ~/development
cd ~/development
git clone https://github.com/flutter/flutter.git -b stable

### Manual
echo "Add the following lines to your '.zshrc' and change <user> to your local user"
echo '
export PATH="$PATH:/Users/<user>/development/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
alias fpg="flutter pub get"
'

source ~/.zshrc

if (( $+commands[flutter] ))
then
    echo "Flutter successfully installed"
else
    echo "ERROR: Flutter installation was not successful"
fi
read -p "Press Enter to continue or ctl+c to exit" </dev/tty

flutter config --no-analytics
flutter precache
flutter doctor

brew install scrcpy
