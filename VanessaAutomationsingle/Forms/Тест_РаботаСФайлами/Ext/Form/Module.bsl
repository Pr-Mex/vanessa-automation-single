﻿///////////////////////////////////////////////////
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

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;
	
	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯОчищаюКаталог(Парам01)",
		"ЯОчищаюКаталог",
		"И я очищаю каталог ""ИмяКаталога""",
		"Очищает указанный каталог.",
		"Файлы"
	);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯСоздаюКаталог(Парам01)",
		"ЯСоздаюКаталог",
		"И я создаю каталог ""ИмяКаталога""",
		"Создает каталог с указанным именем, если его нет, а также все его подкаталоги.",
		"Файлы"
	);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлНеСодержитСтроки(Парам01,ТабПарам)",
		"ФайлНеСодержитСтроки",
		"И файл ""ИмяФайла"" не содержит строки
		|" + Символы.Таб + "|""ПодСтрока1""|
		|" + Символы.Таб + "|""ПодСтрока2""|",
		"Проверяет, что файле нет указанных строк/подстрок.",
		"Файлы"
	);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлСодержитСтроки(Парам01,ТабПарам)",
		"ФайлСодержитСтроки",
		"И файл ""ИмяФайла"" содержит строки
		|" + Символы.Таб + "|""ПодСтрока1""|
		|" + Символы.Таб + "|""ПодСтрока2""|",
		"Проверяет, что файле есть указанные строки/подстроки.",
		"Файлы"
	);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлСуществует(Парам01)",
		"ФайлСуществует",
		"И Файл ""ИмяФайла"" существует",
		"Проверяет существование файла.",
		"Файлы"
	);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ФайлСуществуетТогда(Парам01)",
		"ФайлСуществуетТогда",
		"Если Файл ""ИмяФайла"" существует тогда",
		"Условие. Проверяет существование файла.",
		"Файлы",
		"Условие"
	);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯУдаляюФайл(Парам01)",
		"ЯУдаляюФайл",
		"Тогда я удаляю файл ""ИмяФайла""",
		"Удаляет файл.",
		"Файлы"
	);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯКопируюФайл(Парам01,Парам02)",
		"ЯКопируюФайл",
		"Тогда я копирую файл ""ИмяФайлаИсточник"" ""ИмяФайлаПриемник""",
		"Копирует файл.",
		"Файлы"
	);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯПеремещаюФайл(Парам01,Парам02)",
		"ЯПеремещаюФайл",
		"Тогда я перемещаю файл ""ИмяФайлаИсточник"" ""ИмяФайлаПриемник""",
		"Перемещает файл.",
		"Файлы"
	);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"JsonФайлСодержитЗначенияВУзле(Парам01,Парам02,ТабПарам)",
		"JsonФайлСодержитЗначенияВУзле",
		"И json файл ""ИмяФайла"" содержит значения в узле ""ИмяУзла"".",
		"",
		""
	);
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"КоличествоФайловВКаталогеЯЗапоминаюКак(Парам01,Парам02)",
		"КоличествоФайловВКаталогеЯЗапоминаюКак",
		"Затем количество файлов в каталоге ""ИмяКаталога"" я запоминаю как ""КоличествоФайлов""",
		"Получает количество файлов в каталоге и сохраняет в переменную.",
		"Файлы"
	);
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯСохраняюСкриншот(Парам01)",
		"ЯСохраняюСкриншот",
		"И я сохраняю скриншот ""ПутьКФайлу""",
		"Снимает скриншот с экрана и сохраняет по указнному пути.",
		"Скриншоты"
	);	
	
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
		"ЯЖдуСуществованияФайлаВТечениеСекунд(Парам01,Парам02)",
		"ЯЖдуСуществованияФайлаВТечениеСекунд",
		"И я жду существования файла ""ИмяФайла"" в течение 20 секунд",
		"Ждёт появления файла в течение указанного числа секунд.",
		"Файлы"
	);
	
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,
	"ЯЗаменяюСтрокуВФайле(Парам01,ТабПарам)",
	"ЯЗаменяюСтрокуВФайле",
	"И я заменяю строку в файле ""ИмяФайла""
	|	|'ЧтоЗаменяем'|'НаЧтоЗаменяем'|",
	"Заменяет в файле строки",
	"Файлы"
	);
	
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
	
КонецПроцедуры


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//И я очищаю каталог "ИмяКаталога"
//@ЯОчищаюКаталог(Парам01)
Процедура ЯОчищаюКаталог(Знач ИмяКаталога) Экспорт
	
	//ИмяКаталога = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяКаталога);
	
	ПроверитьКаталогСуществует(ИмяКаталога);
	
	Ванесса.ОчиститьСодержимоеКаталога(ИмяКаталога);
	
