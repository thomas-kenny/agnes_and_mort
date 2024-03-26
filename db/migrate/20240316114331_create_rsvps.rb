class CreateRsvps < ActiveRecord::Migration[6.0]
  def change
    create_table :rsvps do |t|
      t.string :name
      t.boolean :attending
      t.string :dietary_requirements
      t.string :email
      t.timestamps
    end
  end
end
