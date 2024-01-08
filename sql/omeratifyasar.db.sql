
CREATE TABLE IF NOT EXISTS Konu (
	KonuID	INTEGER NOT NULL,
	KonuAdi	TEXT,
	PRIMARY KEY(KonuID )
);
CREATE TABLE IF NOT EXISTS Yazar (
	YazarID	INTEGER NOT NULL,
	YazarAdi	TEXT UNIQUE,
	YazarSoyadi	TEXT,
	YardimciLink	TEXT,
	PRIMARY KEY(YazarID )
);
CREATE TABLE IF NOT EXISTS YayinEvi (
	YayineviID	INTEGER NOT NULL,
	YayineviAdi	TEXT UNIQUE,
	Konum	TEXT,
	PRIMARY KEY(YayineviID )
);
CREATE TABLE IF NOT EXISTS eserler (
	id	INTEGER,
	ad	TEXT,
	yazar	TEXT,
	tarih	TEXT,
	PRIMARY KEY(id )
);
CREATE TABLE IF NOT EXISTS Eser (
	EserID	INTEGER NOT NULL,
	EserAdi	TEXT NOT NULL,
	YayinYarihi	INTEGER NOT NULL,
	ISBN	INTEGER NOT NULL,
	SayfaSayısı	INTEGER NOT NULL,
	Dil	TEXT,
	Tür	TEXT NOT NULL,
		TEXT,
	YazarID	INTEGER,
	YayınEviID	INTEGER,
	KonuID	INTEGER,
	PRIMARY KEY(EserID)
);
INSERT INTO Konu VALUES (1,'Drama');
INSERT INTO Konu VALUES (2,'Trajedi');
INSERT INTO Konu VALUES (3,'Aşk');
INSERT INTO Konu VALUES (4,'Macera');
INSERT INTO Konu VALUES (5,'Suç');
INSERT INTO Konu VALUES (6,'Psikoloji');
INSERT INTO Konu VALUES (7,'Polisiye');
INSERT INTO Konu VALUES (8,'Tarih');
INSERT INTO Konu VALUES (9,'Sprituel');
INSERT INTO Konu VALUES (10,'Felsefe');
INSERT INTO Konu VALUES (11,'Fantastik');
INSERT INTO Konu VALUES (12,'Masal');
INSERT INTO Konu VALUES (13,'Sihir');
INSERT INTO Konu VALUES (14,'Yozlaşma');
INSERT INTO Yazar VALUES (1,'William','Shakespeare','https://en.wikipedia.org/wiki/William_Shakespeare');
INSERT INTO Yazar VALUES (2,'Cengiz','Aytmatov','https://tr.wikipedia.org/wiki/Cengiz_Aytmatov');
INSERT INTO Yazar VALUES (3,'Fyodor','Dostoyevski','Fyodor Dostoyevski - Vikipedi (wikipedia.org)');
INSERT INTO Yazar VALUES (4,'Ahmet','Ümit','Ahmet Ümit - Vikipedi (wikipedia.org)');
INSERT INTO Yazar VALUES (5,'Paulo
','Coelho','https://en.wikipedia.org/wiki/Paulo_Coelh');
INSERT INTO Yazar VALUES (6,' Antoine de','Saint-Exupéry','Antoine de Saint-Exupéry - Vikipedi (wikipedia.org)');
INSERT INTO Yazar VALUES (7,'J.R.R','Tolkien','J. R. R. Tolkien - Vikipedi (wikipedia.org)');
INSERT INTO Yazar VALUES (8,'J.K.','Rowling','J. K. Rowling - Vikipedi (wikipedia.org)');
INSERT INTO Yazar VALUES (9,'F. Scott ','Fitzgerald','F. Scott Fitzgerald - Vikipedi (wikipedia.org)');
INSERT INTO YayinEvi VALUES (1,'Türkiyeİşbankası','Türkiye');
INSERT INTO YayinEvi VALUES (2,'Can','Türkiye');
INSERT INTO YayinEvi VALUES (3,'Everest','Türkiye');
INSERT INTO YayinEvi VALUES (4,'YapıKredi','Türkiye');
INSERT INTO YayinEvi VALUES (5,'Pegasus','Türkiye');
INSERT INTO YayinEvi VALUES (6,'Bloombury','İngiltere');
INSERT INTO YayinEvi VALUES (7,'Scribner','Amerika');
INSERT INTO YayinEvi VALUES (8,NULL,NULL);
INSERT INTO Eser VALUES (1,'Macbeth',1606,9789754588597,154,'TR','Roman',NULL,NULL,NULL,NULL);
INSERT INTO Eser VALUES (2,' Beyaz Gemi',1986,9789754585624,192,'TR','Roman',NULL,NULL,NULL,NULL);
INSERT INTO Eser VALUES (3,'Suç Ve Ceza',1866,9789750732858,672,'TR','Roman',NULL,NULL,NULL,NULL);
INSERT INTO Eser VALUES (4,'İstanbul Hatırası',2006,9789752895179,416,'TR','Roman',NULL,NULL,NULL,NULL);
INSERT INTO Eser VALUES (5,'Kukla',2019,9789750846342,551,'TR','Roman',NULL,NULL,NULL,NULL);
INSERT INTO Eser VALUES (6,'Simyacı',1988,9786053436525,208,'TR','Roman',NULL,NULL,NULL,NULL);
INSERT INTO Eser VALUES (7,'Küçük Prens',1943,9789758101384,96,'TR','Roman',NULL,NULL,NULL,NULL);
INSERT INTO Eser VALUES (8,'The Hobbit',1937,9780618260300,310,'TR','Roman',NULL,NULL,NULL,NULL);
INSERT INTO Eser VALUES (9,'Harry Potter and the Philosopher''s Stone',1997,9780747532743,223,'EN','Roman',NULL,NULL,NULL,NULL);
INSERT INTO Eser VALUES (10,'The Great Gatsby',1925,9780743273565,180,'EN','Roman',NULL,NULL,NULL,NULL);

