class PhonicsLevelsController < ApplicationController
  def index
    order_by = params[:order_by] || "level_number"
    @phonic_levels = PhonicsLevel.where("level_number >= #{params[:min_level] || 1}").order(order_by)

    levels_with_counts = @phonic_levels.map do |level|
      level.as_json.merge(word_part_count: level.word_parts.count)
    end

    render json: levels_with_counts
  end
end
