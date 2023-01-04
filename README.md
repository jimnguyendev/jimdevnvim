# Learn Vim

### Bài 1

Để di chuyển con trỏ nhấn h, j , k , l
: `h` con trỏ di chuyển sang trái
: `l` con trỏ di chuyển sang phải
: `j` con trỏ di chuyển xuống dưới
: `k` con trỏ di chuyển lên trêna

> Vim có 2 chế độ thường xuyên sử dụng là: normal mode và insert mode

Thoát Vim:
: `ESC` chuyển về normal mode
: `:q!` thoát file vim xoá nội dung đã chỉnh sửa (nhấn :q phải lưu file mới hoạt động) <=> ZQ
: `wq` lưu và thoát file <=> ZZ <=> :x

Back lại thay đổi nhán phím `u`, nhấn `U` back lại cả câu, `Ctrl + R` ngược lại với `u`

Xoá ký tự:
: `x` xoá một ký tự ở dưới con trỏ

Nhấn `i` (con trỏ đặt ở trước ký tự) sang insert mode hoặc `a` (con trỏ đặt ở sau ký tự)

Nhấn `A` đưa con trỏ đến cuối dòng và vào insert mode != `$` (đưa con trỏ đến cuối dòng nhưng ko vào insert mode)
Nhấn `I` đưa con trỏ đến ký tự đầu của dòng và vào insert mode != `0` (đưa con trỏ đến đầu dòng nhưng không vào insert mode)
Nhấn `^` di chuyển đến ký tự đầu tiên của dòng
Nhấn `e` di chuyển con trỏ đến ký tự cuối cùng của từ

`C`: tương ứng `Ctr`
`M`: phím `Alt`
`S`: phím `Shift`
`leader`: tương ứng với phím `\`

### Bài 2

`w` nhảy con trỏ đến từ tiếp theo, `W` nhảy con trỏ đến từ tiếp theo bảo gồm cả ký tự đặc biệt
`b` nhảy con trỏ đến từ trước đó

Xoá một từ:
: `dw` (xoá vị trí từ con trỏ này đến trước vị trí con trỏ sẽ đến tiếp theo)
: `daw` (xoá toàn bộ word và 1 dấu khoảng trắng sau nó)
: `diw` (xoá toàn bộ word và vẫn giữ khoảng trắng)
: `dW` (xoá toàn bộ word bao gồm cả ký tự đặc biệt)
: `d$` (xoá từ vị trí con trỏ đến cuối dòng ) <=> `D`
: `d^` (xoá từ vị trí con trỏ đến ký tự đầu tiên của dòng)
: `db` (xoá word trước đó ngược với `dw`)
: `dd` (xoá dòng)
: `de` (xoá 1 ký tự nhưng vẫn trong normal mode)
: `ce` (xoá từ vị trí con trỏ đến khoảng trắng và vào trong insert mode)

> Vim coi ký tự đặc biệt là một từ

### Bài 3

`p` tương tự `ctrl + v` (dán xuống dưới dòng của con trỏ), ngược lại là `P`

Nhấn `r` vào chế độ replace mode (sửa 1 ký tự sẽ thoát và nhấn lại)
: Nhấn `R` vào replace mode chỉ thoát khi nào nhấn `ESC`
: Nhấn `ce` xoá từ vị trí con trỏ đến cuối từ và vào insert mode

### Bài 4

Nhấn `ctrl + d` di chuyển nhanh xuống dưới, ngược lại là `ctrl + u`
Nhấn `ctrl + G` hiển thị trạng thái của file vị trí của con trỏ
Nhấn `G` di chuyển con trỏ đến cuối của file, `ctrl + o` để trở lại vị trí ban đầu
Nhấn `gg` di chuyển con trỏ đến đầu file
Nhấn `line + G` di chuyển đến dòng cần tìm
Nhấn `/ + từ cần tìm + ENTER` để tìm từ (từ trên xuống dưới), nhấn `n` để next từ, nhấn `N` để back lại từ trước đó, ngược lại dùng dấu `?`
Move the cursor to another (,),[,],{ or } and see what % does.

To substitute new for the first old in a line type :s/old/new
To substitute new for all 'old's on a line type :s/old/new/g
To substitute phrases between two line #'s type :#,#s/old/new/g
To substitute all occurrences in the file type :%s/old/new/g
To ask for confirmation each time add 'c' :%s/old/new/gc

Nhấn `s`: xoá những từ mà bôi đen và vào insert mode
Nhấn `S`: xoá dòng và di chuyển con trỏ đến ký tự đầu tiên và vào insert mode

Nhấn `ggVG`: bôi đen toàn bộ văn bản, nhấn `d`: để xoá
Nhấn `:e + tên  file`: mở file
Nhấn `:vs + tên file`: vertical split
Nhấn `Ctrl-w hjkl`: di chuyển con trỏ giữa các ô
Nhấn `o`: nhảy cursor xuống dưới một sòng vào vào insert mode, ngược lại là `O`

### Bài 5: Setup neovim

Nhấn `;f`: để tìm file
Nhấn `;r`: để tìm tên file
Nhấn `\\`: để tìm file vừa truy cập

#### nim-tree

`ctrl + e` mở nvim-tree
`d`: xoá file
`a`: tạo file

### devaslife

```
brew insatll lua-language-server
npm install -g typescript-language-server typescript
brew install tree-sitter
brew install rg
npm install -g @fsouza/prettierd
npm install -g eslint_d
```
