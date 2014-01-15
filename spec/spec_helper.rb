require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'


RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
  config.use_transactional_fixtures = true
end
