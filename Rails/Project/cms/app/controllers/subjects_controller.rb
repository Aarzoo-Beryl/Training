class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order('position ASC')
  end

  def show
    @subject=Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    # Instantiate a new object using form parameters
    @subject = Subject.new(subject_params)

    # Save the object
    if @subject.save
      redirect_to(subjects_path)      # If save succeeds,redirect to index page
    else
      render('new')     # If save fails,redisplay the form so user can fix it
    end
  end

  def edit
    @subject=Subject.find(params[:id])
  end

  def update
    @subject=Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to(subject_path(@subject))      # If update succeeds,redirect to index page
    else
      render('edit')     # If update fails,redisplay the form so user can fix it
    end
  end

  def delete
  end

  def destroy
  end

  private
    def subject_params
      params.require(:subject).permit(:name,:position,:visible)
    end
end
