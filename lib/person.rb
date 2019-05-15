require "pry"

class Person
  attr_reader :name
  attr_accessor(:bank_account, :happiness, :hygiene)

  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
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
    @happiness > 7
  end
  
  def clean?
    @hygiene > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    end
    "blah blah blah blah blah"
  end

end
# binding.pry