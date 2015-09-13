class RemoveUniqueQuestionIdFromAnswerChoice < ActiveRecord::Migration
  def change

    remove_index :answer_choices, :question_id
    add_index :answer_choices, :question_id

  end
end
