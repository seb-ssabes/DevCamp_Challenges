# Create a user using the User class.

class User
  attr_accessor :name, :email
  def initialize
    yield(self) if block_given?
  end
end

user1 = User.new do |u|
  u.name = "Seb"
  u.email = "test@email.com"
end

user2 = User.new
user2.name = "Ida"
user2.email = "test@email.com"

p user1
p user2
