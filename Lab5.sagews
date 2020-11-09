︠53c4a1ec-e927-4381-9690-ab1b60c82f46s︠
from sympy import Symbol
from sympy import div

x = Symbol('x')

p= x**10 - 55*x**9 + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5 + 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800

p, r = div(p,  x-1)

print(p)
print(r)

p, r = div(p,  x-2)

print(p)
print(r)

p, r = div(p,  x-3)

print(p)
print(r)

p, r = div(p,  x-4)

print(p)
print(r)

p, r = div(p,  x-5)

print(p)
print(r)

p, r = div(p,  x-6)

print(p)
print(r)

p, r = div(p,  x-7)

print(p)
print(r)

p, r = div(p,  x-8)

print(p)
print(r)

p, r = div(p,  x-9)

print(p)
print(r)
︡5435cd15-2086-4943-97bb-b0f8e082f864︡{"stdout":"x**9 - 54*x**8 + 1266*x**7 - 16884*x**6 + 140889*x**5 - 761166*x**4 + 2655764*x**3 - 5753736*x**2 + 6999840*x - 3628800\n"}︡{"stdout":"0\n"}︡{"stdout":"x**8 - 52*x**7 + 1162*x**6 - 14560*x**5 + 111769*x**4 - 537628*x**3 + 1580508*x**2 - 2592720*x + 1814400\n"}︡{"stdout":"0\n"}︡{"stdout":"x**7 - 49*x**6 + 1015*x**5 - 11515*x**4 + 77224*x**3 - 305956*x**2 + 662640*x - 604800\n"}︡{"stdout":"0\n"}︡{"stdout":"x**6 - 45*x**5 + 835*x**4 - 8175*x**3 + 44524*x**2 - 127860*x + 151200\n"}︡{"stdout":"0\n"}︡{"stdout":"x**5 - 40*x**4 + 635*x**3 - 5000*x**2 + 19524*x - 30240\n"}︡{"stdout":"0\n"}︡{"stdout":"x**4 - 34*x**3 + 431*x**2 - 2414*x + 5040\n"}︡{"stdout":"0\n"}︡{"stdout":"x**3 - 27*x**2 + 242*x - 720\n"}︡{"stdout":"0\n"}︡{"stdout":"x**2 - 19*x + 90\n"}︡{"stdout":"0\n"}︡{"stdout":"x - 10\n"}︡{"stdout":"0\n"}︡{"done":true}
︠71303f8a-dc97-4e98-88b7-3bc680cda7bbs︠
from sympy import *
x = Symbol('x')
factor(x**10 - 55*x**9 + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5 + 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800)
︡46a2d104-6f21-42af-b6b5-d640efec52c3︡{"stdout":"(x - 10)*(x - 9)*(x - 8)*(x - 7)*(x - 6)*(x - 5)*(x - 4)*(x - 3)*(x - 2)*(x - 1)\n"}︡{"done":true}
︠d682a575-d8e6-45d0-8216-fbbbfc5370b9s︠
from sympy import *
x = Symbol('x')
solveset(Eq(x**10 - 55*x**9 + 1320*x**8 - 18150*x**7 + 157773*x**6 - 902055*x**5 + 3416930*x**4 - 8409500*x**3 + 12753576*x**2 - 10628640*x + 3628800, 0), x)
︡56052808-56d2-484c-9723-8fa14280519a︡{"stdout":"FiniteSet(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)"}︡{"stdout":"\n"}︡{"done":true}
︠7953511b-d13a-45bc-a303-9b162b57f255s︠
from sympy import *
x1, x2, y1, y2, z1, z2 = symbols("x1 x2 y1 y2 z1 z2", real=True)  
x = x1 + I*x2
y = y1 + I*y2
z = z1 + I*z2

print(x*y*z)
print(expand(x*y*z))
print(expand((x*y)*z))
print(expand(x*(y*z)))

