class CreateAlgos < ActiveRecord::Migration[7.0]
  def change
    create_table :algos do |t|
      t.string :display_name
      t.string :type_of
      t.boolean :completed, default: false
      t.string :difficulty
      t.text :solution
      t.text :link_name

      t.timestamps
    end
  end
end
