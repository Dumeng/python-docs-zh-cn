��    !      $              ,  �   -  R  �  <        J     c  
   t  @        �  �   �  �   r  ?  f  _   �  0        7     L    Q     q
     y
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
     �
  F   �
     ;  :   R  �  �  �   K  U  �  C   ,     p     �     �  7   �     �  �   �  �   �  2  b  P   �  "   �     	       �                      $  	   -     7     <     C  	   P     Z     a     h     u  A   y     �  ;   �   :func:`eval` is used for expression input.  It ignores leading whitespace. The string argument to :func:`eval` must have the following form: A complete program can be passed to the interpreter in three forms: with the :option:`-c` *string* command line option, as a file passed as the first command line argument, or as standard input.  If the file or standard input is a tty device, the interpreter enters interactive mode; otherwise, it executes the file as a complete program. All input read from non-interactive files has the same form: Complete Python programs Expression input File input Input in interactive mode is parsed using the following grammar: Interactive input Note that a (top-level) compound statement must be followed by a blank line in interactive mode; this is needed to help the parser detect the end of the input. The Python interpreter can get its input from a number of sources: from a script passed to it as standard input or as program argument, typed in interactively, from a module source file, etc.  This chapter gives the syntax used in these cases. The interpreter may also be invoked in interactive mode; in this case, it does not read and execute a complete program but reads and executes one statement (possibly compound) at a time.  The initial environment is identical to that of a complete program; each statement is executed in the namespace of :mod:`__main__`. The syntax for a complete Python program is that for file input, described in the next section. This syntax is used in the following situations: Top-level components UNIX While a language specification need not prescribe how the language interpreter is invoked, it is useful to have a notion of a complete Python program.  A complete Python program is executed in a minimally initialized environment: all built-in and standard modules are available, but none have been initialized, except for :mod:`sys` (various system services), :mod:`builtins` (built-in functions, exceptions and ``None``) and :mod:`__main__`.  The latter is used to provide the local and global namespace for execution of the complete program. Windows __main__ built-in function builtins command line eval input interactive mode interpreter module program standard input sys when parsing a complete Python program (from a file or from a string); when parsing a module; when parsing a string passed to the :func:`exec` function; Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:49+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :func:`eval` 被用于表达式输入。 它会忽略开头的空白。 传递给 :func:`eval` 的字符串参数必须具有以下形式: 一个完整程序可通过三种形式被传递给解释器：使用 :option:`-c` *字符串* 命令行选项，使用一个文件作为第一个命令行参数，或者使用标准输入。 如果文件或标准输入是一个 tty 设置，解释器会进入交互模式；否则的话，它会将文件当作一个完整程序来执行。 所有从非交互式文件读取的输入都具有相同的形式: 完整的 Python 程序 表达式输入 文件输入 交互模式下的输入使用以下语法进行解析: 交互式输入 请注意在交互模式下一条（最高层级）复合语句必须带有一个空行；这对于帮助解析器确定输入的结束是必须的。 Python 解释器可以从多种源获得输入：作为标准输入或程序参数传入的脚本，以交互方式键入的语句，导入的模块源文件等等。 这一章将给出在这些情况下所用的语法。 解释器也可以通过交互模式被发起调用；在此情况下，它并不读取和执行一个完整程序，而是每次读取和执行一条语句（可能为复合语句）。 此时的初始环境与一个完整程序的相同；每条语句会在 :mod:`__main__` 的命名空间中被执行。 适用于一个完整 Python 程序的语法即下节所描述的文件输入。 此语法用于下列几种情况: 顶级组件 UNIX 虽然语言规范描述不必规定如何发起调用语言解释器，但对完整的 Python 程序加以说明还是很有用的。 一个完整的 Python 程序会在最小初始化环境中被执行：所有内置和标准模块均为可用，但均处于未初始化状态，只有 :mod:`sys` (各种系统服务), :mod:`builtins` (内置函数、异常以及 ``None``) 和 :mod:`__main__` 除外。 最后一个模块用于为完整程序的执行提供局部和全局命名空间。 Windows __main__ 内置函数 builtins 命令行 eval 输入 交互模式 解释器 module 程序 标准输入 sys 解析一个完整 Python 程序时（从文件或字符串）； 解析一个模块时； 解析一个传递给 :func:`exec` 函数的字符串时； 