КонецПроцедуры

&НаКлиенте
//И я создаю каталог "ИмяКаталога"
//@ЯСоздаюКаталог(Парам01)
Процедура ЯСоздаюКаталог(Знач ИмяКаталога) Экспорт
	
	//ИмяКаталога = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяКаталога);
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяКаталога) Тогда
		Возврат;
	КонецЕсли;
	
	Массив = Новый Массив;
	Массив.Добавить(ИмяКаталога);
	
	Файл = Новый Файл(ИмяКаталога);
	ТекРодитель = Файл.Путь;
	Пока Истина Цикл
		Если Не ЗначениеЗаполнено(ТекРодитель) Тогда
			Прервать;
		КонецЕсли;
		
		Массив.Добавить(ТекРодитель);
		
		Файл = Новый Файл(ТекРодитель);
		
		Если НРег(ТекРодитель) = НРег(Файл.Путь) Тогда
			Прервать;
		КонецЕсли;
		
		ТекРодитель = Файл.Путь;
	КонецЦикла;
	
	Для Индекс = 0 По Массив.Количество() - 1 Цикл
		ТекРодитель = Массив[Массив.Количество() - 1 - Индекс];
		Если Не Ванесса.ФайлСуществуетКомандаСистемы(ТекРодитель) Тогда
			Ванесса.СоздатьКаталогКомандаСистемы(ТекРодитель);
		КонецЕсли;
	КонецЦикла;
	
	Ванесса.СоздатьКаталогКомандаСистемы(ИмяКаталога);
	
КонецПроцедуры

&НаКлиенте
//И файл "ИмяФайла" не содержит строки
//@ФайлНеСодержитСтроки(Парам01,ТабПарам)
Процедура ФайлНеСодержитСтроки(Знач ИмяФайла, ТабПарам) Экспорт
	
	//ИмяФайла = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайла);
	
	ЧтениеТекста = Новый ЧтениеТекста;
	ЧтениеТекста.Открыть(ИмяФайла, "UTF-8");
	
	Ошибки = Новый Массив;
	Пока Истина Цикл
		Строки = ЧтениеТекста.ПрочитатьСтроку();
		Если Строки = Неопределено Тогда
			Прервать;
		КонецЕсли;
		
		Строки = НРег(Строки);
		
		Для Каждого СтрокаТабПарам Из ТабПарам Цикл
			ИскомаяПодстрока = НРег(СтрокаТабПарам.Кол1);
			Если Найти(Строки, ИскомаяПодстрока) > 0 Тогда
				
				Если Ошибки.Найти(СтрокаТабПарам.Кол1) = Неопределено Тогда
					Ошибки.Добавить(СтрокаТабПарам.Кол1);
				КонецЕсли;
			КонецЕсли;
		КонецЦикла;
	КонецЦикла;
	ЧтениеТекста.Закрыть();
	
	Если Ошибки.Количество() > 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
			"В файле <%1> нашли строки, а ожидали, что их нет:"
		);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
		
		СтрокаОшибки = "";
		Для Каждого Строки Из Ошибки Цикл
			СтрокаОшибки = СтрокаОшибки + Символы.ПС + Строки;
		КонецЦикла;
		
		ВызватьИсключение ТекстСообщения + СтрокаОшибки;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
//И файл "ИмяФайла" содержит строки
//@ФайлСодержитСтроки(Парам01,ТабПарам)
Процедура ФайлСодержитСтроки(Знач ИмяФайла, ТабПарам) Экспорт
	
	//ИмяФайла = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайла);
	
	ЧтениеТекста = Новый ЧтениеТекста;
	ЧтениеТекста.Открыть(ИмяФайла, "UTF-8");
	ТекстФайла = НРег(ЧтениеТекста.Прочитать());
	ЧтениеТекста.Закрыть();
	
	СтрокиДляПоиска = Новый Массив;
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ИскомаяПодстрока = НРег(СтрокаТабПарам.Кол1);
		СтрокиДляПоиска.Добавить(
			Новый Структура("Строка,Оригинал,Найдена", ИскомаяПодстрока, СтрокаТабПарам.Кол1, Ложь)
		);
	КонецЦикла;
	
	Для Каждого ДанныеДляПоиска Из СтрокиДляПоиска Цикл
		ИскомаяПодстрока = ДанныеДляПоиска.Строка;
		Если Найти(ТекстФайла, ИскомаяПодстрока) > 0 Тогда
			ДанныеДляПоиска.Найдена = Истина;
		КонецЕсли;
	КонецЦикла;
	
	
	Ошибки = Новый Массив;
	
	Для Каждого ДанныеДляПоиска Из СтрокиДляПоиска Цикл
		Если ДанныеДляПоиска.Найдена Тогда
			Продолжить;
		КонецЕсли;
		
		Ошибки.Добавить(ДанныеДляПоиска.Оригинал);
	КонецЦикла;
	
	Если Ошибки.Количество() > 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
			"В файле <%1> не нашли строки, а ожидали, что они там есть:"
		);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
		
		СтрокаОшибки = "";
		Для Каждого Строка Из Ошибки Цикл
			СтрокаОшибки = СтрокаОшибки + Символы.ПС + Строка;
		КонецЦикла;
		
		ВызватьИсключение ТекстСообщения + СтрокаОшибки;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
