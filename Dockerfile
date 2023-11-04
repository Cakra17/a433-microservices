# mendownload base image node:14
FROM node:14-alpine
# membuat working directory
WORKDIR /app
# menyalin semua berkas yang ada ke container working directory 
COPY . .
# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db
# menginstall dependencies dan melakukan build
RUN npm install --production --unsafe-perm && npm run build
# menentukan app akan berjalan pada port 8080
EXPOSE 8080
# menjalankan perintah npm start
CMD ["npm", "start"]