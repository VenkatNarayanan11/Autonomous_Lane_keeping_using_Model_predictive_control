# Autonomous Lane Keeping using Model Predictive Control 
![Autonomous_lane_keeping_model](https://user-images.githubusercontent.com/79725511/109576547-f86b7200-7ac1-11eb-8541-6421d0072e8e.png)
> A quick snap of the System Model. In the above diagram, u1 and u2 are the inputs of the longitudinal acceleration and steering angle to the “ego vehicle model” block. The outputs y1, y2, and y3 are the longitudinal velocity, lateral velocity, and the yaw angle rate respectively. The error dynamics are referenced in the variables e1 and e2. These variables indicate the lateral deviation and the relative yaw angle respectively.

---

### Table of Contents

- [Description](#description)
- [Technologies](#technologies)
- [Results](#results)
- [Recommendations](#recommendations)
- [License](#license)
- [Author Info](#author-info)

---

## Description

This study aims to establish a feasible lane keeping controller for a simulated autonomous vehicle by employing model predictive control (MPC) methodologies. The lane keeping controller will operate by tracking a reference trajectory, when given a reference longitudinal velocity. The model used for this experiment is a combination of a lane keeping model and an adaptive cruise control model, resulting in a system capable of controlling both the longitudinal acceleration and the steering angle of the ego vehicle. The vehicle dynamics were created using the kinematic bicycle model. The model and simulation were performed in MATLAB 2019b using Simulink, the Automated Driving toolbox, and the Model Predictive Control toolbox. The resulting MPC controller was proven to feasibly provide lane keeping capability to the simulated ego vehicle, when driving upon a road way containing arbitrary waypoints.

#### Technologies

- MATLAB
- Simulink
- Automated driving toolbox
- Model predictive control toolbox

[Back To The Top](#Autonomous-Lane-Keeping-using-Model-Predictive-Control)

---

## Results

The final output will include: 

1) Error Dynamics of the ego vehicle

![Error_dynamics_of_ego_vehicle](https://user-images.githubusercontent.com/79725511/109576550-f9040880-7ac1-11eb-9d5d-44593974eed8.png) 

2) MPC outputs to the ego vehicle

![MPC_outputs_to_the_ego_vehicle](https://user-images.githubusercontent.com/79725511/109576551-f9040880-7ac1-11eb-87a6-9ce22278e61a.png)

3) Ego Vehicle outputs with repect to the MPC inputs.

![Ego_vehicle_ouputs](https://user-images.githubusercontent.com/79725511/109576548-f9040880-7ac1-11eb-87cd-f0b45491bd50.png)

If you would like to know the complete technical details of the project. Here is the [link](https://drive.google.com/file/d/1w0jKBFIl24ucXa-i7lIMk-ROIe2WMoYo/view?usp=sharing) to the paper written by me and two other creators. 

## Recommendations

From the results of this study, several recommendations are proposed for future investigations surrounding autonomous vehicles and MPC controllers. The first area of opportunity is to investigate systems containing varying longitudinal velocities using adaptive MPC models. Another opportunity for study may involve prioritizing the minimization of a vehicle’s response time to non-zero differences between its current position and reference waypoints. In this paper’s study, the vehicle’s response time is approximately 5 seconds to correct itself the maximum lateral deviations from the reference line. Finally, it should be noted that other driving scenarios can be further investigated using MPC. These other scenarios could include traffic light interaction with vehicles, collision avoidance with other vehicles on roadways, and overtaking maneuvers on diverse road types (e.g two-lane roads, roundabouts, or crosswalks).

[Back To The Top](#Autonomous-Lane-Keeping-using-Model-Predictive-Control)

---

## License

MIT License

Copyright (c) [2020] [Venkat Narayanan Balachandran]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[Back To The Top](#Autonomous-Lane-Keeping-using-Model-Predictive-Control)

---

## Author Info

- LinkedIn - [Venkat_Narayanan_Balachandran](https://www.linkedin.com/in/venkat-balachandran)

[Back To The Top](#Autonomous-Lane-Keeping-using-Model-Predictive-Control)
