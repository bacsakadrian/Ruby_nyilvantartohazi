class HomepageController < ApplicationController
  def Index
    @employees = Employee.paginate(:page => params[:page], per_page: 1)
  end

  def statistics
    @countall = Employee.all.count
    @countboss = Employee.where(:isboss => true).count
    @sum_days = Employee.sum(:days)
    
    @bossrate = 100*(@countboss.to_f / @countall.to_f)
    @avgdays = @sum_days / @countall
  end
end
