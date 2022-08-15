DECLARE

dogumTarihi     date := to_date('23.04.2000','dd.mm.yyyy');
yasi            number(3);
cikti           varchar2(2000);

BEGIN

yasi := (sysdate - dogumTarihi) / 365;

CASE
    when yasi < 15 then cikti := 'Ben Bir Cocugum. Yasim:'||yasi;
    when yasi < 20 then cikti := 'Ben Bir Gencim. Yasim:'||yasi;
    when yasi < 30 then cikti := 'Ben 20lu Yaslardayim Yasim:'||yasi;
    when yasi < 40 then cikti := 'Ben 30li Yaslardayim Yasim:'||yasi;
    when yasi < 50 then cikti := 'Ben 40li Yaslardayim Yasim:'||yasi;
    else                cikti := 'Ben Yasliyim. Yasim:'||yasi;
END CASE; 

dbms_output.put_line(cikti);
 
END;