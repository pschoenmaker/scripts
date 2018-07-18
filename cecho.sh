#!/usr/bin/env bash


function cecho {
    _CECHO_LINE=${1}
    _CECHO_FLAGS=${2}
    
    # do search replace                                
    _CECHO_LINE=${_CECHO_LINE//\#bold\#/"\\e[1m"}     
    _CECHO_LINE=${_CECHO_LINE//\#red\#/"\\e[0;31m"}       
    _CECHO_LINE=${_CECHO_LINE//\#green\#/"\\e[0;32m"}   
    _CECHO_LINE=${_CECHO_LINE//\#yellow\#/"\\e[0;33m"} 
    _CECHO_LINE=${_CECHO_LINE//\#blue\#/"\\e[0;34m"}     
    _CECHO_LINE=${_CECHO_LINE//\#purple\#/"\\e[0;35m"} 
    _CECHO_LINE=${_CECHO_LINE//\#cyan\#/"\\e[0;36m"}     
    _CECHO_LINE=${_CECHO_LINE//\#off\#/"\\e[m\017"}       
    
    # print line and then reset back to normal
    echo ${_CECHO_FLAGS} -e "${_CECHO_LINE} \\e[m\017"
} # cecho


# Examples

# cecho "creating this folder:#bold#${REPFOLDER}#off#"
# cecho "for candidate:#bold#${CANDIDATE}#off#"
# cecho "with tag:#bold#${TAG}#off#"
# cecho "for re-tagging these repositories:"

# cecho "#bold#------------ Repository #green# ${REPREPO} #off# ------------#off#"
# cecho "working directory:#bold#$(pwd)#off#"
# cecho "#bold#tags:#off#"
# git tag
# cecho "#bold#remotes:#off#"
# git remote -v
# cecho "#bold#branches:#off#"
