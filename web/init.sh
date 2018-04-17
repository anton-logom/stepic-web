ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
rm -rf /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
ln -s /home/box/web/etc/gunicorn-wsgi.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
