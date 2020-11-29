﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnUFSovm82Builds
@IgnoreOnWeb

@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311
@IgnoreOn8312
@IgnoreOn8313
@IgnoreOn8314
@IgnoreOn8315
@IgnoreOn8316

@ServerCodeCoverage


Функциональность: Кнопка получить макет по таблице

    Как разработчик
    Я хочу чтобы в редакторе была возможность получить макет по таблице Gherkin
    Чтобы я мог быстро получить макет по таблице Gherkin

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой 'VAEditor'




Сценарий: Кнопка получить макет по таблице

	
	* Загрузка служебной фичи	
		И я нажимаю на кнопку с именем 'ФормаПерейтиВVanessaEditor'
		И я перехожу к закладке с именем "ГруппаСлужебная"
		Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "VAEditor/VanessaEditor13"
		И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient


	* Установка нужной строки текущей
		И я перехожу к закладке с именем "ГруппаСлужебная"
		И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
		И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст 'VanessaTabs.current.editor.setPosition(17, 1, \"\");'
		И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
		И пауза 1
		И я перехожу к закладке с именем "ГруппаЗапускТестов"

	* Открытие редактора таблиц
		И я нажимаю на кнопку с именем 'VanessaEditorКонтекстноеМенюПолучитьМакетПоТаблице'
		Тогда открылось окно 'Таблица'
		Тогда табличный документ "SpreadsheetDocument" равен:
			| 'Колонка1'  | 'Колонка2'  |
			| 'Значение1' | 'Значение2' |


