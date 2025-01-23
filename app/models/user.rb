# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable, :omniauthable
  #  :jwt_authenticatable,
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable,
         :trackable
  include DeviseTokenAuth::Concerns::User
end
