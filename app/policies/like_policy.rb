class LikePolicy < ApplicationPolicy
  attr_reader :user, :like

  def initialize(user, like)
    @user = user
    @like = like
  end

  def create?
    true
  end

  def destroy?
    user.id == like.fan.id
  end
end
