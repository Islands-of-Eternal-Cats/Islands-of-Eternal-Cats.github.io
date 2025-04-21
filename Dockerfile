# Используем официальный образ Jekyll
FROM jekyll/jekyll:4.2.0

# Устанавливаем рабочую директорию
WORKDIR /srv/jekyll

# Копируем только файлы зависимостей для кэширования
COPY Gemfile .
COPY Gemfile.lock .

# Устанавливаем зависимости
RUN bundle install

# Точка входа (файлы блога будут подмонтированы через volume)
CMD ["jekyll", "serve", "--force_polling", "--livereload", "--host", "0.0.0.0"]
