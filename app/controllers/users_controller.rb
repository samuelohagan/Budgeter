class UsersController < ApplicationController

def create

end
	
def show
  	@user = current_user
  	@budgetinputs = @user.budgetinputs
  
end

def createbudget
		@budgetinput = current_user.budgetinputs.build if user_signed_in?
end



end