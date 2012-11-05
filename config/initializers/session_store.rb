# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_testApp_session',
  :secret      => '2c52eaa017e03f328034f5bc102543131140a50a8b478ec510aa1fd272671e8d21d0317e9bb4d333b33b3c71675c0cf7372fa5a53f182a03c6810430085ecc8f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
