bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer )
rvm pkg install zlib
rvm install 1.9.3 -C --with-zlib-dir=$rvm_path/usr
wget http://chromium.googlecode.com/files/chromedriver_linux64_17.0.963.0.zip
unzip chromedriver*
rm chromedriver*.zip
sudo mv ./chromedriver /usr/bin
