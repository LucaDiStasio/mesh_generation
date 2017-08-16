# Autogenerated with SMOP 
from smop.core import *
# 

    
@function
def NACAxxxx(Nx=None,x1=None,x2=None,x3_4=None,c=None,*args,**kwargs):
    varargin = NACAxxxx.varargin
    nargin = NACAxxxx.nargin

    ##
#        Project: Fluid-Structure Interaction on Deformable Surfaces
#         Author: Luca Di Stasio
#    Institution: ETH Zrich
#                 Institute for Building Materials
# Research group: Computational Physics for Engineering Materials
#        Version: 0.1
#  Creation date: July 14th, 2014
#    Last update: July 16th, 2014
    
    #          Input: 
#         Output:
    
    ##
    
    x=(arange(dot(- 0.5,c),dot(0.5,c),c / (Nx - 1))).T
    if x1 == 0 and x2 == 0:
        t=x3_4 / 100
        ytplus=multiply(multiply((t / 0.2),c),(multiply(0.2969,(x / c + 0.5) ** 0.5) - multiply(0.126,(x / c + 0.5)) - multiply(0.3516,(x / c + 0.5) ** 2) + multiply(0.2843,(x / c + 0.5) ** 3) - multiply(0.1036,(x / c + 0.5) ** 4)))
        ytminus=multiply(multiply(- (t / 0.2),c),(multiply(0.2969,(x / c + 0.5) ** 0.5) - multiply(0.126,(x / c + 0.5)) - multiply(0.3516,(x / c + 0.5) ** 2) + multiply(0.2843,(x / c + 0.5) ** 3) - multiply(0.1036,(x / c + 0.5) ** 4)))
        upperairfoil=matlabarray(cat(x,ytplus))
        lowerairfoil=matlabarray(cat(x[2:end() - 1],ytminus[2:end() - 1]))
        airfoil=matlabarray(cat([x,ytplus],[x,ytminus]))
        yc=zeros(size(x,1),1)
    else:
        m=x1 / 100
        p=x2 / 10
        t=x3_4 / 100
        ytplus=multiply(multiply((t / 0.2),c),(multiply(0.2969,(x / c + 0.5) ** 0.5) - multiply(0.126,(x / c + 0.5)) - multiply(0.3516,(x / c + 0.5) ** 2) + multiply(0.2843,(x / c + 0.5) ** 3) - multiply(0.1036,(x / c + 0.5) ** 4)))
        ytminus=multiply(multiply(- (t / 0.2),c),(multiply(0.2969,(x / c + 0.5) ** 0.5) - multiply(0.126,(x / c + 0.5)) - multiply(0.3516,(x / c + 0.5) ** 2) + multiply(0.2843,(x / c + 0.5) ** 3) - multiply(0.1036,(x / c + 0.5) ** 4)))
        pc=dot(p,c)
        yc=zeros(Nx,1)
        for i in arange(1,Nx).reshape(-1):
            if x[i] <= pc:
                yc[i]=multiply(multiply(m,x[i]),(dot(2.0,p) - (x[i] / c + 0.5))) / (p ** 2)
            else:
                yc[i]=multiply(multiply(multiply(m,c),(1 - (x[i] / c + 0.5))),(1 - dot(2.0,p) + (x[i] / c + 0.5))) / ((1 - p) ** 2)
        upperairfoil=matlabarray(cat(x,yc + ytplus))
        lowerairfoil=matlabarray(cat(x[2:end() - 1],yc[2:end() - 1] + ytplus[2:end() - 1]))
        airfoil=matlabarray(cat([x,yc + ytplus],[x,yc + ytminus]))
    
    return airfoil,upperairfoil,lowerairfoil,yc