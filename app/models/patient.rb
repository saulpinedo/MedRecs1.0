class Patient < ActiveRecord::Base
has_many :diagnoses
end
