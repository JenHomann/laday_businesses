class BusinessesController < ApplicationController
  def index
    businesses = Business.includes(:business_categories).all
    categories = Category.all

    render locals: { businesses: businesses, categories: categories }
  end

  def new
    business = Business.new

    render locals: { business: business }
  end

  def create
    business = Business.new(business_params)

    if business.save
      render :index, locals: { businesses: Business.all }
    else
      render :new, locals: { business: business }
    end
  end

  private

  def business_params
    params.require(:business).permit(:name,
                                     :description,
                                     :address_1,
                                     :address_2,
                                     :city,
                                     :state,
                                     :zip,
                                     :description,
                                     :contact_name,
                                     :phone,
                                     :email,
                                     :website,
                                     category_ids: []
    )
  end
end
