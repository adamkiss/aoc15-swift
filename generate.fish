#!/usr/bin/env fish

if not set -q argv[1]
	echo "Run ./generate.fish <day number>"
	exit
end

set -l day (string pad -c 0 -w 2 $argv[1])

echo "
//
//  Day_$day.swift
//  Advent of Code 2015
//
		
import Foundation
		
final class Day_$day: Day {
	func part1(_ input: String) -> CustomStringConvertible {
		return 0
	}
		
	func part2(_ input: String) -> CustomStringConvertible {
		return 0
	}
}
" > ./Sources/aoc15/Day_{$day}.swift

echo "
//
//  Day_""$day""_Tests.swift
//  Advent of Code 2015
//
		
import XCTest
		
class Day_""$day""_Tests: XCTestCase {
	let day = Day_""$day""()
		
	func testPart1() throws {
		debugPrint(day.part1(\"\"))
	}
		
	func testPart2() throws {
		debugPrint(day.part2(\"\"))
	}
		
}
" > ./Tests/aoc15Tests/Day_""$day""_Tests.swift
