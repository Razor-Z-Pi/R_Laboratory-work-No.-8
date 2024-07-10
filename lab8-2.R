library(pageviews)

Dart <- article_pageviews(
  project = 'ru.wikipedia',
  article = 'Dart',
  start = "2011101000",
  end = "2021030100",
  platform = "all",
  granularity = "monthly"
)

# Создаем временной ряд с частотой 12 (для ежемесячных данных)
Tseries <- ts(Dart$views, start = c(2011, 10), end = c(2021, 3), frequency = 12)

# Выводим результаты
print(Tseries)
plot(Tseries, main = "Dart")