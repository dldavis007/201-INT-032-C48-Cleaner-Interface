/**************************************************************************
MODULE:    PROCIMG
CONTAINS:  Process Image Configuration
COPYRIGHT: Embedded Systems Academy, Inc. 2002-2005.
           All rights reserved. www.microcanopen.com
           This software was written in accordance to the guidelines at
           www.esacademy.com/software/softwarestyleguide.pdf
DISCLAIM:  Read and understand our disclaimer before using this code!
           www.esacademy.com/disclaim.htm
LICENSE:   THIS IS THE EDUCATIONAL VERSION OF MICROCANOPEN
           See file license_educational.txt or
           www.microcanopen.com/license_educational.txt
           A commercial MicroCANopen license is available at
           www.CANopenStore.com
VERSION:   2.10, ESA 12-JAN-05
           $LastChangedDate: 2005-01-12 13:53:59 -0700 (Wed, 12 Jan 2005) $
           $LastChangedRevision: 48 $
***************************************************************************/ 

#ifndef _PROCIMG_H
#define _PROCIMG_H


/**************************************************************************
DEFINES: Definition of the process image
Modify these for your application
**************************************************************************/

// Define the size of the process image
#define PROCIMG_SIZE 34

// Define process variables: offsets into the process image 
// Menu Control
#define IN_digi_0 0
// Camera Address
#define IN_digi_1 1
// Camera Address
#define IN_digi_2 2
// Speed Control distance lsd
#define IN_digi_3 3
// Speed Control distance msd
#define IN_digi_4 4
// Speed Control mode
#define IN_digi_5 5
// Speed Control velocity lsd
#define IN_digi_6 6
// Speed Control velocity msd
#define IN_digi_7 7
// Speed Control velocity msd
#define IN_digi_8 8

// Cleaning Process
#define IN_digi_15 9

// Analog Input 1 
#define IN_ana_1 10
// Analog Input 2 
#define IN_ana_2 12


//Initiate Menu/Trigger
#define OUT_digi_0 14

// Button Box Data
#define OUT_digi_1 15
// Button Box Data
#define OUT_digi_2 16
// Button Box Data
#define OUT_digi_3 17
// 
#define OUT_digi_4 18
// 
#define OUT_digi_5 19
// Camera Commands
#define OUT_digi_6 20
// Camera Commands
#define OUT_digi_7 21
// Camera Commands
#define OUT_digi_8 22
// Camera Commands
#define OUT_digi_9 23
// Camera Commands
#define OUT_digi_10 24
// 
#define OUT_digi_11 25
// Speed Control moving
#define OUT_digi_12 26
// Move Actuator position
#define OUT_digi_13 27
// Move Actuator speed
#define OUT_digi_14 28
// Move Actuator speed
#define OUT_digi_15 29

// Analog Output 1
#define OUT_ana_0 30
// Analog Output 2
#define OUT_ana_1 32



#endif
