# encoding: UTF-8
class Article < ActiveRecord::Base
  validates_presence_of :name, :price
end

