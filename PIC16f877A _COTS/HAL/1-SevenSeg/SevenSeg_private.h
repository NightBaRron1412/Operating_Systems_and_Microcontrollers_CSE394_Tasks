/** @file SevenSegment_interface.h
 *
 * @brief A header file including SevenSeg Numbers Array for 7SEG interfacing.
 *
 * @author Amir Shetaia
 * @version 1.0
 * @date Oct 26, 2022
 *
 */

#ifndef SevenSeg_PRIVATE_H
#define SevenSeg_PRIVATE_H

/*
 * array that contains seven segment numbers' representation in binary that will be
 * used to display corresponding number when assigned to a given port
 */

const u8 SevenSeg_u87SegArray[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F};

#endif /* SevenSeg_PRIVATE_H */

/*** end of file ***/