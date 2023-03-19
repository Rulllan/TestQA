﻿#language: ru

@tree

Функционал: Проверка расчета суммы документа Заказ

Как Менеджер по продажам я хочу
создать документ заказ


Сценарий: Создание документа Заказ товаров чтобы суммы документа при изменении количества и цены.
*Создание сокумента
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Все для дома"'
	И из выпадающего списка с именем "ВидЦен" я выбираю точное значение 'Розничная'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Попов Б.В. ИЧП '
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000031' | 'Босоножки'    |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	//И в таблице "Товары" поле с именем "ТоварыКоличество" имеет значение "$ТоварыКоличество$"
	//И Я запоминаю в переменную "$ТоварыКоличество$" значение "ТоварыКоличество"
	И я запоминаю значение текущего поля как "$ТоварыКоличество$"
		
		
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыЦена"
	И в таблице "Товары" в поле с именем 'ТоварыЦена' я ввожу текст '2 500,00'
	И я запоминаю значение текущего поля как "$ТоварыЦена$" 
	//И я перехожу к следующему реквизиту
	И в таблице "Товары" я активизирую поле с именем "ТоварыСумма"
	И в таблице "Товары" я выбираю текущую строку
		
	И я запоминаю значение текущего поля как "$ТоварыСумма$" 
	И в таблице "Товары" я завершаю редактирование строки
	//и	Если "$ТоварыКоличество$"*"$ТоварыЦена$"<>"$ТоварыСумма$"  тогда
	//	И я вызываю исключение с текстом сообщения
	//Если переменная "ИмяПеременной" имеет значение "ЗначениеПеременной" Тогда
		
	И выражение внутреннего языка {число($ТоварыКоличество$)}*{число($ТоварыЦена$)} имеет значение {число($ТоварыСумма$)}
					
	 
	//И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	//И я жду закрытия окна 'Заказ (создание) *' в течение 20 секунд



	Сценарий: Добавление Услуги в документ заказ.
