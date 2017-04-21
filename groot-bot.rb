#!/usr/bin/env ruby

require 'octokit'
require 'helpers/config'


class GrootBot
    def new
        @github_client = Octokit::Client.new(:access_token => Config.load_config("github")["access_token"])
    end 
end 


