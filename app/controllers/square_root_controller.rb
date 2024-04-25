class SquareRootController < ApplicationController
  def new
    render({:template => "/calc_templates/square_root_new"})
  end

  def results
    @number = params['number'].to_f
    @square_root = Math.sqrt(@number)
    render({:template => "/calc_templates/square_root_results"})  
  end
end
