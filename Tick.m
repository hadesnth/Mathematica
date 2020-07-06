(* ::Package:: *)

tf[n1_,n2_,x1_,x2_,k1_,k2_,f_,b_,s_]:=MapThread[Prepend,{Flatten[Riffle[{{#,{0,-0.02}}}&/@MaTeX[NumberForm[#,{f,b}]&/@#[1],FontSize->s],{Table[{Null,{0,-0.01}},k2-1]},2],1],#[k2]}]&[Rescale[Subdivide[n1,n2,# k1],{n1,n2},{x1,x2}]&];
tf[n1_,n2_,k1_,k2_,f_,b_,s_]:=tf[n1,N[n2],n1,n2,k1,k2,f,b,s];
tf[n1_,n2_,k1_,f_,b_,s_]:=tf[n1,N[n2],n1,n2,k1,5,f,b,s];
tf[n1_,n2_,k1_,k2_,s_]:=tf[n1,n2,n1,n2,k1,k2,1,1,s];
tf[n1_,n2_,k1_,s_]:=tf[n1,n2,n1,n2,k1,5,1,1,s];
