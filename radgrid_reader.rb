#!/usr/bin/env ruby

require_relative 'radgrid'


radgrid = Radgrid.new
radgrid.instance_eval File.read ARGV[0]
