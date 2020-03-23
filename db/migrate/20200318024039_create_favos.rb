class CreateFavos < ActiveRecord::Migration[5.2]
  def change
    create_table :favos do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: { to_table: :microposts }

      t.timestamps
    end
  end
end
