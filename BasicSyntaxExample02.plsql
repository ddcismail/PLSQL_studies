-- create tables
DECLARE 

   adi varchar2(20);
   soyadi varchar(30);
   yasi number := 22;
   d_tarihi date;
   boyu number(3,2) := 1.65; --number(x,y) x:sayinin tamaminin karakter sayisi  y:virgülden sonraki sayinin karakter sayisi
   kilo float;
   
BEGIN 

    adi:='Ismail';
    soyadi := 'Dedec';
    d_tarihi := to_date('23.04.2000','dd.MM.yyyy');
    kilo := 65.72;
   dbms_output.put_line('Adi: ' || adi); 
   dbms_output.put_line('Adi:'||adi || ' Soyadi:'||soyadi || ' Yasi:'||yasi || ' Dogum Tarihi:'||d_tarihi || ' Boyu:'||boyu || ' Kilosu:'||kilo);
   
END;