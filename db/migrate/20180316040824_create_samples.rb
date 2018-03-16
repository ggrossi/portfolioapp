class CreateSamples < ActiveRecord::Migration[5.1]
  def change
    create_table :samples do |t|
      t.text :content_url
      t.text :image_url
      t.text :headline
      t.text :description
      t.text :medium
      t.text :date
    end
  end
end
