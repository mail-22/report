{********************************************************************}
{                                                                    }
{       Developer Express Visual Component Library                   }
{       ExpressQuantumGrid                                           }
{                                                                    }
{       Copyright (c) 1998-2007 Developer Express Inc.               }
{       ALL RIGHTS RESERVED                                          }
{                                                                    }
{   The entire contents of this file is protected by U.S. and        }
{   International Copyright Laws. Unauthorized reproduction,         }
{   reverse-engineering, and distribution of all or any portion of   }
{   the code contained in this file is strictly prohibited and may   }
{   result in severe civil and criminal penalties and will be        }
{   prosecuted to the maximum extent possible under the law.         }
{                                                                    }
{   RESTRICTIONS                                                     }
{                                                                    }
{   THIS SOURCE CODE AND ALL RESULTING INTERMEDIATE FILES            }
{   (DCU, OBJ, DLL, ETC.) ARE CONFIDENTIAL AND PROPRIETARY TRADE     }
{   SECRETS OF DEVELOPER EXPRESS INC. THE REGISTERED DEVELOPER IS    }
{   LICENSED TO DISTRIBUTE THE EXPRESSQUANTUMGRID AND ALL            }
{   ACCOMPANYING VCL CONTROLS AS PART OF AN EXECUTABLE PROGRAM ONLY. }
{                                                                    }
{   THE SOURCE CODE CONTAINED WITHIN THIS FILE AND ALL RELATED       }
{   FILES OR ANY PORTION OF ITS CONTENTS SHALL AT NO TIME BE         }
{   COPIED, TRANSFERRED, SOLD, DISTRIBUTED, OR OTHERWISE MADE        }
{   AVAILABLE TO OTHER INDIVIDUALS WITHOUT EXPRESS WRITTEN CONSENT   }
{   AND PERMISSION FROM DEVELOPER EXPRESS INC.                       }
{                                                                    }
{   CONSULT THE END USER LICENSE AGREEMENT FOR INFORMATION ON        }
{   ADDITIONAL RESTRICTIONS.                                         }
{                                                                    }
{********************************************************************}

unit cxGridStrs;

interface

resourcestring
scxGridRecursiveLevels = 'Нельзя создавать рекурсивные уровни';

scxGridDeletingConfirmationCaption = 'Подтверждение';
scxGridDeletingFocusedConfirmationText = 'Удалить запись?';
scxGridDeletingSelectedConfirmationText = 'Удалить все выбранные записи?';

scxGridNoDataInfoText = '<Нет данных>';

scxGridFilterRowInfoText = 'Щелкните здесь для создания фильтра';
scxGridNewItemRowInfoText = 'Щёлкните здесь для добавления новой строки';

scxGridFilterIsEmpty = '<Фильтр пуст>';

scxGridCustomizationFormCaption = 'Настройка';
scxGridCustomizationFormColumnsPageCaption = 'Колонки';
scxGridGroupByBoxCaption = 'Перетащите заголовок колонки на эту панель для группировки по выбранному полю';
scxGridFilterApplyButtonCaption = 'Применить фильтр';
scxGridFilterCustomizeButtonCaption = 'Настройка...';
scxGridColumnsQuickCustomizationHint = 'Щелкните здесь для выбора видимых колонок';

scxGridCustomizationFormBandsPageCaption = 'Панели';
scxGridBandsQuickCustomizationHint = 'Щёлкните здесь для выбора видимых полос';

scxGridCustomizationFormRowsPageCaption = 'Строки';

scxGridConverterIntermediaryMissing = 'Отсутствует промежуточный компонент!'#13#10'Добавьте компонент %s на форму.';
scxGridConverterNotExistGrid = 'cxGrid не существует';
scxGridConverterNotExistComponent = 'Компонент не существует';
scxImportErrorCaption = 'Ошибка импорта';

scxNotExistGridView = 'Вид таблицы не существует';
scxNotExistGridLevel = 'Активный уровень таблицы не существует';
scxCantCreateExportOutputFile = 'Невозможно создать файл экспорта';

  cxSEditRepositoryExtLookupComboBoxItem = 'ExtLookupComboBox|Represents an ultra-advanced lookup using the QuantumGrid as its drop down control';

  // date ranges

