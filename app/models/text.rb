class Text < ActiveRecord::Base
  attr_accessible :text, :genre, :url, :title
  
  # Relation
  has_many :word_sets
end
