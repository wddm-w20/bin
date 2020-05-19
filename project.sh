#!/bin/zsh

# Goal: Build a scrip to setup a custom projct folder


# A few variables to start
devpath='.'
username=$USER 


# If the folder name was not provided as a parameter...
if [ -z "$1" ]
then
	# Prompt for a name
	printf '%s' 'Project name: '
	read -r projname
else
	projname=$1
fi


# If the folder already exists, then exit the script
if [ -d "$projname" ]
then
	echo "That folder already exists"
	exit 1
fi
 

# Create the folder
mkdir "$devpath/$projname"


# Move into that folder
cd "$devpath/$projname"


# Create sub folder
mkdir css
mkdir js
mkdir img


# Create dev files
touch index.html
touch css/reset.css
touch css/index.css
touch js/index.js
touch img/favicon.svg
touch README.md
touch .gitignore


# Message the user that things have gone okay so far
echo "Creating folder: $devpath/$projname" 


# Populate the files with default content
cat > index.html << EOF
<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>$projname</title>
		<meta name="description" content="$projname">
		<meta name="author" content="$username">
		<link rel="icon" href="img/favicon.svg" type="image/svg+xml">
		<link rel="stylesheet" href="css/reset.css">
		<link rel="stylesheet" href="css/index.css">
	</head>
	<body>
		<script src="js/index.js"></script>
	</body>
</html>
EOF


cat > css/reset.css << EOF
html {
	box-sizing: border-box;
}
*, *::before, *::after {
	box-sizing: inherit;
}
body {
	margin: 0;
}
img {
	max-width: 100%;
	height: auto;
	vertical-align: bottom;
}
ul {
	list-style: none;
	margin: 0;
	padding: 0;
}
ul.ul {
	list-style-type: disc;
	margin: 1em 0;
	padding-left: 2em;	
}
EOF


cat > js/index.js << EOF
'use strict'
EOF


cat > img/favicon.svg << EOF
<svg xmlns="http://w3.org/2000/svg" viewBox="0 0 100 100">
	<text y="0.9em" font-size="90">🤖</text>
</svg>
EOF


cat > .gitignore << EOF
.DS_Store
node_modules
dist
EOF


cat > README.md << EOF
# $projname
EOF


# Open VS Code to edit this folder
code .


# Move back to calling folder
cd -
