sudo apt install python3-pip python3-wheel python3-dev virtualenv build-essential
sudo apt install fdroidserver libmagic1 rsync git python3-pyqt5.qtwebengine python3-pyqt5.qtwebkit
clear
pip install django fdroidserver html5lib
pip install repomaker[gui]
repomaker-server
