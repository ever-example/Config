

# The orginal version is saved in .bash_profile.pysave
PATH="/usr/local/share/adt-bundle-mac-x86_64/sdk/platform-tools:/usr/local/share/adt-bundle-mac-x86_64/sdk/tools:${PATH}"

export set MYSQL_HOME=/usr/local/mysql

PATH=$PATH:$MYSQL_HOME/bin

export PATH


alias ls='ls -G'
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad


myflgl1(){
g++ $1 `fltk-config --ldflags --cxxflags` -lfltk_gl -framework AGL -framework OpenGL
}
#alias myflgl=myflgl1

mygcv1(){
g++ $1 -lopencv_core -lopencv_highgui -lopencv_imgproc -I/usr/local/include/
}
mygcv2(){
g++ $1 `pkg-config --libs opencv` `pkg-config --cflags opencv`
}
alias gcv=mygcv2

myflglcv1() {
g++ $1 `fltk-config --ldflags --cxxflags` -lfltk_gl -framework AGL -framework OpenGL `pkg-config --libs opencv` `pkg-config --cflags opencv`
}
alias myflglcv=myflglcv1

myRasa1() {
g++ $1 `fltk-config --ldflags --cxxflags` `pkg-config --libs opencv` `pkg-config --cflags opencv`
}

alias rasac=myRasa1

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

myls1() {
livestreamer www.twitch.tv/$1 best 
}
alias twitch=myls1

mydecodeurl1() {
python -c "import urllib, sys;print; print urllib.unquote(sys.argv[1])" $1
}
alias deurl=mydecodeurl1

myVN() {
sudo launchctl load -w /Library/LaunchDaemons/org.freedesktop.dbus-system.plist;
export LANG="ja_JP" 
}
alias vnconfig=myVN



##
# Your previous /Users/eyang_ever/.bash_profile file was backed up as /Users/eyang_ever/.bash_profile.macports-saved_2013-01-08_at_01:53:18
##

# MacPorts Installer addition on 2013-01-08_at_01:53:18: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
