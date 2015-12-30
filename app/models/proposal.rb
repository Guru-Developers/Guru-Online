class Proposal < ActiveRecord::Base

  validates :first_name,  presence: true
  validates :last_name,  presence: true
  validates :email,  presence: true
  validates :message,  presence: true

  mount_uploader :pitch_deck, FileSubmissionUploader
  
  default_scope -> { order(created_at: :desc) }

  #self.per_page = 3  #change default pagination length

end
