# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  user_name  :string           not null
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  validates :user_name, presence: true

  has_many :polls,
    class_name: "Poll",
    foreign_key: :author_id,
    primary_key: :id

  has_many :responses,
    class_name: "Response",
    foreign_key: :responder_id,
    primary_key: :id

  has_many :questions, through: :polls

  def completed_polls

    result = Poll.find_by_sql(<<-SQL)
      SELECT
        p1.title
      FROM
        polls p1
      JOIN
        questions ON p1.id = questions.poll_id
      GROUP BY
        p1.id
      HAVING
        COUNT(*) = (
        SELECT
          COUNT(*) AS num_questions_answered
        FROM
          polls p2
        JOIN
          questions ON p2.id = questions.poll_id
        LEFT JOIN
          answer_choices ON answer_choices.question_id = questions.id
        LEFT JOIN
          responses ON responses.answer_choice_id = answer_choices.id
        WHERE
          responses.responder_id = #{id} AND p1.id = p2.id
        GROUP BY
          p2.id
        )
    SQL
  end

end

# has polls using author_id
# has responses using responder_id
# has questions through polls
