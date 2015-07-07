class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :words

  validates :email, format: { with: /@ucsf.edu/, on: :create, 
  	message: 'To register, please only use a UCSF email address'}
end
