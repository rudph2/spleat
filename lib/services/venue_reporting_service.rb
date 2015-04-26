require 'pry'

module Spleat
  module Services
    class VenueReportingService

      def initialize
        @venue_resource_provider = ::Spleat::ResourceProviders::VenueResourceProvider.new
      end

      def build_report(date_from, date_to)
        list_of_venues = @venue_resource_provider.list_of_venues(date_from, date_to)

        report_data = []

        list_of_venues.values.each do |venue|

          venue_row = ::Spleat::Dto::VenueRow.new

          venue_row.name = venue[:name]
          venue_row.transactions = venue[:payments].count
          venue_row.value = venue[:payments].values.inject { |sum, x| sum + x }
          report_data << venue_row
        end

        report_data
      end
    end
  end
end