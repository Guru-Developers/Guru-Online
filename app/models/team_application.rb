class TeamApplication < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true,  format: {with: VALID_EMAIL_REGEX}
  validates :date_of_birth, presence: true
  validates :resume, presence: true

  mount_uploader :resume, FileSubmissionUploader

  default_scope -> { order(created_at: :desc) }

end
