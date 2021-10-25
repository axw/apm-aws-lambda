load_paths = Dir["vendor/bundle/ruby/2.7.0/bundler/gems/**/lib"]
load_paths += Dir["vendor/bundle/ruby/2.7.0/gems/**/lib"]
load_paths += Dir["vendor/bundle/ruby/2.7.0/gems/concurrent-ruby-1.1.9/lib/concurrent-ruby"]

$LOAD_PATH.unshift(*load_paths)

require 'json'
require 'elastic-apm'

ElasticAPM.start(pool_size: 2)

def lambda_handler(event:, context:)
  raise Exception
end