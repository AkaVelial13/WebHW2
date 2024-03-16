# Используем базовый образ Python
FROM python:3.12

# Устанавливаем переменную окружения для предотвращения вывода сообщений pip
ENV PYTHONUNBUFFERED=1

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app/src

# Копируем файлы setup.py и файл зависимостей (requirements.txt) в контейнер
COPY setup.py requirements.txt ./

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем все файлы проекта в контейнер
COPY src /app/src

# Запускаем ваше приложение
CMD ["python", "bot.py"]