class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:edit, :update, :show, :destroy]
  layout 'portfolio'
  access user: [:index, :show], admin: :all

  def index
    @portfolio_items = Portfolio.by_position
  end

  def new
    @portfolio = Portfolio.new
    3.times { @portfolio.technologies.build }
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    @portfolio_item.destroy

    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Record was removed.'}
    end
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body,
                                      :main_image, :thumb_image,
                                      technologies_attributes: [:name])
  end

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end
end
