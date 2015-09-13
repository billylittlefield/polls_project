# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  poll_id    :integer
#  text       :string
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
  validates :text, presence: true
  validates :poll_id, presence: true

  has_many :answer_choices,
    class_name: "AnswerChoice",
    foreign_key: :question_id,
    primary_key: :id

  has_many :responses, through: :answer_choices

  belongs_to :poll,
    class_name: "Poll",
    foreign_key: :poll_id,
    primary_key: :id

  has_one :author, through: :poll

  def results
    results = {}
    responses_and_counts = answer_choices
    .select("answer_choices.*, COUNT(responses.id) AS num_responses")
    .joins(:responses)
    .group("answer_choices.id")

    responses_and_counts.map do |response_and_count|
      results[response_and_count.text] = response_and_count.num_responses
    end

    results
  end


end
