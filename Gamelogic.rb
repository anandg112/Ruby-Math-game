require './player'
require './question'

@game = true
@turn = 0

@player1 = player1.new('Player1')
player1.name = name

@player2 = player2.new('Player2')
player2.name = name

while @game

  question = Question.new

  case @turn
  when 0
    print "#{player1.name}: "
  else
    print "#{player2.name}: "
  end

  print question.query
  @user_ans = gets.chomp.to_i

  if turn == 0 && check_io?(@user_ans)
    puts "yes correctomundo!"
    player1.gain_point
    @turn += 1
  elsif @turn == 0 && !check_io?(@user_ans)
    puts "You are wrong"
    player1.lose_point
    @turn += 1
  elsif @turn == 1 && check_io(@user_ans)
    puts "It's good"
    player2.gain_point
    @turn -= 1
  elsif @turn  == 1 && !check_io(@user_ans)
    puts "No you are wrong"
    player2.lose_point
    @turn -= 1
  end

  puts "The score is:
      #{player1.name}: #{player1.right_ans} correct answers #{player1.lives} Remaining lives
      #{player2.name}: #{player2.right_ans} correct answers #{player2.lives} Remaining lives"

  if player1.lives < 1 || player2.lives < 1
    puts "Game Over!"
  if player1.lives < 1
    puts "The winner is #{player2.name}"
  elsif player2.lives < 1
    puts "The winner is #{player1.name}"
  end

  puts "The final score is:
    #{player1.name}: #{player1.right_ans} right answers #{p1.lives} remaining lives
    #{player2.name}: #{player2.right_ans} right answers #{p2.lives} remaining lives"

  @game = false
end
end
