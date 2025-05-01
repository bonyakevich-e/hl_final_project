# hl_final_project
OTUS High Load Final Project: Subject: Реализация отказоустойчивого кластера веб-приложения Nextcloud

В качестве системы мониторинга используется kube-prometheus-stack (Prometheus, Alertmanager, Grafana). 
Высокая доступность для Prometheus достингается за счёт запуска двух Statefull приложений, который работают отдельно друг от друга. Каждый из них снимает одни и те же метрики. Между собой они ничего не синхронят. Соответственно могут быть небольшая разница в показаниях. Чтобы это решить можно использовать Thanos, но я не использовал. (https://prometheus-operator.dev/docs/platform/high-availability/)
Alertmanager собирается в кластер из коробки, достаточно указать в values количество реплик (https://prometheus.io/docs/alerting/latest/alertmanager/#high-availability)
Чтобы Grafana могла работать в HA нужно использовать сторонюю БД (по умолчанию используется локальная SQLite) (https://grafana.com/docs/grafana/latest/setup-grafana/set-up-for-high-availability/). Я использовал кластер PostgreSQL, развёрнутый ранее. Так как чарт kube-prometheus-stack использует сабчарт grafana, настройки коннекта к БД делаем с сабчарте в values kube-prometheus-stack/charts/grafana/values.yaml, блок grafana.ini.
Везде настраиваем на Ingress липкие сессии.

Для сбора и хранения логов используется стек Loki, Grafana, Alloy (https://grafana.com/docs/loki/latest/send-data/k8s-monitoring-helm/). 
Loki поднимается helm-чартом grafana/loki. Alloy поднимается helm-чартом grafana/k8s-monitoring