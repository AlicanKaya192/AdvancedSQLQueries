--Declare @Sayi int
--set @Sayi=24
--Select @Sayi as 'Sonuc'

--Declare @Kisi1 varchar(20)
--Set @Kisi1='Murat'
--Select @Kisi1

--Declare @sayi1 int, @sayi2 int, @toplam int
--set @sayi1=20
--set @sayi2=30
--set @toplam=@sayi1+@sayi2
--Select @toplam

--Declare @not1 decimal, @not2 decimal, @not3 decimal, @toplamnot decimal
--set @not1=64.5
--set @not2=78.5
--set @not3=45.0
--set @toplamnot=(@not1+@not2+@not3) / 3
--Select @toplamnot

--Declare @sayi int, @birler int, @onlar int, @yuzler int, @toplam int
--set @sayi=456
----Birler: 6 Onlar: 5 Yuzler: 4
--set @birler=@sayi % 10
--set @onlar=(@sayi / 10) % 10
--set @yuzler=@sayi / 100
--set @toplam=@birler + @onlar + @yuzler
--Select @birler, @onlar, @yuzler, @toplam AS 'Basamak Toplamlari'

--use SatisVT
--Select * From TBLMUSTERI
--Declare @Bakiye int
--set @Bakiye=(Select Max(MUSTERIBAKIYE) From TBLMUSTERI)
--SELECT @Bakiye

--Select * From TBLURUNLER
--Declare @stok int
--Select @stok=max(URUNSTOK) from TBLURUNLER
--Select * from TBLURUNLER WHERE URUNSTOK=@stok

--SELECT @@SERVERNAME, @@ERROR, @@DEFAULT_LANGID, @@LANGUAGE, @@MAX_CONNECTIONS,
--@@MICROSOFTVERSION, @@IDENTITY, @@TEXTSIZE, @@VERSION

--Print 'Merhaba'

--Declare @s1 int, @s2 int, @sonuc int
--set @s1=4
--set @s2=8
--set @sonuc=@s1*@s2
--print '4 ile 8 sayilarinin carpimi'
--print '***************************'
--print @sonuc

--Declare @Kisiler table  // Gecici Tablo
--(
--KisiID int identity(1,1),
--KisiAd varchar(10),
--KisiSehir varchar(15)
--)
--insert into @Kisiler (KisiAd,KisiSehir) values ('Ali','Malatya')
--insert into @Kisiler (KisiAd,KisiSehir) values ('Emel','Trabzon')
--Select * From @Kisiler where KisiSehir like '%r%'

--if(1<5)
--print 'Merhaba'
--else
--print 'Selam'

--Select * From TBLURUNLER

--if(Select Sum(URUNSTOK) From TBLURUNLER) > 100
--print 'Toplam Urun Sayisi 100 den Buyuk'
--else
--print 'Toplam Urun Sayisi 100 den Kucuk'

--Declare @urunstok int
--set @urunstok=(Select Sum(URUNSTOK) FROM TBLURUNLER)

--if(Select Sum(URUNSTOK) From TBLURUNLER) > 100
--print 'Toplam Urun Sayisi:' + CAST(@urunstok AS nvarchar)
--else
--print 'Toplam Urun Sayisi:' + CAST(@urunstok AS nvarchar)

--if(Select Count(*) from TBLURUNLER) > 20
--print '20 den Fazla Cesit Urun Var'
--else
--print '20 den Az Cesit Urun Var'

--Select URUNAD, URUNMARKA, URUNDURUM=
--CASE URUNDURUM
--WHEN '1' THEN 'URUN VAR'
--WHEN '0' THEN 'URUN YOK'
--END
--From TBLURUNLER

--SELECT URUNAD, URUNMARKA,KATEGORI=
--CASE KATEGORI
--WHEN '1' THEN 'LAPTOP'
--WHEN '2' THEN 'BEYAZ ESYA'
--WHEN '3' THEN 'KUCUK EV ALETI' 
--END
--FROM TBLURUNLER

--CREATE PROCEDURE TEST4
--AS
--SELECT URUNAD, URUNMARKA, URUNSTOK,URUNSTOK=
--CASE
--WHEN URUNSTOK >= 1 AND URUNSTOK <=5 THEN 'KRITIK SEVIYE'
--WHEN URUNSTOK >= 6 AND URUNSTOK <=10 THEN 'TAKVIYE YAPILMALI'
--WHEN URUNSTOK > 10 THEN 'URUN STOK SAYISI YETERLI'
--END
--FROM TBLURUNLER

--DONGU / WHILE

--Declare @sayac int
--set @sayac=1
--while @sayac <= 5
--begin
--print 'Merhaba SQL Dersleri'
--set @sayac=@sayac+1
--end

--Declare @i int
--set @i=1
--while @i <=10
--begin
--print @i
--set @i+=1
--end

--Declare @toplam int, @sayac int
--set @sayac=1
--set @toplam=0
--while(@sayac <= 10)
--begin
--set @toplam=@toplam+@sayac
--set @sayac+=1
--end
--print '1 Ile 10 Arasinda ki Sayilarin Toplami'
--print '--------------------------------------'
--print @toplam

--WHILE(SELECT AVG(URUNSATISFIYAT-URUNALISFIYAT) FROM TBLURUNLER WHERE KATEGORI=2) <= 450
--BEGIN
--Update TBLURUNLER SET URUNSATISFIYAT+=URUNALISFIYAT*10/100
--END
--SELECT * FROM TBLURUNLER

--TOPLAM URUN SAYISI 200 U GECENE KADAR, URUN STOKA HER BIR URUNE 1 URUN EKLEYECEZ

--DECLARE @ToplamUrunSayisi INT
--SET @ToplamUrunSayisi = (SELECT SUM(URUNSTOK) FROM TBLURUNLER)
--WHILE @ToplamUrunSayisi < 200
--BEGIN
--UPDATE TBLURUNLER SET URUNSTOK = URUNSTOK + 1
--SET @ToplamUrunSayisi = (SELECT SUM(URUNSTOK) FROM TBLURUNLER)
--END
--SELECT URUNSTOK FROM TBLURUNLER

--WAITFOR DELAY '00:00:05'
--INSERT INTO TBLKATEGORI (KATEGORIAD) VALUES ('DÝÐER')
--SELECT * FROM TBLKATEGORI

