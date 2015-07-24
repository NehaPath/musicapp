class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|

      t.has_attached_file :image
      t.has_attached_file :document
      t.has_attached_file :audio
     # t.string :image
     # t.string :document
     # t.string :audio

      t.timestamps null: false
    end
  end
end
