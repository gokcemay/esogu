# ESOGÜ FBE için LaTeX şablonu

## English
A LaTeX thesis template for Eskisehir Osmangazi University Graduate School of Natural and Applied Sciences. 

## Türkçe

Eskişehir Osmangazi Üniversitesi Fen Bilimleri Enstitüsü Aralık 2014 (Güncelleme: Ekim 2015) [Tez Yazım Kılavuzuna] uygun bir LaTeX tez şablonu.  

Şablon esogu.cls [Memoir] üzerine yapılmış bir belge sınıfıdır. Sayfa boyutlarını ve görünüşü kılavuza göre düzenliyor. Kullanmak için esogu.cls dosyası içinde tez hakkında bilgiler bölümüne kendi bilgilerinizi girmek gerekiyor. 

## Yapılacaklar

- Tez hakkında bilgileri esogu.cls üzerinden değil de başka bir dosyadan almak
- Tezin TASLAK halin ya da sadece belli bölümlerinin PDF çıktısını alabilme özelliğinin eklenmesi
- CTAN'a eklemek için gerekenlerin yapılması
- Kullanım kılavuzu yapılması

## Kısa yoldan kullanım:
   $ lualatex -shell-escape DOSYA.tex   
   $ bibtex DOSYA   
   $ lualatex -shell-escape DOSYA.tex   
   $ lualatex -shell-escape DOSYA.tex   

## Notlar:
- pdflatex, fontspec paketi yüzünden çalışmıyor. fontspec ise %100 "Times New Roman" fontu için gerekiyor.

[Tez Yazım Kılavuzuna (PDF)]: http://fenenst.ogu.edu.tr/Storage/FenBilimleriEnstitusu/Uploads/ESOGU_FBE_TEZ_YAZIM_KILAVUZU_10_02_2016.pdf
[Memoir]: http://www.ctan.org/tex-archive/macros/latex/contrib/memoir/
