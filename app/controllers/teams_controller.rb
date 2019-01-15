class TeamsController < ApplicationController

  before_action :set_team, only: [:show, :edit, :update, :delete]


  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def show
  end

  def create
    @team = Team.create(team_params)
    redirect_to team_path(@team)
  end

  def edit
  end

  def update
    @team.update(team_params)
    redirect_to team_path(@team)
  end

  def delete
    @team.destroy
    redirect_to teams_path()
  end



  def set_team
    @team = Team.find(params[:id])
  end


  def team_params
    params.require(:team).permit(:name, :mascot)
  end





end
