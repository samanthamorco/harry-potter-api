class CharactersController < ApplicationController
  def index
    @characters = Character.all
    render json: @characters
  end

  def show
    @character = Character.find_by(id: params[:id])
    render json: @character
  end

  def create
    @character = Character.new(first_name: params[:first_name], last_name: params[:last_name], gender: params[:gender], house: params[:house])
    @character.save
    render :show
  end

  def update
    @character = Character.find_by(id: params[:id])
    @character.assign_attributes(first_name: params[:first_name], last_name: params[:last_name], gender: params[:gender], house: params[:house])
    @character.save
    render :show
  end

  def destroy
    @character = Character.find_by(id: params[:id])
    @character.destroy
  end
end
