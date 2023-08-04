��          T               �   +   �   2   �   D  �   Z  1  "   �  �  �  �  U  $        8    W  &  q     �	  f  �	   Alternatives to the Interactive Interpreter Interactive Input Editing and History Substitution One alternative enhanced interactive interpreter that has been around for quite some time is IPython_, which features tab completion, object exploration and advanced history management.  It can also be thoroughly customized and embedded into other applications.  Another similar enhanced interactive environment is bpython_. Some versions of the Python interpreter support editing of the current input line and history substitution, similar to facilities found in the Korn shell and the GNU Bash shell.  This is implemented using the `GNU Readline`_ library, which supports various styles of editing.  This library has its own documentation which we won't duplicate here. Tab Completion and History Editing This facility is an enormous step forward compared to earlier versions of the interpreter; however, some wishes are left: It would be nice if the proper indentation were suggested on continuation lines (the parser knows if an indent token is required next).  The completion mechanism might use the interpreter's symbol table.  A command to check (or even suggest) matching parentheses, quotes, etc., would also be useful. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-08-04 14:13+0000
PO-Revision-Date: 2021-06-28 01:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 默认交互式解释器的替代品 交互式编辑和编辑历史 一个可选的增强型交互式解释器是 IPython_，它已经存在了有一段时间，它具有 tab 补全，探索对象和高级历史记录管理功能。它还可以彻底定制并嵌入到其他应用程序中。另一个相似的增强型交互式环境是 bpython_。 某些版本的 Python 解释器支持编辑当前输入行和编辑历史记录，类似 Korn shell 和 GNU Bash shell 的功能 。这个功能使用了 `GNU Readline`_ 来实现，一个支持多种编辑方式的库。这个库有它自己的文档，在这里我们就不重复说明了。 Tab 补全和编辑历史 Python 解释器与早期版本的相比，向前迈进了一大步；无论怎样，还有些希望的功能：如果能在编辑连续行时建议缩进（解析器知道接下来是否需要缩进符号），那将很棒。补全机制可以使用解释器的符号表。有命令去检查（甚至建议）括号，引号以及其他符号是否匹配。 