class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.text :query_params
      t.string :raw_url
      t.string :api_key

      t.timestamps
    end
  end
end
