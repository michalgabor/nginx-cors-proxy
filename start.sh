echo "Adding $PROXY_UPSTREAM_HOST to the NGINX config"
sed -i -e "s,___PROXY_UPSTREAM_HOST___,$PROXY_UPSTREAM_HOST,g" /etc/nginx/conf.d/default.conf
sed -i -e "s,___ORIGIN___,$ORIGIN,g" /etc/nginx/conf.d/default.conf
sed -i -e "s,#___CONFIG1___,$CONFIG1,g" /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'