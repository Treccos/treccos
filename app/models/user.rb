class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


 # essa linha foi adicionado agora
  has_many :projects, dependent: :destroy

  # has_many que quiser user tem varios tasks e dependent: :destroy indica que ele somente existe com usuario,
  # se o usuario for destruido as suas tasks tambem é.
  has_many :tasks, dependent: :destroy
end
