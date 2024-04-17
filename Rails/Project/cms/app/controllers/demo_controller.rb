class DemoController < ApplicationController
  layout false
  def index
    #render('demo/index')
    #redirect_to(controller:'about',action:'us')
    @id = params['id']
    @page = params[:page]
  end

  def hello
    @array = [1,2,3,4,5]

    #render('hello')
  end

  def about
    @id = params['id']
    @page = params[:page]
  end

  def contact
    @id = params['id']
    @country = params[:country]
  end

end
