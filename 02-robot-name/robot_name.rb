# robot_name.rb

class Robot 
  attr_accessor :name

  @old_names = []

  def initialize
    @name = Robot.create_name
  end

  def reset
    @name = Robot.create_name
  end

  def self.create_name
    letters = ('A'...'Z').to_a.sample(2).join
    numbers = rand(100..999)
    name = "#{letters}#{numbers}"
    name = create_name if @old_names.include?(name)
    @old_names << name
    return name
  end
end 

