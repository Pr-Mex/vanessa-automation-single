﻿# language: ru

@lessons

Функционал: Интерактивная справка. Как тестировать HTML документ.

Сценарий: Как тестировать HTML документ.

	* Привет! В этом уроке я расскажу тебе какие есть варианты, если нужно протестировать HTML документ, находящийся на форме 1С. Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения

	* Загр^узим тестовый пример.
		И я устанавливаю опцию VA в режиме обучения "ПроверкаСинтаксисаВРедакторе" "Истина"
		И я загружаю фичи в VA в режиме обучения "$КаталогИнструментов$\training\features\Примеры\ПримерКакТестироватьHTMLДокумент.feature"

	* Дело в том, что апи платформы автотестирования 1С в данный момент не умеет работать с полем HTML документа.
	* Поэтому приходится искать альтернативные способы решения.
	* Для некоторых случаев могут подойти шаги из расширения VAExtension.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 12 по 13 строку 'Шаги из расширения VAExtension' подсценарий
	* Эти шаги уже умеют выполнять некоторые действия с полем HTML документа.	
	* Подробнее смотри в документации по расширению VAExtension.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 10 по 10 строку 'Документация по расширению VAExtension' подсценарий

	* Другой способ протестировать поле HTML документа - это написать собственное расширение, которое будет эмулировать работу пользователя.
		И Пауза 2
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 15 по 15 строку 'Создать своё расширение' подсценарий
	
	* Следующий способ - это использовать шаги, которые умеют искать картинки на экране и эмулировать действия пользователя.
		И Я делаю подсветку текста в редакторе VA в режиме обучения с 17 по 17 строку 'Использовать поиск картинок на экране' подсценарий

	* На этом всё, переходи к следующему уроку интерактивной справки.
		


