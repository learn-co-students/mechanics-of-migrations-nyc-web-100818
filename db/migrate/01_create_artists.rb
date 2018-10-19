# class CreateArtists < ActiveRecord::Migration
#   def up #do
#   end

#   def down #undo
#   end
# end

# # ** change=primary way of writing migrations- most cases, where ActRev knows to reverse migration automtc'ly
# class CreateArtists < ActiveRecord::Migration
#   def change #combine both up & down
#   end
# end

#connect to DB
connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/artists.sqlite"
)

#create table w/ SQL
sql = <<-SQL
  CREATE TABLE IF NOT EXISTS artists (
  id INTEGER PRIMARY KEY,
  name TEXT,
  genre TEXT,
  age INTEGER,
  hometown TEXT
  )
SQL

ActiveRecord::Base.connection.execute(sql)

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