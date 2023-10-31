import os

fn main() {
	
	mut file:="
	import vcss { style, Style }
	fn main() {

	"

    file+=os.read_file(os.args[1]) or { panic(err) }



	file+="
	global.write('${os.args[2]}')
	}
	"

	os.write_file("temp.v", file)  or { println("Could not write to file") }

	os.execute("v -enable-globals run temp.v")

	os.rm("temp.v") or { panic(err) }
}
