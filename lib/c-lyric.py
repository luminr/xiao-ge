#在每个汉字前加空格，删除其他字符
inp = open( 'in.txt', 'r', encoding='utf-8' )
oup = open( 'out.txt', 'w', encoding='utf-8' )

inp.read(1)
for line in inp :
    for cha in line :
        if u'\u4e00' <= cha <= u'\u9fff' :
            oup.write(" %s"%cha)
    oup.write("\n")
inp.close()
oup.close()

