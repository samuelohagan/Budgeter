class BudgetinputsController < ApplicationController

	def create
	@budgetinput = current_user.budgetinputs.build(budgetinput_params) 
	if @budgetinput.save
      redirect_to root_url
    else
      render 'static_pages/home'
    end	
	end

	def destroy
	end

	private

	def budgetinput_params
		params.require(:budgetinput).permit(:city, :car, :house, :kids, :age, :income)
	end
end

   