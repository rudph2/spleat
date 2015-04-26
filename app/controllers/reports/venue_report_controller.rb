class Reports::VenueReportController < ApplicationController
  def index
    venue_reporting_service = ::Spleat::Services::VenueReportingService.new
    date_from = DateTime.strptime("04/20/2009 8:00", "%m/%d/%Y %H:%M")
    date_to = DateTime.strptime("04/20/2020 8:00", "%m/%d/%Y %H:%M")
    @report = venue_reporting_service.build_report(date_from, date_to)
  end
end
