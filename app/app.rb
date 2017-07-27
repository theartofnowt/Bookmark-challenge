ENV['RACK_ENV'] ||= "development"

require 'sinatra/base'
require_relative 'models/link.rb'
require_relative 'data_mapper_setup.rb'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :links
  end

  get '/links/new' do
    erb :new
  end

  post '/links' do
    link = Link.create(url: params[:url],title: params[:title])
    tags = Tag.first_or_create(name: params[:tags])
    link.tags << tags
    link.save
    redirect '/links'
  end

end
