export CLICOLOR=1

# MacPorts Installer addition on 2014-02-12_at_20:04:06: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
export CFLAGS=-D_FORTIFY_SOURCE=0

# point mac OS X to my bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi