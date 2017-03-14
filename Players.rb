class Players

  attr_accessor(:name, :lives, :right_ans)

  def initialize
    @name = name
    @lives = 3
    @right_ans = 0
  end

  def gain_point
    @right_ans += 1
  end

  def lose_point
    @right_ans -= 1
  end
  
end
