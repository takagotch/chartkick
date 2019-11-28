class ChartsController < ApplicationController
  def completed_tasks
    render json: Task.group_by_day(:completed_at).count
  end
end

render json: Task.group(:goal_id).group_by_day(:completed_at).count.chart_json


