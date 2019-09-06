class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :llena
  has_many :actions
  has_many :tasks, through: :actions

  def llena
    Task.all.each do |task|
      @action = Action.new
      @action.user_id = self.id
      @action.task_id = task.id
      @action.finish = false
      @action.save
    end
  end
end
