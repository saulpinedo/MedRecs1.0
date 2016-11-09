class AddDiagnosisRefToPatient < ActiveRecord::Migration[5.0]
  def change
    add_reference :patients, :diagnosis, foreign_key: true
  end
end
