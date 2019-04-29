class Api::V1::CraftsController < ApplicationController
    skip_before_action :authorized
        def index
        @Crafts = Craft.all
        render json: @Crafts
    end
end
