class RandomController < ApplicationController
  def new
    render({:template => "/calc_templates/random_new"})
  end

  def results
    @min = params['user_min'].to_f
    @max = params['user_max'].to_f
    @rand_number = rand(@min..@max)
    render({:template => "/calc_templates/random_results"})
  end
end
