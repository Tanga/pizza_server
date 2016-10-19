from joevandyk/tanga_rails:2

# for assets (can remove once we stop doing assets in pizza_server)
run apt-get install nodejs -y

workdir /app
copy Gemfile* ./
run bundle install -j4
copy . .

cmd bundle exec rails s -b 0.0.0.0 -p 3000
