require './lib/models.rb'
require './lib/helpers.rb'

# Set up root path and use the index view
get '/' do
  erb :index
end