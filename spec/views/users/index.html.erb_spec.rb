require 'rails_helper'
require_relative '../config/environment'

ENV['RAILS_ENV'] ||= 'test'

config.filter_rails_from_backtrace!

if bullet.enable?

  config.before(:each) do
    Bullet.start_request
  end

  config.after(:each) do
    Bullet.perform_out_of_channel_notifications if Bullet.notification?
    Bullet.end_request
  end
end
