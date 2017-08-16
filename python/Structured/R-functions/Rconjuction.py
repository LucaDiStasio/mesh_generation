# Autogenerated with SMOP 
from smop.core import *
# 

    
@function
def Rconjuction(x1=None,x2=None,alpha=None,m=None,*args,**kwargs):
    varargin = Rconjuction.varargin
    nargin = Rconjuction.nargin

    x=multiply(multiply((1.0 / (1 + alpha)),(x1 + x2 - sqrt(x1 ** 2 + x2 ** 2 - multiply(multiply(dot(2,alpha),x1),x2)))),(x1 ** 2 + x2 ** 2) ** (dot(0.5,m)))
    return x