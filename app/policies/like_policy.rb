class LikePolicy < ApplicationPolicy
  attr_reader :user, :like

  def initialize(user, like)
    @user = user
    @like = like
  end

  def create?
    user
  end

  def destroy?
    user == like.fan
  end
end
