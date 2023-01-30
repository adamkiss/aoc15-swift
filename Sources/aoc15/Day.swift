//
//  Day.swift
//  Advent of Code 2015
//  Source: https://github.com/nuudles/advent-of-code-swift-template/blob/main/AdventOfCode/Days/Day.swift
//
import Foundation

protocol Day: AnyObject {
    init()

    func part1(_ input: String) -> CustomStringConvertible
    func part2(_ input: String) -> CustomStringConvertible
}