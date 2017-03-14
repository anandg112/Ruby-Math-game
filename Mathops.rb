class MathOps
    attr_reader(:answer)

    def initialize
      @first_int = rand(1...20)
      @second_int = rand(1...20)
      @operator = rand(1...3)

    case @operator
    when 1
      @answer = @first_int + @second_int
      @op_var = '+'
    when 2
      @answer = @first_int - @second_int
      @op_var = '-'
    when 3
      @answer = @first_int * @second_int
      @op_var = '*'
    when 4
      @answer = @first_int / @second_int
      @op_var = '/'
    end

    def query
      "What is #{first_int} #{op_var} #{second_int}?"
    end

    def check_io?(user_ans)
      if user_ans == @answer
        return true
      else
        return false
      end
    end
end
