class AddSearchesToResults < ActiveRecord::Migration[6.0]
  def change
    add_reference :results, :search, null: false, foreign_key: true
  end
end
