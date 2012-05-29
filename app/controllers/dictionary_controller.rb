class DictionaryController < ApplicationController
  def main
    # render "dictionary"
  end

  def show
    # Get param
    # if params['chinese'].to_s.length != 0
    if params['chinese'].to_s.length == 0
      @japanese = "NO DATA"
    else
      # @japanese = params['chinese'].class.to_s
      # @japanese = params['chinese'].class.to_s
      # @japanese = params['chinese']
      # params['chinese']
      # @japanese = WordSet.where('ch = ?', params['chinese'])
      # @japanese_words = WordSet.where('ch = ?', params['chinese'])
      @word_sets = WordSet.where('ch = ?', params['chinese'])
    end
     
  end
end
