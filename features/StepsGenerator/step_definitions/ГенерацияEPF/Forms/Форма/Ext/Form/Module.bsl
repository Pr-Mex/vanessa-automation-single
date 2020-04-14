﻿//начало текста модуля
&НаКлиенте
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
Перем ФормаОбработки;

&НаКлиенте
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования()","ЯОткрылФормуVanessaBehavoirВРежимеСамотестирования","я открыл форму VanessaBehavoir в режиме самотестирования"); //уже был в C:\Commons\Rep\vanessa-behavoir\tests\ManagedApplicationTests\Библиотеки\step_definitions\ЗагрузкаФичи.epf
//	ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗагрузилСпециальнуюТестовуюФичу(Парам01Строка)","ЯЗагрузилСпециальнуюТестовуюФичу","я загрузил специальную тестовую фичу ""ФичаДляПроверкиГенерацииEPF"""); //уже был в C:\Commons\Rep\vanessa-behavoir\tests\ManagedApplicationTests\Библиотеки\step_definitions\ЗагрузкаФичи.epf
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПерешелНаЗакладкуГенераторEPF()","ЯПерешелНаЗакладкуГенераторEPF","я перешел на закладку генератор EPF");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЕслиОжидаемыйФайлEpfУжеСуществуетТоОнБудетУдален()","ЕслиОжидаемыйФайлEpfУжеСуществуетТоОнБудетУдален","если ожидаемый файл epf уже существует, то он будет удален");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажалНаКнопку(Парам01Строка)","ЯНажалНаКнопку","я нажал на кнопку ""СоздатьШаблоныОбработок""");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПолучилСгенерированныйEpfФайлВОжидаемомКаталоге()","ЯПолучилСгенерированныйEpfФайлВОжидаемомКаталоге","я получил сгенерированный epf файл в ожидаемом каталоге");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"СгенерированныйEpfПрошелПроверкуНаКорректность()","СгенерированныйEpfПрошелПроверкуНаКорректность","сгенерированный epf прошел проверку на корректность");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"СгенерированныйEpfЗнакМинусВСценарииПрошелПроверкуНаКорректность()","СгенерированныйEpfЗнакМинусВСценарииПрошелПроверкуНаКорректность","И сгенерированный epf ЗнакМинусВСценарии прошел проверку на корректность");

	Возврат ВсеТесты;
КонецФункции

&НаКлиенте
Процедура ПередНачаломСценария() Экспорт
	
	
	
КонецПроцедуры

&НаКлиенте
Процедура ПередОкончаниемСценария() Экспорт
	Если Не Контекст.Свойство("ОткрытаяФормаVanessaBehavoir") Тогда
		Возврат;
	КонецЕсли;  
	
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	Файл = Новый Файл(ИмяОжидаемогоФайла);
	Если Ванесса.ФайлСуществуетКомандаСистемы(Файл.ПолноеИмя) Тогда
		ТекстСообщения = "ПередОкончаниемСценария(). Удаляю файл %1";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяОжидаемогоФайла);
		Сообщить(ТекстСообщения);
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяОжидаемогоФайла);
	КонецЕсли;  
	
	Если Контекст.Свойство("ОткрытаяФормаVanessaBehavoir") Тогда
		Если Контекст.ОткрытаяФормаVanessaBehavoir.Открыта() Тогда
			Контекст.ОткрытаяФормаVanessaBehavoir.Закрыть();
		КонецЕсли;  
		
	КонецЕсли;  
КонецПроцедуры


&НаКлиенте
//я перешел на закладку генератор EPF
//@ЯПерешелНаЗакладкуГенераторEPF()
Процедура ЯПерешелНаЗакладкуГенераторEPF() Экспорт
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	ОткрытаяФормаVanessaBehavoir.ТекущийЭлемент = ОткрытаяФормаVanessaBehavoir.Элементы.ГруппаГенерацияEPF;
КонецПроцедуры

&НаКлиенте
Процедура ОбработатьУдалениеФайлов(ДополнительныеПараметры) Экспорт
	Ванесса.ПродолжитьВыполнениеШагов();
КонецПроцедуры

&НаКлиенте
//если ожидаемый файл epf уже существует, то он будет удален
//@ЕслиОжидаемыйФайлEpfУжеСуществуетТоОнБудетУдален()
Процедура ЕслиОжидаемыйФайлEpfУжеСуществуетТоОнБудетУдален() Экспорт
	ИмяОжидаемогоФайла = Контекст.ОткрытаяФормаVanessaBehavoir.Объект.КаталогИнструментов + "\features\Support\Templates\step_definitions\" + Контекст.ИмяТестовойФичи + ".epf";
	Контекст.Вставить("ИмяОжидаемогоФайла",ИмяОжидаемогоФайла);
	
	Если НЕ Ванесса.ЗапрещеныСинхронныеВызовы Тогда
		УдалитьФайлы(ИмяОжидаемогоФайла);
	Иначе
		Ванесса.ЗапретитьВыполнениеШагов();
		ОписаниеОповещения = Вычислить("Новый ОписаниеОповещения(""ОбработатьУдалениеФайлов"", ЭтаФорма)");
		Выполнить("НачатьУдалениеФайлов(ОписаниеОповещения,ИмяОжидаемогоФайла)");
	КонецЕсли;	 
	
	
КонецПроцедуры

&НаКлиенте
//я нажал на кнопку "СоздатьШаблоныОбработок"
//@ЯНажалНаКнопку(Парам01Строка)
Процедура ЯНажалНаКнопку(ИмяКнопки) Экспорт
	ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
	ОткрытаяФормаVanessaBehavoir.Объект.ГенерироватьУФ = Истина;
	
	Если ИмяКнопки = "СоздатьШаблоныОбработок" Тогда
		ОткрытаяФормаVanessaBehavoir.СоздатьШаблоныОбработок();
	Иначе
		ТекстСообщения = "Не смог обработать нажатие кнопки: %1";
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяКнопки);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;  
КонецПроцедуры

&НаКлиенте
//я получил сгенерированный epf файл в ожидаемом каталоге
//@ЯПолучилСгенерированныйEpfФайлВОжидаемомКаталоге()
Процедура ЯПолучилСгенерированныйEpfФайлВОжидаемомКаталоге() Экспорт
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	ФайлСуществует = Ванесса.ФайлСуществуетКомандаСистемы(ИмяОжидаемогоФайла);
	Ванесса.ПроверитьРавенство(ФайлСуществует,Истина,"Был создан epf в нужном каталоге");
КонецПроцедуры

&НаКлиенте
Процедура ОбработкаПослеПомещенияФайлаСгенерированныйEpfПрошелПроверкуНаКорректность(Результат, АдресХранилища, ВыбранноеИмяФайла, ДополнительныеПараметры) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("АдресХранилища",АдресХранилища);
	ИмяОбработки = Ванесса.ПодключитьВнешнююОбработкуСервер(Контекст.ИмяОжидаемогоФайла,Ложь,ДопПараметры);
	ФормаОбработки = ПолучитьФорму("ВнешняяОбработка." + ИмяОбработки + ".Форма.Форма",,,Истина);
	
	СгенерированныйEpfПрошелПроверкуНаКорректностьПродолжение();
КонецПроцедуры

&НаКлиенте
Процедура СгенерированныйEpfПрошелПроверкуНаКорректностьПродолжение()
	//СозданнаяОбработка = ВнешниеОбработки.Создать(ИмяОжидаемогоФайла);
	
	//должна быть эта процедура, и она должна быть без параметров
	Попытка
		ФормаОбработки.ФичаСодержитСтрокуСТочкойВКонце();
	Исключение
		ОписаниеОшибки = ОписаниеОшибки();
		Если Найти(ОписаниеОшибки,"Не реализовано.") = 0 Тогда
			ТекстСообщения = "Не верно сгенерировалась epf. ФичаСодержитСтрокуСТочкойВКонце()%1";
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Символы.ПС + ОписаниеОшибки);
			Ванесса.ПродолжитьВыполнениеШагов(Истина,ТекстСообщения);
			Возврат;
		КонецЕсли;  
	КонецПопытки;
	
	Попытка
		ФормаОбработки.ФичаСодержитЧислоИЗапятуюПослеНего(10);
	Исключение
		ОписаниеОшибки = ОписаниеОшибки();
		Если Найти(ОписаниеОшибки,"Не реализовано.") = 0 Тогда
			ТекстСообщения = "Не верно сгенерировалась epf. ФичаСодержитЧислоИЗапятуюПослеНего().%1";
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Символы.ПС + ОписаниеОшибки);
			Ванесса.ПродолжитьВыполнениеШагов(Истина,ТекстСообщения);
			Возврат;
		КонецЕсли;  
	КонецПопытки;
	
	
	Попытка
		ФормаОбработки.УстанавливаетсяПустойМок_ВСистемуТестирования();
	Исключение
		ОписаниеОшибки = ОписаниеОшибки();
		Если Найти(ОписаниеОшибки,"Не реализовано.") = 0 Тогда
			ТекстСообщения = "Не верно сгенерировалась epf. УстанавливаетсяПустойМок_ВСистемуТестирования()%1";
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Символы.ПС + ОписаниеОшибки);
			Ванесса.ПродолжитьВыполнениеШагов(Истина,ТекстСообщения);
			Возврат;
		КонецЕсли;  
	КонецПопытки;
	
	Ванесса.ПродолжитьВыполнениеШагов();
КонецПроцедуры 

&НаКлиенте
//сгенерированный epf прошел проверку на корректность
//@СгенерированныйEpfПрошелПроверкуНаКорректность()
Процедура СгенерированныйEpfПрошелПроверкуНаКорректность() Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	
	ДополнительныеПараметры = Новый Структура;
	Оповещение = Вычислить("Новый ОписаниеОповещения(""ОбработкаПослеПомещенияФайлаСгенерированныйEpfПрошелПроверкуНаКорректность"", ЭтаФорма, ДополнительныеПараметры)");
	Выполнить("НачатьПомещениеФайла(Оповещение, , ИмяОжидаемогоФайла, Ложь, УникальныйИдентификатор);");
КонецПроцедуры

&НаКлиенте
Процедура ОбработкаПослеПомещенияФайлаСгенерированныйEpfЗнакМинусВСценарииПрошелПроверкуНаКорректность(Результат, АдресХранилища, ВыбранноеИмяФайла, ДополнительныеПараметры) Экспорт
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("АдресХранилища",АдресХранилища);
	ИмяОбработки = Ванесса.ПодключитьВнешнююОбработкуСервер(Контекст.ИмяОжидаемогоФайла,Ложь,ДопПараметры);
	
	Попытка
		ФормаОбработки = ПолучитьФорму("ВнешняяОбработка." + ИмяОбработки + ".Форма.Форма",,,Истина);
	Исключение
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ОписаниеОшибки());
		Возврат;
	КонецПопытки;
	
	Ванесса.ПродолжитьВыполнениеШагов();
КонецПроцедуры

&НаКлиенте
//И сгенерированный epf ЗнакМинусВСценарии прошел проверку на корректность
//@СгенерированныйEpfЗнакМинусВСценарииПрошелПроверкуНаКорректность()
Процедура СгенерированныйEpfЗнакМинусВСценарииПрошелПроверкуНаКорректность() Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	ИмяОжидаемогоФайла = Контекст.ИмяОжидаемогоФайла;
	
	ДополнительныеПараметры = Новый Структура;
	Оповещение = Вычислить("Новый ОписаниеОповещения(""ОбработкаПослеПомещенияФайлаСгенерированныйEpfЗнакМинусВСценарииПрошелПроверкуНаКорректность"", ЭтаФорма, ДополнительныеПараметры)");
	Выполнить("НачатьПомещениеФайла(Оповещение, , ИмяОжидаемогоФайла, Ложь, УникальныйИдентификатор);");
КонецПроцедуры

//окончание текста модуля
