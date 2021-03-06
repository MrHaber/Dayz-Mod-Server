**Dayz-Mod-Server build (1.9.0 DayzMod Vanilla)**

![Language SQL](https://img.shields.io/badge/language-sql-yellow.svg)
![Language SQF](https://img.shields.io/badge/language-sqf-blue.svg)
![Language C++](https://img.shields.io/badge/language-c++-red.svg)
[![GitHub issues](https://img.shields.io/github/issues/MrHaber/Dayz-Mod-Server.svg)](https://github.com/MrHaber/Dayz-Mod-Server/issues)
![Stars](https://img.shields.io/github/stars/MrHaber/Dayz-Mod-Server?color=yellow)
![Forks](https://img.shields.io/github/forks/MrHaber/Dayz-Mod-Server?color=blue)
===============================
Dayz-Mod 1.9.0 AlexMod Edition - это сборка dayzmod сервера, которая тестировалась, в течении 6 месяцев на реальном проекте AlexMod и серверах Vanilla.


Данная сборка предназначена, как для постоянного, так для ознакомительного характера использования. Все необходимые файлы, для работы были взяты с [официальной страницы dayz mod github](https://github.com/DayZMod/DayZ)

Отдельное спасибо игрокам которые помогали тестировать:

* Dante (советы по добавлению нововведений на сервер)
* King (первый постоянный тестер сервера)
* AXEL (отладчик)
* FET (230 часов наиграно за всё время)
* Tokar (первый тестировщик системы доната)
* OldPilot (первый донатер и тестировщик системы поощрения игроков)
* Bradice (ментор)

Также хочу упомянуть форумы: 
* www.s-platoon.ru (код + trouble shoot)
* www.reddit.com (совет по механике dayzmod)
---------------------------

Установка [RU]
---------------------------
1. Установите Arma 2 Combined Armors, либо Arma 2 OA & Arma 2
2. Скопируйте `git clone https://github.com/MrHaber/Dayz-Mod-Server` если у вас установлен GitBash, либо любая другая cms для работы с git, если нет просто скачайе архив с гитхаба
3. Создайте новую папку и распакуйте выкачаный архив туда, после переместите все файлы Arma 2 & Arma 2 OA в папку с файлами архива, предварительно заменяя все файлы, если потребуется, рекомендую сохранить дубликаты файлов из папки Keys
4. [!!!] Проверьте steam_appid, в нём долны быть прописан id либо Dayz Mod, либо Arma 2 OA из магазина steam
5. Проверьте наличие:
* Visual C++ 2005 (x86)
* Visual C++ 2005 (x64)
* Visual C++ 2008 (x86)
* Visual C++ 2008 (x64)
* Visual C++ 2010 (x86)
* Visual C++ 2010 (x64)
* [MySQL Community Server версии 5.7.27 x32](https://downloads.mysql.com/archives/get/p/23/file/mysql-5.7.27-win32.zip) или [MySQL Community Server версии 5.7.27 x64](https://downloads.mysql.com/archives/get/p/23/file/mysql-5.7.27-winx64.zip)
* MySQL Workbench либо Navicat (программа для работы с SQL)
* Командная строка mysql
------------------------------
Если у вас по какой нибудь причине установлена более свежая версия mysql сервера, рекомендую заранее проверить версию сервера командой `mysql --version` и проверить поддержку 5.7.27 операций, в противном случае установить вышеуказанные версии поверх более новых/старых версий.

Установка сервера [RU]
------------------------------
* Перед выполнением всех условий, ознакомьтеть с одной из сред для работы с mysql
1. Создайте базу данных и дайте ей название hivemind пароль можно устанавливать любой
2. В данную базу данных экспортируйте все файлы из папки SQL, за исключением `1.8.9_Updates`
3. После экспортирования, убедитесь что весь sql код был выполнен на вашей базе данных успешно.
4. Вспомогательные команды: 
* TRUNCATE TABLE [название таблицы] - отчистить таблицу, предположим от построек на сервере `object_data`
* use [название бд] (в нашем случае hivemind) - выбрать конкретную бд, для работы, актуально для терминала mysql
* call pMain(1337) (1337 - это эксемпляр вашего сервера, проверьте его в `config.sqf`, если эксемпляр сервера не совпадает с числом в конфиге техника и построки не появятся) - удалить из базы данных уничтоженную технику и заспавнить новую
* Все остальные инструменты есть в таблицах, (структура sql представляет собой - функции, процедуры, и таблицы, `НЕ` путайте их!)
5. После установки самой базы данных, перейдите в файл находящийся в папке `cfgdayz` под названием `HiveExt`
6. Укажите в полях название БД/Таблицу/Данные от аккаунта mysql, в графе host, укажите Localhost если ваша база данных располагается у вас на компьютере.
7. Также вы можете изменить настройки в server.cfg и сделать всё под себя.
8. После всех манипуляций вы можете запускать сервер файлом start.bat
------------------------------
Заметили баг/недоработку, пишите в раздел [issues](https://github.com/MrHaber/Dayz-Mod-Server/issues)

[Фичи и подробное описание некоторых функций.](https://drive.google.com/file/d/1YmrcydPkIOVx5p9RS-bWEjuTpufDvarC/view?usp=sharing) 

Licence:
--------------------------
Arma Public License Share Alike (APL-SA) - https://www.bistudio.com/community/licenses/arma-public-license-share-alike
