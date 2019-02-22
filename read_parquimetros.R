azul = read.csv('/Users/fsmoura/Desktop/tipoSinal.csv', header = FALSE, sep = ",")
head(azul)
azul = azul[azul$V1 < 1006 , ]
azul$V5 = as.integer(azul$V5)
azul$V3 = NULL
azul$V4 = NULL
azul$V7 = NULL
azul$V8 = NULL
azul$V9 = NULL
azul$V10 = NULL
azul$V11 = NULL
azul$V12 = NULL
azul$V13 = NULL
azul$V14 = NULL
azul$V15 = NULL
azul$V16 = NULL
azul$V17 = NULL
azul$V18 = NULL
azul$V19 = NULL
azul$V20 = NULL
azul$V1 = NULL
head(azul)
parquiativo = azul[azul$V23 == "Parquimetro Ativo", ]
azul$V23 = as.character(azul$V23)
dim(parquiativo)
parquiretirado = azul[azul$V23 == "Parquimetro Retirado", ]
dim(parquiretirado)

azul = rbind(parquiativo, parquiretirado)
dim(azul)
head(azul)
areas = unique(azul$V21)
areas
bf = azul[azul$V21 == "BOM FIM" | azul$V21 == "INDEPENDENCIA" | azul$V21 == "SANTANA" | azul$V21 == "PETROPOLIS" | azul$V21 == "FARROUPILHA", ]
dim(bf)
sum(bf$V5)

moinhos = azul[azul$V21 == "MOINHOS DE VENTO" | azul$V21 == "AUXILIADORA" | azul$V21 == "RIO BRANCO", ]
dim(moinhos)
sum(moinhos$V5)


AZENHA = azul[azul$V21 == "AZENHA", ]
dim(AZENHA)
sum(AZENHA$V5)
