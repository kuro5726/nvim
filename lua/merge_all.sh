#!/bin/bash

# 出力ファイル名
output="merged_output.txt"

# 既存の出力ファイルがあれば削除
[ -f "$output" ] && rm "$output"

# 再帰的にすべてのファイルを処理
find . -type f ! -name "$output" | while read -r file; do
    echo "===== $file =====" >> "$output"
    cat "$file" >> "$output"
    echo -e "\n" >> "$output"
done

echo "すべてのファイルを '$output' にまとめました。"
#!/bin/bash

# 出力ファイル名
output="merged_output.txt"

# 既存の出力ファイルがあれば削除
[ -f "$output" ] && rm "$output"

# 再帰的にすべてのファイルを処理
find . -type f ! -name "$output" | while read -r file; do
    echo "===== $file =====" >> "$output"
    cat "$file" >> "$output"
    echo -e "\n" >> "$output"
done

echo "すべてのファイルを '$output' にまとめました。"

