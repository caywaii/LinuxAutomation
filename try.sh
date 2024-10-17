#!/bin/bash

LOGFILE="git_automation.log"
ERROR_LOGFILE="git_automation_errors.log"

# Function to log messages
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> $LOGFILE
}

# Function to log errors
log_error() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - ERROR: $1" >> $ERROR_LOGFILE
}

# Function to set up user credentials
setup_git() {
    echo "Enter your GitHub username:"
    read username
    echo "Enter your GitHub email:"
    read email
