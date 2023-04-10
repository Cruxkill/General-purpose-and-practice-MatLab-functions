function T=pendulum(L,a0)
%*** Write a function called pendulum that is called like this: 
%T = pendulum(L,a0), where all arguments are scalars and a0 is a positive 
%number less than π. The function calculates the period T of a simple 
%pendulum,which is the time required for a weight attached to a rod of 
%length L and negligible weight to start from rest, swing with no friction 
%under the influence of gravity from an initial angle a0, to – a0 and back 
%to a0 again, as shown in the figure. The motion is determined by physics 
%using the following definitions, where units [square brackets] are 
%provided but are not needed: 
%  
% θ = angle    [radians] 
% w = angular velocity    [radians/s]
% α = angular acceleration   [radians/s
% g = acceleration due to gravity = 9.8     [m/s]
% t = time  [s] 
%
%The function starts its calculation with the pendulum angle θ equal to a0 
%and then calculates a sequence of decreasing pendulum angles, each at a 
%time separated from the one before it by  ∆t =1 × 10-6 s. It continues 
%until the pendulum has passed its lowest point, at which θ = 0. The 
%elapsed time equals T/4. The calculation at each time step proceeds as 
%follows: The angular acceleration α is set equal to −gsin θ / L. Then the 
%angular velocity 𝜔𝜔 is increased by the product of the angular 
%acceleration and ∆t. That new angular velocity is then used to obtain a 
%new θ by adding the product of the angular velocity and ∆t to the old θ.  
%Here are two sample runs: 
% >> format long
% >> T = pendulum(2, pi/2)
% T =
%    3.350344000012992
% >> T = pendulum(0.22952, pi/4) 
% T =
%    1.000000000000917
DT=1e-6;g=9.8;w=0;it=0;
Tt=0;
while a0>0
    if L~=0
        it=it+1;alpha=-(g/L)*sin(a0);w=w+alpha*DT;a0=a0+w*DT;Tt=DT+Tt;
    else
        a0=0;
    end
    
end
T=4*Tt;