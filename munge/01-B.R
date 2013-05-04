# Remove blank rows from outdoor furniture asset register

outdoor.furniture.assets = subset(outdoor.furniture.assets,outdoor.furniture.assets$easting.coord!='')