//И Файл "ИмяФайла" существет
//@ФайлСуществует(Парам01)
Процедура ФайлСуществует(Знач ИмяФайла) Экспорт
	
	//ИмяФайла = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайла);
	
	Если Не Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
			"Файл <%1> не найден."
		);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
//Если Файл "ИмяФайла" существет тогда
//@ФайлСуществуетТогда(Парам01)
Процедура ФайлСуществуетТогда(Знач ИмяФайла) Экспорт
	
	//ИмяФайла = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайла);
	
	Ванесса.УстановитьРезультатУсловия(Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла));
	
КонецПроцедуры

&НаКлиенте
//Тогда я удаляю файл "ИмяФайла"
//@ЯУдаляюФайл(Парам01)
Процедура ЯУдаляюФайл(Знач ИмяФайла) Экспорт
	
	//ИмяФайла = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайла);
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайла);
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
//Тогда я копирую файл "ИмяФайлаИсточник" "ИмяФайлаПриемник"
//@ЯКопируюФайл(Парам01)
Процедура ЯКопируюФайл(Знач ИмяФайлаИсточник, Знач ИмяФайлаПриемник) Экспорт
	
	//ИмяФайлаИсточник = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайлаИсточник);
	//ИмяФайлаПриемник = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайлаПриемник);
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлаПриемник) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайлаПриемник);
	КонецЕсли;
	
	Ванесса.КопироватьФайлКомандаСистемы(ИмяФайлаИсточник, ИмяФайлаПриемник);
	
КонецПроцедуры

&НаКлиенте
//Тогда я перемещаю файл "ИмяФайлаИсточник" "ИмяФайлаПриемник"
//@ЯПеремещаюФайл(Парам01)
Процедура ЯПеремещаюФайл(Знач ИмяФайлаИсточник, Знач ИмяФайлаПриемник) Экспорт
	
	//ИмяФайлаИсточник = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайлаИсточник);
	//ИмяФайлаПриемник = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайлаПриемник);
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлаПриемник) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайлаПриемник);
	КонецЕсли;
	
	Ванесса.ПереместитьФайлКомандаСистемы(ИмяФайлаИсточник, ИмяФайлаПриемник);
	
КонецПроцедуры

&НаКлиенте
//И json файл "$НайденноеИмяФайлаАллюр$" содержит значения в узле "labels"
//@JsonФайлСодержитЗначенияВУзле(Парам01,Парам02,ТабПарам)
Процедура JsonФайлСодержитЗначенияВУзле(Знач ИмяФайла, ИмяУзла, ТабПарам) Экспорт
	
	//ИмяФайла = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(ИмяФайла);
	
	ЧтениеJSON = Вычислить("Новый ЧтениеJSON()");
	ЧтениеJSON.ОткрытьФайл(ИмяФайла);
	ДанныеJSON = Вычислить("ПрочитатьJSON(ЧтениеJSON)");
	ЧтениеJSON.Закрыть();
	
	ДанныеУзла = ДанныеJSON[ИмяУзла];
	
	Для Каждого ОжидаемоеЗначение Из ТабПарам Цикл
		Нашли = Ложь;
		
		name = ОжидаемоеЗначение.Кол1;
		value = ОжидаемоеЗначение.Кол2;
		
		Для Каждого Элемент Из ДанныеУзла Цикл
			Если НРег(Элемент.name) = НРег(name) И НРег(Элемент.value) = НРег(value) Тогда
				Нашли = Истина;
				Прервать;
			КонецЕсли;
		КонецЦикла;
		
		Если Не Нашли Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
				"Не нашли значения: <%1>, <%2>."
			);
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", name);
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%2", value);
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;
	КонецЦикла;
	
КонецПроцедуры

