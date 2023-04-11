﻿#language: ru

@tree

Функционал: добавлении Услуги в документ Заказ 

Как Админ я хочу
добавлении Услуги в документ Заказ 

Сценарий: Создать заказ и добавить услугу
*Создание Документа
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Когда В панели разделов я выбираю 'Продажи'
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы покупателей'
	Тогда открылось окно 'Заказы покупателей'
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Заказ покупателя (создание)'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Заказ покупателя (создание) *'
	И в таблице "ItemList" я активизирую поле с именем "ItemListLineNumber"
	И в таблице "ItemList" я нажимаю на кнопку с именем 'ItemListAdd'
	И в таблице "ItemList" я нажимаю кнопку выбора у реквизита с именем "ItemListPartnerItem"
	Тогда открылось окно 'Номенклатура партнера'
*Создание Услуги
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно 'Номенклатура партнера (создание)'
	И я нажимаю кнопку выбора у поля с именем "Item"
	Тогда открылось окно 'Номенклатура'
	И в таблице "List" я перехожу к строке:
		| 'Код' | 'Наименование' | 'Ссылка' |
		| '3'   | 'Услуга'       | 'Услуга' |
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Номенклатура партнера (создание) *'
	И в поле с именем 'Description_en' я ввожу текст 'Услуга'
	И я нажимаю кнопку выбора у поля с именем "ItemKey"
	Тогда открылось окно 'Характеристики'
	И в таблице "List" я активизирую поле с именем "Item"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Номенклатура партнера (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Partner"
	Тогда открылось окно 'Партнеры'
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Номенклатура партнера (создание) *'
	И я нажимаю на кнопку с именем 'FormWrite'
	Тогда открылось окно 'Услуга (Номенклатура партнера)'
	И я нажимаю на кнопку с именем 'FormWriteAndClose'
	И я жду закрытия окна 'Услуга (Номенклатура партнера)' в течение 20 секунд
*Добавление услуги
	Тогда открылось окно 'Номенклатура партнера'
	И в таблице "List" я активизирую поле с именем "Description"
	И в таблице "List" я выбираю текущую строку
	Тогда открылось окно 'Заказ покупателя (создание) *'
	И в таблице "ItemList" я активизирую поле с именем "ItemListQuantity"
	И в таблице "ItemList" в поле с именем 'ItemListQuantity' я ввожу текст '5,000'
	И я перехожу к следующему реквизиту
	И в таблице "ItemList" я завершаю редактирование строки
	И в таблице "ItemList" я активизирую поле с именем "ItemListPrice"
	И в таблице "ItemList" я выбираю текущую строку
	И в таблице "ItemList" в поле с именем 'ItemListPrice' я ввожу текст '200,00'
	И в таблице "ItemList" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'FormWrite'
	И Я закрываю окно 'Заказ покупателя * от *'
		

