# == Schema Information
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  responder_id     :integer
#  answer_choice_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Response < ActiveRecord::Base
  validates :responder_id, presence: true
  validates :answer_choice_id, presence: true
  validate :respondent_has_not_already_answered_question
  validate :author_cant_respond_to_own_poll

  belongs_to :responder,
    class_name: "User",
    foreign_key: :responder_id,
    primary_key: :id

  belongs_to :answer_choice,
    class_name: "AnswerChoice",
    foreign_key: :answer_choice_id,
    primary_key: :id

  has_one :question, through: :answer_choice

  def sibling_responses
    if id
      question.responses.where("responses.id != ?", self.id)
    else
      question.responses
    end
  end



  def respondent_has_not_already_answered_question
    if sibling_responses.where(responder_id: responder_id).count > 0
      errors[:responder] << "already answered question"
    end
  end

  def author_cant_respond_to_own_poll
    if question.author.id == responder_id
      errors[:author] << "cannot answer own question"
    end
  end

end
