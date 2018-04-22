curl -s  https://api.meetup.com/EOS-Amsterdam/events\?\&sign\=true\&photo-host\=public\&page\=20\&status\=past,upcoming | json-yaml >_data/meetups.yml
