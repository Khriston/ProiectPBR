import pylog
import re
import fileinput

_INTEX = 0
_MS = "Mutare simpla"
_MD = "Mutare dubla"
_MI = "Mutare invalida"

nr=r"((\d\d)|(\d))" #pozitii de la 1 la 24
tranzitie=f"({nr}\/{nr}(\*)?)" #tranzitie intre doiua pozitii cu mancat sau nu
mutare_0=f"(\d\d:)"
mutare_1=f"(\d\d: {tranzitie})" #muta doar o piesa (zaruri normale dar cu o singura mutare posibila)
mutare_2=f"(\d\d: {tranzitie} {tranzitie})" #poate muta doua piese (mutare normala)
mutare_3=f"(\d\d: {tranzitie} {tranzitie} {tranzitie})" #muta trei piese (zaruri duble dar cu trei mutari posibile)
mutare_4=f"(\d\d: {tranzitie} {tranzitie} {tranzitie} {tranzitie})" #muta patru piese(dubla normala)
Mutari=f"({mutare_4}|{mutare_3}|{mutare_2}|{mutare_1})"#|{mutare_0})"

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
player = 0
f = open(f"input.txt", "r", encoding='utf8')
o = open(f"moves_output.txt", "w", encoding='utf8')
text = f.read()
f.close()
text1 = re.split('(( ){2,})', text)
#for item in text1:
#	print(item)
#print(text1)
for expr in text1:
	t = extrage_mutari(expr)
	if len(t) != 0:
		replace1 = re.sub('\d\d:( )?', '', t[0])
		replace2 = re.sub(' ' ," ,"+str(player+1)+'\n', replace1)
		replace3 = re.sub('\* ', ",-", replace2)
		replace4 = re.sub(' ,', ',+,', replace3)
		replace5 = re.sub('/', ',', replace4)
		if(replace5[-1] == "*"):
			replace6 = replace5.replace('*', '')
			final = f'{replace6},-,'
		else:
			final = f'{replace5},+,'
		o.write(f'{final}')
		o.write(str(player+1))
		o.write('\n')
		player = (player + 1) % 2
		if len(t) == 2:
			replace1 = re.sub('(\d\d:( )?)', '', t[1])
			replace2 = re.sub(' ', " ," + str(player + 1) + '\n', replace1)
			replace3 = re.sub('\* ', ",-", replace2)
			replace4 = re.sub(' ,', ',+,', replace3)
			replace5 = re.sub('/', ',', replace4)
			if (replace5[-1] == "*"):
				replace6 = replace5.replace('*', '')
				final = f'{replace6},-,'
			else:
				final = f'{replace5},+,'
			o.write(f'{final}')
			o.write(str(player+1))
			o.write('\n')
			player = (player + 1) % 2
o.close()
o = open(f"moves_output.txt", "r", encoding='utf8')
text=o.read()
o.close()
f = open(f"moves_output.txt", "w", encoding='utf8')
o = open(f"rules_output.txt", "w", encoding='utf8')
f.truncate(0)
text1=text.split('\n')
for line in text1:
	elem = line.split(',')
	if len(elem) > 1:
		if(elem[-1] == "1"):
			elem[0] = str(25 - int(elem[0]))
			elem[1] = str(25 - int(elem[1]))
		sep = ","
		fin = sep.join(elem)
		if (elem[-1] == "1"):
			rule = "move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29]," \
		+ fin + \
		",[A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12N,A13,A14,A15N,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])\
		:-\
		A" + elem[0] + "N is A" + elem[0] + " - 1,\
		A" + elem[1] + "N is A" + elem[1] + " + 1,\
		A29N is " + elem[2] + "1."
		else:
			rule = "move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29]," \
		+ fin + \
		",[A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12N,A13,A14,A15N,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])\
		:-\
		A" + elem[0] + "N is A" + elem[0] + " + 1,\
		A" + elem[1] + "N is A" + elem[1] + " - 1,\
		A29N is " + elem[2] + "1."

		f.write(fin+'\n')
		#print(rule,'\n')
		o.write(rule)
		o.write('\n')
f.close()
o.close()
