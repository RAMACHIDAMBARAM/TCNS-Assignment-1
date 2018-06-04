class ProductsController < ApplicationController

	def import
	  file = params[:file]
      spreadsheet = Roo::Spreadsheet.open(file)

      header = spreadsheet.row(1)

      (2..spreadsheet.last_row).map do |i|
         next unless spreadsheet.row(i)[0]
         row = Hash[[header, spreadsheet.row(i)].transpose]
         row.default = ""

      b = row["Current Status"]
      c = row["Remarks"]
      d = row["Promise Date"]
      e = row["First Attempt Date"]
      f = row["Last Attempt Date"]
      g = row["Expected Date"]
      u = row["First Bagging Date"]
      h = row["Type"]
      j = row["Amount"]
      l = row["Delivered"]
      m = row["Returned"]
      o = row["RTO"]
      z = row["Picked Up"]
      q = row["DTO"]
      r = row["Canceled"]
      s = row["awb no"]
      t = row["awb status"]

     
      if row.key?("order code")
        a = row["order code"]  
      else
        a = row["Order #"]
      end

         import = Product.where(order_no: a)
        
	      if import.exists?
	         import.update(awb_no: s ,  awb_status: t )

	      else
	           y = Product.new(order_no: a , current_status: b , remarks: c , promise_date: d ,
	         first_attempt_date: e , last_attempt_date: f , expected_date: g ,  payment_type: h , amount: j , delivered: l ,
	          returned: m , rto: o ,  picked_up: z , dto: q , canceled: r ,  awb_no: s, awb_status: t, first_bagging_date: u)
	        
	          y.save
	         
	      end

      end
      redirect_to root_url, notice: "Imported Successfully" and return
	end	
end
