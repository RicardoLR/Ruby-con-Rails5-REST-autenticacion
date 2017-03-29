
class CreatePlaylistprivates < ActiveRecord::Migration[5.0]

  def change
    create_table :playlistprivates do |t|
      t.string :name
      t.integer :number_of_votes
      t.integer :iduser

      t.timestamps
    end
  end

end
