class CreateFotos < ActiveRecord::Migration[5.0]
  def change
    create_table :fotos do |t|
      t.string :image_url
      t.string :caption

      t.timestamps
    end
  end
end
