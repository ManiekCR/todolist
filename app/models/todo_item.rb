class TodoItem < ApplicationRecord
  belongs_to :todo_list
  has_many :users

  def completed?
    !completed_at.blank?
  end
end
