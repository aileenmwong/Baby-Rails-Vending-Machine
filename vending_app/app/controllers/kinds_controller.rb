class KindsController < ApplicationController
  def show
  end

  def index
    @kinds = Kind.all
  end
end
