%% esogu.cls
%% Copyright 2015 Gökçe Mehmet AY
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is Gökçe Mehmet AY.
%
% This work consists of the files esogu.cls and tez.tex
%
% Memoir document class'ı üzerine yazılmıştır. Memoir hakkında bilgi: http://www.ctan.org/tex-archive/macros/latex/contrib/memoir/
%
%ESOGÜ Fen Bilimleri Enstitüsü Aralık 2014 Tez Yazım Kılavuzuna göre hazırlanmıştır. http://fenenst.ogu.edu.tr/
\ProvidesClass{esogu}[2015/03/01 version 1.00 ESOGU PhD Template]
%\NeedsTexFormat{LaTeX2e}
%
% Şablonda kullanılan her komutu açıklamaya çalıştım. Eğer bir sorunla karşılaşırsanız önce sorun yaşadığınız paketin kılavuzunu okumanızı tavsiye ederim. 
%
% Bu şablonda normal koşullarda değişiklik yapmanız gerekmeyecektir. Sadece sonda "TEZLE İLGİLİ Bilgileri burada giriniz." bölümünde bilgilerinizi giriniz. 
%%---İstisnalar
%
% - Eğer yatık sayfa yapacaksanız pdflscape paketini paketler bölümünden aktiflemeniz gerekir. Yatık sayfa için sondaki Önemli Notları okuyun.
%
%----Yapılacaklar
% 1. 4 ve 5'inci seviye başlıklarını altı çizili yap
% 2. Class optionları ile draft ve diğerlerini ekle
%
%
%Şablonla ilgili sorular için www.gmay.me adresinden Gökçe Mehmet AY'a ulaşabilirsiniz.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[12pt, a4paper, oneside]{memoir}		%Seçenekler sırasıyla 12punto, A4 kağıt, tek taraflı baskı olacak, Kaynak dizinine numara ver

\OnehalfSpacing\OnehalfSpacing*			%satır arası 1.5 satır boşluk

%---------Kullanılan PAKETLER-----------------------


%----------Dili Türkçe ve fontu ayarlamak için---------------
\usepackage{polyglossia}			
\setmainlanguage{turkish}

\usepackage{fontspec}
\setmainfont[Language=Turkish]{Times New Roman}		%Times new roman için
%----------------------------------------------------

\usepackage{url}
\usepackage{hyperref}
\usepackage{graphicx}
\usepackage{framed}				%kutu çizmek için
% \usepackage{pdflscape}		% Yatık sayfa gerekirse
\usepackage{amsmath}			% Matematik için
\usepackage[version=3]{mhchem}	% Kimya formülleri için

%------------------ Referanslar için ---------------------
%Biblatex ne yazık ki Türkçe'yi desteklemiyor. Bibtex'in 8bit desteklememesi yüzünden onu kullanıyorum. Aşağıda ve ve vd'nin doğru olması için yapılmış değişiklikler var. Geliştirmek için natbib ile nasıl olacağına bakılabilir.
\usepackage[citestyle=authoryear,bibstyle=authoryear]{biblatex}

\renewcommand*{\finalnamedelim}{\addspace ve\space}					%and yerine ve koyması için
\DefineBibliographyStrings{english}{andothers={\space vd \space}}		%et al yerine vd koyması için
%---------------------------------------------------------

%-------------SAYFA DÜZENİ--------------------------------

\setlrmarginsandblock{3cm}{2.5cm}{*}	% sayfa sol sağ
\setulmarginsandblock{3cm}{2.5cm}{*}	% sayfa üst alt
\setheaderspaces{2cm}{*}{*}				% header uzaklığı için

\checkandfixthelayout


\raggedbottom							% Sayfa sonlarını ayarlamak için kullanın


%---------SAYFA SONLARI DÜZGÜN OLSUN ve DİĞER GÜZELLEŞTİRMELER


\doublehyphendemerits=10000       		% Ard arda kesilmiş kelime yok

% \hyphenpenalty 10000					% Kesik kelime olmasın 

