class TicketsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @tickets = policy_scope(Ticket)
  end

  def new
  end

  def create
  end

  def update
  end
end
