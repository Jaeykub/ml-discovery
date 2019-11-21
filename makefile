FILENAME=discovery.js
# FILEHOST=\\mlinternalfileshost\PDFTeamStuff\tampermonkey\netsuite-new-invoice-screen\

local:
	cat headers/header src/*js | awk '!/@require/{print }' > $(FILENAME)

# release:
# 	cat headers/header src/*js | awk '!/@require/{print }' > $(FILEHOST)\$(FILENAME)

clean:
	rm $(FILENAME)
