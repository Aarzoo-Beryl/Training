class EmailValidator < ActiveModel::Validator
  def validate(record)
    unless record.email =~ URI::MailTo::EMAIL_REGEXP
      record.errors.add(:email, message: 'format must be of type: abc@example.com')
    end
  end
end
