class WordSet < ActiveRecord::Base
  attr_accessible :ch, :jp, :pin, :text_id
  
  # Relation
  belongs_to :text
  
end
