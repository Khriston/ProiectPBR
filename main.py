import pylog
import re

_INTEX = 0
_MS = "Mutare simpla"
_MD = "Mutare dubla"
_MI = "Mutare invalida"

nr=r"((\d\d)|(\d))" #pozitii de la 1 la 24
tranzitie=f"({nr}\/{nr}(\*)?)" #tranzitie intre doiua pozitii cu mancat sau nu
mutare_1=f"(\d\d: {tranzitie})" #muta doar o piesa (zaruri normale dar cu o singura mutare posibila)
mutare_2=f"(\d\d: {tranzitie} {tranzitie})" #poate muta doua piese (mutare normala)
mutare_3=f"(\d\d: {tranzitie} {tranzitie} {tranzitie})" #muta trei piese (zaruri duble dar cu trei mutari posibile)
mutare_4=f"(\d\d: {tranzitie} {tranzitie} {tranzitie} {tranzitie})" #muta patru piese(dubla normala)
Mutari=f"({mutare_4}|{mutare_3}|{mutare_2}|{mutare_1})"

defs = {
	Mutari: _MS
}

def extrage_mutari(text):
	res = []
	txt1, txt2 = text, text

	while True:
		txt1 = txt2
		for def_, type_ in defs.items():
			match = re.search(def_, txt2, flags = re.I)
			if (match != None):
				res += [match.group(0)]
				txt2 = txt2[:match.start()] + txt2[match.end():]

		if txt1 == txt2:
			return res

text = ''
f = open(f"input.txt", "r", encoding='utf8')
text = f.read()
text1 = re.split('(( ){2,})', text)
#for item in text1:
#	print(item)
#print(text1)
for expr in text1:
	t = extrage_mutari(expr)
	if len(t) != 0:
		if len(t) == 2:
			print(f'move({t[0]})')
			print(f'move({t[1]})')
		else:
			print(f'move({t[0]})')
