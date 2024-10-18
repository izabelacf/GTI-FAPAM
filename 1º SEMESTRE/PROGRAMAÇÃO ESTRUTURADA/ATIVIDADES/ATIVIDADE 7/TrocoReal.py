ValorProd= float(input ("Digite o valor do produto: \n"))
ValorProd2= str("%.2f"%ValorProd)
ValorProdReal= ValorProd2.replace(".",",")
ValorDin= float(input("Digite o valor do dinheiro:\n"))
ValorDin2= str ("%.2f"%ValorDin)
ValorDinReal= ValorDin2.replace(".",",")
troco = ValorDin-ValorProd
Troco2 = str("%.2f"%troco)
TrocoReal = Troco2.replace(".",",")
print ("Valor do produto: R$ %s \n Valor em dinheiro: R$ %s \n Valor do troco: R$ %s"
%(ValorProdReal,ValorDinReal,TrocoReal))