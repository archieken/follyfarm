puts "starting"

News.destroy_all
Price.destroy_all
Findu.destroy_all
Contactinfo.destroy_all
Attraction.destroy_all
Image.destroy_all



news_content = "<p>We are delighted to welcome our new managers Laura and Marc to Folly Farm. They are keen campers who are familiar with Folly Farm having camped here in the past and are looking forward to meeting campers, both old and new! They come with lots of experience and enthusiasm. </p>

<p>We would like to thank you for your patience over 2017, our new facilities block and managers' accommodation are ready. The new block is better insulated (ie warmer) and has a more efficient water heating system so we will be able to offer free showers for the first time. We hope you will enjoy the improvement! </p>

<p>All we need now is lots of lovely weather! </p>"

prices_content = " <p>All pitches include 2 people and 1 vehicle. Children aged 3 yrs and under are free.</p>

    <p>There is a backpackers rate for anyone who walks/cycles to the site with a small 1-2 man tent, for information regarding this please call us.</p>

    <p>We cannot accept commercial vehicles/vans.</p>

    <p>Large tents that require over 6 metres width or length need to be booked directly with the site manager on 01451 820285 or 07906 990434.</p>

    <p>Please arrive between 1pm to 8pm, pitches should be vacated by 11.00am on the day of departure. If you need flexibility with your arrival or departure times contact us and we will do our best to help.</p>

    <p>There is a minimum booking of three nights for Bank Holidays and 2 nights for High Season weekends.</p>

    <p>Any questions email cotswoldcamping@gmail.com or call 01451 820285 or 07906 990434. If nobody is available please leave a message and we will get back to you.</p>"



howto_content = "<p>We are 2.5 miles on the left of the A436 from Bourton-on-the-Water heading towards Cheltenham and approximately 8 miles on the right of the A436 from the A40/Andoversford junction heading towards Bourton-on-the-Water.</p>

    <h5>SATNAV USERS</h5>
    We share a postcode with nearby properties known as Upper Harford.  They have a message on their drive saying 'NOT Folly Farm'.  Our drive is on the other side of the road about 200 metres in the Cheltenham direction. Please look out for the Folly Farm Campsite sign and the avenue of Poplar trees down the drive.

    <h5> SAT NAV Co-ordinates; </h5>

    <p> N 51, 53', 6.7' </p>
     <p> W  1, 49', 24.2' </p>

    <h5>OS MAPS</h5>

    <p>Footpaths were formally diverted away from our neighbouring properties in September 2015.  Please make sure you are using up to date OS Maps or ask our managers for directions before setting off. </p>

    <p> Thank you. </p>"


    contact_content = "<h4>contact info</h4>

   <p>Tel: 01451 820285 </p>

<p>Mobile: 07906 990434 </p>

<p>Email: cotswoldcamping@gmail.com</p>

<p>Address: Folly Farm, Bourton-on-the-Water, Nr Cheltenham, Gloucestershire GL54 </p>"


News.create!(subject: "The 2018 Season", content: news_content);

Price.create!(subject: "The 2018 Season", content: prices_content);

Findu.create!(subject: "The 2018 Season", content: howto_content);

Contactinfo.create!(subject: "The 2018 Season", content: contact_content);

Attraction.create!(subject: "The Cotswold Way", content: "The Cotswold Way offers just over 100 miles of magical walking", link: "http://www.volkswagen.co.uk/new/beetle-pa");
Attraction.create!(subject: "Daylesford Organic Farm", content: "Daylesford is all about organic, seasonal and delicious food. Visit our unique farm in the Cotswolds.", link: "http://www.volkswagen.co.uk/new/beetle-pa");
Attraction.create!(subject: "Naunton Downs Golf Club", content: "Local courses at Naunton (1 mile), Andoversford (7 miles) and The Wychwood Golf Club (14 miles)", link: "http://www.volkswagen.co.uk/new/beetle-pa");
Attraction.create!(subject: "The Plough Inn", content: "A fifteen minute walk across fields from the campsite. It is an award winning pub which serves delicious locally sourced food and ales.", link: "http://www.volkswagen.co.uk/new/beetle-pa");
Attraction.create!(subject: "Farmers Markets", content: "Held regularly at Stow-on-the-Wold and Cirencester", link: "http://www.volkswagen.co.uk/new/beetle-pa");
Attraction.create!(subject: "Chedworth Roman Villa", content: "Chedworth,  is worth a visit not just to see the remarkable remains of one of Britains largest Roman Villas.", link: "http://www.volkswagen.co.uk/new/beetle-pa");


10.times {Image.create!(source: "http://www.catster.com/wp-content/uploads/2017/08/A-fluffy-cat-looking-funny-surprised-or-concerned.jpg", description:"Our trendy campers enjoying the sun!")}

puts "ended"
