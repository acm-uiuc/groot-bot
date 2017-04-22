#!/usr/bin/env ruby
# Copyright © 2017, ACM@UIUC
#
# This file is part of the Groot Project.  
# 
# The Groot Project is open source software, released under the University of
# Illinois/NCSA Open Source License. You should have received a copy of
# this license in a file with the distribution.
require 'octokit'
require 'deployer'
require 'helpers/config'


class GrootBot
    def new
        @github_client = Octokit::Client.new(:access_token => Config.load_config("github")["access_token"])
        @deployer = Deployer.new()
        InsertHooks()
    end 

    def InsertHooks()
        @monitored_repos =
        @repo_pr_hooks = []   
        @monitored_repos.each do |repo|
            @repo_pr_hooks.push(@github_client.create_hook(repo, repo, {}, {:events => ['pull_request'], :active => true}))
        end
    end 

end 


