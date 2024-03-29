﻿Перем Ванесса;

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

//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования()","ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования","я открыл форму VanessaBehavoir в режиме самотестирования"); //уже был в C:\Commons\Rep\vanessa-behavoir\tests\OrdinaryApplicationTests\Библиотеки\step_definitions\ЗагрузкаФичи.epf
//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗагрузилСпециальнуюТестовуюФичу(Парам01Строка)","ЯЗагрузилСпециальнуюТестовуюФичу","я загрузил специальную тестовую фичу ""ФичаДляПроверкиПерегенерацииEPF"""); //уже был в C:\Commons\Rep\vanessa-behavoir\tests\OrdinaryApplicationTests\Библиотеки\step_definitions\ЗагрузкаФичи.epf
//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПерешелНаЗакладкуГенераторEPF()","ЯПерешелНаЗакладкуГенераторEPF","я перешел на закладку генератор EPF"); //уже был в C:\Commons\Rep\vanessa-behavoir\tests\OrdinaryApplicationTests\ГенерацияEPF\step_definitions\ГенерацияEPF.epf
	ДобавитьШагВМассивТестов(ВсеТесты,"ОжидаемыйФайлEpfУжеСуществует()","ОжидаемыйФайлEpfУжеСуществует","ожидаемый файл epf уже существует");
	ДобавитьШагВМассивТестов(ВсеТесты,"ВОжидаемомФайлеУжеЕстьРеализованныеШаги()","ВОжидаемомФайлеУжеЕстьРеализованныеШаги","в ожидаемом файле уже есть реализованные шаги");
	ДобавитьШагВМассивТестов(ВсеТесты,"ВФичеЕстьШагиКоторыхНетВОжидаемомEpfФайле()","ВФичеЕстьШагиКоторыхНетВОжидаемомEpfФайле","в фиче есть шаги, которых нет в ожидаемом epf файле");
//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажалНаКнопку(Парам01Строка)","ЯНажалНаКнопку","я нажал на кнопку ""СоздатьШаблоныОбработок"""); //уже был в C:\Commons\Rep\vanessa-behavoir\tests\OrdinaryApplicationTests\ГенерацияEPF\step_definitions\ГенерацияEPF.epf
//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯПолучилСгенерированныйEpfФайлВОжидаемомКаталоге()","ЯПолучилСгенерированныйEpfФайлВОжидаемомКаталоге","я получил сгенерированный epf файл в ожидаемом каталоге"); //уже был в C:\Commons\Rep\vanessa-behavoir\tests\OrdinaryApplicationTests\ГенерацияEPF\step_definitions\ГенерацияEPF.epf
	ДобавитьШагВМассивТестов(ВсеТесты,"СгенерированныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации()","СгенерированныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации","сгенерированный epf прошел проверку на корректность после перегенерации");

	ДобавитьШагВМассивТестов(ВсеТесты,"ОчищеныВременныеФайлыРезультатовПрошлыхГенераций()","ОчищеныВременныеФайлыРезультатовПрошлыхГенераций","Дано Очищены временные файлы результатов прошлых генераций");
	
	Возврат ВсеТесты;
КонецФункции

Процедура ПередНачаломСценария() Экспорт
	ИмяОжидаемогоФайла = Ванесса.КаталогИнструментов + "\features\Support\Templates\step_definitions\ФичаДляПроверкиПерегенерацииEPF.epf";
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Если ФайлПроверкаСуществования.Существует() Тогда
		УдалитьФайлы(ИмяОжидаемогоФайла);
	КонецЕсли;
	Контекст.Вставить("ИмяОжидаемогоФайла",ИмяОжидаемогоФайла);
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


////я открыл форму VanessaBehavoir в режиме самотестирования
////@ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования()
//Процедура ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования() Экспорт
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

////я загрузил специальную тестовую фичу "ФичаДляПроверкиПерегенерацииEPF"
////@ЯЗагрузилСпециальнуюТестовуюФичу(Парам01Строка)
//Процедура ЯЗагрузилСпециальнуюТестовуюФичу(Парам01Строка) Экспорт
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

////я перешел на закладку генератор EPF
////@ЯПерешелНаЗакладкуГенераторEPF()
//Процедура ЯПерешелНаЗакладкуГенераторEPF() Экспорт
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

//ожидаемый файл epf уже существует
//@ОжидаемыйФайлEpfУжеСуществует()
Процедура ОжидаемыйФайлEpfУжеСуществует() Экспорт
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Если ФайлПроверкаСуществования.Существует() Тогда
		УдалитьФайлы(ИмяОжидаемогоФайла);
	КонецЕсли;	 
	
	Ванесса.ПроверитьНеРавенство(ФайлПроверкаСуществования.Существует(),Истина,"В этот момент Файл " + ИмяОжидаемогоФайла + " НЕ должен существовать.");
	
	
	Макет = ПолучитьМакет("Макет");
	Макет.Записать(ИмяОжидаемогоФайла);
	
	ФайлПроверкаСуществования = Новый Файл(ИмяОжидаемогоФайла);
	Ванесса.ПроверитьРавенство(ФайлПроверкаСуществования.Существует(),Истина,"Файл " + ИмяОжидаемогоФайла + " должен существовать.");
