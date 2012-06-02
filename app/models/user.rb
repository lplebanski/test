class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  # attr_accessible :title, :body

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  validates :name,  :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  has_many :questions, :dependent => :destroy
  has_many :comments, :dependent => :destroy
end
