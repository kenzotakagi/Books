class Site
  attr_reader :customer
  def customer
    @customer || Customer.new_missing
  end
end

class Customer
  attr_reader :name, :plan, :history
  def missing?; false; end
end

class MissingCustomer
  def missing?; true; end
end

class NullCustomer
  def name
    'occupant'
  end

  def plan=; end

  def history
    PaymentHistory.new_null
  end
end

class PaymentHistory
  def weeks_delinquent_in_last_year; end
end

class NullPaymentHistory
  def weeks_delinquent_in_last_year; 0; end
end

# before
customer = site.customer
plan = customer ? customer : 'occupant'
weeks_delinquent = customer.nil? ? 0 : cusomer.history.weeks_delinquent_in_last_year
if !customer.missing?
  customer.plan = BillingPlan.special
end

# after
customer = site.customer
plan = customer.plan
customer_name = customer.name
weeks_deliquend = cusomer.history.weeks_delinquent_in_last_year
customer.plan = BillingPlan.special
