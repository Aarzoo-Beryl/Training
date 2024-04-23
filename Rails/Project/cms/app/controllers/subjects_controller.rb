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
    @subject = Subject.new(params[subject_params])

    # Save the object
    @subject.save
    # If save succeeds,redirect to index page
    if @subject.save
      redirect_to(subjects_path)
    # If save fails,redisplay the form so user can fix it
    else
      render('new')
    end
  end

  def edit
  end

  def update
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