w=N(1/(pi + I), 20)
print('w=',w)
︡c7536be5-daeb-4b9c-afe4-ab1bd9d75861︡{"stdout":"(x1 + I*x2)*(y1 + I*y2)*(z1 + I*z2)\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"x1*y1*z1 + I*x1*y1*z2 + I*x1*y2*z1 - x1*y2*z2 + I*x2*y1*z1 - x2*y1*z2 - x2*y2*z1 - I*x2*y2*z2\n"}︡{"stdout":"w= 0.28902548222223624241 - 0.091999668350375232456*I\n"}︡{"done":true}
︠f80349cf-b7f5-4bc9-82c3-42aecf9f04d7s︠
import sympy
result = {}  
x = sympy.Symbol("x")
i = sympy.integrate(x**2)
print(i)
result["Analitico"] = float(i.subs(x, 5) - i.subs(x, 1))
print("Resultado analitico: {}".format(result["Analitico"]))
︡19f10322-b648-402c-b2bf-e89677583ef8︡{"stdout":"x**3/3\n"}︡{"stdout":"Resultado analitico: 41.333333333333336\n"}︡{"done":true}
︠8d258431-9421-438c-9072-fc2222bb2e71s︠
import sympy
result = {}  
x = sympy.Symbol("x")
i = sympy.integrate(3*x**3)
print(i)
result["Analitico"] = float(i.subs(x, 2) - i.subs(x, 0))
print("Resultado analitico: {}".format(result["Analitico"]))
︡0a71da28-31ee-42b3-a9a0-bac79532e657︡{"stdout":"3*x**4/4\n"}︡{"stdout":"Resultado analitico: 12.0\n"}︡{"done":true}
︠c64944af-87f2-42a0-b71f-a62c053189c7s︠
import numpy
N = 1_000_000
accum = 0
for i in range(N):
    x = numpy.random.uniform(1, 5)
    accum += x**2
volume = 5 - 1
result["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(result["MC"]))
︡04bc2ef7-c597-4d3e-ba2b-1b0753535c34︡{"stdout":"Standard Monte Carlo result: 41.34823655917926\n"}︡{"done":true}
︠4a0ea7dd-1baa-48f9-b2f2-bd910c87caa4s︠

import numpy
N = 10_000_000
accum = 0
for i in range(N):
    x = numpy.random.uniform(1, 5)
    accum += x**2
volume = 5 - 1
result["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(result["MC"]))
︡a7a2dc3f-7ed2-4178-b285-5ec1a860dfca︡{"stdout":"Standard Monte Carlo result: 41.32833327627539\n"}︡{"done":true}
︠cde1cd8f-e423-4445-85eb-910987253302s︠
import numpy
N = 10_000_000
accum = 0
for i in range(N):
    x = numpy.random.uniform(0, 2)
    accum += 3*x**3
volume = 2 - 0
result["MC"] = volume * accum / float(N)
print("Standard Monte Carlo result: {}".format(result["MC"]))
︡81270b23-5215-40a6-9af1-e4d037b1376f︡{"stdout":"Standard Monte Carlo result: 12.00300927644906\n"}︡{"done":true}
︠2bace701-3d13-457a-baaa-c4ee6da8c169s︠
import sympy 
result = {}  
x = sympy.Symbol("x")
i = sympy.integrate(sympy.log(2*x))
print(i)
result["analytical"] = float(i.subs(x, 3) - i.subs(x, 1))
print("Resultado analítico: {}".format(result["analytical"]))
︡c224864e-e602-482b-8db8-16541491f23a︡{"stdout":"x*log(2*x) - x\n"}︡{"stdout":"Resultado analítico: 2.68213122712422\n"}︡{"done":true}
︠d5a263db-6dd8-4eb8-a367-b517c6437406s︠
import numpy
N = 10000
accum = 0
for i in range(N):
    x = numpy.random.uniform(1, 2)
    accum += sympy.log(2*x)
volume = 3 - 1
result["MC"] = volume * accum / float(N)
print("Resultado mediante Monte Carlo: {}".format(result["MC"]))
︡d611ed4c-d261-4578-a70a-7a4a42225eb5︡{"stdout":"Resultado mediante Monte Carlo: 2.16317873174412\n"}︡{"done":true}
︠76a4e8db-2ca8-4b47-adbf-3cc1619d0445s︠
import sympy
N = 100000
accum = 0
for i in range(N):
    x = numpy.random.uniform(0, numpy.pi)
    accum += sympy.cos(x - numpy.pi)
volume = numpy.pi - 0
result["MC"] = volume * accum / float(N)
print("Resultado mediante Monte Carlo: {}".format(result["MC"]))
︡bdafccdf-090d-4081-b7de-09b7903a7215︡{"stdout":"Resultado mediante Monte Carlo: -0.00310362078779416\n"}︡{"done":true}
︠ac2b2d7c-e9b6-4355-87da-a86636faa5acs︠
result = {}  
x = sympy.Symbol("x")
i = sympy.integrate(4*(numpy.e)**2*x)
print(i)
result["analytical"] = float(i.subs(x, 3) - i.subs(x, 0))
print("Resultado analítico: {}".format(result["analytical"]))
︡4b8215ca-31a9-4475-ba3f-854a10e9bdff︡{"stdout":"14.7781121978613*x**2\n"}︡{"stdout":"Resultado analítico: 133.00300978075168\n"}︡{"done":true}
︠fe304879-78bc-44ae-9e13-0b036ea939e1s︠
import sympy
import math
import numpy
x1 = sympy.Symbol("x1")
x2 = sympy.Symbol("x2")
x3 = sympy.Symbol("x3")
expr = sympy.cos(x1) + 3*sympy.cos(x2)**2 + 0.3 * x3**2 * sympy.sin(x1)
res = sympy.integrate(expr,
                      (x1, -sympy.pi, sympy.pi),
                      (x2, -sympy.pi, sympy.pi),
                      (x3, -sympy.pi, sympy.pi))
# Note: we use float(res) to convert res from symbolic form to floating point form
result = {} 
result["analytical"] = float(res)
print("Resultado analítico: {}".format(result["analytical"]))
︡382398fd-cdd5-4414-a13c-1211d4c3a4bf︡{"stdout":"Resultado analítico: 372.07532016359784\n"}︡{"done":true}
︠f1d12f55-3889-4b18-9705-022e39237a5fs︠
import numpy
N = 1
accum = 0
for i in range(N):
    y1 = numpy.random.uniform(-numpy.pi, numpy.pi)
    y2 = numpy.random.uniform(-numpy.pi, numpy.pi)
    y3 = numpy.random.uniform(-numpy.pi, numpy.pi)
    accum += numpy.sin(y1) + 7*numpy.sin(y2)**2 + 0.1 * y3**4 * numpy.sin(y1)
volume = (3 * numpy.pi)**2
result = {} 
result["MC"] = volume * accum / float(N)
print("Resultado mediante Monte Carlo: {}".format(result["MC"]))
︡5b36c1af-afdf-4a99-a9f3-b767fd3b9dac︡{"stdout":"Resultado mediante Monte Carlo: 380.8343593079713\n"}︡{"done":true}
︠f592b68d-ea6c-43fb-b15e-03519432b1a1︠
import sys
def halton(dim: int, nbpts: int):
    h = numpy.full(nbpts * dim, numpy.nan)
    p = numpy.full(nbpts, numpy.nan)
    P = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
    lognbpts = math.log(nbpts + 1)
    for i in range(dim):
        b = P[i]
        n = int(math.ceil(lognbpts / math.log(b)))
        for t in range(n):
            p[t] = pow(b, -(t + 1))

        for j in range(nbpts):
            d = j + 1
            sum_ = math.fmod(d, b) * p[0]
            for t in range(1, n):
                d = math.floor(d / b)
                sum_ += math.fmod(d, b) * p[t]

            h[j*dim + i] = sum_
    return h.reshape(nbpts, dim)
import matplotlib.pyplot as plt
N = 1000
seq = halton(2, N)
plt.title("2D Halton sequence")
plt.axes().set_aspect('equal')
plt.scatter(seq[:,0], seq[:,1], marker=".", alpha=0.2);
show(seq)
︡405b754f-2a51-4666-ad33-b675d3640cce︡{"stdout":"Text(0.5, 1.0, '2D Halton sequence')\n"}︡{"stdout":"<matplotlib.collections.PathCollection object at 0x7f8325284cd0>\n"}︡{"stdout":"[[0.5        0.33333333]\n [0.25       0.66666667]\n [0.75       0.11111111]\n ...\n [0.40527344 0.96479195]\n [0.90527344 0.01417467]\n [0.09277344 0.347508  ]]\n"}︡{"done":true}
︠39dc3ff8-8741-4cfe-855a-3ea9cc49c2e8s︠
x1 = sympy.Symbol("x1")
x2 = sympy.Symbol("x2")
x3 = sympy.Symbol("x3")
expr = 5*x1 + 2*x2*4*x3
res = sympy.integrate(expr,
                      (x1, 0, 1),
                      (x2, 0, 3),
                      (x3, 0, 2))
result = {} 
result["analytical"] = float(res)
print("Resultado analítico: {}".format(result["analytical"]))
︡e6188851-8f5e-404b-beb2-595d9ebb69af︡{"stdout":"Resultado analítico: 87.0\n"}︡{"done":true}
︠f69a9703-b656-4ef2-9938-5b4843f00781s︠
x1 = sympy.Symbol("x1")
x2 = sympy.Symbol("x2")
x3 = sympy.Symbol("x3")
expr = sympy.log(x2+x1+x3**2)
res = sympy.integrate(expr,
                      (x1, 0, 1),
                      (x2, 0, 3),
                      (x3, 0, 2))
result = {} 
result["analytical"] = float(res)
print("Resultado analítico: {}".format(result["analytical"]))
︡c553f6e8-4dae-4a1a-b911-ec1955f92d79︡{"stdout":"Resultado analítico: 6.471357631407641\n"}︡{"done":true}
︠87d48b24-3f7d-448e-965e-ad41e9d96ee9s︠
N = 100000
accum = 0
for i in range(N):
    xx1 = numpy.random.uniform(1, 2)
    xx2 = numpy.random.uniform(0, 2)
    xx3 = numpy.random.uniform(1, 2)
    accum += sympy.sin(y1+y2-(2*y3))
volume = (2-1)*(2-0)*(2-1)
result = {} 
result["MC"] = volume * accum / float(N)
print("Resultado mediante Monte Carlo: {}".format(result["MC"]))
︡470dd96c-809e-4292-beaa-0e0e3b314572︡{"stdout":"Resultado mediante Monte Carlo: 0.475271091990879\n"}︡{"done":true}
︠9686827d-4329-4b24-9fbe-de3fa175b1efs︠
N = 100000
accum = 0
for i in range(N):
    xx1 = numpy.random.uniform(1, 3)
    xx2 = numpy.random.uniform(0, 2)
    xx3 = numpy.random.uniform(1, 3)
    accum += ((numpy.e)**y1 + 2*(numpy.e)**y2 - 3*(numpy.e)**y3)
volume = (3-0)*(1-0)*(2-1)
result = {} 
result["MC"] = volume * accum / float(N)
print("Resultado mediante Monte Carlo: {}".format(result["MC"]))
︡b253939a-1472-4169-99ff-6af07342a95f︡{"stdout":"Resultado mediante Monte Carlo: 79.98564018878896\n"}︡{"done":true}









