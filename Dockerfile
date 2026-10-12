# Statická stránka MKN-10 servírovaná přes nginx
FROM nginx:alpine

# Vlastní konfigurace (komprese, správné hlavičky pro service worker)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Soubory stránky
COPY index.html manifest.webmanifest sw.js icon.svg icon-192.png icon-512.png /usr/share/nginx/html/

EXPOSE 80
