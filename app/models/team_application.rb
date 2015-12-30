class TeamApplication < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :date_of_birth, presence: true
  validates :resume, presence: true

  mount_uploader :resume, FileSubmissionUploader

  default_scope -> { order(created_at: :desc) }

end
