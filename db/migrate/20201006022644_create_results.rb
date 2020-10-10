class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.string :image_url
      t.string :color_code
      t.datetime :updated

      t.timestamps
    end
  end
end
