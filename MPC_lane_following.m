% Parameters 
tau = 0.5   % time constant for acceleration tracking in seconds. 
  m = 1575  % mass in kg
 Vx = 15     % longitudinal velocity of the car in m/s   
 Iz = 2875  % yaw moment of inertia in mNs^2
 Lf = 1.2   % long.distance from center to front tires in meters
 Lr = 1.6   % long.distance from center to rear tires in meters
 Cf = 19000 % cornering stiffness of front tires in N/rad
 Cr = 33000 % cornering stiffness of rear tires in N/rad
 Ts = 0.1   % Sample time in seconds

% Adaptive cruise control model
A1 = [-1/tau 0;
       1 0]
B1 = [1/tau; 0]
C1 = [0 1]
D1 = 0

% Lane-keeping predictive model
A2 = [(-2*(Cf + Cr)/m / Vx)   (-Vx-2*(Cf*Lf - Cr*Lr)/m /Vx);
      (-2*(Cf*Lf - Cr*Lr)/Iz/Vx)  (-2*(Cf*Lf^2 + Cr*Lr^2)/Iz/Vx)]
  
B2 = [1/m; Lf/Iz] .* 2*Cf
C2 = [1 0;
      0 1]
D2 = [0;0]  

% Combined path-following predictive control model
% The inputs are the longitudinal acceleration in m/s2 and 
% steering angle in radians. 
% The outputs are the longitudinal velocity in m/s,lateral velocity 
% in m/s, and yaw angle rate in rad/s.

A = [A1 zeros(2);
     zeros(2) A2]
B = [B1 zeros(2,1);
     zeros(2,1) B2]
C = [C1 zeros(1,2);
     zeros(2) C2]
D = [D1 0;
     zeros(2,1) D2] 
 
