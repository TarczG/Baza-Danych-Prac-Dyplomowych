## Baza-Danych-Prac-Dyplomowych

![WdiokBazy](https://user-images.githubusercontent.com/63725366/79581471-bfedc000-80ca-11ea-8704-530eb6fc768e.jpg)

- Skrypt zaimportowany z Microsoft SQL Server
- Implementacje wiele do wielu
- Procedury składowane / kwerendy np: 
  PraceObronionewPrzedziale, PraceRecenzowanePrzezRecenzenta, PraceWzgledemTypuStudiow, SzukajPoPromotorze, SzukajPoTematyce

- Wykaz tabel (pola danej tabeli):
  - Autorzy (ID_Student, ID_Praca)
  - Dyplomant (ID_Student, Nazwisko, Imie, NumerIndeksu)
  - PracaDyplomowa (ID_Praca, ID_Promotor, Temat, DataObrony, Ocena, ID_TypStudiow, ID_Wydzial)
  - Wydział (ID_Wydzialu, NazwaWydzialu, ID_Uczelni)
  - Uczelnia (ID_Uczelni, NazwaUczelni)
  - Slownik (ID_Praca, ID_SlowoKlucz)
  - SlowoKlucz (ID_SlowoKlucz, SlowoKlucz)
  - Recenzja (ID_Praca, ID_Wykladowca, Ocena)
  - Recenzenci (ID_Wykladowca, Imie, Nazwisko, ID_StopienNaukowy)
  - StopienNaukowy (ID_StopienNaukowy, NazwaStopnia)
  
  
  
