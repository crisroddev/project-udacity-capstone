FROM nginx:alpine

# Copy source to work dir
COPY index.html /usr/share/nginx/html

# # Install packages requirements.txt
# RUN pip install --upgrade pip &&\
#     pip install --trusted-host pypi.python.org -r requirements.txt

# Expose to PORT 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]