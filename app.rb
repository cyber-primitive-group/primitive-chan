require 'rack'
require 'rack/app'

require_relative './system/boot.rb'

class App < Rack::App
  get '/' do
    'Root, hello!, there are should be boards list'
  end

  get '/boards/:board_code/' do
    "board: #{params['board_code']}. there are should be threads list"
  end

  get '/threads/:id' do
    "thread: #{params['id']}"
  end
end

