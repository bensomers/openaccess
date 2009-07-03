# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_v2_openaccess_session',
  :secret      => 'e332d6c2d000a4bd6f2eec9397a43a71dbb1581fe0656dad3f08c86b1626d8ab5c6173a0f7220cd1cd8aa00144fa5c6cafd8d47f8514d279c8e34982b31568cc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
