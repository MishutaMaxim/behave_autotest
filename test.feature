Feature: Checking search ya.ru

  Scenario: Сheck empty field in search results

    Given website "ya.ru"
    Then push button with text 'Найти'
    Then page include text 'Задан пустой поисковый запрос'

  Scenario: Сheck some text in search results

    Given website "ya.ru"
    Then input in search area text 'а.с пушкин'
    Then push button with text 'Найти'
    Then page include text 'Пушкин, Александр Сергеевич — Википедия'
