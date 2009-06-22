# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_agenda_session',
  :secret      => '5364bf2a9f60924e6284a858a3e2f4e6648604fc6e0771cc7d2820be4ab9c835a4db503b117c9997ab1cf8721d619c310a748fb75ee6f8a81d6a9f38112de9d0'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
