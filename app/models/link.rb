require 'data_mapper'
require 'dm-postgres-adapter'
require './app/data_mapper_setup'


class Link

  include DataMapper::Resource

  has n, :tags, through: Resource

  property :id,    Serial
  property :title, String
  property :url,   String


end
