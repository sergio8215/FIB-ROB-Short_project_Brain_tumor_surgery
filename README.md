# Manipulator Short project: Skull tumor surgery
 Introduction A team of surgeons specialized in surgery of tumor skull and Computer Science students wants to simulate the robotics environment of the operating room to learn how some tasks can be done. The surgeons make an introduction of Dicom images to the students and pass them a folder with 112 images taken of a patient’s skull with three fiducials for registering Dicom images with the Robot Reference Frame. The surgeons indicate in which images appear the fiducials (19 - 48 - 81) They recommend use as Dicom viewer: https://www.imaios.com/en/Imaios-Dicom-Viewer.
The surgeons explain to the students the strategy to be follow: first it is needed to known the kind of tumor, All of us hope, the tumor will be benign. There will be then two options: remove the tumor or to burn it.

## Robotics Tasks explanation

According to that, the surgeons want to see a simulation of the robot performing the following tasks:

a) Using the specific tool to make a biopsy of the tumor taking a sample from the center of mass of
the tumor. To do that, a small hole must be perform in the top of patient's skull near to the tumor.
The robot must move very slowly when inside the brain and it must follow a straight line.

b) To make a hole in the patien's skull to remove the benign brain tumor. The drill pose must cut
the skull traking a circle of radius a litle bit less than the tumor equivalent sphere radius. To
facilitate the later bones soldering the z axis of tool (EE=cutting drill) must has an orientation of
45º with the longitudinal axis of the human body.

c) Burn the tumor with a laser tool. The hole is no necessary to be big, the surgeons forecast half
radius of the tumor equivalent sphere. To burn the tumor, assume the tool irradiate heat like a
sphere shape of 4mm radius. Take care not burn healthy biological tissues.

### List of to do:

The Robotic environment must contain:

1.- Operating table. It can be raised, lowered, and tilted in any direction, and an auxiliary table for
the tools. Use 'patch' or 'fill3' functions to model it.

2.- A 3D model of a human body on the operating table. Use the Workspace given, or other you
might find.

3.- A human skull model, embedded in the head of the human. Place the fiducials.

4.- Use the Dicom images to get the points of the outer perimeter of the tumor relative to some
reference frame located in the human skull.
First approach: Asume that the ZX plane of the Robot is aligned with the plane of symmetry of the
human body.

5.- Display all necessary Reference Frames

6.- Place the 6R Robot manipulator nearby the operating table to warranty that the head is in the
reachable work space. Use a Puma 560.

7.- Get the transformation that maps tumor points in Robot Frame.

8.- Print the tumor points in Robot Frame.
Antonio B. Martinez 2 / 3 29/3/19

9.- Prepare a script that perform a biopsy. Zoom in the scene

10.- Prepare a script that perform trepanation.

11.- Prepare a script that perform tumor burning with the laser.
Second approach: Assume that the ZX plane of the Robot is not aligned with plane of symetry of
the human body and it is needed a orientation calibration.

12.-Get the transformation that maps tumor points in Robot Frame. See teacher help: Triangle.mlx

13.- Print the tumor points in Robot Frame.

14.-Use the script that perform a biopsy. Zoom in the scene

15.- Use the script that perform trepanation.

16.- Use the script that perform tumor burning with the laser.
