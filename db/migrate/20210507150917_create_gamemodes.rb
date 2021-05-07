class CreateGamemodes < ActiveRecord::Migration[6.1]
  def change
    create_table :gamemodes do |t|

      t.timestamps
    end
  end
end