% \exhyphenpenalty 10000				% Kesik kelimenin olduğu satırın yakınlarında da başka kesik kelime olmasın.

\brokenpenalty=10000              		% Sayfalar/sütunlar arasında kesik kelime yok

\widowpenalty=10000                		% SAyfanın altında widows  yok


\clubpenalty=10000                 		% Sayfanın üstünde orphan yok

\interfootnotelinepenalty=10000    		% Footnote'ları hiç bölme

% Eğer yukarıdaki değerlere rağmen sayfa başında tek satır varsa yapacak pek bir şey yok. O son paragrafı tekrar yazmayı deneyebilirsiniz. TeX bir yerde aralık vermek zorunda ve kötüler arasından en iyisini seçiyor. 

%---------------Paragraf DÜZENİ---------------------

\setlength{\parskip}{\baselineskip} 	%parskip yani iki paragraf arası meseafe normal satırlar arası mesafe

\setlength{\parindent}{1.25cm}			%Paragrafın ilk satırı 1.25cm içeriden başlar

\indentafterchapter						%Bölümden sonraki paragrafta da boşluk ver.
\let\@afterindentfalse\@afterindenttrue
\@afterindenttrue

%------Bölüm stili-----
%--- Aşağıdaki makro bölümün görünüşünü düzenler.----
\makechapterstyle{bolum}{%
\renewcommand{\afterchaptertitle}{\par\nobreak\vskip \baselineskip}		%Başlıktan sonra 2 satır bırak.
\renewcommand{\chaptitlefont}{\centering\normalfont\Large\bfseries}	%Başlık için 14 font kullan ve ortala
\renewcommand{\chapnumfont}{\centering\normalfont\Large\bfseries}		%Başlık için 14 font kullan ve ortala
\renewcommand{\printchaptertitle}{\chaptitlefont\MakeUppercase}	% Başlıkları büyük harf yap
\renewcommand*{\printchaptername}{}			
\renewcommand*{\chapternamenum}{}			
\renewcommand*{\chapnumfont}{\chaptitlefont}
\renewcommand*{\printchapternum}{\chapnumfont \thechapter . \space} 
\renewcommand*{\afterchapternum}{}
\afterchaptertitle
}

%----------Şekiller ve Çizelgeler dizini-------

\addtocontents{toc}{~\hfill\textbf{Sayfa}\par}		% İçindekilerin soluna sayfa eklemek için

\renewcommand{\cftchapterdotsep}{\cftdotsep}		% İçindekilerde bölüm başlıklarının da noktaları olması için


\addtocontents{lof}{\textbf{Şekil}~\hfill\textbf{Sayfa}\par}		% Şekil listesinin sağına Şekil soluna sayfa eklemek için
\addtocontents{lot}{\textbf{Çizelge}~\hfill\textbf{Sayfa}\par}		% Şekil listesinin sağına Şekil soluna sayfa eklemek için


%----------------Resimler----------------------
\setlength{\textfloatsep}{2\baselineskip}

%---Sayfa numaraları----
\copypagestyle{chapter}{plain}
\makeoddhead{chapter}% Tek sayılı sayfaların üstbilgisi
  {}% Tek sayfa üstbilgi Sol 
  {}% Tek sayfa üstbilgi orta
  {\thepage}% Tek sayfa üstbilgi sağ
\makeevenhead{chapter}% Çift sayılı sayfaların üstbilgisi
  {}% Tek sayfa üstbilgi sol
  {}% Tek sayfa üstbilgi orta
  {\thepage}% Tek sayfa üstbilgi sağ  
\makeoddfoot{chapter}% Tek sayılı sayfaların altbilgisi
  {}% Tek sayfa altbilgi sol
  {}% Tek sayfa altbilgi orta
  {}% Tek sayfa altbilgi sağ
\makeoddfoot{chapter}% Çift sayılı sayfaların altbilgisi
  {}% Tek sayfa altbilgi sol
  {}% Tek sayfa altbilgi orta
  {}% Tek sayfa altbilgi sağ
  
