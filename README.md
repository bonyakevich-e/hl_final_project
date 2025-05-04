### :black_nib: ПРОЕКТНАЯ РАБОТА: "Реализация отказоустойчивого веб-сервиса c использованием платформы оркестрации контейнеризированных приложений Kubernetes"
---------------------
#### СОДЕРЖАНИЕ:
1. :clipboard: [Введение](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#1-clipboard-%D0%B2%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5)
2. :newspaper_roll: [Схемы проекта:](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#2-newspaper_roll-%D1%81%D1%85%D0%B5%D0%BC%D1%8B-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0)
   * :newspaper_roll: [Структурная схема](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#newspaper_roll-%D1%81%D1%82%D1%80%D1%83%D0%BA%D1%82%D1%83%D1%80%D0%BD%D0%B0%D1%8F-%D1%81%D1%85%D0%B5%D0%BC%D0%B0)
   * :newspaper_roll: [Схема кластера Kubernetes](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#newspaper_roll-%D1%81%D1%85%D0%B5%D0%BC%D0%B0-%D0%BA%D0%BB%D0%B0%D1%81%D1%82%D0%B5%D1%80%D0%B0-kubernetes)
   * :newspaper_roll: [Схема системы хранения данных](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#newspaper_roll-%D1%81%D1%85%D0%B5%D0%BC%D0%B0-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B-%D1%85%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
   * :newspaper_roll: [Схема взаимодействия компонентов веб-сервиса](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#newspaper_roll-%D1%81%D1%85%D0%B5%D0%BC%D0%B0-%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F-%D0%BA%D0%BE%D0%BC%D0%BF%D0%BE%D0%BD%D0%B5%D0%BD%D1%82%D0%BE%D0%B2-%D0%B2%D0%B5%D0%B1-%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0)
3. :books: [Описание компонентов проекта:](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#3-books-%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BA%D0%BE%D0%BC%D0%BF%D0%BE%D0%BD%D0%B5%D0%BD%D1%82%D0%BE%D0%B2-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0)
   * :books: [Обзор архитектуры проекта](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#books-%D0%BE%D0%B1%D0%B7%D0%BE%D1%80-%D0%B0%D1%80%D1%85%D0%B8%D1%82%D0%B5%D0%BA%D1%82%D1%83%D1%80%D1%8B-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0)
   * :books: [Внешний и внутренний reverse прокси сервера HAProxy](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#books-%D0%B2%D0%BD%D0%B5%D1%88%D0%BD%D0%B8%D0%B9-%D0%B8-%D0%B2%D0%BD%D1%83%D1%82%D1%80%D0%B5%D0%BD%D0%BD%D0%B8%D0%B9-reverse-%D0%BF%D1%80%D0%BE%D0%BA%D1%81%D0%B8-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%B0-haproxy)
   * :books: [Платформа контейнеризации Kubernetes](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#books-%D0%BF%D0%BB%D0%B0%D1%82%D1%84%D0%BE%D1%80%D0%BC%D0%B0-%D0%BA%D0%BE%D0%BD%D1%82%D0%B5%D0%B9%D0%BD%D0%B5%D1%80%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D0%B8-kubernetes)
   * :books: [Веб-сервис Nextcloud](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#books-%D0%B2%D0%B5%D0%B1-%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81-nextcloud)
   * :books: Система управления базами данных PostgreSQL
   * :books: Система мониторинга Prometheus Grafana AlertManager
   * :books: Система централизованного сбора логов Grafana Loki

--------------------

### 1. :clipboard: Введение
__Целью проектной работы__  является установка и настройка отказоустойчивого веб-сервиса. Сбой какого-либо компонента веб-сервиса не должен приводить к его недоступности.

__Задачи проектной работы:__ 
  - спроектировать архитектуру с учетом высокой доступности;
  - развернуть несколько экземпляров сервиса
  - реализовать автоматический failover между экземплярами сервиса
  - внедрить систему мониторинга состояния сервисов
  - настроить оповещения о сбоях и аномалиях в работе сервиса
  - внедрить систему централизованного сбора логов

В качестве веб-сервиса был выбран облачный сервис с открытым исходным кодом __Nextcloud__, который развёртывается в кластере платформы оркестрации контейнеризированных приложений __Kubernetes__. В качестве базы данных используется свободная объектно-реляционная система управления базами данных __PostgreSQL__. 
Системой мониторинга является стек приложений __Prometheus-Grafana-AlertManager__. Централизованный сбор логов выполняеться системой __Grafana Loki__.

--------------------
### 2. :newspaper_roll: Схемы проекта

  * #### :newspaper_roll: Структурная схема:

![схема общая-структурная](https://github.com/user-attachments/assets/3e26227e-3763-4240-a024-381c61f1877a)


  * #### :newspaper_roll: Схема кластера Kubernetes:

![схема общая-kubernetes cluster](https://github.com/user-attachments/assets/b75916e2-8aad-4f83-ab24-c6c305847637)


  * #### :newspaper_roll: Схема системы хранения данных

![схема общая-persistent storage](https://github.com/user-attachments/assets/7fdb7ac2-0c78-4589-b6c4-0ee596eeba74)

  * #### :newspaper_roll: Схема взаимодействия компонентов веб-сервиса

![схема общая-pods](https://github.com/user-attachments/assets/a232a6e7-bf45-4005-817b-dea1e82f037e)

-------------------
### 3. :books: Описание компонентов проекта

#### :books: Обзор архитектуры проекта
Проект состоит из следующих компонентов (см. [структурную схему](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#newspaper_roll-%D1%81%D1%82%D1%80%D1%83%D0%BA%D1%82%D1%83%D1%80%D0%BD%D0%B0%D1%8F-%D1%81%D1%85%D0%B5%D0%BC%D0%B0)):
1. `Клиент`. Является внешним по отношению к запущенному веб сервису. Находиться в недоверенном (untrust) контуре. Во внутренний контур (trust) имеет доступ только по протоколам http, https.
2. `Внешний reverse прокси HAProxy`. Находится на границе untrust и trust контуре. Принимает запросы от внешних клиентов и перенаправялет их на внутренний reverse proxy. Выполняет терминацию SSL трафика.
3. `Внутренний reverse прокси HAProxy`. Выполняет несколько ролей:
   - пересылает клиентские запросы к веб-сервису
   - выполняет роль балансировщика для корректной работы отказоустойчивого кластера Kubernetes
   - выполняет роль балансировщика для запросов к СУБД PostgreSQL.
4. `Платформа контейнеризации Kubernetes`. Среда управления контейнерами веб-сервиса Nextcloud, системы мониторинга и системы логирования. 
5. `Система управления базами данных PostgreSQL`. Используется сервисами Nextcloud и Grafana для хранения настроек и данных.
6. `Веб-сервис Nextcloud`, отказоустойчивость которого обеспечивается в рамках данного проекта.
8. `Приложение Prometheus, Grafana, AlertManager`. Используются для организации мониторинга и отправки уведомлений о событиях.
9. `Приложение Grafana Loki`. Используется для централизованного сбора логов.

Каждый компонент системы резервируется на один или несколько физических серверов для выполнения задачи высокой доступности. 

Всего в проекте используется 13 виртуальных машин со следующим наименованием:
- `haproxy-ext-1`, `haproxy-ext-2` - пара внешних reverse proxy
- `haproxy-int-1`, `haproxy-int-2` - пара внутренних reverse proxy
- `control-1`, `control-2`, `control-3` - виртуальные машины под Kubernetes control plane
- `node-1`, `node-2`, `node-3` - виртуальные машины под Kubernetes worker plane
- `database-1`, `database-2`, `database-3` - виртуальные машины под кластер базы данных

#### :books: Внешний и внутренний reverse прокси сервера HAProxy
Как было сказано ранее, внешний reverse прокси разделяет доверенную (trust) и недоверенную (untrust) зоны. Для доступа к веб-сервису Nextcloud клиенты из untrust зоны обращаются по протоколу http/https на внешний виртуальный адрес сервера, HAProxy выполняет http->https redirect при необходимости, SSL termination и отправляет запрос на внутренний прокси сервер через свой внутренний интерфейс. Так же на данном сервере настроен фаервол iptables для ограничения трафика между untrust и trust zones.   

Внутренний прокси сервера получает http запрос от клиентов на внутренний виртуальный ip адрес и перенаправляет в кластер Kubernetes на Ingress Controller (ingress-nginx). Также внутренний прокси сервер является балансировщиком для кластера Kubernetes и СУБД PostgreSQL. 

Высокая доступность достигается с использованием приложения __keepalived__, который в свою очередь использует протокол __VRRP__.

#### :books: Платформа контейнеризации Kubernetes

Кластер Kubernetes состоит из 6ти виртуальных машины (см. [Схема кластера Kubernetes](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#newspaper_roll-%D1%81%D1%85%D0%B5%D0%BC%D0%B0-%D0%BA%D0%BB%D0%B0%D1%81%D1%82%D0%B5%D1%80%D0%B0-kubernetes)) - 3 виртуальных машины для controle plane, и 3 виртуальных машины для worker plane. Таким образом обеспечивается отказоуйсточивость, отказ любой из control и worker нод не приводит к остановке сервисов. 

Для организации отказоустойчивого хранилища под Persistent volume используется распределённое хранилище __Longhorn__. На каждом сервере worker plane примонтирован диск, который используется Longhorn'ом для хранения данных. Особенность Longhorn'а в том что он создает реплики данных и размазывает их по worker нодам (количество реплик указывается в настройках Longhorn). Таким образом, отказ ноды не приводит к потере данных. Для работы Longhorn использует NFS, в следствии чего обеспечивается одновременный доступ к один и тем же данным с разных подов. 

#### :books: Веб-сервис Nextcloud

__Nextcloud__ - облачный сервис хранения данных с открытым исходным кодом. Развёртывается в кластере Kubernetes в двух экземплярах, тем самым достигается высокая доступность данного веб-сервиса. Данные хранит в Persistent Volume, который выделяется Longhorn'ом в ответ на Persitent Volume Claim. Настройки хранит в базе данных PostgreSQL. 

Для публикации Nextcloud используется Ingress (ingress-nginx), на котором настроен sticky session (session affinity). 

[Схема взаимодействия компонентов веб-сервиса](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#newspaper_roll-%D1%81%D1%85%D0%B5%D0%BC%D0%B0-%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F-%D0%BA%D0%BE%D0%BC%D0%BF%D0%BE%D0%BD%D0%B5%D0%BD%D1%82%D0%BE%D0%B2-%D0%B2%D0%B5%D0%B1-%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0) представлена выше.

#### :books: Система управления базами данных PostgreSQL

Веб-сервис Nextcloud хранит свои настройки в базе данных. В проекте используется кластер СУБД PostgreSQL. Для реализации высокой доступности используется приложение Patroni. Кластер состоит из трёх виртуальных машин. В единицу времени один из серверов является Leader, два других - Replica. Проксированием запросов на Leader/Replica занимается внутренний прокси сервер HAProxy. 



В качестве системы мониторинга используется kube-prometheus-stack (Prometheus, Alertmanager, Grafana). 
Высокая доступность для Prometheus достингается за счёт запуска двух Statefull приложений, который работают отдельно друг от друга. Каждый из них снимает одни и те же метрики. Между собой они ничего не синхронят. Соответственно могут быть небольшая разница в показаниях. Чтобы это решить можно использовать Thanos, но я не использовал. (https://prometheus-operator.dev/docs/platform/high-availability/)
Alertmanager собирается в кластер из коробки, достаточно указать в values количество реплик (https://prometheus.io/docs/alerting/latest/alertmanager/#high-availability)
Чтобы Grafana могла работать в HA нужно использовать сторонюю БД (по умолчанию используется локальная SQLite) (https://grafana.com/docs/grafana/latest/setup-grafana/set-up-for-high-availability/). Я использовал кластер PostgreSQL, развёрнутый ранее. Так как чарт kube-prometheus-stack использует сабчарт grafana, настройки коннекта к БД делаем с сабчарте в values kube-prometheus-stack/charts/grafana/values.yaml, блок grafana.ini.
Везде настраиваем на Ingress липкие сессии.

Для сбора и хранения логов используется стек Loki, Grafana, Alloy (https://grafana.com/docs/loki/latest/send-data/k8s-monitoring-helm/). 
Loki поднимается helm-чартом grafana/loki. Alloy поднимается helm-чартом grafana/k8s-monitoring
