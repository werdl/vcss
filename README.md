# vcss
### VCSS is an attempt to make CSS a bit better.
## Basics
> `vcss` is basically a frontend for the CSS language, written in the V language. It allows you to programatically control the output, using a real programming language, unlike SCSS or LESS, languages designed for the sole purpose of CSS. V is a fast maturing language, and has plenty of great features. It is also very modern, intergrating modern ideas into your code.
- A simple example:
- `run this`
```bash
v install werdl.vcss
```
- `in.vcss`
```v
[
    style("height", "30px"),
    style("width", "40px")
].push("div#big")
[
    style("height", "3px"),
    style("width", "4px")
].push("div#small")
```
- `make compile`
- `./vcss in.vcss out.css`
- `out.css`
```css
div#big {
    height: 30.0px;
    width: 40.0px;
}
div#small {
    height: 3.0px;
    width: 4.0px;
}
```
## Spec
`vcss /path/to/input /path/to/output`

### `.vcss`
- Contains valid V syntax, without the `main` function. Everything in it will be wrapped into a `main` function.
## How it works
- Reads the input `.vcss` file
- Adds that to some boilerplate
- Puts into `temp.v` file
- Runs `temp.v`
- Deletes `temp.v`