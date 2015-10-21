class Pet
  def initialize(name)
    @name = name
    @type = 'chameleon'
    @health = 10
    @mood = 5
    @hungry = 5
    @sleep = 8
    @clean = 10
    @friendship = 10
  end

  def eat
    @hungry += 3
    puts "Om-Nom-Nom! Hungry is #{@hungry}"
    time_cycle
  end

  def sleep
    @sleep += 3
    puts "Zzz...Sleep is #{@sleep}"
    time_cycle
  end

  def play
    @friendship += 1
    @mood += 1
    puts 'Play in hide&seek with chameleon is so fun!'
    time_cycle
  end

  def joke
    @friendship += 2
    @mood += 2
    puts "It's so fun! Mood is #{@mood}, friendship is #{@friendship}"
    time_cycle
  end

  def wash
    @clean += 2
    puts "I am so clean. Clean is #{@clean}"
    time_cycle
  end

  def cleaning
    @mood += 1
    @health += 1
    @clean += 1
    puts 'Yohoo! You cleaned my terrarium, now I can see myself in a glass!'
    time_cycle
  end

  def treat
    @health = 10
    @mood -= 2
    puts "Ouch! Health is #{@health}, mood is #{@mood}"
    time_cycle
  end

  def vet
    @health += 1
    @friendship -= 1
    puts 'Go to vet? I don\'t like it!'
    time_cycle
  end

  def walk
    @mood += 1
    @friendship += 1
    puts "Oh, it is great. Mood is #{@mood}, friendship is #{@friendship}"
    time_cycle
  end

  def gift
    @friendship += 2
    @mood += 2
    puts 'A gift? For me? YABADABADU!'
    time_cycle
  end

  def help
    m_names = %w(eat sleep play joke wash clean treat vet walk gift help exit)
    m_names.each_with_index { |x, index| puts "#{index + 1} - #{x}" }
  end

  private

  def checks
    puts "I am too fat, health - #{@health -= 1}" if @hungry > 10
    puts 'I am hungry' if @hungry < 3
    if @hungry <= 0
      puts 'Your pet has died of hunger'
      exit
    end
    puts 'I am sick' if @health < 4
    if @health <= 0
      puts 'Your pet is dead!'
      exit
    end
    puts 'I am unhappy' if @mood < 2
    puts 'I want to sleep' if @sleep < 2
    puts 'I am too dirty' if @clean < 2
    puts 'You are not a friend' if @friendship < 3
    if @friendship < 0
      puts 'Your pet run away from you'
      exit
    end
  end

  def time_cycle
    @hungry -= 2
    @sleep -= 2
    @hungry -= 1
    @clean -= 1
    @friendship -= 1
    checks
  end
end

cham = Pet.new('Gorik')

puts cham.help

loop do
  command = gets.chomp.to_i
  case command
  when 1 then cham.eat
  when 2 then cham.sleep
  when 3 then cham.play
  when 4 then cham.joke
  when 5 then cham.wash
  when 6 then cham.cleaning
  when 7 then cham.treat
  when 8 then cham.vet
  when 9 then cham.walk
  when 10 then cham.gift
  when 11 then cham.help
  when 12 then exit
  else puts 'Wrong choice'
  end
end
