require './lib/models.rb'
require './lib/helpers.rb'

#set :views, , :default => "views"

#get '/stylesheets/*.css' do
#  filename = params[:splat].first
#  scss "#{filename}.css".to_sym, :views => 'lib/assets/stylesheets'
#  #scss :stylesheet, :style => :expanded
#end

get '/stylesheets/*.css' do
  content_type 'text/css', :charset => 'utf-8'
  filename = params[:splat].first
  scss "#{filename}.css".to_sym, :views => "lib/assets/stylesheets"
end


get '/styles.css' do
	  scss :styles
end


#get '/stylesheets/:name.css' do
#  content_type 'text/css', :charset => 'utf-8'
#

#get "/stylesheets/:stylesheet.css" do |stylesheet|
#  content_type "text/css"
#  template = File.read(File.join('lib/assets/stylesheets', "#{stylesheet}.css.scss"))
#  Sass::Engine.new(template).render
#end

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

get '/index2' do
  erb :index2
end