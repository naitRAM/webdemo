# webdemo
personal template-less script to speed up the creation of a front-end web demo

```console
naitRAM@raspberrypi:~/code/web_dev/new_project$ webdemo
Enter HTML file name: index
Link a CSS file (y/n)? y
Enter CSS file name: style
Link a JS file (y/n)? y
Enter JS file name: script
naitRAM@raspberrypi:~/code/web_dev/new_project$ ls
index.html script.js style.css
naitRAM@raspberrypi:~/code/web_dev/new_project$ cat index.html
<!DOCTYPE html>
<html>
	<head>
		<link href='style.css' rel='stylesheet' />
	</head>
	<body>
		<script src='script.js'></script>
	</body>
</html>
naitRAM@raspberrypi:~/code/web_dev/new_project$
```
