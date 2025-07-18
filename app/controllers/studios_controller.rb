require 'net/http'
require 'json'
require 'uri'
require 'open-uri'

class StudiosController < ApplicationController
  def index
    @studios = Studio.all
  end
end
