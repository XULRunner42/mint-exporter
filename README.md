mint-exporter
=============

Building off of toddmazierski's mint-exporter, this is not a fork

Regularly export your Mint.com transactions.

## Dependencies

  * Ruby > 1.8.7 (tested with 1.9.3-p194)
  * [Bundler](http://gembundler.com/)

## Installation

```
$ git clone git://github.com/toddmazierski/mint-exporter.git
$ cd mint-exporter
$ bundle
```

## Usage
```
$ ruby mint-exporter.rb foo@bar.com password > mint-export.csv
$ ruby mustache.rb > mustache.out
$ ./yaml.rb
```

## Note

Unfortunately, [because Mint.com does not yet have an open API](http://www.quora.com/Mint-com/Does-Mint-com-have-an-open-API), mint-exporter relies on screen-scraping to get the data. Because of this, this script could stop working at any time.
