#!/bin/bash
def check_for_harmful_input(user_input):
    if re.search(r"[<>&;\(\)']]", user_input):
        return False
    blacklist = ["alert()", "eval()", "document.location"]
    for phrase in blacklist:
        if phrase in user_input:
            return False
    return True
#get the name of the Django app from user
echo "enter the name of the directory for your Django app this is not the app name but the folder that contains the app"
read -r app_directory
if check_for_harmful_input(app_directory)
    mkdir $app_directory && cd $app_directory
else:
    echo "Warning: Your input contains unsafe character."
echo "creating a virtual environment in the working directory and activating it"
python3 -m venv venv

source venv/bin/activate

echo "download django"
python3 -m pip install Django

pip install --upgrade pip


echo "enter the name of your Django app"
read -r app_name
echo "now creating your project with the name $app_name"
django-admin startproject $app_name .

#run the server
python3 manage.py runserver

