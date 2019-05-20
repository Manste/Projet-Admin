server {

	# listening port
	
	listen 443 ;

	listen [::]:443;

	server_name wt11.ephec-ti.be www.wt11.ephec-ti.be;
	
	root /var/www/wt11.ephec-ti.be/html/;	

	index index.html index.htm index.php;
	
	# Location des du fichier racine

	location / {
		
		try_files $uri $uri/ =404;
	}

	# PHP scripts to FastCGI server

	 # location ~ \.php$ {
		
	#	include snippets/fastcgi-php.conf;
	
	#	fastcgi_pass unix:/var/run/php/php7.0-fpm.sock;

	#	fastcgi_pass 127.0.0.1:9000;
	
	# }

	

}


server {


	listen 80;

	listen [::]:80;

	server_name wt11.ephec-ti.be www.wt11.ephec-ti.be;

	root /var/www/wt11.ephec-ti.be/html/;

	index index.html index.htm index.php;

	# return 301 https://wt1.ephec-ti.be$request_uri;

}
