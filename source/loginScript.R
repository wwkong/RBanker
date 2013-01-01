# Copyright (C) 2013 Weiwei Kong

# This file is part of RBanker.

# RBanker is free software: you can redistribute it and/or modify it under the 
# terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later 
# version.

# RBanker is distributed in the hope that it will be useful, but WITHOUT ANY 
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU General Public License for more details.

# You should have received a copy of the GNU General Public License along with 
# RBanker. If not, see http://www.gnu.org/licenses/.

# Initialize packages and variables
require("RCurl"); require("XML")
#chromeAgent <- "Chrome/23.0.1271.97"
ch <- "https://easywebsoc.td.com/waw/idp/login.htm"

# Set up the required options
options(RCurlOptions = list(# verbose = TRUE, 
                            followlocation = TRUE, # Needed for 'long' connections
                            timeout = 100, 
                            useragent = "RBanker",
                            cainfo = "cacert.pem"))
                            
htmlTreeParse(getURL(ch))

