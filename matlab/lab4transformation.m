% ECE 470: Intro to Robotics
% Lab 4 Homogeneous Transformation
% 
% Christopher Kalebich
% kalebch2
% 10/31/19
%
%% w/ Symbolic Angles
clc;
syms t1 t2 t3 t4 t5 t6

M = [0 -1  0  0.540;
     0  0 -1  0.254;
     1  0  0  0.206;
     0  0  0  1.000];
  
S = [0      0      0      0      1      0;
     0      1      1      1      0      1;
     1      0      0      0      0      0;
     0 -0.152 -0.152 -0.152      0 -0.152;
     0      0      0      0  0.152      0;
     0      0  0.244  0.457 -0.110  0.540];
 
T =     expm(sSkew(S(:,1)) * t1);
T = T * expm(sSkew(S(:,2)) * t2);
T = T * expm(sSkew(S(:,3)) * t3);
T = T * expm(sSkew(S(:,4)) * t4);
T = T * expm(sSkew(S(:,5)) * t5);
T = T * expm(sSkew(S(:,6)) * t6);
T = T * M;

d = T(:,4)

%% w/ Pose 1 Angles
clc;
pose1 = [0 -90 90 0 -90 90] * (pi/180);

M = [0 -1  0  0.540;
     0  0 -1  0.254;
     1  0  0  0.206;
     0  0  0  1.000];
  
S = [0      0      0      0      1      0;
     0      1      1      1      0      1;
     1      0      0      0      0      0;
     0 -0.152 -0.152 -0.152      0 -0.152;
     0      0      0      0  0.152      0;
     0      0  0.244  0.457 -0.110  0.540];
 
T =     expm(sSkew(S(:,1)) * pose1(1));
T = T * expm(sSkew(S(:,2)) * pose1(2));
T = T * expm(sSkew(S(:,3)) * pose1(3));
T = T * expm(sSkew(S(:,4)) * pose1(4));
T = T * expm(sSkew(S(:,5)) * pose1(5));
T = T * expm(sSkew(S(:,6)) * pose1(6));
T = T * M

%% w/ Pose 2 Angles
clc;
pose2 = [-45 -45 90 -45 -90 90] * (pi/180);

M = [0 -1  0  0.540;
     0  0 -1  0.254;
     1  0  0  0.206;
     0  0  0  1.000];
  
S = [0      0      0      0      1      0;
     0      1      1      1      0      1;
     1      0      0      0      0      0;
     0 -0.152 -0.152 -0.152      0 -0.152;
     0      0      0      0  0.152      0;
     0      0  0.244  0.457 -0.110  0.540];
 
T =     expm(sSkew(S(:,1)) * pose2(1));
T = T * expm(sSkew(S(:,2)) * pose2(2));
T = T * expm(sSkew(S(:,3)) * pose2(3));
T = T * expm(sSkew(S(:,4)) * pose2(4));
T = T * expm(sSkew(S(:,5)) * pose2(5));
T = T * expm(sSkew(S(:,6)) * pose2(6));
T = T * M
