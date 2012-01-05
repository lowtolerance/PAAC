# RVM

$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, 'default'
set :rvm_type, :user

# Bundler

require "bundler/capistrano"

# General

set :application, "paac"
set :user, "lowtolerance"

set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :copy

set :use_sudo, false

# Git

set :scm, :git
set :repository,  "~/Sites/#{application}/.git"
set :branch, "master"

# VPS

role :web, "199.19.117.91"
role :app, "199.19.117.91"
role :db,  "199.19.117.91", :primary => true
role :db,  "199.19.117.91"

# Passenger

namespace :deploy do
 task :start do ; end
 task :stop do ; end
 task :restart, :roles => :app, :except => { :no_release => true } do
   run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
 end
end


