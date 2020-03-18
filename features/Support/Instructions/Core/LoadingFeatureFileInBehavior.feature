# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA46_Макеты_для_загрузки_фич

@IgnoreOnCIMainBuild

Функционал: Загрузка feature-файла в vanessa-behavior
	Как Разработчик
	Хочу Иметь возможность загрузить feature-файл в обработку vanessa-behavior
	Чтобы Вести разработку по bdd

Сценарий: Открытие 1C для открытия фичи
	Дано Я запускаю 1С в режиме клиента тестирвания

Сценарий: Открытие обработки. Загрузка feature-файла в vanessa-behavior
	Дано Я в запущеном экземпляре 1С в режиме клиента тесторования открываю обработку vanessa-behavior
	
Сценарий: Загрузка feature-файла
	Дано Я выполняю действия для загрузки feature-файла
	
Сценарий: Закрытие 1С. Загрузка feature-файла в vanessa-behavior
	Дано Я закрываю запущенный в режиме клиент тестирования экземпляр 1С