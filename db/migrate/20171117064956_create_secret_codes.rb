class CreateSecretCodes < ActiveRecord::Migration[5.1]
  def change
    create_table :secret_codes do |t|
      t.belongs_to :user, index: true	
      t.string :code

      t.timestamps
    end
  end
end
