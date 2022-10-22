@jets = [
    {
        name: "Cessna Citation CJ4",
        price_per_day: 1000,
        description: "The Cessna Citation CJ4 is a light business jet. It is the largest of the Citation CJ series, and is powered by two Williams International FJ44-4A turbofan engines. The CJ4 is the first Citation to feature a fully integrated Rockwell Collins Pro Line Fusion avionics suite, which includes a 15-inch touchscreen flight display, a 10.4-inch touchscreen multi-function display, and a 15-inch touchscreen primary flight display. The CJ4 is also the first Citation to feature a fully integrated Rockwell Collins Pro Line Fusion avionics suite, which includes a 15-inch touchscreen flight display, a 10.4-inch touchscreen multi-function display, and a 15-inch touchscreen primary flight display.",
        size: "Small",
        category: "Business",
        finance_fee: 100,
        image: "https://www.ainonline.com/sites/default/files/styles/ain_article_image/public/2020-10/Citation_CJ4_0.jpg?itok=8Q9Z7Z7f"
    },
    {
        name: "Cessna Citation XLS+",
        price_per_day: 2000,
        description: "The Cessna Citation XLS+ is a light business jet. It is the largest of the Citation CJ series, and is powered by two Williams International FJ44-4A turbofan engines. The CJ4 is the first Citation to feature a fully integrated Rockwell Collins Pro Line Fusion avionics suite, which includes a 15-inch touchscreen flight display, a 10.4-inch touchscreen multi-function display, and a 15-inch touchscreen primary flight display. The CJ4 is also the first Citation to feature a fully integrated Rockwell Collins Pro Line Fusion avionics suite, which includes a 15-inch touchscreen flight display, a 10.4-inch touchscreen multi-function display, and a 15-inch touchscreen primary flight display.",
        size: "Small",
        category: "Business",
        finance_fee: 100,
        image: "https://www.ainonline.com/sites/default/files/styles/ain_article_image/public/2020-10/Citation_CJ4_0.jpg?itok=8Q9Z7Z7f"
    },
    {
        name: "Cessna Citation CT54",
        price_per_day: 3000,
        description: "The Cessna Citation XLS+ is a light business jet. It is the largest of the Citation CJ series, and is powered by two Williams International FJ44-4A turbofan engines. The CJ4 is the first Citation to feature a fully integrated Rockwell Collins Pro Line Fusion avionics suite, which includes a 15-inch touchscreen flight display, a 10.4-inch touchscreen multi-function display, and a 15-inch touchscreen primary flight display. The CJ4 is also the first Citation to feature a fully integrated Rockwell Collins Pro Line Fusion avionics suite, which includes a 15-inch touchscreen flight display, a 10.4-inch touchscreen multi-function display, and a 15-inch touchscreen primary flight display.",
        size: "Small",
        category: "Business",
        finance_fee: 100,
        image: "https://www.ainonline.com/sites/default/files/styles/ain_article_image/public/2020-10/Citation_CJ4_0.jpg?itok=8Q9Z7Z7f"
    }
]

@jets.each do |jet|
    Jet.create(jet)
end