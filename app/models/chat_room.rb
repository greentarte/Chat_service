class ChatRoom < ActiveRecord::Base
  # chat 1:N
  has_many :chats
  # user N:N, admission
  has_many :users, through: :admissions
  has_many :admissions
end
