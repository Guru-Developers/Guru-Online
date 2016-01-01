class Proposal < ActiveRecord::Base

  validates :first_name,  presence: true
  validates :last_name,  presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,  format: {with: VALID_EMAIL_REGEX}
  validates :message,  presence: true

  mount_uploader :pitch_deck, FileSubmissionUploader
  
  default_scope -> { order(created_at: :desc) }

  #self.per_page = 3  #change default pagination length

end
