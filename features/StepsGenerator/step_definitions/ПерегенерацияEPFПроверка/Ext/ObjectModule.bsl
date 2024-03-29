﻿//начало текста модуля

Перем Ванесса;


Функция ДобавитьШагВМассивТестов(МассивТестов,Снипет,ИмяПроцедуры,ПредставлениеТеста = Неопределено,Транзакция = Неопределено,Параметр = Неопределено)
	Структура = Новый Структура;
	Структура.Вставить("Снипет",Снипет);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ИмяПроцедуры",ИмяПроцедуры);
	Структура.Вставить("ПредставлениеТеста",ПредставлениеТеста);
	Структура.Вставить("Транзакция",Транзакция);
	Структура.Вставить("Параметр",Параметр);
	МассивТестов.Добавить(Структура);
КонецФункции


// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	ДобавитьШагВМассивТестов(ВсеТесты,"ОжидаемыйПроверочныйФайлEpfУжеСуществует()","ОжидаемыйПроверочныйФайлEpfУжеСуществует","ожидаемый проверочный файл epf уже существует");
	ДобавитьШагВМассивТестов(ВсеТесты,"СгенерированныйПроверочныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации()","СгенерированныйПроверочныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации","сгенерированный проверочный epf прошел проверку на корректность после перегенерации");

	Возврат ВсеТесты;
КонецФункции


Процедура ПередНачаломСценария() Экспорт
	ИмяОжидаемогоФайла = Ванесса.КаталогИнструментов + "\features\Support\Templates\step_definitions\ФичаДляПроверкиПерегенерацииEPFПроверка.epf";
	Контекст.Вставить("ИмяОжидаемогоФайла",ИмяОжидаемогоФайла);
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Если ФайлПроверкаСуществования.Существует() Тогда
		УдалитьФайлы(ИмяОжидаемогоФайла);
	КонецЕсли;	 
КонецПроцедуры


Процедура ПередОкончаниемСценария() Экспорт
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Если ФайлПроверкаСуществования.Существует() Тогда
		УдалитьФайлы(ИмяОжидаемогоФайла);
	КонецЕсли;	 
	
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
	
	КонецПопытки;
КонецПроцедуры

Функция ПолучитьМакетСервер(ИмяМакета)
	Возврат ПолучитьМакет(ИмяМакета);
КонецФункции	


//ожидаемый проверочный файл epf уже существует
//@ОжидаемыйПроверочныйФайлEpfУжеСуществует()
Процедура ОжидаемыйПроверочныйФайлEpfУжеСуществует() Экспорт
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Существует = ФайлПроверкаСуществования.Существует();
	Если Существует Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяОжидаемогоФайла);
	КонецЕсли;	 
	
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Существует = ФайлПроверкаСуществования.Существует();
	Ванесса.ПроверитьНеРавенство(Существует,Истина,"В этот момент Файл " + ИмяОжидаемогоФайла + " НЕ должен существовать.");
	
	КопияКонтекст = Контекст;
	Контекст      = "";
	
	Макет = ПолучитьМакетСервер("Макет");
	Макет.Записать(ИмяОжидаемогоФайла);
	
	Контекст = КопияКонтекст;
	
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Существует = ФайлПроверкаСуществования.Существует();
	Ванесса.ПроверитьРавенство(Существует,Истина,"Файл " + ИмяОжидаемогоФайла + " должен существовать после записи макета.");
КонецПроцедуры



//сгенерированный проверочный epf прошел проверку на корректность после перегенерации
//@СгенерированныйПроверочныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации()
Процедура СгенерированныйПроверочныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации() Экспорт
	Обработка = ВнешниеОбработки.Создать(Контекст.ИмяОжидаемогоФайла);
	Обработка.ТестоваяФункция();
КонецПроцедуры

//окончание текста модуля