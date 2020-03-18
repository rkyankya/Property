# frozen_string_literal: true

class Plot < ApplicationRecord
  belongs_to :account
  mount_uploader :photo, PhotoUploader
end
