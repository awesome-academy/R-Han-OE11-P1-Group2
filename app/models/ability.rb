class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
        can :manage, :all
    else
        can [:show,:index], [:mangak, :chapter]
        can [:create, :destroy], [:comment]
    end
  end
end
