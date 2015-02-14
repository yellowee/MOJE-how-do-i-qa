class PagesController < ApplicationController

  def test_0
  end

  def test_1
  end

  def test_2
    if params[:commit] == 'Submit'
      @test_form = DataContainers::TestForm.new(params)
      if @test_form.valid?
        flash.now[:notice] = 'Submitted successfully'
      else
        flash.now[:alert] = 'Some data was missing'
      end
    end
  end

end
