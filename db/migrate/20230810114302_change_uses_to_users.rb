# frozen_string_literal: true

class ChangeUsesToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_table('uses', 'users')
  end
end
