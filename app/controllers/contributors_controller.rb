class ContributorsController < ApplicationController

  def index
    @contributors = Contributor.all
  end

  def create
    @contributor = Contributor.new(contributor_params)

    respond_to do |format|
      if @contributor.save
        format.html { redirect_to @contributor, notice: 'Contributor was successfully created.' }
        format.json { render :show, status: :created, location: @contributor }
      else
        format.html { render :new }
        format.json { render json: @contributor.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def contributor_params
      params.fetch(:contributor, {})
    end
end
