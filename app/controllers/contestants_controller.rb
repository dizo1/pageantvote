class ContestantsController < ApplicationController
    
     before_action :set_contestant, only: [:show, :edit, :update, :delete]
    
    def index
        @contestants = Contestant.all
    end
    
    def new
        @contestant = Contestant.new
    end
    
    def create
        @contestant = Contestant.new(contestant_params)
        if @contestant.save
            #session[:chef_id] = @chef.id
            flash[:success] = "Welcome #{@chef.chefname} to Myrecipes App!"
            redirect_to contestant_path(@contestant)   
        else
            render 'new'
        end
    end
    
    def show
        #@chef_recipes = @chef.recipes.paginate(page: params[:page], per_page: 3)
    end
    
    def edit
        
    end
    
    def update
        if @contestant.update(contestant_params)
            flash[:success] = "Your account was updated successfully"
            redirect_to @contestant
        else
            render 'edit'
        end
    end
    
    def destroy
        @contestant.destroy
        flash[:danger] = "chef and all associated recipes have been deleted"
        redirect_to contestants_path
    end
    
    private
    
        def contestant_params
            params.require(:contestant).permit(:con_num, :name, :profile, :image)
        end
        
    
        def set_contestant
            @contestant = Contestant.find(params[:id])
        end
    
        def require_same_user
            if current_chef != @chef
                flash[:danger] = "You can only delete your own account"
                redirect_to chefs_path
            end
        end
    end
