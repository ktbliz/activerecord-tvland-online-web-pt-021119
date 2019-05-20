class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name 
    first = self.first_name 
    last = self.last_name 
    "#{first} #{last}"
  end 
  
  def list_roles 
    self.characters.each do |character|
      puts "#{character.name} - #{character.show.name}"
    end
    #binding.pry 
  end 
  
end