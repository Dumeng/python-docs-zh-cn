��          �               �  C  �  B   !     d  �  u  �   _  	   �  u   �  5   `     �     �  �   �  3  z  �   �  �   �	     a
  #   v
  �   �
    �  �  �  �   '    �     �  �   �  �  �  <  @    }  G   �  �  �  !  �  9   �     �  �  �  N   �     �  D   �  1   3     e     r  �   �  -  
  �   8  �   �     �      �   �   �   �   �!    m"  y   �$  �   �$     �%  q   �%  �  `&  �  (    �*  K   �+   A second way of starting the interpreter is ``python -c command [arg] ...``, which executes the statement(s) in *command*, analogous to the shell's :option:`-c` option.  Since Python statements often contain spaces or other characters that are special to the shell, it is usually advised to quote *command* in its entirety. All command line options are described in :ref:`using-on-general`. Argument Passing By default, Python source files are treated as encoded in UTF-8.  In that encoding, characters of most languages in the world can be used simultaneously in string literals, identifiers and comments --- although the standard library only uses ASCII characters for identifiers, a convention that any portable code should follow.  To display all these characters properly, your editor must recognize that the file is UTF-8, and it must use a font that supports all the characters in the file. Continuation lines are needed when entering a multi-line construct. As an example, take a look at this :keyword:`if` statement:: Footnotes For example, to declare that Windows-1252 encoding is to be used, the first line of your source code file should be:: For more on interactive mode, see :ref:`tut-interac`. Interactive Mode Invoking the Interpreter On Unix, the Python 3.x interpreter is by default not installed with the executable named ``python``, so that it does not conflict with a simultaneously installed Python 2.x executable. On Windows machines where you have installed Python from the :ref:`Microsoft Store <windows-store>`, the :file:`python3.12` command will be available. If you have the :ref:`py.exe launcher <launcher>` installed, you can use the :file:`py` command. See :ref:`setting-envvars` for other ways to launch Python. One exception to the *first line* rule is when the source code starts with a :ref:`UNIX "shebang" line <tut-scripts>`.  In this case, the encoding declaration should be added as the second line of the file.  For example:: Some Python modules are also useful as scripts.  These can be invoked using ``python -m module [arg] ...``, which executes the source file for *module* as if you had spelled out its full name on the command line. Source Code Encoding The Interpreter and Its Environment The Python interpreter is usually installed as :file:`/usr/local/bin/python3.12` on those machines where it is available; putting :file:`/usr/local/bin` in your Unix shell's search path makes it possible to start it by typing the command: The interpreter operates somewhat like the Unix shell: when called with standard input connected to a tty device, it reads and executes commands interactively; when called with a file name argument or with a file as standard input, it reads and executes a *script* from that file. The interpreter's line-editing features include interactive editing, history substitution and code completion on systems that support the `GNU Readline <https://tiswww.case.edu/php/chet/readline/rltop.html>`_ library. Perhaps the quickest check to see whether command line editing is supported is typing :kbd:`Control-P` to the first Python prompt you get.  If it beeps, you have command line editing; see Appendix :ref:`tut-interacting` for an introduction to the keys.  If nothing appears to happen, or if ``^P`` is echoed, command line editing isn't available; you'll only be able to use backspace to remove characters from the current line. To declare an encoding other than the default one, a special comment line should be added as the *first* line of the file.  The syntax is as follows:: Typing an end-of-file character (:kbd:`Control-D` on Unix, :kbd:`Control-Z` on Windows) at the primary prompt causes the interpreter to exit with a zero exit status.  If that doesn't work, you can exit the interpreter by typing the following command: ``quit()``. Using the Python Interpreter When a script file is used, it is sometimes useful to be able to run the script and enter interactive mode afterwards.  This can be done by passing :option:`-i` before the script. When commands are read from a tty, the interpreter is said to be in *interactive mode*.  In this mode it prompts for the next command with the *primary prompt*, usually three greater-than signs (``>>>``); for continuation lines it prompts with the *secondary prompt*, by default three dots (``...``). The interpreter prints a welcome message stating its version number and a copyright notice before printing the first prompt: When known to the interpreter, the script name and additional arguments thereafter are turned into a list of strings and assigned to the ``argv`` variable in the ``sys`` module.  You can access this list by executing ``import sys``.  The length of the list is at least one; when no script and no arguments are given, ``sys.argv[0]`` is an empty string.  When the script name is given as ``'-'`` (meaning  standard input), ``sys.argv[0]`` is set to ``'-'``.  When :option:`-c` *command* is used, ``sys.argv[0]`` is set to ``'-c'``.  When :option:`-m` *module* is used, ``sys.argv[0]``  is set to the full name of the located module.  Options found after  :option:`-c` *command* or :option:`-m` *module* are not consumed  by the Python interpreter's option processing but left in ``sys.argv`` for  the command or module to handle. to the shell. [#]_ Since the choice of the directory where the interpreter lives is an installation option, other places are possible; check with your local Python guru or system administrator.  (E.g., :file:`/usr/local/python` is a popular alternative location.) where *encoding* is one of the valid :mod:`codecs` supported by Python. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-29 16:50+0000
PO-Revision-Date: 2021-06-28 01:50+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 另一种启动解释器的方式是 ``python -c command [arg] ...``，这将执行 *command* 中的语句，相当于 shell 的 :option:`-c` 选项。 由于 Python 语句经常包含空格或其他会被 shell 特殊对待的字符，通常建议用引号将整个 *command* 括起来。 命令行的所有选项详见 :ref:`using-on-general`。 传入参数 默认情况下，Python 源码文件的编码是 UTF-8。这种编码支持世界上大多数语言的字符，可以用于字符串字面值、变量、函数名及注释 —— 尽管标准库只用常规的 ASCII 字符作为变量名或函数名，可移植代码都应遵守此约定。要正确显示这些字符，编辑器必须能识别 UTF-8 编码，而且必须使用支持文件中所有字符的字体。 输入多行架构的语句时，要用连续行。以 :keyword:`if` 为例： 备注 比如，声明使用 Windows-1252 编码，源码文件要写成： 交互模式的内容详见 :ref:`tut-interac`。 交互模式 调用解释器 Unix 系统中，为了不与同时安装的 Python 2.x 冲突，Python 3.x 解释器默认安装的执行文件名不是 ``python``。 在 Windows 机器上当你从 :ref:`Microsoft Store <windows-store>` 安装 Python 之后，:file:`python3.12` 命令将可使用。 如果你安装了 :ref:`py.exe 启动器 <launcher>`，你将可以使用 :file:`py` 命令。 请参阅 :ref:`setting-envvars` 了解其他启动 Python 的方式。 *第一行* 的规则也有一种例外情况，源码以 :ref:`UNIX "shebang" 行 <tut-scripts>` 开头。此时，编码声明要写在文件的第二行。例如： Python 模块也可以当作脚本使用。输入：``python -m module [arg] ...``，会执行 *module* 的源文件，这跟在命令行把路径写全了一样。 源文件的字符编码 解释器的运行环境 Python 解释器在可用的机器上通常被安装为 :file:`/usr/local/bin/python3.12`；将 :file:`/usr/local/bin` 加入你的 Unix shell 的搜索路径就可以通过输入以下命令来启动它: 解释器的操作方式类似 Unix Shell：用与 tty 设备关联的标准输入调用时，可以交互式地读取和执行命令；以文件名参数，或标准输入文件调用时，则读取并执行文件中的 *脚本*。 在支持 `GNU Readline <https://tiswww.case.edu/php/chet/readline/rltop.html>`_ 库的系统中，解释器的行编辑功能包括交互式编辑、历史替换、代码补全等。检测是否支持命令行编辑最快速的方式是，在首次出现 Python 提示符时，输入 :kbd:`Control-P`。听到“哔”提示音，说明支持行编辑；请参阅附录 :ref:`tut-interacting`，了解功能键。如果没有反应，或回显了 ``^P``，则说明不支持行编辑；只能用退格键删除当前行的字符。 如果不使用默认编码，则要声明文件的编码，文件的 *第一* 行要写成特殊注释。句法如下： 在主提示符中，输入文件结束符（Unix 里是 :kbd:`Control-D`，Windows 里是 :kbd:`Control-Z`），就会退出解释器，退出状态码为 0。如果不能退出，还可以输入这个命令：``quit()``。 Python 解释器 在交互模式下运行脚本文件，只要在脚本名称参数前，加上选项 :option:`-i` 就可以了。 在终端（tty）输入并执行指令时，解释器在 *交互模式（interactive mode）* 中运行。在这种模式中，会显示 *主提示符*，提示输入下一条指令，主提示符通常用三个大于号（``>>>``）表示；输入连续行时，显示 *次要提示符*，默认是三个点（``...``）。进入解释器时，首先显示欢迎信息、版本信息、版权声明，然后才是提示符： 解释器读取命令行参数，把脚本名与其他参数转化为字符串列表存到 ``sys`` 模块的 ``argv`` 变量里。执行 ``import sys``，可以导入这个模块，并访问该列表。该列表最少有一个元素；未给定输入参数时，``sys.argv[0]`` 是空字符串。给定脚本名是 ``'-'`` （标准输入）时，``sys.argv[0]`` 是 ``'-'``。使用 :option:`-c` *command* 时，``sys.argv[0]`` 是 ``'-c'``。如果使用选项 :option:`-m` *module*，``sys.argv[0]`` 就是包含目录的模块全名。解释器不处理 :option:`-c` *command* 或 :option:`-m` *module* 之后的选项，而是直接留在 ``sys.argv`` 中由命令或模块来处理。 这样，就可以在 shell 中运行 Python 了 [#]_ 。因为可以选择安装目录，解释器也有可能安装在别的位置；如果还不明白，就去问问身边的 Python 大神或系统管理员。（例如，常见备选路径还有 :file:`/usr/local/python`。） 其中，*encoding* 可以是 Python 支持的任意一种 :mod:`codecs`。 