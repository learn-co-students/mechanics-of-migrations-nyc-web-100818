class CreateArtists < ActiveRecord::Migration


def change
  create_table :artists do |t|
    t.string :name
    t.string :genre
    t.integer :age
    t.string :hometown
    end
  end
end

    #   def up  <- creates tables
#   end
 
#   def down <- undo/roll back tables
#   end
