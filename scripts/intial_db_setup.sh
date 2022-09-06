#!/bin/bash

echo '\nCreating super user...'
echo '\nUsername: admin'
echo '\nEmail: admin@example.com'
echo '\nEnter a password for the new super user...'
cd config
python3 manage.py createsuperuser --email admin@example.com --username admin
wait
echo '\nThis is where we dump the data'
echo '\nThis is where we intialize the database'
