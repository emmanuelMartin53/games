require 'net/http'
require 'json'
require 'uri'
require 'open-uri'


class BuildersController < ApplicationController

  def index
    @builders = Builder.all
  end

end
