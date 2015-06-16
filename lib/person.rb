# your code goes here

class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(score)
    if score > 10
      @happiness = 10
    elsif score < 0
      @happiness = 0
    else
      @happiness = score
    end
  end

  def hygiene=(score)
    if score > 10
      @hygiene = 10
    elsif score < 0
      @hygiene = 0
    else
      @hygiene = score
    end
  end

  def happy?
    if happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account = @bank_account + salary
    "all about the benjamins"
  end

  def take_bath
    new_hygiene = self.hygiene + 4
    self.hygiene = new_hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    new_hygiene = self.hygiene - 3
    self.hygiene = new_hygiene
    new_happiness = self.happiness + 2
    self.happiness = new_happiness
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    new_happiness = self.happiness + 3
    self.happiness = new_happiness
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

end