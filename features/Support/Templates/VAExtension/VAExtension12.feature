﻿# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

@IgnoreOnCIMainBuild


Функциональность: VAExtension12
 

Сценарий: VAExtension12

	И В командном интерфейсе я выбираю 'Основная' 'Документ1'
	Тогда открылось окно 'Документ1'
	И в таблице "Список" я выбираю текущую строку
	И я сохраняю навигационную ссылку текущего окна в переменную "НавСсылкаДокумент"
	Когда открылось окно 'Документ1*от*'
	И Я закрываю окно 'Документ1*от*'
	И Я закрываю окно 'Документ1' 
	И я получаю состояние объекта по навигационной ссылке "$НавСсылкаДокумент$" (расширение)
	И выражение внутреннего языка 'НЕ Контекст.Проведен' Истинно
