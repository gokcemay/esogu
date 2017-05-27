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
% 
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
\usepackage[draft=false,unicode=true,pdflang=turkish,hidelinks=true]{hyperref}
\usepackage{graphicx}
\usepackage{framed}				%kutu çizmek için
% \usepackage{pdflscape}		% Yatık sayfa gerekirse
\usepackage{amsmath}			% Matematik için
\usepackage[version=3]{mhchem}	% Kimya formülleri için


\usepackage[acronym, toc]{glossaries}   % Simgeler ve Kısaltmalar dizini için paket. Ancak PERL istiyor, lütfen PERL kurunuz

%-----Teoremler için--------
\usepackage{thmtools}
\declaretheorem[name=Teorem]{theorem}
\declaretheorem[name=İspat]{ispat}

%Kendi environmentanızı tanımlamak isterseniz yukarıdaki gibi tanımlayabilirsiniz. Listesini oluşturmak için lütfen şablondaki listelerin nasıl yapıldığna bakın, olmazsa thmtools'un kullanım kılavuzuna bakın. 

%------------------ Referanslar için ---------------------
%Biblatex ne yazık ki Türkçe'yi desteklemiyor. Bibtex'in 8bit desteklememesi yüzünden onu kullanıyorum. Aşağıda ve ve vd'nin doğru olması için yapılmış değişiklikler var. Geliştirmek için natbib ile nasıl olacağına bakılabilir.
\usepackage[citestyle=authoryear,bibstyle=authoryear, maxcitenames=2, maxbibnames=99, backend=bibtex8]{biblatex}

\renewcommand*{\finalnamedelim}{\addspace ve\space}%and yerine ve koyması için
\renewcommand*{\nameyeardelim}{\addcomma\space} %isimle yıl arası virgül için

\DefineBibliographyStrings{english}{andothers={\space vd. \space}}		%et al yerine vd koyması için

\renewcommand*{\finalnamedelim}{\addspace ve\space}					%and yerine ve koyması için
\DefineBibliographyStrings{english}{andothers={\space vd. \space}}		%et al yerine vd koyması için


%Figür ve tablo açıklaması için
\usepackage{boxhandler} %Figürün başından figür yazısının başlaması için bu paket kullanıyor. Tablolar için bunu aktiflemedim. Ancak çok küçük figürler için problem var.

\captiontitlefont{\normalfont}% açıklama başlık fontu
\precaption{\raggedright}% açıklama nosu için
\captiondelim{\space}% newline
\captionstyle{\centerlastline}% for title
\setlength{\belowcaptionskip}{\onelineskip}

\addto\captionsturkish{%
  \renewcommand{\tablename}{Çizelge}
}

%------------Denklemler Dizini



%-------------SAYFA DÜZENİ--------------------------------

\setlrmarginsandblock{3cm}{2.5cm}{*}	% sayfa sol sağ
\setulmarginsandblock{3cm}{2.5cm}{*}	% sayfa üst alt
\setheaderspaces{15mm}{*}{*}				% header uzaklığı için

\checkandfixthelayout


\raggedbottom							% Sayfa sonlarını ayarlamak için kullanın


%---------SAYFA SONLARI DÜZGÜN OLSUN ve DİĞER GÜZELLEŞTİRMELER
\brokenpenalty=10000              		% Sayfalar/sütunlar arasında kesik kelime yok


\doublehyphendemerits=10000       		% Ard arda kesilmiş kelime yok
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000
% Kesik kelime olmasın değer 10000 olursa
\righthyphenmin=72

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

%TOC
\maxtocdepth{subsubsection}




%------Bölüm stili-----

