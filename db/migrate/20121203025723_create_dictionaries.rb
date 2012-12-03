class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :word
      t.string :voice_id
      t.string :description

      t.timestamps
    end
  end
end
