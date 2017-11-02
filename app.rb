require 'sinatra'
require "sinatra/reloader" if development?

# this is how you set up a static assets folder in Sinatra
# otherwise it defaults to `./public`
set :public_folder, File.dirname(__FILE__) + '/assets'

get '/' do
  # use query params to load language-specific templates
  lang = params[:lang]
  if lang
    erb lang.to_sym, layout: "#{lang}_layout".to_sym
  # if no query params present, load English by default
  else
    # uses `layout.erb` for layout by default if it exists
    erb :index
  end
end