%\renewcommand{\thesection}{\thechapter\arabic{section}.}
%--- Aşağıdaki makro bölümün görünüşünü düzenler.----
\makechapterstyle{bolum}{%

\renewcommand{\afterchaptertitle}{\par\nobreak\vskip \baselineskip}		%Başlıktan sonra 2 satır bırak.
\renewcommand{\chaptitlefont}{\centering\normalfont\Large\bfseries}	%Başlık için 14 font kullan ve ortala
\renewcommand{\chapnumfont}{\centering\normalfont\Large\bfseries}		%Başlık için 14 font kullan ve ortala
\renewcommand{\printchaptertitle}{\chaptitlefont\MakeUppercase}	% Başlıkları büyük harf yap
\renewcommand*{\printchaptername}{}			
\renewcommand*{\chapternamenum}{}			
\renewcommand*{\chapnumfont}{\chaptitlefont}
\renewcommand{\printchapternum}{\chapnumfont \thechapter . \space} 
\renewcommand*{\afterchapternum}{}
\afterchaptertitle
\renewcommand{\cftchapteraftersnum}{.}
\renewcommand{\cftsectionaftersnum}{.}
\renewcommand{\cftsubsectionaftersnum}{.}
\renewcommand{\cftsubsubsectionaftersnum}{.}
\renewcommand{\subsubsecheadstyle}{\noindent\bfseries\underline}

}
%----------Şekiller ve Çizelgeler dizini-------

\addtocontents{toc}{~\hfill\underline{\textbf{Sayfa}}\par}		% İçindekilerin soluna sayfa eklemek için

\renewcommand{\cftchapterdotsep}{\cftdotsep}		% İçindekilerde bölüm başlıklarının da noktaları olması için



\addtocontents{lof}{\underline{\noindent\textbf{Şekil}}~\hfill\underline{\textbf{Sayfa}}\par}		% Şekil listesinin sağına Şekil soluna sayfa eklemek için
\addtocontents{lot}{\underline{\textbf{Çizelge}}~\hfill\underline{\textbf{Sayfa}}\par}		% Şekil listesinin sağına Şekil soluna sayfa eklemek için
% \renewcommand*{\afterloftitle}{\thispagestyle{plain}%
% \par\nobreak {\normalfont Figure \hfill Page}\par\nobreak}

%----------------Resimler----------------------
%\setlength{\textfloatsep}{2\baselineskip}
\setlength{\floatsep}{3\onelineskip}
 \setlength{\intextsep}{2\onelineskip}
\setlength{\textfloatsep}{2\onelineskip}
 \setlength{\dblfloatsep}{2\onelineskip}
 \setlength{\dbltextfloatsep}{2\onelineskip}

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


%%%%%%%%%%%%%%%%%%%%%%%
%---------ÖNEMLİ-------------
%----TEZLE İLGİLİ Bilgileri burada giriniz.---------------------------%
\yazarismi{Mustafa Ertunç TAT}						% Yazar adı, İsim ve Soyad ilk harfler Büyük
\tezbaslik{Aaaaaa Bbbbbb Cccccc Çççççç Ddddddd Eeeeeeee} 							% Tez başlığınızı buraya giriniz
\tezbasliken{Fffffffff Ggggggggg Hhhhhhhh Jjjjjjjjj} 						% İngilizce Tez başlığınızı buraya giriniz
\danismanismi{Doç.Dr. Mustafa Ertunç TAT}		% Danışman ismi
\ikincidanismanismi{Doç.Dr. Mustafa Ertunç TAT}							% İkinci danışman ismi
\juribir{Doç.Dr. Mustafa Ertunç TAT}						% Juri
\juriiki{Doç.Dr. Mustafa Ertunç TAT}						% Juri
\juriuc{Doç.Dr. Mustafa Ertunç TAT}							% Juri
\juridort{Doç.Dr. Mustafa Ertunç TAT}						% Juri
\juribes{Doç.Dr. Mustafa Ertunç TAT}						% Juri
\unvanismi{DOKTORA}								% BÜYÜK HARFLE yazılacak DOKTORA ya da YÜKSEK LİSANS
\unvanismien{DOCTORAL DISSERTATION}				% İngilizce ünvan
\bolumismi{Makine Mühendisliği}					% Anabilim dalı (bölüm) ismi
\bolumismien{Mechanical Engineering}					% İngilizce Anabilim dalı (bölüm) ismi

\bilimdali{Konstrüksiyon-İmalat}				% Bilim dalı ismi
\projedestek{BAP projesi ile desteklenmiştir}	% Eğer bir proje ile desteklendiyse
\teslimtarihi{ARALIK 2015}						% Tez teslim ayı
\teslimtarihien{DECEMBER 2015}					% İngilizce Tez teslim ayı
\enstitumuduru{Prof.Dr. Hürriyet ERŞAHAN} 
%------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%



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
