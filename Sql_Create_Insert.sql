--TABLO OLU�TURMA
CREATE TABLE [playground].[dbo].[datapioneers_cities] (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    city NVARCHAR(50),
    district NVARCHAR(50),
    must_taste_foods NVARCHAR(250),
    places_to_visit NVARCHAR(250)
);

--OLU�TURULAN TABLOMUZU G�RME
select * from [playground].[dbo].[datapioneers_cities] 


alter table datapioneers_master_data
add Seasons_Winter nvarchar(25)


alter table datapioneers_master_data
add Daily_Room_Rate decimal(15,2)

--�NSERT BLOKLARI
/*
insert into datapioneers_cities (city, district, must_taste_foods, places_to_visit)
values
('Adana', 'Seyhan', 'Adana Kebap', 'Seyhan Baraj Golu'),
('Adana', 'Y�re�ir', 'Bici Bici', 'Misis Mozaik M�zesi'),
('Afyon', '�hsaniye', 'Buhara Kebab�', 'Ayazini Kaya Mezarlar�'),
('Afyon', 'Merkez', 'Afyon Sucugu', 'Afyon Kalesi'),
('Afyon', 'Sand�kl�', 'Patlican Boregi', 'Sandikli Kaplicalari'),
('Afyon', 'Yaylaba��', 'Manta', 'Frig Vadisi'),
('A�r�', 'Merkez', 'Abdigor k�ftesi', '�shak Pa�a Saray�'),
('Amasya', 'Merkez', 'Amasya Tas Firin Pidesi', 'Amasya Kalesi'),
('Ankara', 'Aya�', 'Aya� dut pekmezi', 'Aya� Kapl�calar�'),
('Ankara', '�ankaya', 'Ankara Tavasi', 'Atakule'),
('Ankara', 'G�d�l', 'G�d�l Tava', 'Sorgun G�leti ve Tabiat Park�'),
('Ankara', 'Haymana', 'Haymana yo�urdu', 'Haymana Kapl�calar�'),
('Ankara', 'K�z�lay', 'Tavuk Doner', 'Kizilay Meydani'),
('Ankara', 'K�z�lcahamam', 'Bazlama', 'So�uksu Milli Park�'),
('Ankara', 'Merkez', 'Ankara tava', 'An�tkabir'),
('Antalya', 'Aksu', 'Aksu Yogurt Corbasi', 'Perge Antik Kenti'),
('Antalya', 'Alanya', 'Sis Kofte', 'Alanya Kalesi'),
('Antalya', 'Belek', 'Kofte', 'Aspendos Antik Tiyatrosu'),
('Antalya', 'D��eme alt�', 'K�lle (bu�day, nohut, fasulye kar���m�)', 'Termessos Antik Kenti'),
('Antalya', 'Finike', 'Finike portakal� ile yap�lan re�eller', 'Limyra Antik Kenti'),
('Antalya', 'Gazipasa', 'Y�r�k kebab�', 'Selinus Antik Kenti'),
('Antalya', 'Kas', 'Akdeniz Baligi', 'Kaputas Plaji'),
('Antalya', 'Kemer', 'Kemer Kebabi', 'Phaselis Antik Kenti'),
('Antalya', 'Konyaalti', 'Girit Mezeleri', 'Konyaalti Plaji'),
('Antalya', 'Kumluca', 'Portakal', 'Olimpos Antik Kenti'),
('Antalya', 'Lara', 'Lara Boregi', 'Lara Plaji'),
('Antalya', 'Manavgat', 'Piyaz', 'Manavgat Selalesi'),
('Antalya', 'Merkez', 'Antalya Dondurmasi', 'Kaleici'),
('Antalya', 'Muratpasa', 'Hibes', 'Ataturk Parki'),
('Antalya', 'Serik', 'Serik Kebabi', 'Zeytintasi Magarasi'),
('Antalya', 'Side', 'Tahinli Piyaz', 'Side Antik Kenti'),
('Artvin', 'Merkez', 'Artvin Kebabi', 'Artvin Kalesi'),
('Aydin', 'Didim', 'Didim Sarmasi', 'Milet Antik Kenti'),
('Aydin', 'Germencik', 'Germencik Kuzu Tandigi', 'Aphrodisias Antik Kenti'),
('Aydin', 'Kusadasi', 'Seafood', 'Kusadasi Milli Park'),
('Aydin', 'S�ke', 'Cop Sis', 'Priene Antik Kenti'),
('Bal�kesir', 'Ayval�k', 'Ayvalik Tostu', 'Cunda Adasi'),
('Bal�kesir', 'Band�rma', 'Peynirli Borek', 'Bandirma Arkeoloji Muzesi'),
('Bal�kesir', 'Burhaniye', 'Zeytinya�l� enginar', '�ren Plaj�'),
('Bal�kesir', 'Edremit', 'Zeytinyagli Sarma', 'Kaz Daglari'),
('Bal�kesir', 'Erdek', 'Bal�kesir pidesi', 'Kyzikos Antik Kenti'),
('Bal�kesir', 'G�me�', 'Zeytin ezmesi', 'Ta�k�y Do�a Park�'),
('Bal�kesir', 'G�re', 'H��merim tatl�s�', 'G�re Kapl�calar�'),
('Bal�kesir', 'Karesi', 'Bal�kesir mant�s�', 'Karesi Bey T�rbesi'),
('Bal�kesir', 'Merkez', 'Susurluk tostu', 'Bal�kesir Saat Kulesi'),
('Bal�kesir', 'Sarm�sakl�', 'Papalina Bal���', 'Sar�msakl� Plaj�'),
('Bilecik', 'Merkez', 'Bilecik g�veci', '�eyh Edebali T�rbesi'),
('Bolu', 'G�yn�k', 'K�z�lc�k tarhana �orbas�', 'G�yn�k Zafer Kulesi'),
('Bolu', 'Kartalkaya', 'Sucuk Ekmegi', 'Kartalkaya Kayak Merkezi'),
('Bolu', 'Merkez', 'Kiymali Gozleme', 'Abant Golu'),
('Bolu', 'Mudurnu', 'Mengen pilav�', 'Y�ld�r�m Bayezid Cami'),
('Burdur', 'Merkez', 'Burdur Sis', 'Salda Golu'),
('Bursa', '�neg�l', 'Inegol Koftesi', 'Inegol Kent Muzesi'),
('Bursa', '�znik', '�znik �inili mant�', '�znik G�l�'),
('Bursa', 'Merkez', '�skender kebap', 'Tophane Saat Kulesi'),
('Bursa', 'Osmangazi', 'Kestaneli Pilav', 'Tarihi Kapali Carsi'),
('�anakkale', 'Ayvac�k', 'Zeytinyagi', 'Assos Antik Kenti'),
('�anakkale', '�an', 'Sar�msakl� Kuzu Tand�r�', 'Troya Antik Kenti'),
('�anakkale', 'Merkez', 'Peynir Helvasi', 'Canakkale Sehitligi'),
('�orum', 'Merkez', 'Corum Leblebisi', 'Alacahoyuk'),
('Denizli', 'Merkez', 'Denizli kebab�', 'Pamukkale'),
('Denizli', 'Merkezefendi', 'Kuyu kebab�', '�aml�k Orman�'),
('Denizli', 'Pamukkale', 'Pamuk Seker', 'Pamukkale Travertenleri'),
('Denizli', 'Sarayk�y', 'Kabak tatl�s�', 'Karahay�t Kapl�calar�'),
('Diyarbak�r', 'Ba�lar', 'Kaburga dolmas�', 'Hevsel Bah�eleri'),
('D�zce', 'Ak�akoca', 'Misir Ekmegi', 'Ceneviz Kalesi'),
('D�zce', 'Kayna�l�', 'D�zce Kebab�', 'G�zeldere �elalesi'),
('Edirne', 'Merkez', 'Ciger Tava', 'Selimiye Camii'),
('Erzurum', 'Paland�ken', 'Cag Kebabi', 'Palandoken Kayak Merkezi'),
('Eski�ehir', 'Merkez', '�ib�rek', 'Odunpazar�'),
('Eski�ehir', 'Odunpazar�', 'Ciborek', 'Odunpazari Evleri'),
('Eski�ehir', 'Tepeba��', 'Eskisehir Ciborek', 'Eskisehir Sazova Parki'),
('Gaziantep', '�ahinbey', 'Beyran �orbas�', 'Zeugma Mozaik M�zesi'),
('Gaziantep', '�ehitkamil', 'Baklava', 'Gaziantep Zeugma Muzesi'),
('Giresun', 'Dereli', 'Kiraz kavurmas�', 'Kuzalan �elalesi'),
('Hatay', 'Antakya', 'Kunefe', 'Habib-i Neccar Camii'),
('Hatay', 'Erzin', 'Tepsi kebab�', 'Erzin Kapl�calar�'),
('Hatay', '�skenderun', 'K�nefe', '�skenderun Sahili'),
('Isparta', 'Merkez', 'Isparta kebab�', 'G�lc�k Krater G�l�'),
('Istanbul', 'Ata�ehir', 'Meze Taba��', 'Kad�k�y �ar��s�'),
('Istanbul', 'Avc�lar', 'Kumpir', 'Avc�lar Sahili'),
('Istanbul', 'Ba�c�lar', 'Istanbul Simidi', 'Kemerburgaz Kent Ormani'),
('Istanbul', 'Bak�rk�y', 'Midye dolma', 'Bak�rk�y Botanik Park�'),
('Istanbul', 'Ba�ak�ehir', 'Sarma', 'Ba�ak�ehir Millet Bah�esi'),
('Istanbul', 'Bayrampa�a', 'Islak Hamburger', 'Bayrampa�a Park�'),
('Istanbul', 'Be�ikta�', 'Doner', 'Dolmabahce Sarayi'),
('Istanbul', 'Beylikd�z�', 'Beylikd�z� pizza', 'Beylikd�z� Sahili'),
('Istanbul', 'Beyo�lu', 'Kokorec', 'Galata Kulesi'),
('Istanbul', 'B�y�k�ekmece', 'L�fer bal���', 'B�y�k�ekmece G�l�'),
('Istanbul', 'EyupSultan', 'Osmanli Serbeti', 'Pierre Loti Tepesi'),
('Istanbul', 'Fatih', 'Boza', 'Sultanahmet Camii'),
('Istanbul', 'G�ng�ren', '��li k�fte', 'G�ng�ren Park�'),
('Istanbul', 'Kad�k�y', 'Kad�k�y b�re�i', 'Moda Sahili'),
('Istanbul', 'Mahmutbey', 'Kavurma', 'Mahmutbey Orman�'),
('Istanbul', 'Maltepe', 'Sandvic', 'Maltepe Sahili'),
('Istanbul', 'Pendik', 'Saray Kebab�', 'Pendik Sahili'),
('Istanbul', '�ile', '�ile bal���', 'A�va'),
('Istanbul', 'Silivri', 'Silivri yo�urdu', 'Silivri Kalesi'),
('Istanbul', '�i�li', 'Ayran', 'Bomontiada'),
('Istanbul', '�mraniye', '�mraniye d�ner', '�aml�ca Tepesi'),
('Istanbul', '�sk�dar', 'Lahmacun', 'Kiz Kulesi'),
('Izmir', 'Bal�ova', 'Bal�ova kestane �ekeri', 'Teleferik'),
('Izmir', 'Bayrakli', 'Bayrakl� mant�s�', 'Sasal� Do�al Ya�am Park�'),
('Izmir', '�esme', 'Cesme Kumru', 'Cesme Kalesi'),
('Izmir', 'Dikili', 'Ege otlar� salatas�', 'Dikili Plaj�'),
('Izmir', 'Fo�a', 'Fo�a midyesi', 'Fo�a Antik Kenti'),
('Izmir', 'Gaziemir', 'Gaziemir Uzumu', 'Optimum AVM'),
('Izmir', 'G�m�ld�r', 'G�m�ld�r incir tatl�s�', 'G�m�ld�r Ormanlar�'),
('Izmir', 'Karsiyaka', 'Kar��yaka lokmas�', 'Kar��yaka Sahili'),
('Izmir', 'Konak', 'Lokma', 'Konak Meydani'),
('Izmir', 'Menderes', 'Izgara k�fte', 'Bostanl� �skelesi'),
('Izmir', 'Merkez', 'Boyoz', 'Izmir Saat Kulesi'),
('Izmir', 'Narlidere', 'M�ld�r Kebab�', 'Karaburun'),
('Izmir', '�zdere', 'Keskek', 'Ozdere Plaji'),
('Izmir', 'Seferihisar', 'Seferihisar Mandalina', 'Sigacik Kalesi'),
('Izmir', 'Sel�uk', 'Enginar', 'Efes Antik Kenti'),
('Izmir', 'Urla', 'Sar�msakl� mant�', 'Sinop'),
('Kars', 'Sar�kam��', 'Murtuga', 'Sarikamis Kayak Merkezi'),
('Kastamonu', 'Merkez', 'Kastamonu Tirit', 'Kastamonu Arkeoloji M�zesi'),
('Kayseri', 'Hac�lar', 'Mant�', 'Erciyes Da��'),
('Kayseri', 'Kocasinan', 'Past�rma', 'Gesi Ba�lar�'),
('Kayseri', 'Melikgazi', 'Sucuk', 'Hunat Hatun Cami'),
('K�rklareli', 'Demirk�y', 'P�rasa Sarmas�', 'Dupnisa Ma�aras�'),
('K�r�ehir', 'Merkez', 'Kirsehir Corbasi', 'Kirsehir Kalesi'),
('Gazima�usa', 'Gazima�usa', 'Corek', 'Gazimagusa Kalesi'),
('Girne', 'Girne', 'Hellimli Pide', 'Karaoglanoglu Sehitligi'),
('�skele', '�skele', 'Bafra Dondurmasi', 'Bafra Plaji'),
('Lefko�a', 'Lefko�a', 'Kibris Seftali Kebabi', 'Buyuk Han'),
('Kocaeli', 'Ba�iskele', 'Tarator', 'Ba�iskele Sahili'),
('Kocaeli', 'Dar�ca', 'Sar�msakl� Yo�urtlu M�cver', 'Ball�kayalar Tabiat Park�'),
('Kocaeli', '�zmit', 'Kandira Yogurdu', 'Saat Kulesi'),
('Kocaeli', 'Kartepe', 'Kartepe Corbasi', 'Kartepe Kayak Merkezi'),
('Konya', 'Karatay', 'Bamya �orbas�', 'Alaaddin Tepesi'),
('Konya', 'Sel�uklu', 'Etli ekmek', 'Sel�uklu K��k�'),
('K�tahya', 'Merkez', 'Simit Tiridi', 'Kutahya Kalesi'),
('Malatya', 'Merkez', 'Kay�s� tatl�s�', 'Malatya M�zesi'),
('Manisa', 'Salihli', 'Odun k�fte', 'Kur�unlu Kapl�calar�'),
('Mersin', 'Bozyaz�', 'Papalina Tava', 'Mamure Kalesi'),
('Mersin', 'Erdemli', 'Limonata', 'Kizkalesi'),
('Mersin', 'Merkez', 'Humus', 'Kushimoto Sokak'),
('Mersin', 'Mezitli', 'Kerebic', 'Kastabala Antik Kenti'),
('Mersin', 'Silifke', 'Tantuni', 'Silifke Kalesi'),
('Mersin', 'Toroslar', 'Arap kaday�f�', 'Yumuktepe H�y���'),
('Mersin', 'Yan��l�', 'Yenisli Boregi', 'Tasucu Limani'),
('Mersin', 'Yeni�ehir', 'Bulgur pilav�', 'Mersin Marina'),
('Mugla', 'Bodrum', 'Bodrum Doner', 'Bodrum Kalesi'),
('Mugla', 'Dalaman', 'Dalaman Baklavasi', 'Dalaman Cayi'),
('Mugla', 'Dat�a', 'Datca Baligi', 'Knidos Antik Kenti'),
('Mugla', 'Fethiye', 'Fethiye Baligi', 'Oludeniz'),
('Mugla', 'Marmaris', 'Marmaris Coregi', 'Marmaris Marina'),
('Mugla', 'Merkez', 'Milas Boregi', 'Gulluk Korfezi'),
('Mugla', 'Ortaca', 'Mu�la kebab�', '�ztuzu Plaj�'),
('Mugla', 'Ula', 'Ula pidesi', 'Sakartepe'),
('Nev�ehir', 'Avanos', 'Avanos Guveci', 'Avanos Comlek Atolyeleri'),
('Nev�ehir', 'Kozakl�', 'Kozakli Tarator', 'Kozakli Kaplicalari'),
('Nev�ehir', 'Merkez', 'Testi Kebabi', 'Kapadokya Balon Turlari'),
('Nev�ehir', '�rg�p', 'Urgup Sarabi', 'Goreme Acik Hava Muzesi'),
('Ni�de', '�iftehan', '�ekerleme', 'Bolkar Da�lar�'),
('Ni�de', 'Uluk��la', 'B�rek', 'G�m��ler Manast�r�'),
('Ordu', 'Alt�nordu', 'Karalahana sarmas�', 'Boztepe'),
('Ordu', '�nye', 'Unye Pidesi', 'Camlik Plaji'),
('Rize', '�kizdere', 'M�hlama', 'Ayder Yaylas�'),
('Rize', 'Pazar', 'Pazar Cayi', 'Pazar Kalesi'),
('Sakarya', 'Adapazar�', 'Islama k�fte', 'Sakarya Nehri'),
('Sakarya', 'Sapanca', 'Manda Yogurdu', 'Sapanca Golu'),
('Sakarya', 'Serdivan', 'Serdivan Tava', 'Serdivan Parki'),
('Samsun', 'Canik', 'Pide', '�ahinkaya Kanyonu'),
('Samsun', 'Tekkek�y', '�i� k�fte', 'Samsun Sahili'),
('�anl�urfa', 'Eyy�biye', 'Dondurma Kebap', 'Bal�kl�g�l'),
('�anl�urfa', 'Merkez', 'Fasulye', 'G�beklitepe'),
('Sinop', 'Merkez', 'Kalkan Baligi', 'Sinop Tarihi Cezaevi'),
('Tekirda�', '�orlu', 'Tekirda� k�ftesi', 'R�stempa�a Kervansaray�'),
('Tekirda�', 'S�leymanpa�a', 'Hayrabolu tatl�s�', '�ehitler Abidesi'),
('Trabzon', '�aykara', 'Laz b�re�i', 'Uzung�l'),
('Trabzon', 'Merkez', 'Trabzon Pidesi', 'Ataturk Koskuy'),
('Van', 'Merkez', 'Van kahvalt�s�', 'Van G�l�'),
('Yalova', 'Alt�nova', 'Yalova s�tl�s�', 'Y�r�yen K��k'),
('Yalova', 'Merkez', 'Termal m�s�r ekme�i', 'Karaca Arboretumu'),
('Yalova', 'Termal', 'Termal Kebabi', 'Termal Kaplicalari'),
('Yozgat', 'Merkez', 'Yaprak sarma', '�aml�k Milli Park�');