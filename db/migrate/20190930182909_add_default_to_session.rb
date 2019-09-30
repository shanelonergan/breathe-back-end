class AddDefaultToSession < ActiveRecord::Migration[6.0]
  def change
  	change_column_default :sessions, :done, true
  end
end
