require "rubygems"
require "bundler"
Bundler.require(:default)

#Load Config
if File.exists? "./config.yml" then
  puts "Loading config from YAML"
  yaml_config = YAML.load_file "./config.yml"
  Config = yaml_config
else
  puts "No config.yml in root, using ENV instead for config"
  Config = ENV
end

class Router < Sinatra::Base

  use Rack::Session::Cookie
  disable :protection
  set     :public_folder, File.dirname(__FILE__) + '/public'

  helpers do

  end

  get '/' do
    return 'App Loaded'
  end

end