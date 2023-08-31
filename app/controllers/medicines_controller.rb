class MedicinesController < ApplicationController
    def show
        @medicines = Medicine.find(params[:id])
        end
end
