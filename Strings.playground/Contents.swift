import UIKit

// Challenge 1 - Are the letters unique?

func challenge1(input: String) -> Bool {
    return Set(input).count == input.count
}

func testChallenge1() {
    assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
    assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
    assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
    assert(challenge1(input: "Hello world") == false, "Challenge 1 failed")

    print("Challenge 1 sucess")
}

testChallenge1()

