# Система обліку гарантійних талонів

Цей репозиторій містить SQL-код для курсової роботи на тему розробки системи обліку гарантійних талонів. Код написаний для Microsoft SQL Server і охоплює створення повноцінної бази даних із додатковими функціональними можливостями.

## Вміст файлу

- **Створення таблиць** — основна структура бази даних, включаючи історичні таблиці для відстеження змін.
- **Наповнення таблиць** — додавання початкових даних для тестування та демонстрації роботи системи.
- **Views** — уявлення для спрощеного доступу до агрегованих або специфічних даних.
- **Stored Procedures** — процедури для отримання (GET) та внесення (SET) даних, а також автоматизації операцій із базою.
- **Історичні таблиці** — механізми для зберігання змін даних у таблицях (audit trail).

## Як використовувати

1. Завантажте файл **`insurance.sql`**.
2. Відкрийте Microsoft SQL Server Management Studio (SSMS) або інший інструмент для роботи з SQL Server.
3. Виконайте скрипт у потрібній базі даних.
4. Переконайтеся, що всі компоненти (таблиці, уявлення, процедури) створені успішно.

---

*Курсова робота з дисципліни бази даних.*
