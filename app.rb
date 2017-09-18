require 'sinatra'

# this is how you set up a static assets folder in Sinatra
# otherwise it defaults to `./public`
set :public_folder, File.dirname(__FILE__) + '/assets'

# set views to originate from language folders
set :views, Proc.new { File.join(root, "views/#{@lang}") }

get '/' do
  # use query params to load language-specific templates
  @lang = params[:lang] ? params[:lang] : "en"

  # load correct language menu based on params
  # so we can have just one layout file for all languages
  @menu = menu[@lang.to_sym]

  erb :index
end

private

def menu
  {
    en: ["LEARN", "DEVELOP", "DISCUSS", "CONTRIBUTE", "WHY RUST?", "ENGLISH"],
    fr: ["APPRENDRE", "CONSTRUIRE", "PARLER", "CONTRIBUER", "POURQUOIS RUST?", "FRANCAIS"]
  }
end
