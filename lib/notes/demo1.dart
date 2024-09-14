import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Demo1 extends StatefulWidget {
  const Demo1({super.key});
  static String routePath = 'notes/demo1';

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title in app'),
      ),
      body: Center(
        child: Markdown(data: content),
      ),
    );
  }
}

const String content = """
# Vim快速上手

# 一 基础内容

> 简单了解vim的知识
> 

## 1 vim的模式

1. Normal模式
    
    打开一个文件默认进入的模式，可以在键盘输入指令实现各种功能
    
2. Insert模式
    
    输入内容的模式
    
3. Command模式
    
    执行某些命令需要进入的模式
    
4. Visual模式
    
    方便的对文本进行选择
    

## 2 模式切换

- 在Normal模式先下
    - 按下i，进入Insert模式
    - 按下：，进入Command模式
    - 按下v，进入Visual模式
- 在其他模式 按下Esc键 退回Normal模式

## 3 关闭文件

- 在Normal模式下按下： 进入命令模式，在输入wq，保存修改的内容并退出

# 二 移动与编辑（在Normal模式下）

## 0 常用操作

- .     重复执行之前的操作
- u   撤销之前的操作

## 1 移动

### 方向移动

- hjkl 分别对于光标向右下上左移动
- ^/\$  跳转到行的开始/结尾
- % 跳转到配对符号的位置
    
    > 从（ 跳转到），从{跳转到}
    > 

### 行跳转

- gg 移动到第一行
- <行号>gg 移动到指定行
- G  移动到最后一行
- zz / zt /zb 跳转到屏幕的第中间行/第一行/最后一行

### 根据单词遍历

- w 跳到下一个单词的开头
- b 返回到上一个单词的开头
- e 跳到下一个单词的结尾
- ge 返回到上一个单词的结尾

### 基于搜索的移动

- f<char> 搜索行内下一个<char>所在的位置
    
    > char 代表一个单独的字母 如a
    > 
    - 在搜索一次后，通过;/,来重复向后和向前搜索<char>
- F<char> 在行内向前搜索
- /<string> 在文件中搜索<string>，按下enter跳转到下一个<string>出现的地方
    
    > string 代表字符串 如hello
    > 
    - 通过n/N重复上面的搜索操作，n继续向下搜索，N继续往上搜索
- *   向下查找当前光标的单词

### 基于标记的移动

- m{mark} 在当前位置添加一个标记，记为mark
    
    > mark为a-z字母，常用m，
    > 
- `{mark}   跳转到名为mark的标记的位置
- ``    返回到上次跳转的位置
- `.    上次修改内容的位置
- `^   上次插入内容的位置

### 翻页

- ctrl+u 向上翻半页
- ctrl+d 向下翻半页

## 2 编辑

### Operator + Motion = Action

> Operator代表操作，Motion代表一次光标移动
> 
- 常见操作符号
    - d   表示delete，删除内容
    - y    表示yank， 复制
    - x     剪切
    - p   粘贴
    - v    表示visual，选中文本进入visual模式
    
    > 大部分操作符连续按两次表示对当前行进行操作，如dd
    > 
- Action示例
    - dgg 从当前光标开始，删除到第一行
    - ye    复制到单词结尾
    - d\$  删除到行尾
    - df;   删除到一个；出现为止
    - d% 将配对符号内的所有内容删除
    

### Count + Action

> count为数字，表示action需要重复的次数
> 
- 3dw  删除3个单词
- 4p   复制四次

### Operator + textObject

> 文本对象 textObject
>
""";