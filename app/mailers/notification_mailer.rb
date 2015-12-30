class NotificationMailer < ApplicationMailer
  default from: 'localhost:3000', to: 'liuk@live.unc.edu'   #change to dev team email later

  def proposal(proposal)
    @proposal = proposal
    pitch_deck = proposal.pitch_deck
    unless pitch_deck.nil? || pitch_deck.length==0
      attachments[pitch_deck.identifier] = File.read(pitch_deck.current_path)
    end
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
