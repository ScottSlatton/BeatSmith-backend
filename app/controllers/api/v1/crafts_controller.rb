class Api::V1::CraftsController < ApplicationController
        def index
        @Crafts = Craft.all
        render json: @Crafts
    end
end
