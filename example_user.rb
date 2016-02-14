class User
  attr_accessor :name, :email   # Creates attribute accessors (getters and setters)
  
  def initialize(attributes={}) # Our init method
    @name = attributes[:name]
    @email = attributes[:email]
  end
  
  def formatted_email
    "#{@name} <#{@email}>"  # Using string interpolation
  end
end