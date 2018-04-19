# 

rm -rf /etc/nginx/sites-enabled/default
ln -sf /home/box/web/etc/nginx.conf   /etc/nginx/sites-enabled/test.conf
/etc/init.d/nginx restart
gunicorn -c /home/box/web/etc/gunicorn.conf hello:wsgi_application
gunicorn -c /home/box/web/etc/gunicorn-django.conf ask.wsgi:application
