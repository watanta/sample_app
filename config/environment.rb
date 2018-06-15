# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :test
  host = 'ea4a30c32fd94c3d94e8c39fc29205b6.vfs.cloud9.us-west-2.amazonaws.com' 
  config.action_mailer.default_url_options = { host: host, protocol: 'https' }
end