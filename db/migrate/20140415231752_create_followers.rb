class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.belongs_to :user

      t.timestamps
    end
  end
end
