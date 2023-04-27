class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :challenge
      t.string :content
      t.references :teacher, null: false, foreign_key: { to_table: :users }
      t.references :student, null: false, foreign_key: { to_table: :users }
      t.boolean :solved

      t.timestamps
    end
  end
end
