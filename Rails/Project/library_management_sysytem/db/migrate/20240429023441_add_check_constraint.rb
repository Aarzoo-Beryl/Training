class AddCheckConstraint < ActiveRecord::Migration[7.1]
  def change
    reversible do |direction|
      direction.up do
        add_check_constraint :practice_tables, 'phone_number > 0', name: 'positive_values'
      end
    end
  end
end
