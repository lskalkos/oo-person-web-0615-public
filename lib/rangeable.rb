module Rangeable

  def score_within_range(score)
    if score > 10
      10
    elsif score < 0
      0
    else
      score
    end
  end

  def test
    puts "test working"
  end

end