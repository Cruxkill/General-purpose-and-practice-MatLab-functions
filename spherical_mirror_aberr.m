function mbd=spherical_mirror_aberr(fn,D)
%   Write a function that is called like this: 
%       mbd = spherical_mirror_aberr(fn,D), where all arguments are 
%   scalars, fn is the “f-number” of a concave spherical mirror, D is its 
%   diameter in millimeters, and  mbd is the mean blur diameter in 
%   millimeters. The f-number equals the focal length f of the mirror 
%   divided by its diameter. Ideally, all the rays of light from a distant 
%   object, illustrated by the parallel lines in the figure, would reflect 
%   off the mirror and then converge to a single focal point. The magnified
%   view shows what actually happens. The light striking a vertical plane 
%   at a distance f  from the mirror is spread over a circular disk. The 
%   light from the center of the mirror strikes the center of the disk, but 
%   light arriving from a point a distance x from the center of the mirror 
%   strikes the plane on a circle whose diameter d is equal to 
%               2*f*tan(2*theta)*((1/cos(theta))-1), where: 
%                       theta = arcsin(x/(2*f))
%   The function calculates d for all values of x in the vector 
%                           x = 0:delta_x:D/2,
%   where delta_x = 0.01. Then it calculates the mean blur diameter using 
%   this weighted formula: 
%                   mbd =((8 ∗ delta_x)/D^2)*sum(xn.*dn) 
%   where the sum includes all x(n)d(n), and returns it. 

if ~isscalar(fn)||~isscalar(D)
    error('inputs must be scalar')
else
    delta_x=0.01;x=0:delta_x:D/2;
    F=fn*D;theta=asin(x/(2*F));d=2*F*tan(2*theta).*((1./cos(theta))-1);

    mbd =((8*delta_x)/D^2)*sum(x.*d);
end