#!/bin/bash
path="/Users/$(whoami)/Library/Developer/Xcode/UserData/CodeSnippets/"
echo $path
if [ ! -e $path ]
then
    echo "Xcode CodeSnippets目录不存在"
    exit
fi

#将code目录下的代码片段安装到Xcode中
cp ./code/* $path
if [ ${?} -eq 0 ]
then
    echo "代码片段安装成功"
else
    echo "代码片段安装失败"
fi

