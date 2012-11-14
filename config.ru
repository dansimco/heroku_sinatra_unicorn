require File.join(File.dirname(__FILE__), 'router')
use Rack::ShowExceptions
use Rack::Deflater
run Router.new