function[] = triquality(nodes,edges,elements)
%%
%==============================================================================
% Copyright (c) 2016 Universit� de Lorraine & Lule� tekniska universitet
% Author: Luca Di Stasio <luca.distasio@gmail.com>
%                        <luca.distasio@ingpec.eu>
%
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are met:
% 
% 
% Redistributions of source code must retain the above copyright
% notice, this list of conditions and the following disclaimer.
% Redistributions in binary form must reproduce the above copyright
% notice, this list of conditions and the following disclaimer in
% the documentation and/or other materials provided with the distribution
% Neither the name of the Universit� de Lorraine or Lule� tekniska universitet
% nor the names of its contributors may be used to endorse or promote products
% derived from this software without specific prior written permission.
% 
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.
%==============================================================================
%
%  DESCRIPTION
%  A function to measure quality metrics of a mesh with triangular
%  elements
%
% REFERENCES
% [1] J. Robinson, CRE method of element testing and the Jacobian shape parameters. Engineering Computations 4(1987) 2 113-118.
%     Link: http://www.emeraldinsight.com.bases-doc.univ-lorraine.fr/doi/pdfplus/10.1108/eb023689
% [2] J. Robinson, Distortion Measures for Quadrilaterals with Curved Boundaries. Finite Elements in Analysis and Design 4(1988) 115-131.
%     Link: http://ac.els-cdn.com.bases-doc.univ-lorraine.fr/0168874X88900017/1-s2.0-0168874X88900017-main.pdf?_tid=676ee6a2-3e07-11e6-9259-00000aacb35e&acdnat=1467211400_b34d2ec8b3a9c1fd6175ca07c1db6f16
% [3] J. Robinson, Quadrilateral and hexahedron shape parameters. Finite Elements in Analysis and Design 16(1994) 43-52.
%     Link: http://ac.els-cdn.com.bases-doc.univ-lorraine.fr/0168874X94900396/1-s2.0-0168874X94900396-main.pdf?_tid=ea951228-3e06-11e6-960c-00000aab0f6b&acdnat=1467211190_a5c8c45addbc80b7b57e177c2e059e2f
% [4] P. Knupp, Achieving Finite Element Mesh Quality via Optimization of the Jacobian Matrix Norm and Associated Quantities, Part I. Int. J. Num. Meth. Engr. 2000.
%     Link: http://www.ann.jussieu.fr/~frey/papers/meshing/Knupp%20P.,%20Achieving%20%F4%8F%B0%A3nite%20element%20mesh%20quality%20via%20optimization%20%20of%20the%20Jacobian%20matrix%20norm%20(1).pdf
% [5] P. Knupp, Label-Invariant Mesh Quality Metrics.
%     Link: http://imr.sandia.gov/papers/imr18/Knupp.pdf
% [6] P. Knupp, Algebraic Mesh Quality Metrics. SIAM Journal of Scientific Computing 23(2001),1 193-218
%     Link: http://imr.sandia.gov/papers/imr18/Knupp.pdf
% [7] P. Knupp, Algebraic mesh quality metrics for unstructured initial meshes. Finite Elements in Analysis and Design 39:3(2003) 217-241
%     Link: http://www.sciencedirect.com.bases-doc.univ-lorraine.fr/science/article/pii/S0168874X02000707
% [8] Cubit 14.0 User Documentation.
%     Link: https://cubit.sandia.gov/public/14.0/help_manual/WebHelp/mesh_generation/mesh_quality_assessment/triangular_metrics.htm
%%

end

