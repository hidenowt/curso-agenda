# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] ||= "cucumber"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'

# Comment out the next line if you don't want Cucumber Unicode support
require 'cucumber/formatter/unicode'

# Comment out the next line if you want Rails' own error handling
# (e.g. rescue_action_in_public / rescue_responses / rescue_from)
Cucumber::Rails.bypass_rescue

require 'webrat'
require 'factory_girl'

Dir.glob(
  File.join(
    RAILS_ROOT,
    'spec/factories/*.rb')).each {|f| require f }

def inspecionar_erro
  begin
    yield
  rescue Exception => e
    puts e.inspect
    puts e.backtrace.join("\n")
    raise e
  end
end

