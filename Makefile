all: cidfontinfo.OTC.SC  cidfont.ps.OTC.SC  features.OTC.SC  FontMenuNameDB SourceHanSans_CN_sequences.txt  UniSourceHanSansCN-UTF32-H
	makeotf -f cidfont.ps.OTC.SC -omitMacNames -ff features.OTC.SC -fi cidfontinfo.OTC.SC -mf FontMenuNameDB -r -nS -cs 25 -ch UniSourceHanSansCN-UTF32-H -ci SourceHanSans_CN_sequences.txt -o fake_msyh.otf
	tx -cff +S -no_futile cidfont.ps.OTC.SC CFF.OTC.SC
	sfntedit -a CFF=CFF.OTC.SC fake_msyh.otf
