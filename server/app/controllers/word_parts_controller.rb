class WordPartsController < ApplicationController
  def index
    @phonic_level = PhonicsLevel.find(params[:phonics_level_id])

    if params[:search].present?
      @word_parts = WordPart.where("phonics_level_id = #{params[:phonics_level_id]} AND label LIKE '%#{params[:search]}%'")
    else
      @word_parts = @phonic_level.word_parts
    end

    render json: @word_parts
  end
end