%---------------------------------------------------------------------%  
%----------Kaynak dizini-----------------

\setlength{\bibitemsep}{2\parskip}
%----TEZLE İlgili değişkenler tanımlama-------------------------------%

\newcommand*{\yazarismi}[1]{\def\yazar{#1}}

\newcommand*{\danismanismi}[1]{\def\danisman{#1}}
\newcommand*{\ikincidanismanismi}[1]{\def\ikidanisman{#1}}

\newcommand*{\tezbaslik}[1]{\def\tbaslik{#1}}
\newcommand*{\tezbasliken}[1]{\def\tbasliken{#1}}

\newcommand*{\juribir}[1]{\def\jbir{#1}}
\newcommand*{\juriiki}[1]{\def\jiki{#1}}
\newcommand*{\juriuc}[1]{\def\juc{#1}}
\newcommand*{\juridort}[1]{\def\jdort{#1}}
\newcommand*{\juribes}[1]{\def\jbes{#1}}

\newcommand*{\unvanismi}[1]{\def\unvan{#1}}
\newcommand*{\unvanismien}[1]{\def\unvanen{#1}}

\newcommand*{\bolumismi}[1]{\def\bolum{#1}}
\newcommand*{\bolumismien}[1]{\def\bolumen{#1}}

\newcommand*{\bilimdali}[1]{\def\bilim{#1}}
\newcommand*{\projedestek}[1]{\def\proje{#1}}
\newcommand*{\teslimtarihi}[1]{\def\teslim{#1}}
\newcommand*{\teslimtarihien}[1]{\def\teslimen{#1}}

\newcommand*{\enstitumuduru}[1]{\def\mudur{#1}}



%----TEZLE İLGİLİ Bilgileri burada giriniz.---------------------------%
\yazarismi{Gökçe Mehmet AY}						% Yazar adı, İsim ve Soyad ilk harfler Büyük
\tezbaslik{Tez Başlığı} 							% Tez başlığınızı buraya giriniz
\tezbasliken{Thesis Title} 						% İngilizce Tez başlığınızı buraya giriniz
\danismanismi{Ünvan.İsim Soyad}		% Danışman ismi
\ikincidanismanismi{}							% İkinci danışman ismi
\juribir{Bir İsim Soyad}						% Juri
\juriiki{İki İsim Soyad}						% Juri
\juriuc{Uc İsim Soyad}							% Juri
\juridort{Dort İsim Soyad}						% Juri
\juribes{Dort İsim Soyad}						% Juri
\unvanismi{DOKTORA}								% BÜYÜK HARFLE yazılacak DOKTORA ya da YÜKSEK LİSANS
\unvanismien{DOCTOR OF PHILOSOPHY}				% İngilizce ünvan
\bolumismi{Makine Mühendisliği}					% Anabilim dalı (bölüm) ismi
\bolumismien{Mechanical Engineering}					% İngilizce Anabilim dalı (bölüm) ismi

\bilimdali{Konstrüksiyon-İmalat}				% Bilim dalı ismi
\projedestek{BAP projesi ile desteklenmiştir}	% Eğer bir proje ile desteklendiyse
\teslimtarihi{ARALIK 2015}						% Tez teslim ayı
\teslimtarihien{DECEMBER 2015}					% İngilizce Tez teslim ayı
\enstitumuduru{Ünvan İsim Soyad} 

\chapterstyle{bolum}


\pagestyle{chapter}



\endinput


%-----------ÖNEMLİ NOTLAR----------------------------

%------------YATIK SAYFA-----------------------------
% Bir sayfanın YATIK olmasını istiyorsanız pdflscape paketini kullanmalısınız. Bu 
% \usepackage{pdflscape}

% \begin{landscape}
% \begin{table}
% \centering     % optional, probably makes it look better to have it centered on the page
% \begin{tabular}{....}
% % ...
% \end{tabular}
% \end{table}
% \end{landscape}

% Daha fazla bilgi için http://en.wikibooks.org/wiki/LaTeX/Page_Layout

%----------------------------------------------------






