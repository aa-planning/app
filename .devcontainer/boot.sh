#!/bin/bash

echo "Updating RubyGems..."
gem update --system -N

echo "Installing dependencies..."
bundle install

echo "Installing Node.js dependencies..."
yarn install

echo "Done!"
