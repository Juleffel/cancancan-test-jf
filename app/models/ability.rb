# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    secret_companies = Company.where(name: 'Company secret')

    if user
      can :read, Company
      can :manage, Company, id: user.company_ids

      can :read, Project1
      can :manage, Project1, company_id: user.company_ids

      can :read, Project2
      can :manage, Project2, company: user.companies.first

      can :read, Project3
      can :manage, Project3, company: { id: user.company_ids }

      can :manage, Project4
      cannot :manage, Project4, company_id: secret_companies.ids

      can :manage, Project5
      cannot :manage, Project5, company: secret_companies.first

      can :manage, Project6
      cannot :manage, Project6, company: { id: secret_companies.ids }
    end
  end
end
