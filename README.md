# Cloning dotfiles To Another Machine

Reference
Using Git and Github to Manage Your Dotfiles | smalley creative blog
http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

    git clone https://github.com/yizaiwu/dotfiles
    cd ~/dotfiles
    chmod +x makesymlinks.sh
    ./makesymlinks.sh

## OmniCompletion
to use, hold Ctrl+X then Ctrl+O while in Insert mode.

## Tab
```
:tabe <filename>
gt（切換下一個Tab）
gT（切換上一個Tab）

```

## Motion
```
hjkl（左下上右）
0/Home（移動到這一列的最前面字元處）
$/End（移動到這一列的最後面字元處）
gg（移動到這個檔案的第一列，相當於1G）
G（移動到這個檔案的最後一列）
nG（移動到這個檔案的第n列）
n<Enter>（游標向下移動n列）
Ctrl-d（Page Up）
Ctrl-u（Page Down）
w（正向移動到相鄰單詞的首字符）
b（逆向移動到相鄰單詞的首字符）
e（正向移動到相鄰單詞的尾字符）
ge（逆向移動到相鄰單詞的尾字符）
[f/F]<char>（fa正向移動到第一個字符a處、Fa逆向移動到第一個字符a處）
[t/T]<char>
```

## Edit
```
x/X（x 為向後刪除一個字元 (相當於 [del] 按鍵)， X 為向前刪除一個字元(相當於 [backspace] 亦即是倒退鍵)）
dd（刪除游標所在的那一列）
yy（複製游標所在的那一列）
p/P（p 為將已複製的資料在游標下一列貼上，P 則為貼在游標上一列）
u（復原前一個動作）
Ctrl+r（重做上一個動作）
```

## 區塊選擇(Visual)
```
v（字元選擇，會將游標經過的地方反白選擇）
V（列選擇，會將游標經過的列反白選擇）
Ctrl+v（區塊選擇Visual Block，可以用長方形的方式選擇資料）
y（將反白的地方複製起來）
d（將反白的地方刪除）
p（將剛剛複製的區塊，在游標所在處貼上）
```

## 快捷鍵
```
F2 : NERD Tree
```

-----------------------------------------

# Vim Plugin

## ctrlp
模糊搜索, 可以搜索文件/buffer/mru/tag等等

## The NERD Tree
```
I（顯示/隱藏隱藏文件）
m（出現創建/刪除/剪切/拷貝操作列表）
```

## vim-airline
狀態列增強，狀態列顯示的好幫手

## EasyMontion
快速切換游標(cursor)
```
<leader><leader>w（正向移動到相鄰單詞的首字符）
<leader><leader>b（逆向移動到相鄰單詞的首字符）
<leader><leader>e（正向移動到相鄰單詞的尾字符）
<leader><leader>ge（逆向移動到相鄰單詞的尾字符）
<leader><leader>f/F<char>（fa正向移動到第一個字符a處、Fa逆向移動到第一個字符a處）
<leader><leader>j（向下跨行移動）
<leader><leader>k（向上跨行移動）
v<leader><leader>f/F<char>（快速選中光標當前位置到指定字符<char>之間的文本）
d<leader><leader>f/F<char>（快速刪除光標當前位置到指定字符<char>之間的文本）
```

## vim-signature
書籤可視化插件
```
mx（設定/取消當前行名為 x 的標籤，Toggle mark 'x' and display it in the leftmost column）
m,（自動設定下一個可用書籤名，Place the next available mark）
dmx（Remove mark 'x' where x is a-zA-Z）
]`（Jump to next mark）
[`（Jump to prev mark）
m/（羅列出當前文件中所有書籤，選中後回車可直接跳轉，Open location list and display marks from current buffer）
m-（Delete all marks from the current line）
m<Space>（Delete all marks from the current buffer）
```

