#!/usr/bin/env bash

# Download the dataset
echo "Downloading the dataset..."
curl -OL http://mtg.upf.edu/static/datasets/last.fm/lastfm-dataset-1K.tar.gz

# Unpack the dataset
echo "Unpacking the dataset..."
tar -xvzf lastfm-dataset-1K.tar.gz

# Remove the tar.gz file
echo "Removing the tar.gz file..."
rm lastfm-dataset-1K.tar.gz

echo "Done!"
