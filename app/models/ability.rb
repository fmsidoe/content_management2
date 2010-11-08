#ability.rb
class Ability
  include CanCan::Ability


  def initialize(user)
    can :read, :all
     can :manage, Company
  if user
    

  if user.roles == "admin"
    can :manage, :all
  end
  if user.roles == "user"
   can :index, Company
   cannot :create, Company
  end
  else
    can :create, User
  end
  end
end
