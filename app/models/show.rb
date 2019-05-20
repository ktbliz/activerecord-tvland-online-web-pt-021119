class Show < ActiveRecord::Base
  
  has_many :actors, through: :characters  
  has_many :characters
  
  def build_network
    
  end 
  
end