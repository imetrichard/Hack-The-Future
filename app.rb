require './lib/models.rb'
require './lib/helpers.rb'

get '/stylesheets/*.css' do
  content_type 'text/css', :charset => 'utf-8'
  filename = params[:splat].first
  scss "#{filename}.css".to_sym, :views => "lib/assets/stylesheets"
end


get '/styles.css' do
	  scss :styles
end

# Set up root path and use the index view
get '/' do
  erb :index
end

# Setting up pages routes
get '/mentors' do
  erb :mentors
end

get '/sponsors' do
  erb :sponsors
end

get '/media' do
  erb :media
end

get '/terms' do
  erb :terms
end

get '/index' do
  erb :index
end