class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city
  has_many :doc_spec
  has_many :speciality, through: :doc_spec
end
