require 'bcrypt'

class User < ActiveRecord::Base
  # users.password_hash in the database is a :string
  include BCrypt

  has_many  :wands, foreign_key: :owner_id
  has_many  :wandmakers, through: :wands, source: :creator
  has_many  :articles  
  has_many  :pets
  has_many  :brooms
  has_many  :relationships
  has_one   :gringotts_account

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_presence_of :email
  validates_uniqueness_of :email

  # This next line returns every relationship a User has
  # :relations refers to the method being created and AR w
  # has_many :relations, through: :relationships, source: :relative
# This method can be done using scope. Have someone explain how to syntactically do this!
  def relations(relationship_type)
    self.relationships.where(kind: relationship_type).map {|relationship_object| User.find(relationship_object.relative_id)}
      
  end
  
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end