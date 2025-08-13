# frozen_string_literal: true

class GameDetailsComponent < ViewComponent::Base
  def initialize(game:)
    @game = game
  end
end
