class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  validates :name, presence: true

  enum role: { member: "member", librarian: "librarian" }

  def librarian?
    role == "librarian"
  end

  def member?
    role == "member"
  end
end
