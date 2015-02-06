class Message < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  
  def headers
    {
      to: "owen.james.kelly@gmail.com",
      subject: "Blogfolio message from #{name}!",
      from: %("#{name}" <#{email}>)
    }
  end

end