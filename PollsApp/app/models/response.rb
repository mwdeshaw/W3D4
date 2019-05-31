class Response < ApplicationRecord
 before_validation :not_duplicate_response

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice 

    def not_duplicate_response
      user_responses = self.user.includes(:responses)
      user_responses.each do |response|
        if self == response
          error[:respondent] << "You've previously answered this question"
        end
      end
    end
end

