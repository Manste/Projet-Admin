# Config de intranet

server {

	listen 443;

        listen [::]:443;

        server_name intranet.wt11.ephec-ti.be www.intranet.wt11.ephec-ti.be;

        root /var/www/intranet.wt11.ephec-ti.be/html/;

        index index.html index.htm index.php;

        location / {

                try_files $uri $uri/ =404;
        }

        #location ~ \.php$ {

         #      fastcgi_pass unix:/run/php/php7.0-fpm.sock;

          #     include snippets/fastcgi-php.conf;

           #    include fastcgi_params;

        #}

        location ~ /\.ht {

                deny all;
        }
}

server {


        listen 80;

        listen [::]:80;

        root /var/www/intranet.wt11.ephec-ti.be/html/;

        server_name intranet.wt11.ephec-ti.be www.intranet.wt11.ephec-ti.be;

        # return 301 https://wt1.ephec-ti.be$request_uri;
}

