begin
	require 'fileutils'

	desc 'run all test firstly'
	task :test do
	  sh %{ rspec spec/ }
	end

	desc 'run number main already run test'
	task :number_main => :test do
		sh %{ ruby lib/number_main.rb }
	end

	task :default => :number_main
rescue LoadError
end
