class NotificationMailer < ApplicationMailer
  default to: 'liuk@live.unc.edu'   #change to dev team email later

  def proposal(proposal)
    @proposal = proposal
    mail subject: "New project proposal"
  end

  def application(application)
    @application = application
    mail subject: "New team application"
  end

  def contact(message)  #calling this method 'message' causes problems
    @message = message
    mail subject: "New message"
  end
end
