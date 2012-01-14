class CreateBooksTable < ActiveRecord::Migration
  def up

    create_table :books do |t|
        t.string :title 
        t.string :date_listed
        t.string :email
        t.string :customer
        t.string :shelf
        t.string :weight
        t.string :condition
        t.string :ISBN
        t.decimal :price
        t.decimal :a_payment
        t.decimal :my_cost
        t.string :cost_plus_postage
        t.string :postage
        t.string :profit
        t.string :pay_period
        t.string :o_s
        t.string :date_sold
        t.string :ship_country
        t.string :obtained
        t.timestamps
    end
  end

  def down
    drop_table :books


  end
end
