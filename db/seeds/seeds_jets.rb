@jets = [
    {
        name: "Cessna Citation CJ4",
        price_per_day: 1000,
        description: "The Cessna Citation XLS+ is a light business jet. It is the largest of the Citation CJ series, and is powered by two Williams International FJ44-4A turbofan engines. The CJ4 is the first Citation to feature a fully integrated Rockwell Collins Pro Line Fusion avionics suite, which includes a 15-inch touchscreen flight display.",
        size: "Small",
        category: "Business",
        finance_fee: 100,
        image: 'https://res.cloudinary.com/dgpvrqyby/image/upload/v1667386727/aircraft-63211_1280_dnbyk8.jpg'
    },
    {
        name: "Cessna Citation XLS+",
        price_per_day: 2000,
        description: "The Cessna Citation XLS+ is a light business jet. It is the largest of the Citation CJ series, and is powered by two Williams International FJ44-4A turbofan engines. The CJ4 is the first Citation to feature a fully integrated Rockwell Collins Pro Line Fusion avionics suite, which includes a 15-inch touchscreen flight display.",
        size: "Small",
        category: "Business",
        finance_fee: 100,
        image: "https://res.cloudinary.com/dgpvrqyby/image/upload/v1667386727/Boeing-787_cmgc9m.jpg"
    },
    {
        name: "Cessna Citation CT54",
        price_per_day: 3000,
        description: "The Cessna Citation XLS+ is a light business jet. It is the largest of the Citation CJ series, and is powered by two Williams International FJ44-4A turbofan engines. The CJ4 is the first Citation to feature a fully integrated Rockwell Collins Pro Line Fusion avionics suite, which includes a 15-inch touchscreen flight display.",
        size: "Small",
        category: "Business",
        finance_fee: 100,
        image: "https://res.cloudinary.com/dgpvrqyby/image/upload/v1667386726/spitfire_mip7fx.jpg"
    }
]

@jets.each do |jet|
    Jet.create(jet)
end
