begin
	require 'rspec/core/rake_task'

	namespace :test do
		desc 'run all test'
		task :all => [:fizz_buzz, :auto_wrap, :numbers_to_words]

		desc 'run test:fizz_buzz'
		RSpec::Core::RakeTask.new(:fizz_buzz) do |t|
		  t.pattern = "spec/fizz_buzz_spec.rb"
		end

		desc 'run test:auto_wrap'
		RSpec::Core::RakeTask.new(:auto_wrap) do |t|
		  t.pattern = "spec/auto_wrap_spec.rb"
		end

		desc 'run test:numbers_to_words'
		RSpec::Core::RakeTask.new(:numbers_to_words) do |t|
		  t.pattern = "spec/number_spec.rb"
		end
	end

	desc 'run namespace'
	task :test => ["test:all"]

	desc 'run default'
	task :default => :test
end
