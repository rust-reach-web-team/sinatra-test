# Sinatra Test App

To run the app locally:
1. In your terminal, run `rake server`. This will preprocess the SASS files and save them as CSS, then run the Sinatra server.
1. Navigate to the URL listed (probably `localhost:4567`)
1. To see "French" (not really French, just an example of how we might handle other languages), navigate to `localhost:4567?lang=fr`

If you make any changes, you will need to quit the server with `Ctrl-c` and restart to see them.

There's nothing "real" here yet, just a basic Sinatra skeleton.

TODO:
- [ ] Figure out how to use folders for each language so we can have `fr/index.erb` and `fr/layout.erb` instead of `fr.erb` and `fr_layout.erb`
- [ ] Add a 404 page and set up the app so when a language is not found it goes there
- [ ] Add some realer-looking content (take some content from Aaron's notes)
- [ ] Implement some actual styles
- [ ] Figure out how to live reload after changes are made locally.
- [ ] For different translated versions, ideally would parse markdown files for each language and spit content out into one template instead of having a bunch of different templates for each language. This shouldn't be too hard, just have to figure out the best way to do it.
