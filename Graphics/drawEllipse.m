function drawEllipse(h, x, P, c, ns, NP)

% DRAWELLIPSE Draw 2D ellipse or 3D ellipsoid.
%   DRAWELLIPSE(H,X,P) redraws ellipse or ellipsoid in handle H with mean X
%   and covariance P.
%
%   DRAWELLIPSE(...,C) allows the specification of the ellipse color C.
%
%   drawellipse(...,C,NS,NP) allows entering the number of sigmas NS and
%   the number of points NP.

%   Copyright 2009 Joan Sola @ LAAS-CNRS.

if nargin < 6,         NP = 10;
    if nargin < 5,     ns = 3;
        if nargin < 4, c = [];
        end
    end
end

if numel(x) == 2

    [X,Y] = cov2elli(x,P,ns,NP);
    set(h,'xdata',X,'ydata',Y,'vis','on')
    
elseif numel(x) == 3
    
    [X,Y,Z] = cov3elli(x,P,ns,NP);
    set(h,'xdata',X,'ydata',Y,'zdata',Z,'vis','on')
    
else
    error('??? Size of vector ''x'' not correct.')
end

if ~isempty(c)
    set(h,'color',c)
end


% ========== End of function - Start GPL license ==========


%   # START GPL LICENSE

%---------------------------------------------------------------------
%
%   This file is part of SLAMTB, a SLAM toolbox for Matlab.
%
%   SLAMTB is free software: you can redistribute it and/or modify
%   it under the terms of the GNU General Public License as published by
%   the Free Software Foundation, either version 3 of the License, or
%   (at your option) any later version.
%
%   SLAMTB is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY; without even the implied warranty of
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%   GNU General Public License for more details.
%
%   You should have received a copy of the GNU General Public License
%   along with SLAMTB.  If not, see <http://www.gnu.org/licenses/>.
%
%---------------------------------------------------------------------

%   SLAMTB is Copyright 2007,2008,2009 
%   by Joan Sola, David Marquez and Jean Marie Codol @ LAAS-CNRS.
%   See on top of this file for its particular copyright.

%   # END GPL LICENSE
