class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :omniauthable, :lockable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :timeoutable, :trackable
end
