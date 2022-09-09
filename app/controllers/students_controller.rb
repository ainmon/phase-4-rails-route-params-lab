class StudentsController < ApplicationController

  def index
    students = if params[:name] 
      Student.to_s(params[:name])
    else
      Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end



class Movie < ActiveRecord::Base

  def index
    movies = Movie.all
    render json: movies
  end

  def show
    movies = if params[:name] 
      Movie.where(params[:name])
    else
      Movie.all
    end
    render json: students
  end

end 