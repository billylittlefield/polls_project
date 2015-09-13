# == Schema Information
#
# Table name: answer_choices
#
#  id          :integer          not null, primary key
#  question_id :integer
#  text        :string
#  created_at  :datetime
#  updated_at  :datetime
#

class AnswerChoice < ActiveRecord::Base
  validates :question_id, presence: true
  validates :text, presence: true

  belongs_to :question,
    class_name: "Question",
    foreign_key: :question_id,
    primary_key: :id

  has_many :responses,
    class_name: "Response",
    foreign_key: :answer_choice_id,
    primary_key: :id
end


# belongs_to question
# has_many responses
# has_many users through responses
