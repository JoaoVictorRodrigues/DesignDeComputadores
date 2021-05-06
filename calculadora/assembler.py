import binascii

instrucoes ={
  "LOAD":"00000",
  "STORE":"00001",
  "JMP":"00010000",
  "JE":"00011000",
  "JTL":"00100000",
  "JSR":"00101000",
  "RET":"00110000",
  "SOMA":"00111", #7
  "SUB":"01000",  #8
  "SOMAIM":"01001", #9
  "SUBIM":"01010",  #10
  "SOMACAR":"01011",  #11
  "SUBBOR":"01100",  #12
  "MUL":"01101",  #13
  "DIV":"01110",  #14
  "LAND":"01111",  #15
  "LOR":"10000",  #16
  "LNOT":"10001",  #17
  "LXOR":"10010",  #18
  "MOV":"10011",
  "CMP":"10100"
  }

registadores={
  "R0":"000",
  "R1":"001",
  "R2":"010",
  "R3":"011",
  "R4":"100",
  "R5":"101",
  "R6":"110",
  "R7":"111"
}

botoes_keys={
  "addrChave0":"01000000",
  "addrChave1":"01000001",
  "addrBotao0":"01000010",
  "addrBotao1":"01000011",
  "addrDisplay01":"10000000",
  "addrDisplay23":"10000001",
  "addrDisplay4":"10000010",
  "addrDisplay5":"10000011",
  "zero":"00000000"
}

with open("assembly.txt","r") as content:
    lista=content.readlines()

print(lista)

lista_f=[]
dic_jmp={}

for i in range(len(lista)):
    linha=lista[i].replace(","," ").split()
    if linha[0].endswith(":"):
        dic_jmp[linha[0][:-1]]='{0:08b}'.format(i)
        del linha[0]
    lista_f.append(linha)

print(lista_f)

def tradutor(palavra):
    if palavra in instrucoes:
        return instrucoes[palavra]
    elif palavra in registadores:
        return registadores[palavra]
    elif palavra in botoes_keys:
        return botoes_keys[palavra]
    elif palavra in dic_jmp:
        return dic_jmp[palavra]
    else:
        if palavra.startswith("0x"):
            return "{0:08b}".format(int(palavra[2:], 16)) 
        elif palavra.startswith("#"):
            return "{0:08b}".format(int(palavra[1:], 10)) 

with open("binary.txt","w") as content:
    for f in range(len(lista_f)):
        i=lista_f[f]
        line=""
        if i[0]=="STORE":
            i[1],i[2]=i[2],i[1]
        for a in range(len(i)):
            line=line+tradutor(i[a])
            print(line)
        
        print(i)
        content.writelines("tmp({}) := \"{}\";\n".format(f,line))
        print("\n")