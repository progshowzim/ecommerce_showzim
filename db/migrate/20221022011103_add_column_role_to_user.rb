class AddColumnRoleToUser < ActiveRecord::Migration[7.0]
  def change
    create_enum :role_user, ['user', 'admin']

    change_table :users do |t|
      t.enum :role, enum_type: 'role_user', default: 'user', null: false
    end
  end
end
