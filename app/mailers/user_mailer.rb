# frozen_string_literal: true

class UserMailer < ApplicationMailer
  def user_created
    @greeting = 'Hi'
    mail(
      from: 'food@example.com',
      to: User.first.email,
      cc: User.all.pluck(:email),
      bcc: 'secret@example.com',
      subject: 'New post created:'
    )
  end
end
