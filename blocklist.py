# """
# blocklist.py

# This file just contains the blocklist of the JWT tokens. It will be imported by
# app and the logout resource so that tokens can be added to the blocklist when the
# user logs out.
# """
# Ideally use Redis instead of saving JWT to a file. 
# Because when the app restarts this file will be empty 
# and the unexpired JWT will be allowed to be used to 
# access the api endpoints.

BLOCKLIST = set()