&НаКлиенте
//Затем количество файлов в каталоге "ИмяКаталога" я запоминаю как "КоличествоФайлов"
//@КоличествоФайловВКаталогеЯЗапоминаюКак(Парам01,Парам02)
Процедура КоличествоФайловВКаталогеЯЗапоминаюКак(ИмяКаталога, ИмяПеременной) Экспорт
	
	ПроверитьКаталогСуществует(ИмяКаталога);
	
	СписокКаталогов = Новый СписокЗначений;
	СписокФайлов    = Новый СписокЗначений;
	Ванесса.НайтиФайлыКомандаСистемы(ИмяКаталога,СписокКаталогов,СписокФайлов,Ложь);
	Контекст.Вставить(ИмяПеременной, СписокФайлов.Количество());
КонецПроцедуры


///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////


&НаКлиенте
Процедура ПроверитьКаталогСуществует(ИмяКаталога)
	
	Если Не Ванесса.ФайлСуществуетКомандаСистемы(ИмяКаталога) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю(
			"Каталог <%1> не найден."
		);
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", ИмяКаталога);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
КонецПроцедуры


&НаКлиенте
//И я сохраняю скриншот "ПутьКФайлу"
//@ЯСохраняюСкриншот(Парам01)
Функция ЯСохраняюСкриншот(ИмяФайла) Экспорт
	Если ПустаяСтрока(ИмяФайла) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не указано имя файла.");
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
	Если Найти(ИмяФайла,".") = 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не указано расширение файла.");
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
	Файл = Новый Файл(ИмяФайла);
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(Файл.Путь) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Каталог <%1> не существует.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Файл.Путь);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;
	
	Если Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
		Ванесса.УдалитьФайлыКомандаСистемы(ИмяФайла);
	КонецЕсли;
	
	Ванесса.ЗапретитьВыполнениеШагов();
	
	ПараметрыСкриншотов = Новый Структура;
	ПараметрыСкриншотов.Вставить("ИмяФайла",ИмяФайла);
	ПараметрыСкриншотов.Вставить("ИмяПроцедуры","ПродолжитьВыполнениеШаговОбработчикОжидания");
	Ванесса.СделатьСкриншот(ПараметрыСкриншотов);
	
	//Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайла) Тогда
	//	ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не найден файл <%1>");
	//	ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайла);
	//	ВызватьИсключение ТекстСообщения;
	//КонецЕсли;
	
КонецФункции

&НаКлиенте
Процедура ОбработичкОжиданияЯЖдуСуществованияФайлаВТечениеСекунд()
	ИмяОбработчика = "ОбработичкОжиданияЯЖдуСуществованияФайлаВТечениеСекунд";
	
	ФайлСуществует = Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлаОбработкаОжидания);
	
	Если ФайлСуществует Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Ванесса.ПродолжитьВыполнениеШагов();
		Возврат;
	КонецЕсли;	 
	
	Если (ТекущаяДата() - ДатаНачалаОбработкиОжидания) > КоличествоСекундОбработкаОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Ожидали существования файла <%1> в течение <%2> секнуд.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайлаОбработкаОжидания);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",КоличествоСекундОбработкаОжидания);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ТекстСообщения);
		Возврат;
	КонецЕсли;	 
КонецПроцедуры


&НаКлиенте
//И я жду существования файла "ИмяФайла" в течение 20 секунд
//@ЯЖдуСуществованияФайлаВТечениеСекунд(Парам01,Парам02)
Функция ЯЖдуСуществованияФайлаВТечениеСекунд(ИмяФайла,КоличествоСекунд) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	ДатаНачалаОбработкиОжидания       = ТекущаяДата();
	ИмяФайлаОбработкаОжидания         = ИмяФайла;
	КоличествоСекундОбработкаОжидания = Ванесса.ЗначениеТаймаутаДляАсинхронногоШага(КоличествоСекунд);
	ПодключитьОбработчикОжидания("ОбработичкОжиданияЯЖдуСуществованияФайлаВТечениеСекунд",1,Ложь);
КонецФункции

&НаКлиенте
//И я заменяю строку в файле "ИмяФайла"
//@ЯЗаменяюСтрокуВФайле(Парам01,ТабПарам)
Функция ЯЗаменяюСтрокуВФайле(ИмяФайла,ТабПарам) Экспорт
	Текст = Новый ЧтениеТекста;
	Текст.Открыть(ИмяФайла,"UTF-8");
	Стр = Текст.Прочитать();
	Текст.Закрыть();
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Стр = СтрЗаменить(Стр,СтрокаТабПарам.Кол1,СтрокаТабПарам.Кол2);
	КонецЦикла;	
	
	ЗТ = Новый ЗаписьТекста(ИмяФайла,,,Ложь); 
	ЗТ.Записать(Стр); 
	ЗТ.Закрыть();
	
КонецФункции
