# frozen_string_literal: true

class WelcomesController < ApplicationController
  def show; end

  def create
    TestWorker.perform_at(1.seconds)
    redirect_to action: :show
  end
end
