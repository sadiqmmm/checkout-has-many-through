class CreateExpertiseProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :expertise_professors do |t|
      t.references :expertise, foreign_key: true
      t.references :professor, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
