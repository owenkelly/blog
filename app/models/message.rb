class Message < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :subject
  attribute :message
  
  def headers
    {
      to: "owen.james.kelly@gmail.com",
      from: %("#{name}" <#{email}>)
    }
  end

end