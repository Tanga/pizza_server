from joevandyk/tanga_rails:2

workdir /app
copy Gemfile* ./
run bundle install -j4
copy . .
