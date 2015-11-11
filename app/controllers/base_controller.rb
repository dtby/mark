class BaseController < ApplicationController
	before_action :authenticate_judge!
end
