# language: ru
# encoding: utf-8
#parent uf:
@UF11_Прочее
#parent ua:
@UA45_Прочая_активность_вообще

@IgnoreOn82Builds
@IgnoreOnOFBuilds




Функционал: Закрытие открытого окна

Как Разработчик я хочу
Чтобы у меня был функционал для закрытия окон 1С при работе с TestClient
Для того чтобы я мог закрывать окна



Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
	
Сценарий: Я открываю и закрываю окно справочника
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник1"
	Тогда открылось окно "Справочник1"
	И     Я закрываю окно с заголовком "Справочник1"