require './config/environment.rb'

# Pull constants into existance, may need to be
# expandend based on addiitonal autoloading
# libs that may be in-use
Rails.application.eager_load!
