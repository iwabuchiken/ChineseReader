class GetWordsController < ApplicationController
  def main
    # Find certain word sets
    # @word_set = WordSet.find(:all, :conditions => {:text_id => 2}, :limit => 3)
  
    # render "main"
    @message = "main"
    
    @word_set = WordSet.first()
    
    @word_set_special = WordSet.where('text_id = ?', 2)
    
  end

  def show
    # @data = params[:text_id]
    @word_set_special = WordSet.where('text_id = ?', Integer(params[:text_id]))
  end
end
