#!/usr/bin/env ruby

require 'mustache'
require 'csv'

CSV.foreach('./mint-export.csv') do |row|
  puts Mustache.render("---
- Date:{{Date}}\tDescription:{{Description}}
- OriginalDescription:{{OriginalDescription}}
- Amount:{{Amount}}\tTransactionType:{{TransactionType}}\tCategory:{{Category}}
- AccountName:{{AccountName}}\tLabels:{{Labels}}
- Notes:{{Notes}}
", :Date => row[0], :Description => row[1], :OriginalDescription => row[2],
:Amount => row[3], :TransactionType => row[4], :Category => row[5],
:AccountName => row[6], :Labels => row[7], :Notes => row[8])
#  break
end
