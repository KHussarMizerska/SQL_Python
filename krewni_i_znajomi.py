import pymysql
import datetime

x = (10*"**********")
now = datetime.datetime.now()
rok = now.year


class DBConnect:

    now = datetime.datetime.now()
    rok = now.year
    log_imie = ""
    log_nazwisko = ""
    log_ur = ""

    def __init__(self):
        try:
            self.conn = pymysql.connect("localhost", "root", "Kassar1!", "krewni_i_znajomi")
            print("Połączenie z bazą danych ustanowione!")
            self.logowanie()
            self.conn.close()
        except:
            print("Podałeś błędne dane do połączenia z bazą danych!")

    def logowanie(self):

        self.log_imie = input("Podaj imię: ")
        self.log_nazwisko = input("Podaj nazwisko: ")
        #self.log_ur = input("Podaj datę urodzenia w formacie RRRR-MM-DD: ")

        self.cursor = self.conn.cursor()

        # self.cursor.execute("SELECT * FROM dorosli WHERE imie=%s AND nazwisko=%s AND data_ur=%s", (self.log_imie, self.log_nazwisko, self.log_ur))
        self.cursor.execute("SELECT * FROM dorosli WHERE imie=%s AND nazwisko=%s", (self.log_imie, self.log_nazwisko))
        allResults = self.cursor.fetchall()

        if (self.log_imie == "a") and (self.log_nazwisko == "a"):
            print("Witaj administratorze!")
            self.menu_admin()
        elif (len(allResults) == 1):
            print(x)
            print("Cześć " + self.log_imie + "!")
            print(x)
            self.menu_user()
        else:
            print("Niepoprawne dane do logowania!")
            self.logowanie()

    # MENU

    def menu_admin(self):

        menu = """\nWybierz, co chcesz zrobić: 
            1 - Kartka z kalendarza 
            2 - Wyświetl wszystkich w bazie 
            3 - Wyświetl statystyki imion dzieci
            4 - Wyświetl statystyki imion dorosłych
            5 - Wyświetl statystyki miesiąca urodzenia
            6 - Wyświetl statystyki dni tygodnia urodzenia
            7 - Wyświetl statystyki znaków zodiaku
            8 - Wyświetl statystyki rocznic ślubu w tym roku
            z - Zarządzanie bazą
            w - Wyjście z programu"""

        while (True):
            dec = input(menu)
            if (dec == "1"):
                self.urodziny_dzis()
                self.okragle_dni_dzis()
                self.rocznice_slubu()
                self.menu_admin()
            elif (dec == "2"):
                self.wszyscy()
                self.menu_admin()
            elif (dec == "3"):
                self.imiona_dz()
                self.menu_admin()
            elif (dec == "4"):
                self.imiona_d()
                self.menu_admin()
            elif(dec == "5"):
                self.mies_ur_w()
                self.menu_admin()
            elif (dec == "6"):
                self.dni_tyg_ur_w()
                self.menu_admin()
            elif (dec == "8"):
                self.rocznice_slubu_rok()
                self.menu_admin()
            elif (dec == "z"):
                self.zarzadzanie()
                self.menu_admin()
            elif (dec == "w"):
                print("Koniec programu, podobało się?")
                break
            else:
                print("Niepoprawne dane wejściowe")

    def menu_user(self):

        while (True):
            dec = input("""\nWybierz, co chcesz zobaczyć:
                    1 - Moje dane
                    2 - Statystyki
                    3 - Demografia
                    w - Wyjście z programu""")

            if (dec == "1"):
                self.moje_dane()
                self.menu_user()
            elif (dec == "2"):
                self.statystyki()
                self.menu_user()
            elif (dec == "3"):
                print(x)
                print("Ta sekcja jest jeszcze pusta!")
                print(x)
                self.menu_user()
            elif (dec == "w"):
                print("Koniec programu, podobało się?")
                break
            else:
                print("Niepoprawny wybór!")

    def statystyki(self):

        menu = """\nJakie statystyki Cię interesują?
                    1 - Dzieci
                    2 - Dorośli
                    3 - Wszyscy
                    p - Powrót do menu głównego
                    w - Wyjście z programu"""

        while (True):
            dec = input(menu)
            if (dec == "1"):
                self.statystyki_dz()
                self.menu_user()
            elif (dec == "2"):
                self.statystyki_d()
                self.menu_user()
            elif (dec == "3"):
                self.statystyki_w()
                self.menu_user()
            elif (dec == "p"):
                self.menu_user()
            elif (dec == "w"):
                print("Koniec programu, podobało się?")
                break
            else:
                print("Niepoprawny wybór!")

    def statystyki_dz(self):

        menu = """\nJakie statystyki dzieci Cię interesują?
                            1 - Statystyki imion dzieci
                            2 - Statystyki misięcy urodzenia dzieci
                            3 - Statystyki lat urodzenia dzieci
                            4 - Statystyki dni tygodnia urodzenia dzieci
                            5 - Statystyki znaków zodiaku dzieci
                            p - Powrót do menu głównego
                            w - Wyjście z programu"""

        while (True):
            dec = input(menu)
            if (dec == "1"):
                self.imiona_dz()
                self.statystyki_dz()
            elif (dec == "2"):
                self.mies_ur_dz()
                self.statystyki_dz()
            elif (dec == "3"):
                self.lata_ur_dz()
                self.statystyki_dz()
            elif (dec == "4"):
                self.dni_tyg_ur_dz()
                self.statystyki_dz()
            elif (dec == "5"):
                self.znaki_zodiaku_dz()
                self.statystyki_dz()
            elif (dec == "p"):
                self.menu_user()
            elif (dec == "w"):
                print("Koniec programu, podobało się?")
                break
            else:
                print("Niepoprawny wybór!")

    def statystyki_d(self):

        menu = """\nJakie statystyki dorosłych Cię interesują?
                            1 - Statystyki imion dorosłych
                            2 - Statystyki misięcy urodzenia dorosłych
                            3 - Statystyki lat urodzenia dorosłych
                            4 - Statystyki dni tygodnia urodzenia dorosłych
                            5 - Statystyki znaków zodiaku dorosłych
                            6 - Statystyki miesięcy ślubu
                            7 - Statystyki dni tygodnia ślubu
                            p - Powrót do menu głównego
                            w - Wyjście z programu"""

        while (True):
            dec = input(menu)
            if (dec == "1"):
                self.imiona_d()
                self.statystyki_d()
            elif (dec == "2"):
                self.mies_ur_d()
                self.statystyki_d()
            elif (dec == "3"):
                self.lata_ur_d()
                self.statystyki_d()
            elif (dec == "4"):
                self.dni_tyg_ur_d()
                self.statystyki_d()
            elif (dec == "5"):
                self.znaki_zodiaku_d()
                self.statystyki_d()
            elif (dec == "6"):
                self.mies_slubu()
                self.statystyki_d()
            elif (dec == "7"):
                self.dni_tyg_slubu()
                self.statystyki_d()
            elif (dec == "p"):
                self.menu_user()
            elif (dec == "w"):
                print("Koniec programu, podobało się?")
                break
            else:
                print("Niepoprawny wybór!")

    def statystyki_w(self):

        menu = """\nJakie statystyki łączne Cię interesują?
                            1 - Statystyki imion 
                            2 - Statystyki misięcy urodzenia
                            3 - Statystyki dni miesiąca urodzenia
                            4 - Statystyki dni tygodnia urodzenia 
                            5 - Statystyki znaków zodiaku 
                            6 - Statystyki rocznic ślubu w tym roku
                            7 - 
                            p - Powrót do menu głównego
                            w - Wyjście z programu"""

        while (True):
            dec = input(menu)
            if (dec == "1"):
                self.imiona_w()
                self.statystyki_w()
            elif (dec == "2"):
                self.mies_ur_w()
                self.statystyki_w()
            elif (dec == "3"):
                self.dni_mies_ur_w()
                self.statystyki_w()
            elif (dec == "4"):
                self.dni_tyg_ur_w()
                self.statystyki_w()
            elif (dec == "5"):
                self.znaki_zodiaku_w()
                self.statystyki_w()
            elif (dec == "6"):
                self.rocznice_slubu_rok()
                self.statystyki_d()
            elif (dec == "7"):
                self.dni_tyg_slubu()
                self.statystyki_d()
            elif (dec == "p"):
                self.menu_user()
            elif (dec == "w"):
                print("Koniec programu, podobało się?")
                break
            else:
                print("Niepoprawny wybór!")

    def zarzadzanie(self):

        menu = """\nJakie zmiany w bazie dancyh chcesz wprowadzić?
                            1 - Dodaj osoby
                            2 - Usuń osoby
                            3 - Zmień dane
                            p - Powrót do menu głównego
                            w - Wyjście z programu"""

        while (True):
            dec = input(menu)
            if (dec == "1"):
                self.dodaj_osoby()
                self.zarzadzanie()
            elif (dec == "2"):
                self.mies_ur_dz()
                self.zarzadzanie()
            elif (dec == "3"):
                self.lata_ur_dz()
                self.zarzadzanie()
            elif (dec == "p"):
                self.menu_admin()
            elif (dec == "w"):
                print("Koniec programu, podobało się?")
                break
            else:
                print("Niepoprawny wybór!")

    def dodaj_osoby(self):

        menu = """\nKogo chcesz dodać do bazy?
                            1 - Dodaj dziecko
                            2 - Dodaj dorosłego
                            p - Powrót do menu głównego
                            w - Wyjście z programu"""

        while (True):
            dec = input(menu)
            if (dec == "1"):
                self.dodaj_dz()
                self.dodaj_osoby()
            elif (dec == "2"):
                self.dodaj_d()
                self.dodaj_osoby()
            elif (dec == "p"):
                self.menu_admin()
            elif (dec == "w"):
                print("Koniec programu, podobało się?")
                break
            else:
                print("Niepoprawny wybór!")

    # DZIECI

    def imiona_dz(self):

        _SQL = "SELECT imie, count(imie) AS ile FROM dzieci GROUP BY imie ORDER BY ile DESC, imie COLLATE utf8_polish_ci ASC"
        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Imiona dzieci krewnych i znajomych Kasi i ich liczba: ")
        i = 1
        for row in allResults:
            print("%-3s %-15s %2s" % (i, row[0], row[1]))
            i += 1
        print(x)

    def mies_ur_dz(self):

        _SQL = """SELECT MONTH(data_ur),
                            CASE
                                WHEN (MONTH(data_ur) = 1) THEN 'Styczeń'
                                WHEN (MONTH(data_ur) = 2) THEN 'Luty'
                                WHEN (MONTH(data_ur) = 3) THEN 'Marzec'
                                WHEN (MONTH(data_ur) = 4) THEN 'Kwiecień'
                                WHEN (MONTH(data_ur) = 5) THEN 'Maj'
                                WHEN (MONTH(data_ur) = 6) THEN 'Czerwiec'
                                WHEN (MONTH(data_ur) = 7) THEN 'Lipiec'
                                WHEN (MONTH(data_ur) = 8) THEN 'Sierpień'
                                WHEN (MONTH(data_ur) = 9) THEN 'Wrzesień'
                                WHEN (MONTH(data_ur) = 10) THEN 'Październik'
                                WHEN (MONTH(data_ur) = 11) THEN 'Listopad'
                                WHEN (MONTH(data_ur) = 12) THEN 'Grudzień'
                            END AS miesiac_ur,
                            COUNT(*) AS liczba
                        FROM
                            dzieci
                        GROUP BY miesiac_ur
                        ORDER BY MONTH(data_ur)"""

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Miesiące urodzenia dzieci krewnych i znajomych Kasi i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-3s %-15s %2s" % (i, row[1], row[2]))
            i += 1
        print(x)

    def lata_ur_dz(self):

        _SQL = "SELECT YEAR(data_ur), COUNT(*) AS ile FROM dzieci GROUP BY YEAR(data_ur) ORDER BY data_ur DESC"

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Lata urodzenia dzieci krewnych i znajomych Kasi i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-10s %2s" % (row[0], row[1]))
            i += 1
        print(x)

    def dni_tyg_ur_dz(self):

        _SQL = "SELECT DAYNAME(data_ur) AS dzien_tyg_ur, COUNT(*) AS ile, DAYOFWEEK(data_ur) FROM dzieci GROUP BY DAYNAME(data_ur) ORDER BY DAYOFWEEK(data_ur)"

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Dni tygodnia urodzenia dzieci krewnych i znajomych Kasi i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-10s %2s" % (row[0], row[1]))
            i += 1
        print(x)

    def znaki_zodiaku_dz(self):

        _SQL = "SELECT znak_zodiaku, count(*) FROM znaki_zodiaku_dz GROUP BY znak_zodiaku COLLATE utf8_polish_ci ASC"

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Znaki zodiaku dzieci krewnych i znajomych Kasi i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-10s %2s" % (row[0], row[1]))
            i += 1
        print(x)

    def dodaj_dz (self):

        imie = input("Podaj imię dziecka: ")
        nazwisko = input("Podaj nazwisko dziecka: ")
        data_ur = input("Podaj datę urodzenia dziecka (RRRR-MM-DD): ")
        plec = input("Podaj płeć dziecka (K/M) ")

        self.cursor.execute("INSERT INTO dzieci (imie, nazwisko, data_ur, plec) VALUES (%s,%s,%s,%s)",
                            (imie, nazwisko, data_ur, plec))
        self.conn.commit()
        print("Dodano do bazy!")


    # DOROŚLI

    def moje_dane(self):

        # Rekord z bazy danych

        self.cursor = self.conn.cursor()
        self.cursor.execute("SELECT * FROM dorosli WHERE imie=%s AND nazwisko=%s", (self.log_imie, self.log_nazwisko))
        allResults = self.cursor.fetchall()

        print(x)
        print("Twoje dane w bazie danych Kasi:")
        i = 1
        for row in allResults:
            print(row[1], row[2], row[3], row[4])
            i += 1

        #Dzieci

        self.cursor.execute("SELECT * FROM rodzice_i_ich_dzieci WHERE imie_rodzica=%s AND nazwisko_rodzica=%s",
                            (self.log_imie, self.log_nazwisko))
        allKids = self.cursor.fetchall()
        print("\nTwoje dzieci:")
        i = 1
        for item in allKids:
            print(item[2], item[3])
            i += 1

        # Druga Połowa

        if row[4] == "K":
            self.cursor.execute("SELECT imie_meza, nazwisko_meza FROM malzenstwa_imiennie WHERE imie_zony=%s AND nazwisko_zony=%s",
                            (self.log_imie, self.log_nazwisko))

            result = self.cursor.fetchone()
            print("\nTwoja Druga Połowa: ")
            print(result[0], result[1])

        else:
            self.cursor.execute("SELECT imie_zony, nazwisko_zony FROM malzenstwa_imiennie WHERE imie_meza=%s AND nazwisko_meza=%s",
                (self.log_imie, self.log_nazwisko))

            result = self.cursor.fetchone()
            print("\nTwoja Druga Połowa: ")
            print(result[0], result[1])

        # Wiek w dniach

        _SQL = "SELECT (DATEDIFF(NOW(), data_ur)) AS wiek_w_dniach FROM dorosli WHERE imie=%s AND nazwisko=%s"
        self.cursor.execute(_SQL, (self.log_imie, self.log_nazwisko))
        wiek_w_dniach = self.cursor.fetchone()
        print("\nDziś kończysz " + str(wiek_w_dniach[0]) + " dni :)")
        print(x)

    def imiona_d(self):

        self.cursor.execute("SELECT imie, count(imie) as ile FROM dorosli GROUP BY imie ORDER BY ile DESC, imie COLLATE utf8_polish_ci ASC")
        allResults = self.cursor.fetchall()
        print(x)
        print("Imiona dorosłych krewnych i znajomych Kasi i ich liczba: ")
        i = 1
        for row in allResults:
            print("%-3s %-15s %2s" % (i, row[0], row[1]))
            i += 1
        print(x)

    def mies_ur_d(self):

        _SQL = """SELECT MONTH(data_ur),
                            CASE
                                WHEN (MONTH(data_ur) = 1) THEN 'Styczeń'
                                WHEN (MONTH(data_ur) = 2) THEN 'Luty'
                                WHEN (MONTH(data_ur) = 3) THEN 'Marzec'
                                WHEN (MONTH(data_ur) = 4) THEN 'Kwiecień'
                                WHEN (MONTH(data_ur) = 5) THEN 'Maj'
                                WHEN (MONTH(data_ur) = 6) THEN 'Czerwiec'
                                WHEN (MONTH(data_ur) = 7) THEN 'Lipiec'
                                WHEN (MONTH(data_ur) = 8) THEN 'Sierpień'
                                WHEN (MONTH(data_ur) = 9) THEN 'Wrzesień'
                                WHEN (MONTH(data_ur) = 10) THEN 'Październik'
                                WHEN (MONTH(data_ur) = 11) THEN 'Listopad'
                                WHEN (MONTH(data_ur) = 12) THEN 'Grudzień'
                            END AS miesiac_ur,
                            COUNT(*) AS liczba
                        FROM
                            dorosli
                        GROUP BY miesiac_ur
                        ORDER BY MONTH(data_ur)"""

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Miesiące urodzenia krewnych i znajomych Kasi i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-3s %-15s %2s" % (i, row[1], row[2]))
            i += 1
        print(x)

    def lata_ur_d(self):

        _SQL = "SELECT YEAR(data_ur), COUNT(*) AS ile FROM dorosli GROUP BY YEAR(data_ur) ORDER BY data_ur DESC"

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Lata urodzenia krewnych i znajomych Kasi i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-10s %2s" % (row[0], row[1]))
            i += 1
        print(x)

    def dni_tyg_ur_d(self):

        _SQL = "SELECT DAYNAME(data_ur) AS dzien_tyg_ur, COUNT(*) AS ile, DAYOFWEEK(data_ur) FROM dorosli GROUP BY DAYNAME(data_ur) ORDER BY DAYOFWEEK(data_ur)"

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Dni tygodnia urodzenia krewnych i znajomych Kasi i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-10s %2s" % (row[0], row[1]))
            i += 1
        print(x)

    def rocznice_slubu(self):

       _SQL = """SELECT imie_zony, nazwisko_zony, imie_meza, nazwisko_meza, data_slubu, nr_rocznicy, nazwa_rocznicy FROM rocznice 
                WHERE ((MONTH(data_slubu) = MONTH(curdate())) AND (DAY(data_slubu) = DAY(curdate())));"""

       self.cursor.execute(_SQL)
       allResults = self.cursor.fetchall()

       if len(allResults) == 0:
           print(x)
           print("Dziś nikt z krewnych i znajomych Kasi nie obchodzi rocznicy ślubu")
       else:
           print(x)
           print("Dziś rocznicę ślubu obchodzą: ")

       i = 1
       for row in allResults:
           print(row[0], row[1], "&", row[2], row[3], "\nŚlub wzięli", row[4], "\nDziś jest ich", row[5], ". rocznica -", row[6] )
           i += 1
       print(x)

    def rocznice_slubu_rok(self):

        _SQL = """SELECT imie_zony, nazwisko_zony, imie_meza, nazwisko_meza, data_slubu, nr_rocznicy, nazwa_rocznicy FROM malzenstwa_imiennie as m
                INNER JOIN rocznice_slubu AS r ON (YEAR(CURDATE()) - YEAR(data_slubu)) = nr_rocznicy ORDER BY nr_rocznicy, data_slubu"""

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Rocznice ślubu krewnych i znajomych Kasi w tym roku: ")
        print("----------------------------------------------------------------------------------------------------------")
        print("%-10s %-20s %-10s %-20s %-10s %10s %-20s" % ("Żona", "", "Mąż", "", "Data ślubu", "Rocznica", "Nazwa rocznicy"))
        print("----------------------------------------------------------------------------------------------------------")

        i = 1
        for row in allResults:
            print("%-10s %-20s %-10s %-20s %-10s %10s %-20s" % (row[0], row[1], row[2], row[3], row[4], row[5], row[6]))
            i += 1
        print(x)

    def znaki_zodiaku_d(self):

        _SQL = "SELECT znak_zodiaku, count(*) FROM znaki_zodiaku_d GROUP BY znak_zodiaku COLLATE utf8_polish_ci ASC"

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Znaki zodiaku krewnych i znajomych Kasi i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-10s %2s" % (row[0], row[1]))
            i += 1
        print(x)

    def mies_slubu(self):

        _SQL = "SELECT * FROM miesiace_slubu"

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Miesiące ślubu krewnych i znajomych Kasi i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-3s %-15s %2s" % (i, row[1], row[2]))
            i += 1
        print(x)

    def dni_tyg_slubu(self):

        _SQL = "SELECT DAYNAME(data_slubu) AS dzien_tyg_slubu, count(data_slubu) as ile FROM malzenstwa GROUP BY DAYNAME(data_slubu) ORDER BY dzien_tyg_slubu ASC"
        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Dni tygodnia ślubu krewnych i znajomych Kasi i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-10s %2s" % (row[0], row[1]))
            i += 1
        print(x)

    def dodaj_d (self):

        imie = input("Podaj imię krewnego lub znajomego: ")
        nazwisko = input("Podaj nazwisko krewnego lub znajomego: ")
        data_ur = input("Podaj datę urodzenia krewnego lub znajomego (RRRR-MM-DD): ")
        plec = input("Podaj płeć krewnego lub znajomego (K/M): ")

        self.cursor.execute("INSERT INTO dorosli (imie, nazwisko, data_ur, plec) VALUES (%s,%s,%s,%s)",
                            (imie, nazwisko, data_ur, plec))
        self.conn.commit()
        print("Dodano do bazy!")

    # WSZYSCY

    def wszyscy(self):

        self.cursor.execute("SELECT * FROM wszyscy ORDER BY nazwisko, imie COLLATE utf8_polish_ci ASC")
        allResults = self.cursor.fetchall()
        print(x)
        print("Wszyscy krewni i znajomi Kasi wraz z ich datami urodzenia:")
        i = 1
        for row in allResults:
            print("%-15s %-20s %10s" % (row[0], row[1], row[2]))
            i += 1
        print(x)

        self.cursor.execute("SELECT count(*) FROM wszyscy")
        liczba_w = self.cursor.fetchone()
        self.cursor.execute("SELECT count(*) FROM dorosli")
        liczba_d = self.cursor.fetchone()
        self.cursor.execute("SELECT count(*) FROM dzieci")
        liczba_dz = self.cursor.fetchone()

        print("Łączna liczba osób w bazie to " + str(liczba_w[0]) + ", z czego " + str(liczba_d[0]) + " to dorośli, a " + str(liczba_dz[0]) + " to dzieci")

        print(x)

    def urodziny_dzis(self):

        _SQL = """SELECT imie, nazwisko, data_ur 
            FROM wszyscy 
            WHERE MONTH(data_ur) = MONTH(CURDATE()) AND DAY(data_ur) = DAY(CURDATE())"""

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()

        if len(allResults) == 0:
            print(x)
            print("Dziś nikt z krewnych i znajomych Kasi nie obchodzi urodzin")
        else:
            print(x)
            print("Dziś urodziny obchodzi: ")
        i = 1
        for row in allResults:
            print(row[0], row[1], row[2])
            print(row[0] + " kończy dziś lat: " + str(rok - int((str(row[2])[0:4]))))
            i += 1
        print(x)

    def okragle_dni_dzis(self):

        _SQL = """SELECT imie, nazwisko, data_ur, DATEDIFF(NOW(), data_ur) AS wiek_w_dniach 
                FROM wszyscy 
                WHERE MOD(DATEDIFF(NOW(), data_ur), 100) = 0
                ORDER BY wiek_w_dniach, nazwisko;"""

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()

        if allResults == None:
            print(x)
            print("Dziś nikt z krewnych i znajomych Kasi nie świętuje z okazji okrągłej liczby skończonych dni")
        else:
            print(x)
            print("Dziś powód do świętowania ma: ")

        i = 1
        for row in allResults:
            print(row[0], row[1], "- kończy dziś okrągłe " + str(row[3]) + " dni")
            i += 1
        print(x)

    def imiona_w(self):

        self.cursor.execute("SELECT imie, count(imie) as ile FROM wszyscy GROUP BY imie ORDER BY ile DESC, imie COLLATE utf8_polish_ci ASC")
        allResults = self.cursor.fetchall()
        print("*********************************")
        print("Imiona krewnych i znajomych Kasi i ich liczba: ")
        i = 1
        for row in allResults:
            print(i, row[0], row[1])
            i += 1

    def mies_ur_w(self):

        _SQL = """SELECT MONTH(data_ur),
                            CASE
                                WHEN (MONTH(data_ur) = 1) THEN 'Styczeń'
                                WHEN (MONTH(data_ur) = 2) THEN 'Luty'
                                WHEN (MONTH(data_ur) = 3) THEN 'Marzec'
                                WHEN (MONTH(data_ur) = 4) THEN 'Kwiecień'
                                WHEN (MONTH(data_ur) = 5) THEN 'Maj'
                                WHEN (MONTH(data_ur) = 6) THEN 'Czerwiec'
                                WHEN (MONTH(data_ur) = 7) THEN 'Lipiec'
                                WHEN (MONTH(data_ur) = 8) THEN 'Sierpień'
                                WHEN (MONTH(data_ur) = 9) THEN 'Wrzesień'
                                WHEN (MONTH(data_ur) = 10) THEN 'Październik'
                                WHEN (MONTH(data_ur) = 11) THEN 'Listopad'
                                WHEN (MONTH(data_ur) = 12) THEN 'Grudzień'
                            END AS miesiac_ur,
                            COUNT(*) AS liczba
                        FROM
                            wszyscy
                        GROUP BY miesiac_ur
                        ORDER BY MONTH(data_ur)"""

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Miesiące urodzenia krewnych i znajomych Kasi i ich dzieci i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-3s %-15s %2s" % (i, row[1], row[2]))
            i += 1
        print(x)

    def dni_tyg_ur_w(self):

            _SQL = "SELECT DAYNAME(data_ur) AS dzien_tyg_ur, COUNT(*) AS ile, DAYOFWEEK(data_ur) FROM wszyscy GROUP BY DAYNAME(data_ur) ORDER BY DAYOFWEEK(data_ur)"

            self.cursor.execute(_SQL)
            allResults = self.cursor.fetchall()
            print(x)
            print("Dni tygodnia urodzenia krewnych i znajomych Kasi i ich dzieci i liczba wystąpień: ")

            i = 1
            for row in allResults:
                print("%-10s %2s" % (row[0], row[1]))
                i += 1
            print(x)

    def dni_mies_ur_w(self):

            _SQL = "SELECT DAY(data_ur) AS dzien_mies_ur, COUNT(*) AS ile, DAYOFWEEK(data_ur) FROM wszyscy GROUP BY DAY(data_ur) ORDER BY DAY(data_ur)"

            self.cursor.execute(_SQL)
            allResults = self.cursor.fetchall()
            print(x)
            print("Dni miesiąca urodzenia krewnych i znajomych Kasi i ich dzieci i liczba wystąpień: ")

            i = 1
            for row in allResults:
                print("%-10s %2s" % (row[0], row[1]))
                i += 1
            print(x)

    def liczba_dzieci(self):

        #Ilu dorosłych ma dzieci?

        _SQL = "SELECT count(*) FROM dzietni"

        self.cursor.execute(_SQL)
        result = self.cursor.fetchone()
        a = result[0]
        print("\nLiczba dorosłych, którzy mają dzieci: ")
        print(a)
        print(x)

        # Ilu dorosłych nie ma dzieci?

        _SQL = "SELECT count(*) FROM bezdzietni"

        self.cursor.execute(_SQL)
        result = self.cursor.fetchone()
        b = result[0]
        print("\nLiczba dorosłych, którzy nie mają dzieci: ")
        print(b)
        print(x)

        print("\nOdsetek dorosłych, którzy mają dzieci: ")
        c = round((a/(a+b)*100),1)
        print(c, " %")
        print(x)

        # Ilu dorosłych ma ile dzieci?

        _SQL = "SELECT liczba_dzieci, count(*) FROM liczba_dzieci GROUP BY liczba_dzieci"

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Liczba i odsetek dorosłych spośród posiadających dzieci wg liczby dzieci ")

        i = 1
        for row in allResults:
            print("%-3s %-15s %4d" % (row[0], row[1], round((row[1]/a*100),1)))
            i += 1
        print(x)

    def znaki_zodiaku_w(self):

        _SQL = "SELECT znak_zodiaku, count(*) FROM znaki_zodiaku_w GROUP BY znak_zodiaku COLLATE utf8_polish_ci ASC"

        self.cursor.execute(_SQL)
        allResults = self.cursor.fetchall()
        print(x)
        print("Znaki zodiaku krewnych i znajomych Kasi i ich dzieci i liczba wystąpień: ")

        i = 1
        for row in allResults:
            print("%-10s %2s" % (row[0], row[1]))
            i += 1
        print(x)



db = DBConnect()
