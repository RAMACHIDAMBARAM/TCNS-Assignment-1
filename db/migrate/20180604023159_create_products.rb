class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
    	 t.text :order_no
    	 t.text :current_status
    	 t.text :remarks
    	 t.text :promise_date
    	 t.text :first_attempt_date
    	 t.text :last_attempt_date
    	 t.text :expected_date
    	 t.text :payment_type
    	 t.text :amount
    	 t.text :delivered
    	 t.text :returned
    	 t.text :rto
    	 t.text :picked_up
    	 t.text :dto
    	 t.text :canceled
    	 t.text :awb_no
    	 t.text :awb_status
    	 t.text :first_bagging_date

    	 t.timestamps

      t.timestamps
    end
  end
end
