class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   # 채팅이랑 1:N
   has_many :chats
   # 챗룸이랑 N:M
   has_many :admissions
   has_many :chat_room, through: :admisson
end
