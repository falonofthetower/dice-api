module Api
  module V1
    class DiceController < ApplicationController
      def roll
        render json: { 'rolls' => roll_array }, status: 200
      end

      private

      def roll_array
        [rand(1..6)]
      end
    end
  end
end
