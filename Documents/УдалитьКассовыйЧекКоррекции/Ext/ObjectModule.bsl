﻿#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда
	
//#Область ОбработчикиСобытий

Процедура ОбработкаЗаполнения(ДанныеЗаполнения, СтандартнаяОбработка)
	
	ЗаполнениеДокументов.ЗаполнитьШапкуДокумента(ЭтотОбъект, глЗначениеПеременной("глТекущийПользователь"));
	ЭтотОбъект.СистемаНалогообложения = МенеджерОборудованияКлиентСервер.СистемаНалогообложения(ЭтотОбъект.Организация);
	Если ТипЗнч(ДанныеЗаполнения) = Тип("Структура") Тогда
		ЗаполнитьЗначенияСвойств(ЭтотОбъект, ДанныеЗаполнения);
	КонецЕсли;
	
КонецПроцедуры

Процедура ПриКопировании(ОбъектКопирования)
	
	ПробитЧек = Ложь;
	НомерЧекаККМ = 0;
	
КонецПроцедуры

//#КонецОбласти

#КонецЕсли