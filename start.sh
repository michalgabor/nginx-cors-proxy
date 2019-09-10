echo "Adding upstream host $PROXY_UPSTREAM_HOST to the NGINX config"
sed -i -e "s,___PROXY_UPSTREAM_HOST___,$PROXY_UPSTREAM_HOST,g" /etc/nginx/conf.d/default.conf
echo "Adding origin $ORIGIN to the NGINX config"
sed -i -e "s,___ORIGIN___,$ORIGIN,g" /etc/nginx/conf.d/default.conf
echo "Adding origin $ORIGIN2 to the NGINX config"
sed -i -e "s,___ORIGIN2___,$ORIGIN2,g" /etc/nginx/conf.d/default.conf
echo "Adding custom config $CONFIG1 to the NGINX config"
sed -i -e "s,#___CONFIG1___,$CONFIG1,g" /etc/nginx/conf.d/default.conf
echo "Adding manual cors path $MANUAL_CORS_PATH to the NGINX config"
sed -i -e "s,___MANUAL_CORS_PATH___,$MANUAL_CORS_PATH,g" /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
