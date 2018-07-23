#!/bin/bash

# 将Xcode中自定义的代码片段拷贝到当前code目录
path="/Users/$(whoami)/Library/Developer/Xcode/UserData/CodeSnippets/"
echo $path
if [ ! -e $path ]
then
    echo "Xcode CodeSnippets目录不存在"
    exit
fi

#将Xcode中的代码片段拷贝到code目录
cp $path* ./code/
if [ ${?} -eq 0 ]
then
    echo "执行成功"
else
    echo "拷贝文件失败"
fi
