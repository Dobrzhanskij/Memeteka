class CreateMemes < ActiveRecord::Migration[6.0]
  def change
    create_table :memes do |t|
      t.string :title
      t.text :body
      t.string :image

      t.timestamps
    end
  end
end
