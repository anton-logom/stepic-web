# 

rm -rf /etc/nginx/sites-enabled/default
ln -sf /home/box/web/etc/nginx.conf   /etc/nginx/sites-enabled/test.conf
/etc/init.d/nginx restart
ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/ask
/etc/init.d/gunicorn restart