scxGridYesterday = 'Вчера';
scxGridToday = 'Сегодня';
scxGridTomorrow = 'Завтра';
scxGridLast30Days = 'Предыдущие 30 дней';
scxGridLast14Days = 'Предыдущие 14 дней';
scxGridLast7Days = 'Предыдущие 7 дней ';
scxGridNext7Days = 'Следующие 7 дней';
scxGridNext14Days = 'Следующие 14 дней';
scxGridNext30Days = 'Следующие 30 дней';
scxGridLastTwoWeeks = 'Предыддущие 2 недели';
scxGridLastWeek = 'Предыдущая неделя';
scxGridThisWeek = 'Текущая неделя';
scxGridNextWeek = 'Следующая неделя';
scxGridNextTwoWeeks = 'Следующие две недели';
scxGridLastMonth = 'Предыдущий месяц';
scxGridThisMonth = 'В этом месяце';
scxGridNextMonth = 'Следующий месяц';
scxGridLastYear = 'Предыдущий год';
scxGridThisYear = 'Этот год';
scxGridNextYear = 'Следующий год';
scxGridPast = 'В прошедшем';
scxGridFuture = 'В будущем';

  scxGridMonthFormat = 'mmmm yyyy';
  scxGridYearFormat = 'yyyy';

  // ChartView
  
scxGridChartCategoriesDisplayText = 'Данные';

scxGridChartValueHintFormat = '%s для %s равен %s';
  scxGridChartPercentValueTickMarkLabelFormat = '0%';

scxGridChartToolBoxDataLevels = 'Уровни данных:';
scxGridChartToolBoxDataLevelSelectValue = 'выбрать значение';
scxGridChartToolBoxCustomizeButtonCaption = 'Настройка диаграммы';

scxGridChartNoneDiagramDisplayText = 'Без диаграммы';
scxGridChartColumnDiagramDisplayText = 'Гистограмма';
scxGridChartBarDiagramDisplayText = 'Линейчатая';
scxGridChartLineDiagramDisplayText = 'График';
scxGridChartAreaDiagramDisplayText = 'С областями';
scxGridChartPieDiagramDisplayText = 'Круговая';

scxGridChartCustomizationFormSeriesPageCaption = 'Серии';
scxGridChartCustomizationFormSortBySeries = 'Сортировать по:';
scxGridChartCustomizationFormNoSortedSeries = '<нет серий>';
scxGridChartCustomizationFormDataGroupsPageCaption = 'Группы данных';
scxGridChartCustomizationFormOptionsPageCaption = 'Свойства';

scxGridChartLegend = 'Легенда';
  scxGridChartLegendKeyBorder = 'Key Border';
scxGridChartPosition = 'Расположение';
scxGridChartPositionDefault = 'По умолчанию';
scxGridChartPositionNone = 'Нет';
scxGridChartPositionLeft = 'Слева';
scxGridChartPositionTop = 'По верхнему краю';
scxGridChartPositionRight = 'По правому краю';
scxGridChartPositionBottom = 'Внизу';
scxGridChartAlignment = 'Выравнивание';
scxGridChartAlignmentDefault = 'По умолчанию';
scxGridChartAlignmentStart = 'Начало';
scxGridChartAlignmentCenter = 'Центрировать';
scxGridChartAlignmentEnd = 'Конец';
scxGridChartOrientation = 'Ориентация';
scxGridChartOrientationDefault = 'По умолчанию';
scxGridChartOrientationHorizontal = 'Горизонтально';
scxGridChartOrientationVertical = 'Вертикально';
scxGridChartBorder = 'Граница';
scxGridChartTitle = 'Заголовок';
scxGridChartToolBox = 'Инструменты';
scxGridChartDiagramSelector = 'Тип диаграммы';
scxGridChartOther = 'Другой';
scxGridChartValueHints = 'Подсказка';

implementation

end.
