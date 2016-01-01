class Message < ActiveRecord::Base

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,  format: {with: VALID_EMAIL_REGEX}
  validates :message, presence:true 

  default_scope -> { order(created_at: :desc) }

end
