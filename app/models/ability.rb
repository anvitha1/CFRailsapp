class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can [:create, :read], [Order, Comment]
      can :manage, User, id: user.id
    end
  end
end
