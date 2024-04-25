class SquareController < ApplicationController
  def new
    render({:template => "/calc_templates/square_new"})
  end

  def results
    @number = params['number'].to_f
    @squared = @number ** 2
    render({:template => "/calc_templates/square_results"})  
  end
end
