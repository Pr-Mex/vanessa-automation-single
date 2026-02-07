#language: en
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA25_Макеты_для_отчетов_о_выполнении

@IgnoreOnCIMainBuild


Feature: VAEditor59
 

Scenario: VAEditor59

	And Delay 1
	And I input text from "TemplateName" template in the field named "FieldName"
	And "TableName" table does not contain rows by template:
 		| 'ColumnName1' | 'ColumnName2' |
 		| 'Value1'      | 'Value2'      |

	

