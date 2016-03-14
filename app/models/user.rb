class User < ActiveRecord::Base
   attr_accessor :email, name
  has_many :tours

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_one :profile
end
 