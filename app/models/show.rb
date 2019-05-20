class Show < ActiveRecord::Base
  
  has_many :actors, through: :characters  
  has_many :characters
  
  def build_network(hash)
    new_network = Network.new(hash)
    self.network = new_network 
  end 
  
end