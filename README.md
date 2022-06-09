# aprendendo_lua 2022
curso da linguagem lua
---------------------------------------------------
# palavras reservadas
As seguintes palavras-chave são reservadas e não podem ser utilizadas como nomes:

     and       break     do        else      elseif
     end       false     for       function  if
     in        local     nil       not       or
     repeat    return    then      true      until     while

-------------------------------------------------------------------------------------
As seguintes cadeias denotam outros itens léxicos:

     +     -     *     /     %     ^     #
     ==    ~=    <=    >=    <     >     =
     (     )     {     }     [     ]
     ;     :     ,     .     ..    ...



-- comentarios
-----------------------------------------------
# local/global
----------------------------------------

local x  ==> variaveis locais <br/>
=======
local x  ==> variaveis locais

x ==> variavel global por padrao

-----------------------------------------
# tipos de dados


numericos ==> 3 /  3.0 /  3.1416 /  314.16e-2 /  0.31416E1 /  0xff  / 0x56(tudo number)
=======
numericos ==> 3   3.0   3.1416   314.16e-2   0.31416E1   0xff   0x56(tudo number)


5                              ==>number
"hello world"                  ==>string
c = {cor = "preto"}            ==> table ==> objeto
function (x)do return x*x end  ==> funçoes
nil e 0                        ==> null ou nulo

-----------------------------------------

# controle if / elseif / else
if exp then bloco {elseif exp then bloco} [else bloco] end
ex: 

a = 7
<code>
if(a > 9)then
    print(a ," maior que 9")
  elseif (a < 9 and a > 4)then
    print(a ," maior que 4  e menor que  9")
  else
    print(a,"numero menor que 9")
end
=======
</code>


 



# aprendendo git

ssh e token criado

configurando o usuario para commit


git config --global user.email ""
git config --global user.name ""


git clone --> clonar o repositorio criado no github




