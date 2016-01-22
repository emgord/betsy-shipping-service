FactoryGirl.define do

  factory :category do
    name "Animals"
    photo_url "http://www.h2tuga.net/assets/fullimage/clown-fish-wallpapers-pictures-photos-images-1mkdkx9qwrawplnc.jpg"
    jumbotron_photo_url "http://www.sfltimes.com/wp-content/uploads/2015/07/Green-Sea-Turtle.jpg"
  end

  factory :merchant do
    username "Emily"
    email "em@gmail.com"
    password "cats"
    password_confirmation "cats"
    address1 "51 York Terrace"
    country "US"
    city "Brookline"
    state "MA"
    zip "02446"
  end

  factory :product do
    name "Sea Anemone"
    price 5.00
    photo_url "http://www.cabrillomarineaquarium.org/_photos/species-green-sea-anemone.jpg"
    description "Is it fluffy, or slimy?"
    quantity 5
    weight 40
    length 10
    width 10
    height 10
    association :merchant
  end

  factory :order do
    purchase_time Time.now
    name "Ricky"
    email "ricky@awesome.com"
    street "Ada Street"
    city "Seattle"
    state "WA"
    zip "98112"
    country "US"
    cc_num "1234"
    cc_exp Time.now.to_date
    sec_code 123
    bill_zip 98112
    status "Paid"
  end

  factory :order_item do
    quantity 1
    association :order
    association :product
  end

  factory :review do
    rating 5
    description "Amazing"
    association :product
  end

end
