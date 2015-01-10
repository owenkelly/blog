class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    alias_action :update, :destory, to: :owner_actions
    if user.has_role? :owner
      can :manage, :all?
    else
      can :owner_actions, Post, user_id: user.id
      can :create, Post, 
    end
  end
  
end
