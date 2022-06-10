mmath ={} 
function mmath.sum(a,b)
    -- modulo de teste
    print(a+b)
    return a + b
end

function mmath.contador(f,a,b)
    local start = os.clock()
    if type(f)== "function"then
        f(a,b)
    else    
        print('parametro nao funçao')
        
    end
    time_percorrido = os.clock()-start
    return time_percorrido
    
end

