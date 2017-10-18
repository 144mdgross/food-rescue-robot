require 'simplecov'
SimpleCov.start 'rails'

require 'factory_girl_rails'

# Previous content of test helper now starts here

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 10
  config.order = :random
end

#The parent directory, allows easier access to files w/n tests
# APP_ROOT = File.expand_path('../../', __FILE__)
# puts APP_ROOT
