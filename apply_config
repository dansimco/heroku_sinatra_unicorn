#!/usr/bin/env ruby
require "yaml"
yaml_settings = YAML.load_file "config.yml"
heroku_string = ""
yaml_settings.each { |k,v|
    heroku_string << "#{k}=#{v} "
}
%x{ heroku config:add #{heroku_string}}