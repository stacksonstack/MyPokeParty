class PartiesController < ApplicationController

    def new
        @party = Party.new
    end

    def create
        @party = Party.create(party_params)
        if @party.valid?
            flash[:success] = "Party successfully created"
        redirect_to user_path(@party.user)
        else
            flash[:error] = "Wild error appeared"
            redirect_to new_party_path()
        end
    end
    

    def edit
        @party = Party.find_by(params[:user_id])
    end

    def update
        @party = Party.find(params[:id])
        if @party.update(party_params)
          flash[:success] = "Party was successfully updated"
          redirect_to user_path(@party.user)
        else
          flash[:error] = "Wild error appeared"
          redirect_to edit_party_path()
        end
    end
    
    
    def destroy
        @party = Party.find_by(params[:user_id])
        if @party.destroy
            flash[:success] = 'goodbye, I will tell all the other pokemon you went to a farm upstate.'
            redirect_to user_path(@party.user)
        else
            flash[:error] = 'Wild error appeared'
            redirect_to user_path(@party.user)
        end
    end
    

    private

    def party_params
        params.require(:party).permit(:user_id, :pokemon1_id, :pokemon2_id, :pokemon3_id, :pokemon4_id, :pokemon5_id, :pokemon6_id)
    end
    
    

end
