# your code goes here

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end


  def happiness=(score)
    @happiness = normalize_score(score)
  end


  def hygiene=(score)
    @hygiene = normalize_score(score)
  end

  def happy?
    valid_state?(self.happiness)
  end

  def clean?
    valid_state?(self.hygiene)
  end

  def get_paid(salary)
    self.bank_account = self.bank_account + salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = self.hygiene - 3
    self.happiness = self.happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      friend.happiness = friend.happiness - 2
      self.happiness = self.happiness - 2
      'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      friend.happiness = friend.happiness + 1
      self.happiness = self.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

  private
  def normalize_score(score)
    if score > 10
      10
    elsif score < 0
      0
    else
      score
    end
  end

  def valid_state?(score)
    score > 7 ? true : false
  end



end