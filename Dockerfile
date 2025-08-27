# Gunakan base image nginx
FROM nginx:alpine

# Hapus default index nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy semua file HTML dari repo ke dalam container
COPY . /usr/share/nginx/html

# Container otomatis jalan di port 80
EXPOSE 80
