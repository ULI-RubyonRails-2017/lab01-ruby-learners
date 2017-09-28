from ruby
run apt-get update -y
run apt-get install nodejs -y
run gem install rails
run mkdir web
expose 3000
workdir /web
