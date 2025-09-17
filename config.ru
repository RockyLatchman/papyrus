require 'sinatra/base'
Dir.glob('./{helpers,controllers}/*.rb').each { |file| require file}


map('/catalog') { run CatalogController }
map('/') { run ApplicationController }
