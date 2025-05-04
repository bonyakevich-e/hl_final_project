### :black_nib: ПРОЕКТНАЯ РАБОТА: "Реализация отказоустойчивого веб-сервиса c использованием платформы оркестрации контейнеризированных приложений Kubernetes"
---------------------
#### СОДЕРЖАНИЕ:
1. :clipboard: [Введение](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#1-clipboard-%D0%B2%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5)
2. :newspaper_roll: [Схемы проекта:](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#2-newspaper_roll-%D1%81%D1%85%D0%B5%D0%BC%D1%8B-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0)
   * :pencil2: [Структурная схема](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#pencil2-%D1%81%D1%82%D1%80%D1%83%D0%BA%D1%82%D1%83%D1%80%D0%BD%D0%B0%D1%8F-%D1%81%D1%85%D0%B5%D0%BC%D0%B0)
   * :pencil2: [Схема кластера Kubernetes](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#pencil2-%D1%81%D1%85%D0%B5%D0%BC%D0%B0-%D0%BA%D0%BB%D0%B0%D1%81%D1%82%D0%B5%D1%80%D0%B0-kubernetes)
   * :pencil2: [Схема системы хранения данных](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#pencil2-%D1%81%D1%85%D0%B5%D0%BC%D0%B0-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B-%D1%85%D1%80%D0%B0%D0%BD%D0%B5%D0%BD%D0%B8%D1%8F-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)
   * :pencil2: [Схема взаимодействия компонентов веб-сервиса](https://github.com/bonyakevich-e/hl_final_project/tree/main?tab=readme-ov-file#pencil2-%D1%81%D1%85%D0%B5%D0%BC%D0%B0-%D0%B2%D0%B7%D0%B0%D0%B8%D0%BC%D0%BE%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F-%D0%BA%D0%BE%D0%BC%D0%BF%D0%BE%D0%BD%D0%B5%D0%BD%D1%82%D0%BE%D0%B2-%D0%B2%D0%B5%D0%B1-%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D0%B0)
3. Что-то еще

--------------------
### 1. :clipboard: Введение

--------------------
### 2. :newspaper_roll: Схемы проекта

  * #### :pencil2: Структурная схема:

![схема общая-структурная](https://github.com/user-attachments/assets/3e26227e-3763-4240-a024-381c61f1877a)


  * #### :pencil2: Схема кластера Kubernetes:

![схема общая-kubernetes cluster](https://github.com/user-attachments/assets/5d64eaa7-6c68-4b7a-8ffa-4e9db6155ca3)


  * #### :pencil2: Схема системы хранения данных

![схема общая-persistent storage](https://github.com/user-attachments/assets/7fdb7ac2-0c78-4589-b6c4-0ee596eeba74)

  * #### :pencil2: Схема взаимодействия компонентов веб-сервиса

![схема общая-pods](https://github.com/user-attachments/assets/90787a20-28a9-4fdf-8679-0a95ca572c80)




В качестве системы мониторинга используется kube-prometheus-stack (Prometheus, Alertmanager, Grafana). 
Высокая доступность для Prometheus достингается за счёт запуска двух Statefull приложений, который работают отдельно друг от друга. Каждый из них снимает одни и те же метрики. Между собой они ничего не синхронят. Соответственно могут быть небольшая разница в показаниях. Чтобы это решить можно использовать Thanos, но я не использовал. (https://prometheus-operator.dev/docs/platform/high-availability/)
Alertmanager собирается в кластер из коробки, достаточно указать в values количество реплик (https://prometheus.io/docs/alerting/latest/alertmanager/#high-availability)
Чтобы Grafana могла работать в HA нужно использовать сторонюю БД (по умолчанию используется локальная SQLite) (https://grafana.com/docs/grafana/latest/setup-grafana/set-up-for-high-availability/). Я использовал кластер PostgreSQL, развёрнутый ранее. Так как чарт kube-prometheus-stack использует сабчарт grafana, настройки коннекта к БД делаем с сабчарте в values kube-prometheus-stack/charts/grafana/values.yaml, блок grafana.ini.
Везде настраиваем на Ingress липкие сессии.

Для сбора и хранения логов используется стек Loki, Grafana, Alloy (https://grafana.com/docs/loki/latest/send-data/k8s-monitoring-helm/). 
Loki поднимается helm-чартом grafana/loki. Alloy поднимается helm-чартом grafana/k8s-monitoring
