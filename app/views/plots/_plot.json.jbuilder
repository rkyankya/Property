# frozen_string_literal: true

json.extract! plot, :id, :name, :address, :price, :rooms, :bathrooms, :created_at, :updated_at
json.url plot_url(plot, format: :json)
