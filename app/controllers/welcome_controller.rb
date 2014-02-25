class WelcomeController < ApplicationController
  def home
    if user_signed_in? then @user = current_user end
  end

  def select_dates_for_hours

  end

  def get_employee_hours_for_dates
    start_date = Date.parse params["start_date"].values.join("-")
    end_date = Date.parse params["end_date"].values.join("-")
    @labors = Labor.where(:date_of_labor => start_date..end_date)
  end
end
