# language: ru
# encoding: utf-8
#parent uf:
@UF2_запуск_сценариев_на_выполнение
#parent ua:
@UA13_управлять_Test_clients

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функционал: Проверка работы таблицы TestClient

	Как Разработчик я хочу
	Чтобы у меня был функционал для работы с многими TestClient одновременно
	Для того чтобы я мог использовать много TestClient



	
	
	
Сценарий: Проверка работы таблицы TestClient
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	И я устанавливаю текущему TestClient синоним "СлужебныйTestManager"
	
	Дано    Я закрыл все окна клиентского приложения
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиТаблицыTestClient"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	И Проверяем, что	установился синоним	
			И я перехожу к закладке с именем "ГруппаНесколькоКлиентовТестирования"
			И     в таблице "ДанныеКлиентовТестирования" я перехожу к строке:
				| 'Синоним'  |
				| 'Синоним1' |
	
	И я читаю данные текущего профиля клиента тестирования
	И выражение внутреннего языка 'Найти($ДопПараметрыКлиентаТестирования$,"/TestManager") > 0' Истинно
	Тогда переменная "ИмяКлиентаТестирования" имеет значение "TM"
	Тогда переменная "СинонимКлиентаТестирования" имеет значение "СлужебныйTestManager"
	Тогда переменная "ТипКлиентаТестирования" имеет значение "Тонкий"

				
Сценарий: Закрыть TestClient, который был открыт из второго TestManager. Проверка работы таблицы TestClient
	Дано Я закрыл все окна клиентского приложения кроме "*Vanessa Automation"
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			И у элемента "Сценарии выполнены" я жду значения "Да" в течение 20 секунд
	И я закрываю TestClient "TM"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'