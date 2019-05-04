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

// Challenge 2 - Is a string a palindrome?

func challenge2(input: String) -> Bool {
    let lowercased = input.lowercased()

    return lowercased == String(lowercased.reversed())
}

func testChallenge2() {
    assert(challenge2(input: "rotator") == true, "Challenge 2 failed")
    assert(challenge2(input: "Rats live on no evil star") == true, "Challenge 2 failed")
    assert(challenge2(input: "Never odd or even") == false, "Challenge 2 failed")
    assert(challenge2(input: "Hello, world") == false, "Challenge 2 failed")

    print("Challenge 2 sucess")
}

testChallenge2()

// Challenge 3 - Do two strings contain the same characters?

func challenge3(first: String, second: String) -> Bool {
    return first.sorted() == second.sorted()
}

func testChallenge3() {
    assert(challenge3(first: "abca", second: "abca") == true, "Challenge 3 failed")
    assert(challenge3(first: "abc", second: "cba") == true, "Challenge 3 failed")
    assert(challenge3(first: "a1 b2", second: "b1 a2") == true, "Challenge 3 failed")
    assert(challenge3(first: "abc", second: "abca") == false, "Challenge 3 failed")
    assert(challenge3(first: "abc", second: "Abc") == false, "Challenge 3 failed")
    assert(challenge3(first: "abc", second: "cbAc") == false, "Challenge 3 failed")
    assert(challenge3(first: "abcc", second: "abca") == false, "Challenge 3 failed")

    print("Challenge 3 sucess")
}

testChallenge3()

// Challenge 4 - Does one string contain another?

extension String {
    func fuzzyContains(_ value: String) -> Bool {
        return self.range(of: value, options: .caseInsensitive) != nil
    }
}

func testChallenge4() {
    assert("Hello, world".fuzzyContains("Hello") == true, "Challenge 4 failed")
    assert("Hello, world".fuzzyContains("WORLD") == true, "Challenge 4 failed")
    assert("Hello, world".fuzzyContains("Goobye") == false, "Challenge 4 failed")

    print("Challenge 4 success")
}

testChallenge4()
