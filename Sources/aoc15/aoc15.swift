import Foundation

@main
public struct aoc15 {
	var text: String = "Hello, World!"

	private static func run(dayNumber: Int, inputPath: String) {
		guard let dayClass = Bundle.main.classNamed("Day_\(dayNumber)") as? Day.Type
		else {
			debugPrint("Can't initialize class: 'Day_\(dayNumber)'")
			return
		}

		guard let input = try? String(contentsOfFile: "\(inputPath)/day_\(dayNumber).txt")
		else {
			debugPrint("Can't load file: \(inputPath)/day_\(dayNumber).txt")
			return
		}

		let day = dayClass.init()

		print("===Day \(dayNumber)===")

		let part1StartDate = Date()
		let part1 = day.part1(input)
		print("Part 1 (\(-part1StartDate.timeIntervalSinceNow * 1000) ms): \(part1)")

		let part2StartDate = Date()
		let part2 = day.part2(input)
		print("Part 2 (\(-part2StartDate.timeIntervalSinceNow * 1000) ms): \(part2)")
		print("")
	}

	public static func main() {
		// print(Day01().whatever)
		print("hello")
	}
}
