class User < ActiveRecord::Base
    has_secure_password
    has_many :reviews
    has_many :cigars, through: :reviews


end