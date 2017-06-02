class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.belongs_to :artists, optional: true
      t.belongs_to :billboards, optional: true

      t.timestamps
    end
  end
end
