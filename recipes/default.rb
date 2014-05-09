#
# Cookbook Name:: package-attrs
# Recipe:: default
#
# Copyright 2014, Gennadiy Filatov
#

node[ 'package-attrs' ].each do |action_name, list|

	list.each do |entry|

		package entry[ :name ] do

			action action_name
			options entry[ :options ] if entry.has_key?( :options )
			version entry[ :version ] if entry.has_key?( :version )

		end

	end

end
