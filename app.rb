require 'bundler'

Bundler.require

require 'sinatra/i18n'

class Crowdsite < Sinatra::Base
  register Sinatra::AssetPipeline
  register Sinatra::I18n

  set :root, File.dirname(__FILE__)
  set :assets_precompile, %w(application.js application.css *.png *.jpg *.svg)

  configure do
    sprockets.append_path File.join(root, 'assets', 'stylesheets')
    sprockets.append_path File.join(root, 'assets', 'javascripts')
    sprockets.append_path File.join(root, 'assets', 'images')
  end

  configure :production do
    set :raise_errors, false
    set :show_exceptions, false
  end

  get '/' do
    haml :index
  end
end
