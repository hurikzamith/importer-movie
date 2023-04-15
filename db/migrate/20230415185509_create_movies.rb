class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :description
      t.string :country
      t.string :year

      t.timestamps
    end
  end
end
