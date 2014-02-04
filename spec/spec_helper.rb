require File.expand_path '../../lib/vx/consumer', __FILE__

require 'rspec/autorun'

Dir[File.expand_path("../..", __FILE__) + "/spec/support/**.rb"].each {|f| require f}

ENV['VX_CONSUMER_DEBUG'] = '1'

RSpec.configure do |config|

  config.before(:each) do
    Vx::Consumer.configuration.reset!
  end

  config.after(:each) do
    Vx::Consumer.shutdown
  end
end
