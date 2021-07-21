#=
只测试了不等式的特例的6元形式，选取了4096个样本
=#

function test(LHS::Function,RHS::Function)
    c=zero(Float64)
    for a1 in 1:4
        for a2 in 1:4
            for a3 in 1:4
                for a4 in 1:4
                    for a5 in 1:4
                        for a6 in 1:4
                            c+=LHS(a1,a2,a3,a4,a5,a6)/RHS(a1,a2,a3,a4,a5,a6)
                        end
                    end
                end
            end
        end
    end
    return 1/(c/4096-1)
end

代数平均(a,b,c,d,e,f)=(a+b+c+d+e+f)/6.0
几何平均(a,b,c,d,e,f)=(a*b*c*d*e*f)^(1.0/6)
平方平均(a,b,c,d,e,f)=sqrt((a*a+b*b+c*c+d*d+e*e+f*f)/6.0)
调和平均(a,b,c,d,e,f)=6/(1.0/a+1.0/b+1.0/c+1.0/d+1.0/e+1.0/f)
顺序和(a,b,c,d,e,f)=a*a+b*b+c*c+d*d+e*e+f*f
乱序和(a,b,c,d,e,f)=a*b+b*d+c*a+d*f+e*c+f*e
function 逆序和(a,b,c,d,e,f)
    x=sort([a,b,c,d,e,f])
    return (x[1]*x[6]+x[2]*x[5]+x[3]*x[4])*2.0
end
柯西L(a,b,c,d,e,f)=(a^3+b^3+c^3+d^3+e^3+f^3)*(a+b+c+d+e+f)
柯西R(a,b,c,d,e,f)=(a*a+b*b+c*c+d*d+e*e+f*f)^2
广义伯努利L(a,b,c,d,e,f)=(1+a)*(1+b)*(1+c)*(1+d)*(1+e)*(1+f)
广义伯努利R(a,b,c,d,e,f)=(1+a+b+c+d+e+f)*1.0

cd(@__DIR__)
io=open("strength.dict","w")
println(io,"代数-几何 ",test(代数平均,几何平均))
println(io,"平方-代数 ",test(平方平均,代数平均))
println(io,"几何-调和 ",test(几何平均,调和平均))
println(io,"顺序-乱序 ",test(顺序和,乱序和))
println(io,"乱序-逆序 ",test(乱序和,逆序和))
println(io,"柯西 ",test(柯西L,柯西R))
println(io,"广义伯努利 ",test(广义伯努利L,广义伯努利R))
close(io)
