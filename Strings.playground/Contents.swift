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

// Challenge 5 - Count the characters

func challenge5(word: String, character: Character) -> Int {
    var counter: Int = 0

    for char in word {
        if char == character {
            counter += 1
        }
    }

//    return word.reduce(0) { $1 == character ? $0 + 1 : $0 } // - Little bit slower but shorter because Functional Programming FTW

    return counter
}

func testChallenge5() {
    assert(challenge5(word: "The rain in Spain", character: "a") == 2, "Challenge 5 failed")
    assert(challenge5(word: "Mississippi", character: "i") == 4, "Challenge 5 failed")
    assert(challenge5(word: "Hacking with Swift", character: "i") == 3, "Challenge 5 failed")
    assert(challenge5(word: "SoMe random word for Me to test", character: "m") == 1, "Challenge 5 failed")

    print("Challenge 5 success")
}

testChallenge5()


// Challenge 6 - Remove duplicate letters from a string

func challenge6(_ value: String) -> String {
    var uniqueChars = [Character]()

    for character in value {
        if !uniqueChars.contains(character) {
            uniqueChars.append(character)
        }
    }

    return String(uniqueChars)
}

func testChallenge6() {
    assert(challenge6("wombat") == "wombat", "Challenge 6 failed")
    assert(challenge6("hello") == "helo", "Challenge 6 failed")
    assert(challenge6("Mississippi") == "Misp", "Challenge 6 failed")

    print("Challenge 6 success")
}

testChallenge6()
