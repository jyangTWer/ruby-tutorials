begin
	namespace :test do 
		require 'fileutils'

		desc 'run all test'
		task :all => [:auto_wrap, :numbers_to_words]

		desc 'run test:fizz_buzz'
		task :fizz_buzz do
			sh %{ rspec spec/}
		end

		desc 'run test:auto_wrap'
		task :auto_wrap do
		  sh %{ rspec spec/auto_wrap_spec.rb }
		end

		desc 'run test:numbers_to_words'
		task :numbers_to_words do
			sh %{ rspec spec/number_spec.rb }
		end
	end

	desc 'run namespace'
	task :test => ["test:all"]	
end
