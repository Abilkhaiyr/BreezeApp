# Breeze

Минимальный Flutter-каркас по структуре avtokomek.

## Запуск

```sh
flutter pub get
flutter run
```

## Архитектура

Запуск: main → AppRunner → CompositionRoot → App → MaterialContext → LauncherPage → MainPage.

- lib/src/core: конфигурация, общие виджеты, темы, инфраструктура и RepositoryScope.
- lib/src/feature/app: запуск, сборка зависимостей, DependenciesScope, shell и роутер.
- lib/src/feature/settings: Bloc/Cubit → repository → datasource; настройки темы.
- lib/src/feature/main: стартовый экран и папки bloc, data, model, presentation.
- assets/icons, assets/images, assets/documents: папки ресурсов; добавляй реальные ресурсы в pubspec.yaml по мере необходимости.

Доступ к зависимостям: context.dependencies и context.repository из context_extension.dart. Новые зависимости собирай в CompositionRoot. Новые экраны регистрируй в AppRouter, общие стили добавляй в core/theme.

Это минимальный перенос архитектурного каркаса, а не всего стека avtokomek: роутер использует стандартную Flutter-навигацию вместо auto_route, состояния написаны без генерации. Firebase, API, авторизация и автомобильные модули не подключены. Настройки пока хранятся в памяти. Старые пути lib/feature/app содержат только совместимые экспорты; рабочий код находится в lib/src.

## Проверка

```sh
flutter analyze
flutter test
```
