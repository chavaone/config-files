
local dashboard = require("dashboard")

dashboard.setup({
	theme = 'hyper',
	config = {
		week_header = {
    			enable = true,  --boolean use a week header
    			--concat  --concat string after time string line
    			--append  --table append after time string line
  		},
	},
  })

