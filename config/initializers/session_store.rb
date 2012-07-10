# Be sure to restart your server when you modify this file.

# JDavis: ruby 1.8.7 does not support the new-style hash argument.  Changing for new hosting site.
#Peoplenetz::Application.config.session_store :cookie_store, key: '_peoplenetz_session'
Peoplenetz::Application.config.session_store :cookie_store, :key => '_peoplenetz_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Peoplenetz::Application.config.session_store :active_record_store
