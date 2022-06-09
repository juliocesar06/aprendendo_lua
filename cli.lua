require('functions_ma')


command = arg[1]

a = arg[2]
b=arg[3]


if command == "add"then
    print(add(a,b))

elseif command == "sub"then
    print(sub(a,b))

elseif command == "div"then
    print(div(a,b))

elseif command == "pot"then
    print(pot(a,b))

elseif command == "mult"then
    print(mult(a,b))
else
    print ('Unknow command')

end


if command =="add"then
    print(add(a,b))
end
