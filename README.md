# R_Laboratory-work-No.-8
# Laboratory work №8 - Working with web-data / Лабораторная работа №8 – Работа с web-данными

Цель работы:: научиться извлекать данные с сайтов с помощью пакета `rvest` и работать с API с сайта Википедия с помощью пакета pageviews.

/

Job Purpose:: learn how to extract data from websites using the `rvest` package and work with the API from the Wikipedia site using the pageviews package.


# Основы работы с пакетом rvest / Basics of working with the rvest package

Пакет `rvest` предполагает универсальное средство для веб-скрапинга, реализованного по модели парсинга DOM. Основные функции пакета, используемые для веб-скрапинга:

`read_html()` – функция принимающая в качестве аргумента адрес веб-страницы и выводящая лист класса “xml_document” “xml_node”

`html_nodes()` – функция позволяющая извлечь нужные части документа, принимает в качестве первого аргумента веб-страницу, полученную с помощью функции `read_html()`, а в качестве второго – название селектора CSS.

`html_text()` – функция переводящая в текст результаты, полученные с помощью функции html_nodes(), на вход функции передается вывод функции `html_nodes()`.

/

The `rvest` package provides a universal tool for web scraping, implemented using the DOM parsing model. The main package functions used for web scraping are:

`read_html()` - a function that takes a web page address as an argument and outputs a sheet of class "xml_document" "xml_node"

`html_nodes()` - function that allows you to retrieve the desired parts of the document, takes as its first argument the web page retrieved by `read_html()` and as its second argument the name of the CSS selector.

`html_text()` is a function that translates the results obtained with the html_nodes() function into text; the output of the `html_nodes()` function is passed to the function's input.

# Практическая чать / Practical part

Задание 1 – Используя данные варианты постройте датафрейм, содержащий следующие сведения о художественных фильмах: название, жанры (все жанры к которым относится фильм), продолжительность, рейтинг IMDB.

Вариант 14 – Комедии 1995 года.

Задание 2 – Установите пакет `pageviews` и прочитайте документацию по основным функциям. Используя функции пакета соберите информацию по посещению страниц Википедии с описанием языка программирования. Составьте временной ряд (с помощью функции `ts()`), содержащий сведения о посещении страниц соответствующего языка по месяцам начиная с января 2010 года (для новых языков с даты появления страницы) по март 2021 года.

Вариант 19 – Dart.

/

Assignment 1 - Using these options, construct a dataframe containing the following information about feature films: title, genres (all genres to which the film belongs), duration, IMDB rating.

Option 14 - Comedies 1995.

Assignment 2 - Install the `pageviews` package and read the documentation for the main functions. Using the package functions, gather information on visits to Wikipedia pages describing a programming language. Make a time series (using the `ts()` function) containing information about page visits for the corresponding language by month from January 2010 (for new languages from the date of page appearance) to March 2021.

Option 19 - Dart.