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

	ДобавитьШагВМассивТестов(ВсеТесты,"ЯСоздалСлужебныйФайлВОтноситекльномКаталогеСИменем(Парам01,Парам02)","ЯСоздалСлужебныйФайлВОтноситекльномКаталогеСИменем","я создал служебный файл в относитекльном каталоге ""features\Core"" с именем ""TestFile""");
	ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗагрузилФичиИзОтносительногоКаталога(Парам01)","ЯЗагрузилФичиИзОтносительногоКаталога","я загрузил фичи из относительного каталога ""features\Core""");

	Возврат ВсеТесты;
КонецФункции


Процедура ПередНачаломСценария() Экспорт
КонецПроцедуры


Процедура ПередОкончаниемСценария() Экспорт
	Если Контекст.Свойство("ИмяСлужебногоФайла") Тогда
		УдалитьФайлы(Контекст.ИмяСлужебногоФайла);
	КонецЕсли;	 
	
	Попытка
		Если Контекст.Свойство("ОткрытаяФормаVanessaBehavoir") Тогда
			ОткрытаяФормаVanessaBehavoir = Контекст.ОткрытаяФормаVanessaBehavoir;
			ОткрытаяФормаVanessaBehavoir.Закрыть();
		КонецЕсли;	 
	Исключение
	
	КонецПопытки;
	
КонецПроцедуры




//я создал служебный файл в относитекльном каталоге "features\Core" с именем "TestFile"
//@ЯСоздалСлужебныйФайлВОтноситекльномКаталогеСИменем(Парам01,Парам02)
Процедура ЯСоздалСлужебныйФайлВОтноситекльномКаталогеСИменем(ОтносительныйКаталог,ИмяФайла) Экспорт
	ИмяСлужебногоФайла = Ванесса.КаталогИнструментов + "\" + ОтносительныйКаталог + "\" + ИмяФайла;
	ФайлПроверкаСуществования = Новый Файл(ИмяСлужебногоФайла);
	Если ФайлПроверкаСуществования.Существует() Тогда
		УдалитьФайлы(ИмяСлужебногоФайла);
	КонецЕсли;	 
	
	ЗТ = Новый ЗаписьТекста(ИмяСлужебногоФайла,"UTF-8",,Истина); 
	ЗТ.ЗаписатьСтроку(""); 
	ЗТ.Закрыть();
	
	
	Контекст.Вставить("ИмяСлужебногоФайла",ИмяСлужебногоФайла);
КонецПроцедуры


//я загрузил фичи из относительного каталога "features\Core"
//@ЯЗагрузилФичиИзОтносительногоКаталога(Парам01)
Процедура ЯЗагрузилФичиИзОтносительногоКаталога(ОтносительныйКаталог) Экспорт
	Контекст.ОткрытаяФормаVanessaBehavoir.КаталогФич = Ванесса.КаталогИнструментов + "\" + ОтносительныйКаталог;
	Контекст.ОткрытаяФормаVanessaBehavoir.ЗагрузитьФичи();
КонецПроцедуры


//окончание текста модуля  