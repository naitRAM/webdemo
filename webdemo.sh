#!/bin/bash

doc_tag="<!DOCTYPE html>"
opening_html="<html>"
closing_html="</html>"
opening_head="\t<head>"
closing_head="\t</head>"
opening_body="\t<body>"
closing_body="\t</body>"

read -p "Enter HTML file name: " html_file

while [ -f "$html_file.html" ]; do
	read -p "That file exists in the current directory. Enter a new HTML file name: " html_file
done

read -p "Link a CSS file (y/n)? " link_css

while [ "$link_css" != "y" ] && [ "$link_css" != "n" ]; do
	read -p "Link a CSS file? Press 'y' and 'Enter' if yes, 'n' and 'Enter' if no: " link_css
done

if [ "$link_css" = 'y' ]; then
	read -p "Enter CSS file name: " css_file
	while [ -f "$css_file.css" ]; do
		read -p "That file exists in the current directory. Enter a new CSS file name: " css_file
	done
        link_tag="\t\t<link href='$css_file.css' rel='stylesheet' />"
else
	echo "No CSS file chosen."
	link_tag=""
fi

read -p "Link a JS file (y/n)? " link_js

while [ "$link_js" != 'y' ] && [ "$link_js" != 'n' ]; do
	read -p "Link a JS file? Press 'y' and 'Enter' if yes, 'n' and 'Enter' if no: " link_js
done

if [ "$link_js" = 'y' ]; then
	read -p "Enter JS file name: " js_file
	while [ -f "$js_file.js" ]; do
		read -p "That file exists in the current directory. Enter a new JS file name: " js_file
	done
	script_tag="\t\t<script src='$js_file.js'></script>"
else
	echo "No JS file chosen."
	script_tag=""
fi

html_array=("$doc_tag" $opening_html $opening_head "$link_tag" $closing_head $opening_body "$script_tag" $closing_body $closing_html)
	
for tag in "${html_array[@]}"; do
	echo -e $tag >> "$html_file.html"
done

if [ "$link_css" = 'y' ]; then
	touch "$css_file.css"
fi

if [ "$link_js" = 'y' ]; then
	touch "$js_file.js"
fi
