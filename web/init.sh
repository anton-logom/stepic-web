# 

ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
rm -rf /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
ln -sf /home/box/web/etc/hello.py   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart
