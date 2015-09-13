class RemoveUniqueIndicesFromResponse < ActiveRecord::Migration
  def change

    remove_index(:responses, :answer_choice_id)
    remove_index(:responses, :responder_id)
    add_index(:responses, :answer_choice_id)
    add_index(:responses, :responder_id)
    
  end
end
