class UserPolicy < ApplicationPolicy
  attr_reader :user, :user_instance


  def initialize(user, user_instance)
    @user = user
    @user_instance = user_instance
  end

  def show?
    true
  end

  def feed?
    true
  end

  def discover?
    true
  end

  def liked?
    user == user_instance || 
    !user_instance.private? || 
    user_instance.followers.include?(user)
  end

end
