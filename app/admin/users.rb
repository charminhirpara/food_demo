# frozen_string_literal: true

ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :middle_name, :last_name, :phone_no, :address, :landmark, :city, :state, :country, :pin_code
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :first_name, :middle_name, :last_name, :phone_no, :address, :landmark, :city, :state, :country, :pin_code]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
