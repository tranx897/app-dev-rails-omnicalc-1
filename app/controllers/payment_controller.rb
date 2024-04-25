class PaymentController < ApplicationController
  def new
    render({:template => "/calc_templates/payment_new"})
  end

  def results
    @r = params['user_apr'].to_f / 100 / 12
    @periods = params['user_years'].to_i * 12
    @pv = params['user_pv'].to_f
  
    @numerator = @r * @pv
    @denominator = 1 - ((1 + @r) ** (-@periods))
    @payment = @numerator / @denominator

    render({:template => "/calc_templates/payment_results"})
  end
end
