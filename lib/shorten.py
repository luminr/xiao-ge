#去除空格和换行，将代码缩至一行内
inp = open( 'in.txt', 'r', encoding='utf-8' )
oup = open( 'out.txt', 'w', encoding='utf-8' )

inp.read(1)
for word in inp.read().split():
    oup.write("%s "%word)
inp.close()
oup.close()

