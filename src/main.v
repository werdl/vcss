import vcss { style, Style }

fn main() {
	[
		style("height", "30px"),
		style("width", "40px")
	].push("div")
	[
		style("height", "3px"),
		style("width", "4px")
	].push("div#small")

	global.write()
}
