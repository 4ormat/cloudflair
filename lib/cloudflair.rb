require 'cloudflair/version'
require 'dry-configurable'

##
# To configure cloudflair
# <code>
# require "cloudflair"
# Cloudflair.configure do |config|
#   config.auth.key = 'YOUR_API_KEY'
#   config.auth.email = 'YOUR_ACCOUNT_EMAIL'
#   # if you have a user_service_key, you don't need auth.key and auth.email
#   config.auth.user_service_key = 'YOUR_USER_SERVICE_KEY'
#
#   # these are optional:
#   config.api_base_url = 'https://your_cloudflare_mock.local'
# end
# </code>
module Cloudflair
  # Your code goes here...
  extend Dry::Configurable

  setting :cloudflare do
    setting :api_base_url, 'https://api.cloudflare.com'
    setting :auth do
      setting :key
      setting :email
      setting :user_service_key
    end
  end

  setting :faraday do
    setting :adapter, :net_http
  end
end
