% complex-b.mp -- do not edit, generated automatically by Feynman_diagrams1.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 200*1.0pt#, 150*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
straight_galleries;
vleft (__i1, __i2);
vright (__o1, __o2, __o3, __o4);
vconnect ("fermion", __i1, __v1);
vconnect ("fermion", __v1, __i2);
vconnect ("fermion", __v2, __o1);
vconnect ("fermion", __o2, __v2);
vconnect ("fermion", __v3, __o3);
vconnect ("fermion", __o4, __v3);
vconnect ("photon,label=$W^{+}$", __v2, __v3);
vvertex ("lab=$V_{cb}^{\ast }$", __v2);
vvertex ("lab=$V_{cs}$,lab.dist=-.1w", __v3);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
