require_relative 'parkingtickets'
require_relative 'view'
require 'json'
require 'open-uri'


class Controller



  def initialize
    @view = View.new
    @parkingtickets = ParkingTickets.new
    run
  end


  def run
    @view.welcome
    plate = @view.get_plate
    info_by_plate = @parkingtickets.parse(plate)
    tickets_by_plate = @parkingtickets.add_tickets(info_by_plate)
    @view.print_ticket_info(tickets_by_plate)
  end




end
