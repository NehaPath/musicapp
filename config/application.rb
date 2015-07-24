require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
#Bundler.require(*Rails.groups)

module Musicapp
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]

    AWS::S3::Base.establish_connection!(
    :access_key_id     => ENV["AWS_ACCESS_KEY_ID"],
    :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]
)
    
     BUCKET = 's3tutorialmusicsample'
    #config.active_record.raise_in_transactional_callbacks = true
  end
end
