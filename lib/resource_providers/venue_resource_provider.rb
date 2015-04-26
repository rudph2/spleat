module Spleat
  module ResourceProviders
    class VenueResourceProvider
      def list_of_venues(date_from, date_to)
        payments = Payment.where(:payment_date => date_from..date_to)
        venues = {}
        payments.each do |payment|
          venue_id = payment.user_tab.tab.venue.id
          venues[venue_id] = Hash.new() if venues[venue_id] == nil
          venues[venue_id][:payments] = Hash.new() if venues[venue_id][:payments] == nil
          venues[venue_id][:payments][payment.id] = payment.value
          binding.pry
          venues[venue_id][:venue_name] = payment.user_tab.tab.venue.name if venues[venue_id][:venue_name] == nil
        end
        venues
      end
    end
  end
end
