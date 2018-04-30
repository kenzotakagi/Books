class Statement
  def value(customer)
    result = header_string(customer)
    customer.rentals.each do |rental|
      result << each_rental_string(rental)
    end
    result << footer_string(customer)
  end
end

class TextStatement < Statement
  def header_string(customer)
    "Rental Record for #{name}\n"
  end

  def each_rental_string(rental)
    "#{rental.movie.title} #{rental.charge}"
  end

  def footer_string(customer)
    <<-EOS
      Amount owed is #{customer.total_amount}
      You earned #{customer.total_frequent_renter_points} frequent renter points
    EOS
  end
end

class HtmlStatement < Statement
  def header_string(customer)
    "<h1>Rentals for <em>#{name}</em></h1><p>"
  end

  def each_rental_string(customer)
    "#{rental.movie.title} #{rental.charge}"
  end

  def footer_string(customer)
    <<-EOS
      <p>You owe is <em>#{customer.total_charge}</em></p>
      On this rental you earned is <em>#{customer.total_frequent_renter_points}</em> frequent renter points
    EOS
  end
end

class Customer
  def statement
    TextStatement.value(self)
  end

  def html_statement
    HtmlStatement.value(self)
  end
end
