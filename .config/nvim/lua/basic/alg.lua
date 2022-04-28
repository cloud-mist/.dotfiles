vim.cmd(
    [[
map <Space>cv :call SetTitle()<CR>
func SetTitle()
	if &filetype == 'go'
		let l = 0
		let l = l + 1 | call setline(l,'package main')
		let l = l + 1 | call setline(l,'import ("bufio";"fmt";"io";"os";"strconv")')
		let l = l + 1 | call setline(l,'func main(){')
		let l = l + 1 | call setline(l,'	defer ot.Flush()')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'}')
		let l = l + 1 | call setline(l,'//{{{')
		let l = l + 1 | call setline(l,'/* ============================PART 1: I/O ================================== */')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'var (')
		let l = l + 1 | call setline(l,'	ot = bufio.NewWriterSize(os.Stdout, int(1e6))')
		let l = l + 1 | call setline(l,'	in = bufio.NewScanner(os.Stdin)')
		let l = l + 1 | call setline(l,')')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'func init() { in.Split(bufio.ScanWords); in.Buffer(make([]byte, 4096), int(1e9)) }')
		let l = l + 1 | call setline(l,'func rnS() string  { in.Scan(); return in.Text() }')
		let l = l + 1 | call setline(l,'func rnI() int     { i, _ := strconv.Atoi(rnS()); return i }')
		let l = l + 1 | call setline(l,'func rnF() float64 { f, _ := strconv.ParseFloat(rnS(), 64); return f }')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'func rsI(l, r int) []int {t := make([]int, r);for i := l; i < r; i++ {t[i] = rnI()};return t}')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'/* ===========================PART 2: Math Func ============================  */')
		let l = l + 1 | call setline(l,'func max(x, y int) int {if x > y {return x};return y}')
		let l = l + 1 | call setline(l,'func abs(x int) int {if x > 0 {return x};return -x}')
		let l = l + 1 | call setline(l,'func min(x, y int) int {if x < y {return x};return y}')
		let l = l + 1 | call setline(l,'func memset(a []int, v int) {if len(a) == 0 {return};a[0] = v;for bp := 1; bp < len(a); bp *= 2 {copy(a[bp:], a[:bp])}}')
		let l = l + 1 | call setline(l,'')
		let l = l + 1 | call setline(l,'//}}}')
	endif
endfunc
]]
)
