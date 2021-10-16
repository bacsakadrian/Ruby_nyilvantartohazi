class HomepageController < ApplicationController
  def Index
    @employees = Employee.all
  end

  def statistics
    @countall = Employee.all.count
    @countboss = Employee.count(:isboss)
    @sum_days = Employee.sum(:days)

    @avgdays = @sum_days / @countall
  end
end