КонецПроцедуры

//в ожидаемом файле уже есть реализованные шаги
//@ВОжидаемомФайлеУжеЕстьРеализованныеШаги()
Процедура ВОжидаемомФайлеУжеЕстьРеализованныеШаги() Экспорт
	ОбработкаДоПерегенерации = ВнешниеОбработки.Создать(Контекст.ИмяОжидаемогоФайла);
	ОбработкаДоПерегенерации.ЯМогуЭтотШагВыполнить();
	
	Контекст.Вставить("ОбработкаДоПерегенерации",ОбработкаДоПерегенерации);
КонецПроцедуры

//в фиче есть шаги, которых нет в ожидаемом epf файле
//@ВФичеЕстьШагиКоторыхНетВОжидаемомEpfФайле()
Процедура ВФичеЕстьШагиКоторыхНетВОжидаемомEpfФайле() Экспорт
	ОбработкаДоПерегенерации = Контекст.ОбработкаДоПерегенерации;
	
	МетодЕсть = Ложь;
	Попытка
		ОбработкаДоПерегенерации.ВEpfПоявилсяШагКоторогоНеБылоРаньше();
		МетодЕсть = Истина;
	Исключение
	
	КонецПопытки;
	
	Ванесса.ПроверитьРавенство(МетодЕсть,Ложь,"Метода ВEpfПоявилсяШагКоторогоНеБылоРаньше в epf не должно быть.");
КонецПроцедуры

////я нажал на кнопку "СоздатьШаблоныОбработок"
////@ЯНажалНаКнопку(Парам01Строка)
//Процедура ЯНажалНаКнопку(Парам01Строка) Экспорт
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

////я получил сгенерированный epf файл в ожидаемом каталоге
////@ЯПолучилСгенерированныйEpfФайлВОжидаемомКаталоге()
//Процедура ЯПолучилСгенерированныйEpfФайлВОжидаемомКаталоге() Экспорт
//	ВызватьИсключение "Не реализовано.";
//КонецПроцедуры

//сгенерированный epf прошел проверку на корректность после перегенерации
//@СгенерированныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации()
Процедура СгенерированныйEpfПрошелПроверкуНаКорректностьПослеПерегенерации() Экспорт
	
	ОбработкаПослеПерегенерации = ВнешниеОбработки.Создать(Контекст.ИмяОжидаемогоФайла);
	
	//Нашли1 = Ложь;
	Нашли2 = Ложь;
	//в списке тестов должно быть снипеты УМеняЕстьПростойШаг и ЕстьПростойШаг
	СписокТестов = ОбработкаПослеПерегенерации.ПолучитьСписокТестов(Ванесса);
	Для Каждого Снипет Из СписокТестов Цикл
		//Сообщить("" + Снипет.Снипет);
		//Если Снипет.Снипет = "УМеняЕстьПростойШаг()" Тогда
		//	Нашли1 = Истина;
		//КонецЕсли;	 
		Если Снипет.Снипет = "ЕстьПростойШаг()" Тогда
			Нашли2 = Истина;
		КонецЕсли;	 
	КонецЦикла;	
	
	//Если Не Нашли1 Тогда
	//	ВызватьИсключение "В списке шагов не нашли УМеняЕстьПростойШаг().";
	//КонецЕсли;	 
	Если Не Нашли2 Тогда
		ВызватьИсключение "В списке шагов не нашли ЕстьПростойШаг().";
	КонецЕсли;	 
	
	
	
	//этот шаг уже был и должен остаться
	Попытка
		ОбработкаПослеПерегенерации.УМеняЕстьПростойШаг();	
	Исключение
		ВызватьИсключение "Исчез шаг УМеняЕстьПростойШаг().";
	КонецПопытки;	
	
	
	//должен был появиться этот шаг
	Попытка
		ОбработкаПослеПерегенерации.ЕстьПростойШаг();
	Исключение
		Стр = ОписаниеОшибки();
		Если Найти(Стр,"Не реализовано.") = 0 Тогда
			ВызватьИсключение "Должен был появиться метод ЕстьПростойШаг, но не появился.";
		КонецЕсли;	 
	КонецПопытки;
	
	
	//должен был появиться этот шаг
	Попытка
		ОбработкаПослеПерегенерации.ВEpfПоявилсяШагКоторогоНеБылоРаньше();
	Исключение
		Стр = ОписаниеОшибки();
		Если Найти(Стр,"Не реализовано.") = 0 Тогда
			ВызватьИсключение "Должен был появиться метод ВEpfПоявилсяШагКоторогоНеБылоРаньше, но не появился.";
		КонецЕсли;	 
	КонецПопытки;
КонецПроцедуры


//Дано Очищены временные файлы результатов прошлых генераций
//@ОчищеныВременныеФайлыРезультатовПрошлыхГенераций()
Процедура ОчищеныВременныеФайлыРезультатовПрошлыхГенераций() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	
	
	//ВызватьИсключение "Не реализовано.";
КонецПроцедуры
