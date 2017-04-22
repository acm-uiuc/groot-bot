# Copyright © 2017, ACM@UIUC
#
# This file is part of the Groot Project.  
# 
# The Groot Project is open source software, released under the University of
# Illinois/NCSA Open Source License. You should have received a copy of
# this license in a file with the distribution.
require "git-ng"
require "helper/config"

class Deployer 
    @REPO_INIT_CMD = "repo init -u #{Config.load_config("groot")["manifest"]}"
    @REPO_SYNC_CMD = "repo sync" 
    def new
         
    end

    def deploy(repo, url, pr)

    end  

    def add_remote(repo, url)

    end 

    def checkout_revision(repo, branch)
    
    end
end 