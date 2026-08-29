# Import bazy produktów z CSV

Wgranie 417 produktów z pliku `Products_rows_1-2.csv` do bazy projektu, tak aby Product Finder znów był pełny.

## Co zostanie zrobione

1. **Import produktów** — wszystkie 417 wierszy trafią do tabeli produktów z zachowaniem oryginalnych ID, tytułów, cen (PLN i CNY), zdjęć, kategorii, linków do agentów, rozmiarów, batchy, jakości, liczników (polubienia/wyświetlenia), kolejności wyświetlania i dat utworzenia. Żaden wiersz nie ma przypisanego sprzedawcy, więc wszystkie pokażą się w globalnym finderze.
2. **Uzupełnienie kategorii** — w CSV są kategorie, których nie ma jeszcze na liście filtrów: Room, Plecak/torby/torebki, Elektronika, Lego, Spodenki, Portfele, Akcesoria (ciuch), Akcesoria (nie ciuch), Kurtki przeciwdeszczowe, Klapki, Sets. Dodam je, żeby przyciski filtrów obejmowały cały asortyment.
3. **Weryfikacja** — po imporcie sprawdzę w podglądzie, że lista produktów, licznik i filtry kategorii działają.

## Uwagi

- „Sets ” (ze spacją) i „Sets” zostaną scalone do jednej kategorii `Sets`.
- Import jest idempotentny: wiersze o tych samych ID nie zostaną zduplikowane przy powtórnym uruchomieniu.
- Nie zmieniam schematu ani kodu aplikacji — to wyłącznie wgranie danych plus wpisy kategorii.
