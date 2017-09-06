class ChangeDatatypeForBirthdate < ActiveRecord::Migration[4.2]

  def change
    reversible do |dir|
      dir.up {change_column :students, :birthdate, :datetime}
      dir.down {change_column :students, :birthdate, :string}
    end
  end


end
