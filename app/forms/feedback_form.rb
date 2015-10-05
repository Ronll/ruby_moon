class FeedbackForm
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :name, :email, :subject, :message

  validates :name, presence: true
  validates :email, presence: true,  format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message:"is not valid"}
  validates :message, presence: true, length: { minimum: 10 }
  validates :subject, presence: true

end 

