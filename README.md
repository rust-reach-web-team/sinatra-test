# Sinatra Test App

To run the app locally:
1. In your terminal, run `ruby app.rb`
1. Navigate to the URL listed (probably `localhost:4567`)
1. To see "French" (not really French, just an example of how we might handle other languages), navigate to `localhost:4567?lang=fr`

There's nothing "real" here yet, just a basic Sinatra skeleton.

TODO:
- [ ] Figure out how to use folders for each language so we can have `fr/index.erb` and `fr/layout.erb` instead of `fr.erb` and `fr_layout.erb`
- [ ] Add a 404 page and set up the app so when a language is not found it goes there
- [ ] Add SASS (I'm sure there's a gem for that)
- [ ] Add some realer-looking content (take some content from Aaron's notes)
- [ ] Implement some actual styles


