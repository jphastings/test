describe "Random" do
  it "should sometimes fail" do
    sleep 15
    case Random.rand(2)
    when 0
      'pass the test'
    when 1
      raise 'fail the test'
    end
  end
end