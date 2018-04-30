class Statement
  def value(customer)
    resule = header_string(customer)
    customer.rentals.each do |rental|
      result << each_rental_string(rental)
    end
    result << footer_string(customer)
  end
end

module TextStatement
  def header_string(customer)
    "Rental record for #{customer.name}"
  end

  def each_rental_string(rental)
    "#{rental.movie.title} #{rental.charge}"
  end

  def footer_string(customer)
    <<-EOS
      Amount owed is #{customer.total_charge}
      You earned #{customer.total_frequent _renter_points} frequent renter points
    EOS
  end
end

module HtmlStatement
  def header_string(customer)
    "<h1>Rentals for <em>#{name}</em></h1><p>"
  end

  def each_rental_string(rental)
    "#{rental.movie.title}: #{rental.charge}<br/>"
  end

  def footer_string(customer)
    <<-EOS
      <p>You owe <em> #{customer.total_charge}</em></p>
      On this rental you earned <em>#{customer.total_frequent_renter_points}</em> frequent renter points
    EOS
  end
end

class Customer
  def statement
    Statement.new.extend(TextStatement.new).value(self)
  end

  def html_statement
    Statement.new.extend(HtmlStatement).value(self)
  end
end

