require 'cgi'
require 'htmlentities' 

class TestHtmlBuilderController < ApplicationController
  def main
    # Get text id from params
    if params['text_id'] == nil
      # @text_id = "nil"
      # @text_id = Text.findAll().first().id
      
      @text_id = Text.all.first().id
      
    # elif params['text_id'].length > 0
      # @text_id = params['text_id'].to_i
    else
      # @text_id = 0
      # @text_id = params['text_id'].to_i
      # @text_id = Text.findall().first().id
      @text_id = params['text_id'].to_i
    end

    # Get text
    @target_text = Text.find(@text_id).text
    
    @word_sets_special = WordSet.where('text_id = ?', @text_id)
    
    
    @modified_text = @target_text.sub( \
                @word_sets_special.find(4).ch, \
                # @word_sets_special.first().ch, \
                "<span id='word_4'>" + @word_sets_special.find(4).ch + \
                # "<span id='word_4'>" + @word_sets_special.first().ch \
                  # + "</span>")
                  "</span>")
    
    # Words array
    # @words = {}
  end

  def show
  end
end
