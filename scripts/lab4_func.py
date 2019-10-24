#!/usr/bin/env python
import numpy as np
from scipy.linalg import expm
from lab4_header import *

"""
Use 'expm' for matrix exponential.
Angles are in radian, distance are in meters.
"""

def Get_MS():
	# =================== Your code starts here ====================#
	# Fill in the correct values for a1~6 and q1~6, as well as the M matrix
	M = np.eye(4)
	S = np.zeros((6,6))
	
	M = [[0, -1,  0, 0.54], 
		 [0,  0, -1, .254],
		 [1,  0,  0, .206], 
		 [0,  0,  0,    1]]

	S = np.array([[0,      0,      0,      0,     1,      0],
				  [0,      1,      1,      1,     0,      1],
				  [1,      0,      0,      0,     0,      0],
				  [0, -0.152, -0.152, -0.152,     0, -0.152],
				  [0,      0,      0,      0, 0.152,      0],
				  [0,      0,  0.244,  0.457, -0.11,   0.54]])
	# ==============================================================#
	return M, S

"""
Function that calculates encoder numbers for each motor
"""
def lab_fk(theta1, theta2, theta3, theta4, theta5, theta6):

	# Initialize the return_value 
	return_value = [None, None, None, None, None, None]

	# =========== Implement joint angle to encoder expressions here ===========
	print("Foward kinematics calculated:\n")

	# =================== Your code starts here ====================#
	theta = np.array([theta1,theta2,theta3,theta4,theta5,theta6])
	T = np.eye(4)

	M, S = Get_MS()


	# ==============================================================#
	
	print(str(T) + "\n")

	return_value[0] = theta1 + PI
	return_value[1] = theta2
	return_value[2] = theta3
	return_value[3] = theta4 - (0.5*PI)
	return_value[4] = theta5
	return_value[5] = theta6

	return return_value


