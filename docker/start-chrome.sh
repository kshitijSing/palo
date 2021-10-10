#This is a selenium file
# Run Chrome via Selenium Server


#!/usr/bin/env bash

start-chrome() {
    xvfb-run java -Dwebdriver.chrome.driver=/usr/local/bin/chromedriver -jar /usr/local/bin/selenium-server-standalone.jar
}

start-chrome-debug() {
    xvfb-run java -Dwebdriver.chrome.driver=/usr/local/bin/chromedriver -jar /usr/local/bin/selenium-server-standalone.jar -debug
}

# Run Chrome Headless
start-chrome-headless() {
    chromedriver --url-base=/wd/hub
}

# Start
start-chrome
# start-chrome-debug
# start-chrome-headless
