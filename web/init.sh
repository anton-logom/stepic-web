# 

rm -rf /etc/nginx/sites-enabled/default
ln -sf /home/box/web/etc/nginx.conf   /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
ln -sf /home/box/web/etc/hello.py   /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart
