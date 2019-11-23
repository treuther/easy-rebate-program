class RebatesController < ApplicationController
    
    def index
        @rebates = Rebate.all
    end

    def show
        @rebate = Rebate.find_by(:id => params[:id])
    end

    def new
        @rebate = Rebate.new
    end

    def create
        @rebate = Rebate.new(rebate_params)
        if @rebate.save
            redirect_to rebate_path(@rebate)
        else
            flash[:error] = "Sorry, rebate did not save. Please try again."
            render :new
        end
    end

    private

    def rebate_params
        params.require(:rebate).permit(:rebate_name, :description)
    end

end
