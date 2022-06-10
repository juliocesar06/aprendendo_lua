--==============================================================================
-- controle
--if then elseif then else end
--[[
print('escreva sua nota dos cursos 1 , 2 , 3')
print('curso 1 :')
-- input == io.read
media1 = io.read()
print('curso 2 :')
media2 = io.read()
print('curso 3 :')
media3 = io.read()

soma_media = (media1+media2+media3)/3

if soma_media > 6 then
    print('voce passou ',soma_media)
elseif soma_media > 3 and soma_media < 6 then
    print ('faca um trabalho de recuperacao ',soma_media)
else
    print ('reprovado ',soma_media)
end


--==============================================================================
-- for
--==============================================================================



idade = 18
for crescente 1 a 18
for i=1,Idade do
    print(Idade,i)
    Idade = Idade - i
end


idade = 18 18 a 1
-- for decrescente
for i=idade , 1, -6 do
    print(i)
end

--==============================================================================
--while  while (condition) do <codigo> end
--==============================================================================


c = 55 
-- loop de  55 a 11
while (c > 10) do
    print(c)
    c = c - 1
    print('')
end

d = 0

while (d < 100) do
    print(d)
    d = d +  1
    print('')
end



count = 0

while true do
    print('loop')
    print('-------------------------------------------')
    count = count + 1
    if count >= 77 then
        print('chegou a ',count)
        break     
    end
end

--==============================================================================
-- concatenaçao usa se .. 
--==============================================================================


a = 'Julio'
b = 'Cesar'

print("Eu, ".. a.." "..b .. " Quero ser um Desenvolvedor de Sistemas...")

-- trabalhando com string
--len/sub/lower/upper/rep/reverse
texto = 'Ainda vai levar um tempo...' -- #texto == string.len(texto)

parte_texto = string.sub(texto,1,(string.len(texto)-9))
parte_texto_2 = string.sub(texto,1,(#texto-9))
print(parte_texto,parte_texto_2)

a = 'casa'
b = 'minha'

print(string.lower(b), string.upper(a))


--==============================================================================
-- lista / dicionarios
-- lista em lua {diferentedeoutras linguganes começa com índice 1 e nao 0}
--==============================================================================


list = {1,2,3}
for i=1 ,#list do
    print(list[i])
end

--funçoes em table
table.insert(list,4)
table.insert(list,5)
for i=1 ,#list do
    print(list[i])
end

--==============================================================================
-- pairs (gera um retorno de index,value)
--==============================================================================

abc = {"casa","carro","apartamento"}
for index,value in pairs(abc)do
    print("O indice: " .. index .. " O value: ".. value)
end

--==============================================================================
--map listas
--==============================================================================

lista = {2,75,3,25,50}
real = {}

for index, value in pairs(lista) do
    print(string.rep("-",100))
    print("valor dolar: $",lista[index])
    new = value * 5.42
    real[index] = new
    print("valor real: r$",real[index]) 
end

--==============================================================================
--reduce 
--==============================================================================


values = {1,2,3,4,5,6,7,8,9}
sum = 0
for _,value in pairs(values)do
    sum = sum + value
end
print(sum)

--==============================================================================
-- count
--==============================================================================


a = {1,2,3,4,5,6,7}
bb = {'casa','carro','apartamento'}
c = 0
for index,value in pairs(a)do
    c = c + 1
end
print(c)

--==============================================================================
-- criando uma funçao com o count
--==============================================================================


function countador(x)
    count = 0 
    for index,value in pairs(x)do
        count = count + 1
    end
    return count  
end
print(countador(bb))
 
--==============================================================================
-- criando funçao filter
--==============================================================================


lista = {1,2,3,4,5,6,73,8,9,10,12,14,16,18,20}
pares = {}
function filter(x)
    for index,value in pairs(x)do
        if value % 2 == 0 then
            table.insert(pares,value)    
        end
    end
    return pares
end

pares = filter(lista)

for i,x in pairs(pares)do
    print('valor pares na lista ',x)
end


--==============================================================================
--      MATRIZ
--==============================================================================

m = {
     {"a","b","c"},
     {"d","e","f"},
     {"julio","king",9999}
    }
-- iterando as linhas da MATRIZ
for index,line in pairs(m)
do
    print('Line: '..index)
    
    --iterando todos itens da MATRIZ
    for _,column in pairs(line)do 
        print(column)
    end
end
--criando MATRIZ
MATRIZ = 
{
    {1,2,3},
    {4,5,6},
    {7,8,9}
}

--==============================================================================
--iterando sobre MATRIZ
--==============================================================================

for  index,line in pairs(MATRIZ)do
    print('linha: ',index)
    print('--------------')
    for _,value in pairs(line)do
        print(value)
    end
end
--==============================================================================
--MATRIZ em MATRIZ de MATRIZ
--==============================================================================


mMATRIZx = {
    "a",{"a1",
    {"a2",{"a3"
    ,{1,2,3,4,5,6,7}}}}}
print(mMATRIZx[2][2][2][2][7])

--==============================================================================
-- dicionarios ou objetos lua MATRIZes
--==============================================================================


dicio = {carro = 30000,moto=8000,casa = 180000}

for key,value in pairs(dicio) do
    print("Key: ",key , "Value: ", value)
end

di = {9,8,7}

for key,value in pairs(di)do
    print('key: ',key,"value: ",value)
    print(di[key])
end

--==============================================================================
-- coraoutine
--==============================================================================

local routine_1 = coroutine.create(
    function ()
        for i =1,10,1 do
            print("(routine 1): ",i)
            if i == 5 then
                coroutine.yield()
            end
        end
    end
)
local routine_func = function ()
    for i = 11,20 do
        print("(Routine2): ",i)
    end
end

local routine_2 = coroutine.create(routine_func)

coroutine.resume(routine_1)
coroutine.resume(routine_2)
coroutine.resume(routine_1)
print(coroutine.status(routine_1))


--==============================================================================
-- os
--==============================================================================
            TIME

-- imprimindo timestamp atual
print(os.time())
-- imprimindo timestamp colocado na variavel
print(os.time(
    {
        year = 1999,
        month = 12,
        day =31,
        hour =12,
        min=59,
        sec=59
    }
))
-- imprimindo data e hora atual
local data = os.date()
print(data)

--valor da variavei de ambiente do processo
local home = os.getenv('HOME')
print(home) 


        FILE

-- rename um texto
os.rename("texto.txt","newtexto.txt")

--remover
os.remove('newtexto.txt')


--              EXECULTANDO COMANDO DO WIN 
os.execute('git status')


--tempo de execuçao clock


            --TIME/CLOCK()  --MUITO TOP
-- executando o print por 10s


-- inicia o contador
local start = os.clock()
i = 0
print('teste de tempo de execuçao')
print('digite um valor em segundo do tempo de loop')
tempo = io.read('n') -- tempo number em segundos
-- eanquanto o tempo
while (os.clock()-start < tempo) do
    print(i)
    i = i + 1
    print(os.clock() - start .. "s")
    
end

print(os.clock() - start .. "s")

        EXIT(para a execuçao)

for i=0,10 do
    print(i)
    if i == 7 then
        os.exit()
    end
end



-- CUSTOM MODULES [criando modulos]
-- criando modulo proprio mmath = {} ==> duas funçoes
local mod = require('meuModulo.meu_math')
f = mmath.sum(5,7)
print(mmath.contador(mmath.sum,77,9999999))






--==============================================================================
-- OOP orientaçao a objetos LUA
--==============================================================================
  
-- TABLE LUA == OBJ

--obj
-- declaraçao de objeto lua
local Pessoa = 
{
    nome = "julio",
    age = 30,
    profissao = 'Desenvolvedor',
    linguagem = {'Python',"Lua","Php","JavaScript",'C#'},
}

print("Nome: " .. Pessoa.nome .. " | Profissao: " .. Pessoa.profissao .." " .. Pessoa.linguagem[2])

-- criando um objeto com atributos e metodos e self

local function Caneta(marca,cor)
    --contrutor atributos de instancia
    marca = marca or "Desconhecido"
    cor = cor or "Azul"
    
    return
    {
        -- metodo
        marca = marca, --self.marca
        cor = cor, -- self.cor

        --acessar metodo (var:metodo)

        --metodos 
        --self.escrever
        escrever = function (self)
           print('Eu sou uma caneta: ' .. self.marca .. " da Cor: " .. self.cor) 
        end,

        --metodo rabiscar
        rabiscar = function (self)
            print("jjkdhjkhsajkfhjksfbnm,bmnxcbvmnbsfjkhsfdjkhsjkfxcb,mcnbxv,mnxcm,vnjkhsfjkhsmcxnvm,nx,cmnv")
        end
        

    }
end

-- instanciando um objeto LUA

local bic_preta = Caneta("Bic","Preta")
bic_preta:escrever()
bic_preta.rabiscar()

]]

--==============================================================================
       -- classes
--==============================================================================
--classe
function NewArea(width,height)
    return 
    {
        -- atributos
        width = width or  0,
        height = height or 0,

        --metodos
        getArea = function (self)
            return self.width * self.height
        end,

        getSpace =  function (self)
            print(" altura: ",self.width," largura: ",self.height,"area: ", self:getArea())
            
        end,
    }
end

