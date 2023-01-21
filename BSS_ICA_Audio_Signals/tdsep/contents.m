% TDSEP BSS tools version 2.01, 2/14/99 by Andreas Ziehe
%
% This is a simple and efficient MATLAB implementation of blind source
% separation.  Along the lines of Schuster and Molgedey [1] two (lagged)
% correlation matrices are computed and diagonalized simultaneously using
% MATLAB's general eigen-problem solver (eig.m). The biggest problem with
% this approach is to determine the optimal lag value tau suitable for the
% given data. Usually tau1=0 and tau2=1 will do, but this strongly depends
% on the spectra of the sources and is not very robust.
%
% Therefore, as an extension we developed the TDSEP (Temporal Decorrelation)
% algorithm, which uses _several_ correlation matrices and finds an
% approximate joint diagonalizer of this matrix set (see Cardosos papers [2]
% for more details on joint diagonalization) See the references below for a
% detailed description of the TDSEP algorithm [3][4].
% 
%
% The package includes:
% tdsep2.m      separate instantaneous, linear mixtures of independent
%               sources using an eigen-decomposition of correlation matrices 
% cor2.m        compute time-delayed correlation matrices
% ntu.m         normalize (mixing) matrix to unity (diagonal elements ==1)
% perf.m        evaluate separation performance 
%               by comparing the _estimated_ and the _true_ mixing matrix
% norm_it.m     normalize (mixing) matrix (column vector length =1, e.g. norm(C(:,k),2)==1) 
% sort_norm.m   sort components according to their euclidian norm
% jdiag.m       joint diagonalization of several matrices by J.F. Cardoso
% fischdon.mat  acoustic demo signals (speech and music, 10 sec., sample rate 8kHz)
% sep_demo.m    test routine; run this for a demonstration of blind source separation
%
%
%References:
%[1] @Article{Molgedey+Schuster:1994,
%    author      = {L. Molgedy and H.G. Schuster},
%    title       = {Separation of a mixture of independent signals using
%                   time delayed correlations},
%    journal     = {Physical Review Letters},
%    year        = {1994},
%    number      = {72},
%    pages       = {3634-3637} 
%    }
%
%[2] @Article{SC-siam,
%    HTML         = "ftp://sig.enst.fr/pub/jfc/Papers/siam_note.ps.gz",
%    author       = "Jean-Fran\c{c}ois Cardoso and Antoine Souloumiac",
%    journal      = "{SIAM} J. Mat. Anal. Appl.",
%    title        = "Jacobi angles for simultaneous diagonalization",
%    pages        = "161--164",
%    volume       = "17",
%    number       = "1",
%    month        = jan,
%    year         = {1996}
%  }
%
%[3] @Article{ZiTBME2000,
%  author =       {A. Ziehe and K.-R. M\"uller and G.  Nolte and
%                  B.-M. Mackert and G.  Curio}, 
%  title =        {Artifact reduction in magnetoneurography based on
%                  time-delayed second-order correlations}, 
%  journal =      {IEEE Trans Biomed Eng.},
%  year =         {2000},
%  OPTkey =       {},
%  volume =       {47},
%  number =       {1},
%  pages =        {75-87},
%  month =        {January},
%  OPTnote =      {PMID: 10646282; UI: 20111760},
%  OPTannote =    {}
%  }
%
%
%[4] @InProceedings{ziehe-Mueller:1998,
%  author       = {A. Ziehe and K.-R. M{\"u}ller },
%  title        = {{TDSEP} -- an efficient algorithm for blind separation
%                   using time structure},
%  pages        = {675 - 680},
%  booktitle    = {Proceedings of the 8th International Conference on
%                 Artificial Neural Networks, ICANN'98},
%  series       = {Perspectives in Neural Computing}, 
%  year         = 1998,
%  editor       = {L.~Niklasson and M.~{Bod\'en} and T.~Ziemke},
%  publisher    = {Springer Verlag},
%  address      = {Berlin}
%  }            
%
%
%---------------- (c) 1996-2001 GMD FIRST Berlin, Andreas Ziehe -----------
%                          - All rights reserved -










