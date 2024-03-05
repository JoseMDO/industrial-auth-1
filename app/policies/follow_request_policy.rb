class FollowRequestPolicy < ApplicationPolicy
  attr_reader :user, :follow_request

  def initialize(user, follow_request)
    @user = user
    @follow_request = follow_request
  end

  def create?
    user
  end

  def update?
    user == follow_request.sender || follow_request.recipient
  end

  def destroy?
    user == follow_request.sender
  end

end
