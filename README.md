# CF TUNNEL SCRIPT HELPER
沒啥用的 shell scripts，讓我開關 tunnel 更容易而已

ps.
```bash
## -v 為去掉有後方單詞的結果
## 意思即去掉有 grep 的結果，用意是不要讓當前 grep 這個 process 污染輸出
grep -v grep 

## 透過一組[]也可以達到同樣效果
grep [D]OMAIN
```