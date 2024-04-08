# ベースとなるイメージを指定
FROM openresty/openresty:alpine

# envsubstをインストール
RUN apk add --no-cache gettext

# # /var/log/nginxディレクトリを作成
# RUN mkdir -p /var/log/nginx

# # nginxユーザーとグループを作成
# RUN addgroup -S nginx && adduser -S nginx -G nginx

# OpenRestyの設定ファイルをコピー
COPY nginx.conf.template /usr/local/openresty/nginx/conf/nginx.conf.template
# entry.shをコピー
COPY entry.sh /entry.sh
# 実行権限を付与
RUN chmod +x /entry.sh
# # ログ保存を付与
# RUN chown -R nginx:nginx /var/log/nginx
# OpenRestyを起動
CMD ["/entry.sh"]