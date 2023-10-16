import UIKit

//You need to develop an app that will tell customers the next available hospital appointment. You will be given an array of hospital slots and the current time. Your task is to find the time difference of the next available appointment, where the difference between the current time and the appointment slot time must be more than 0 minutes.
//
//Requirements:
//-return -1 for any invalid input
//-return -1 if the array has fewer than 4 elements
//-if there is no available slot today, return the time of the first slot tomorrow
                
func nextAvailableSlots(_ slots: [Int], _ currentTime: Int) -> Int {
    guard slots.count >= 4 else {
        return -1
    }

    var nextSlot = Int.max

    for slot in slots {
        if slot > currentTime {
            nextSlot = min(nextSlot, slot)
        }
    }

    if nextSlot == Int.max {
        // If no available slots today, return the first slot tomorrow
        let firstSlotTomorrow = slots.first ?? -1
        return firstSlotTomorrow == -1 ? -1 : firstSlotTomorrow
    }

    return nextSlot
}

let timeSlots = [1000, 1300, 1600, 1900, 2200]
//[1900, 1200, 1500, 1800, 2100]
let currentTime = 2300

let result = nextAvailableSlots(timeSlots, currentTime)
print(result) // Output should be 1500


//func nextAvailableSlots(_ slots: [Int], _ currentTime: Int) -> Int {
//    var maxAvaliableTime = -1
//    guard !slots.isEmpty else{
//        return currentTime
//    }
//
//    if(slots.count < 4) {
//        return -1
//    }
//
//    for (index, value) in slots.enumerated() {
//        let timeDiffernce = currentTime - value
//
//        maxAvaliableTime = timeDiffernce + value
//
//    }
//
//    return maxAvaliableTime
//
//}
//
//
//let timeSlote = [1900, 1200, 1500, 1800, 2100]
//let timeInput = 1400
//
//print(nextAvailableSlots(timeSlote, timeInput))
