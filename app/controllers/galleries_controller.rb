class GalleriesController < ApplicationController

  def index
    @galleries_paginated = Gallery.paginate page: params[:page], per_page: 15
  end


  def show
    @gallery = Gallery.find(params[:id])
  end


  def new
    @gallery = Gallery.new
    @gallery.assets.build
  end


  def edit
    @gallery = Gallery.find(params[:id])
  end


  def create
    @gallery = Gallery.new(params[:gallery])
    if @gallery.save
      redirect_to galleries_path
    else
      flash[:error] = "The name should be unique"
      render :action => 'new'
    end

  end

  def update
    @gallery = Gallery.find(params[:id])
  end


  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
  end
end
