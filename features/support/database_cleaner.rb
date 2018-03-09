begin
  #require 'database_cleaner'
  #require 'database_cleaner/cucumber'

  #DatabaseCleaner.strategy = :truncation
  #DatabaseCleaner[:mongoid].strategy = :truncation
  #DatabaseCleaner[:mongoid].clean_with(:truncation)

rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Around do |scenario, block|
  #DatabaseCleaner.cleaning(&block)
end
# RSpec.configure do |config|
#
#   # Cleanup the DB in between test runs
#   config.before(:suite) do
#     DatabaseCleaner[:mongoid].strategy = :truncation
#     DatabaseCleaner[:mongoid].clean_with(:truncation)
#   end
#
#   config.before(:each) do
#     DatabaseCleaner.start
#   end
#
#   config.after(:each) do
#     DatabaseCleaner.clean
#   end
#
# end
