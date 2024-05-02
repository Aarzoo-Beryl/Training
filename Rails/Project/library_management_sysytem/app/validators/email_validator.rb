class EmailValidator < ActiveModel::Validator
  def email_validation(record)
    unless record.email == URL::MailTo::EMAIL_REGEXP
      record.errors.add(:email,message: 'format not correct')
    end
  end
end
