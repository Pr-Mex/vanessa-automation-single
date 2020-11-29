﻿# language: ru
# encoding: utf-8
#parent ua:
@UA17_что_нового_в_версии
#parent uf:
@UF6_текстовые_и_видео_инструкции

@IgnoreOnCIMainBuild



Функциональность: Что нового в релизе 1.2.035

 
Контекст:
	Дано я запускаю SikuliX сервер

	
	

Сценарий: Что нового в релизе 1.2.035



	Дано видеовставка картинки 'ЛогоДляПервогоКадра' 'Привет! Я - Ванесса. В этом видео я расскажу, об основных изменениях в моём новом релизе: 1.2.035.'
	
	
	#[autodoc.ignorestep]	
	*Давайте пройдёмся по файлу истории и посмотрим, что там нового.
		Дано я нажимаю хоткей "r" "win"
		И Пауза 1
		И я набираю текст "code"
		Дано я нажимаю ENTER
		И я жду картинки "VSC открылся" в течение 10 секунд
		Дано я нажимаю хоткей "o" "ctrl"
		И я жду картинки "All files" в течение 10 секунд
		И я набираю текст "C:\Temp\Changelog.md"
		И я нажимаю ENTER

		
	Дано текст субтитров "Сначала про новые возможности."
	
	#[autodoc.ignorestep]	
	И пауза 2
	
	
	//Новые возможности	
	
	И видеовставка 'Развитие редактора сценариев'
	Дано текст субтитров "Появившийся недавно редактор сценариев был серьёзно доработан."
	* Появилась поддержка работы с несколькими вкладками редактора.
		Дано поиск строки в редакторе через буфер обмена 'Работа с несколькими вкладками редактора. #961 Спасибо @lintest'
	Дано текст субтитров "Поддержано создание новой вкладки, её закрытие и сохранение файла."
	Дано текст субтитров "Также появилась возможность открыть в новой вкладке любой под сценарий."

	* Также редактор сценариев теперь работает под Linux.
		Дано поиск строки в редакторе через буфер обмена 'Адаптация работы редатора под Linux. Спасибо @lintest'

	И видеовставка "Спасибо Денису Кандрашину за развитие и поддержку нового редактора сценариев для Vanessa Automation!"



	И видеовставка 'Интеграция с git'
	* Теперь Vanessa Automation умеет выполнять команды git, такие как коммит, пул, пуш и другие.
		Дано поиск строки в редакторе через буфер обмена 'Поддержка основных команд работы с git. #1001 Спасибо @lintest'
	Дано текст субтитров "Это позволит упростить сохранение тестов в системе контроля версий."
	И видеовставка 'Синтез речи'
	* Теперь появилась возможность произнести текст не используя сторонние приложения.
		Дано поиск строки в редакторе через буфер обмена 'Добавить возможность произносить текст диктора без использования внешнего плеера. #992 Спасибо @lintest'
	Дано текст субтитров "Для этого используется встроенная компонента VanessaExt."
	И видеовставка "Спасибо Денису Кандрашину за развитие внешней компоненты VanessaExt!"


	И видеовставка 'Интеграция с CI'
	* Появилась возможность выводить в лог CI сервера подробную информацию о текущем проценте успешно выполненных тестов.
		Дано поиск строки в редакторе через буфер обмена 'Вывод в лог CI текущего статуса выполнения шагов #842 Спасибо @KrapivinAndrey'
	И видеовставка 'Отчет Allure'
	* Также появилась возможность отключать ненужные уровни группировок в отчете Allure.
		Дано поиск строки в редакторе через буфер обмена 'Возможность отключать уровень группировки отчета Аллюр #1009 Спасибо @KrapivinAndrey'
	И видеовставка "Спасибо Андрею Крапивину за эти доработки!"


	И видеовставка 'Звуковое оповещение'
	* Теперь Vanessa Automation умеет делать звуковое оповещение при окончании выполнения сценария.
		Дано поиск строки в редакторе через буфер обмена 'Звуковое оповещение при окончании выполнения сценария. #995'
	Дано текст субтитров "Это полезно, когда ваш сценарий выполняется в терминале или виртуальной машине и выхотите узнать о завершении тэста."


	И видеовставка 'Завершение сеанса'
	* Теперь Vanessa Automation умеет принудительно завершать сеанс клиента тестирования, если он не закрылся самостоятельно.
		Дано поиск строки в редакторе через буфер обмена 'Возможность завершать процесс клиента тестирования если он не завершился самостоятельно. #970'
	Дано текст субтитров "Это позволяет гарантированно управлять процессами клиентов тестирования во время запуска тестов."


	И видеовставка 'Исследователь формы'
	* Работа исследователя формы была серьёзно оптимизирована при работе с браузером.
		Дано поиск строки в редакторе через буфер обмена 'Оптимизация работы исследователя формы для web клиента. #1032'
	Дано текст субтитров "Теперь проще определять состояние элементов формы web клиента."



	Дано текст субтитров "Ещё были исправлены ошибки и сделано много других полезных доработок."
	И видеовставка "Подробности, как обычно, можно найти в файле Changelog.MD"
	
								
	Дано текст субтитров "На этом всё. Подписывайтесь, ставьте лайки, до новых встреч!"
	Дано видеовставка "Ванесса! Тесты - есть!"
	
	#[autodoc.ignorestep]
	И я закрываю текстовый редактор
	
					