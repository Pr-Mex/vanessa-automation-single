﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;
 
&НаКлиенте
Перем Контекст Экспорт;
 
&НаКлиенте
Перем КонтекстСохраняемый Экспорт;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТестируемомЭкземпляреНеВыполнилсяПервыйСценарий()","ВТестируемомЭкземпляреНеВыполнилсяПервыйСценарий","Тогда в тестируемом экземпляре не выполнился первый сценарий");

	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
	//ИмяОжидаемогоФайла = Ванесса.Объект.КаталогИнструментов + "\features\Support\Templates\step_definitions\ОбработкаОшибкиВПроцедуреПередНачаломСценария.epf";
	//Контекст.Вставить("ИмяОжидаемогоФайла",ИмяОжидаемогоФайла);
	//ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	//Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяОжидаемогоФайла) Тогда
	//	Ванесса.УдалитьФайлыКомандаСистемы(ИмяОжидаемогоФайла);
	//КонецЕсли;	 
	//
	//Макет = ПолучитьМакетСервер("Макет");
	//Макет.Записать(ИмяОжидаемогоФайла);
КонецПроцедуры


&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
	//ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	//ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	//Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяОжидаемогоФайла) Тогда
	//	Ванесса.УдалитьФайлыКомандаСистемы(ИмяОжидаемогоФайла);
	//КонецЕсли;	 
	
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
	
	КонецПопытки;
КонецПроцедуры



&НаСервере
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Макет = ОбъектСервер.ПолучитьМакет(ИмяМакета);
	Возврат  Макет;
КонецФункции	



&НаКлиенте
Процедура ПроверитьЧтоСценарийНеВыполнился(ДеревоСтроки,БылНеУспешныйСценарий)
	Для каждого СтрокаДерева Из ДеревоСтроки Цикл
		Если СтрокаДерева.Тип = "Сценарий" Тогда
			Если СтрокаДерева.Статус = "Failed" Тогда
				БылНеУспешныйСценарий = Истина;
			КонецЕсли;	 
		Иначе
			ПроверитьЧтоСценарийНеВыполнился(СтрокаДерева.ПолучитьЭлементы(),БылНеУспешныйСценарий);
		КонецЕсли;	 
	КонецЦикла;
	
	Ванесса.ПроверитьРавенство(БылНеУспешныйСценарий,Истина,"Был хотя бы один упавший  сценарий.");
КонецПроцедуры

&НаКлиенте
//Тогда в тестируемом экземпляре не выполнился первый сценарий
//@ВТестируемомЭкземпляреНеВыполнилсяПервыйСценарий()
Процедура ВТестируемомЭкземпляреНеВыполнилсяПервыйСценарий() Экспорт
	БылНеУспешныйСценарий = Ложь;
	ПроверитьЧтоСценарийНеВыполнился(Контекст.ОткрытаяФормаVanessaBehavoir.Объект.ДеревоТестов.ПолучитьЭлементы(),БылНеУспешныйСценарий);
КонецПроцедуры


//окончание текста модуля

