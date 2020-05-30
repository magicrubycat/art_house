class BidPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create? #create a bid
    record.artifact.user != user #how to check if the user is not the owner of the artifact (i.e. record)
  end
end
