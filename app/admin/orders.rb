# frozen_string_literal: true

ActiveAdmin.register Order do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :phone_number, :email, :address, :city, :sub_total, :discounnt, :total
  #
  form do |f|
    input :user_id
    input :phone_number
    input :email
    input :city
    input :sub_total
    input :discount
    input :total
    f.actions
  end
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :phone_number, :email, :address, :city, :sub_total, :discounnt, :total]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
