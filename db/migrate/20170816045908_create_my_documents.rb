class CreateMyDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :my_documents do |t|
      t.string :title
      t.string :description
      t.text :file_url
      t.text :image_url

      t.timestamps
    end
  end
end
