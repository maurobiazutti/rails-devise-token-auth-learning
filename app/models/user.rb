# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable, :omniauthable
  devise :database_authenticatable,
        #  :jwt_authenticatable,
         :confirmable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  include DeviseTokenAuth::Concerns::User

  has_many :articles, dependent: :destroy
end
