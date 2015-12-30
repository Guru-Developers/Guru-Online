# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/proposal
  def proposal
    proposal = Proposal.first
    NotificationMailer.proposal(proposal)
  end

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/application
  def application
    application = TeamApplication.first
    NotificationMailer.application(application)
  end

  # Preview this email at http://localhost:3000/rails/mailers/notification_mailer/contact
  def contact
    message = Message.first
    NotificationMailer.contact(message)
  end

end
