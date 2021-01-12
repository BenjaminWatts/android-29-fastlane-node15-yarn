FROM circleci/android:api-29
RUN gem install fastlane
RUN curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update -y
RUN sudo apt-get install -y nodejs yarn