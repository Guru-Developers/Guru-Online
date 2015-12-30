class Message < ActiveRecord::Base
  validates :email, presence:true 
  validates :message, presence:true 

  default_scope -> { order(created_at: :desc) }

end
