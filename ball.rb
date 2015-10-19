require 'yaml'

class Ball
  ANSWERS = YAML.load_file('answers.yml')

  def color(number)
    case number
    when 0..4 then 31
    when 5..9 then 32
    when 10..14 then 33
    when 15..19 then 34
    end
  end

  def shake
    number = rand(ANSWERS.size)
    p "\e[#{color(number)}m#{ANSWERS[number]}\e[0m"
    ANSWERS[number]
  end
end