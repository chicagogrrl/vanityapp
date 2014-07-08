ab_test "Book now" do
  description "Do annoyed users book more quickly?"
  alternatives "Book now", "BOOK NOW OR IT WILL BE GONE"
  metrics :bookings
end
