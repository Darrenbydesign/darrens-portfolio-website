# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
# MySite::Application.config.secret_key_base = '0fab40acb14d399bbf2bfbe3fb6d93920758664f91cc94c4ad0cbbd57b71390ad01dfe970d4a1837852536089c1bcd215daa43bf7fc2e002cf51dcdf82c9c1c8'

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

MySite::Application.config.secret_key_base = secure_token

