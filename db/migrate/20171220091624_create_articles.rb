class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :new
      t.string :title
      t.string :body
      t.string :author
      t.timestamps
    end
  end
end
