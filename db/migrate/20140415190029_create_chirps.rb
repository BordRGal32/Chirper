class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.belongs_to :user
      t.string :message
      t.timestamps
    end
  end
end
