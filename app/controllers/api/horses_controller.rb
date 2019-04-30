class Api::HorsesController < ApplicationController
  def fortune_action
    @message = ["You will have 4 kids", "You will buy a new house soon", "It's time to slow down"][rand(0..2)]
    render 'fortune_view.json.jbuilder'
  end

  def lotto_action
    @message = "Here are your six lucky numbers"
    possible_numbers = (1..60).to_a
    @numbers = possible_numbers.sample(6),join(", ")
    # @numbers = []
    # list = (1..60).to_a
    # 6.times do 
    #   @numbers << list[rand(0..59)]
    # end
    render 'lotto_view.json.jbuilder'
  end
    @@count = 0
  def count_action
    @@count += 1
    @count = @@count

    render 'count_view.json.jbuilder'
  end 
end
