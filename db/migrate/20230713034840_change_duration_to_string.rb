class ChangeDurationToString < ActiveRecord::Migration[7.0]
  def change
    reversible do |direction|
      direction.up do
        change_column :flights, :duration, :string
      end

      direction.down do
        # hard coding b/c casting to time w/o timezone is not allowed
        execute <<-SQL
          ALTER TABLE flights
          ALTER COLUMN duration TYPE time USING duration::time without time zone
        SQL
      end
    end

    change_column_null :flights, :departure_airport_id, false
    change_column_null :flights, :arrival_airport_id, false
  end
end
