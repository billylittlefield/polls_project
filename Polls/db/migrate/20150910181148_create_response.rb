class CreateResponse < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :responder_id
      t.integer :answer_choice_id

      t.timestamps
    end

    add_index(:responses, :responder_id, unique: true)
    add_index(:responses, :answer_choice_id, unique: true)
  end
end
