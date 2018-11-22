class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.datetime :date
      t.text :note

      t.timestamps
    end
  end
end
