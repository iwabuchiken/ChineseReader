class TestHtmlBuilderController < ApplicationController
  def main
    # Get text
    # @target_text = Text.where('id = ?', 4).first().title
    # @target_text = Text.where('id = ?', 3).title
    # @target_text_title = Text.find(4).title
    @target_text = Text.find(4).text
    
    # @word_sets_special = WordSet.where('text_id = ?', 4)
    @word_sets_special = WordSet.where('text_id = ?', 4)
    
    # @modified_text = "<span>" + @word_sets_special.find(4).ch + "</span>"
    @modified_text = "<span>" + @target_text + "</span>"
    
    # @modified_text = @target_text.sub( \
    @modified_text = @modified_text.sub( \
                # @word_sets_special.first().ch, "WORD")
                # @word_sets_special.find(4).ch, "WORD")
                @word_sets_special.find(4).ch, \
                # "<span id='word_4'>" + @word_sets_special.find(4).ch \
                "<span id='word_4'>" + @word_sets_special.find(4).ch \
                  + "</span>")
    
    # Words array
    # @words = {}
  end

  def show
  end
end
