% parcial 3
a12= 570;
a23= 600;
hs=18.6;
hm=16.6;
hi=14.6;
ht=22.3;
hc=hi+2;
fvcon=0.889*((a12+a23)/2)
fvcab=0.540*((a12+a23)/2)
Feq=(fvcon*hs+fvcon*hi+fvcon*hm+fvcab*ht)/hc
fvvert=(3*(0.697+1.518)+(0.42+1.08))*((a12+a23)/2)

fvcon=0.889*((a23)/2)
fvcab=0.540*((a23)/2)
Feq=(fvcon*hs+fvcon*hi+fvcon*hm+fvcab*ht)/hc
fvvert=(3*(0.697+1.518)+(0.42+1.08))*((a23)/2)

xth=(1.1*15000/sqrt(3))/2117
Id=(1.1*15000/sqrt(3))/sqrt(175^2+xth^2)
t=13.5*0.3/((2117/30)-1)
t=13.5*0.3/((Id/30)-1)

Id=(1.1*15000/sqrt(3))/sqrt(149^2+xth^2)
t=400/Id
kc=0.038
uc=kc*1000*Id
Uca=uc/(1+((2000+3000)/2000))
t=400/Id







up=0.107*Id*1000
upa=up/(1+(2*2000+3000+9000)/1000)



