﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

// Делает отключение модуля
&НаКлиенте
Функция ОтключениеМодуля() Экспорт

	Ванесса = Неопределено;
	Контекст = Неопределено;
	КонтекстСохраняемый = Неопределено;

КонецФункции

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВДеревеЗагруженнойФичиШагБудетВнеГруппы(Парам01)","ВДеревеЗагруженнойФичиШагБудетВнеГруппы","И     в дереве загруженной фичи шаг ""И ещё один шаг вне группы"" будет вне группы");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	//безусловное закрытие формы если она осталась
	Попытка
	    ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
		ОткрытаяФормаVanessaBehavoir.Закрыть();
	Исключение
	
	КонецПопытки;
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////
&НаКлиенте
Процедура НайтиСтрокуДереваПоИмени(ДеревоСтроки,ИмяОбласти,ИскомаяСтрока);
	Если ИскомаяСтрока <> Неопределено Тогда
		Возврат;
	КонецЕсли;	 
	
	Для каждого СтрокаДерева Из ДеревоСтроки Цикл
		Если СтрокаДерева.Имя = ИмяОбласти Тогда
			ИскомаяСтрока = СтрокаДерева;
			Возврат;
		КонецЕсли;	 
		
		НайтиСтрокуДереваПоИмени(СтрокаДерева.ПолучитьЭлементы(),ИмяОбласти,ИскомаяСтрока);
	КонецЦикла;
КонецПроцедуры


&НаКлиенте
//И     в дереве загруженной фичи шаг "И ещё один шаг вне группы" будет вне группы
//@ВДеревеЗагруженнойФичиШагБудетВнеГруппы(Парам01)
Процедура ВДеревеЗагруженнойФичиШагБудетВнеГруппы(Строка1) Экспорт
	ДеревоТестов  = Контекст.ОткрытаяФормаVanessaBehavoir.Объект.ДеревоТестов;
	
	ИскомаяСтрока = Неопределено;
	НайтиСтрокуДереваПоИмени(ДеревоТестов.ПолучитьЭлементы(),Строка1,ИскомаяСтрока);
	Ванесса.ПроверитьНеРавенство(ИскомаяСтрока,Неопределено,"Нашли в дереве область <" + Строка1 + ">");
	
	Ванесса.ПроверитьРавенство(ИскомаяСтрока.ПолучитьРодителя().Тип,"Сценарий","" + Строка1 + " не находится внутри группы");
КонецПроцедуры

//окончание текста модуля