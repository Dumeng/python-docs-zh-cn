��          �               l  *   m  �   �  =   w  �   �     �    �     �     �     �  �  �  �   �  �   R  �  �  E  z	  �   �
  +   �  �   �  !  �  K   �     ;  �  ?  -   �  �   +  0   +  �   \     3    :  
   =     H     Z  �  `  �   6  �   �  m    A  �  �   /  $     �   D    3  T   5     �   :mod:`termios` --- POSIX style tty control All functions in this module take a file descriptor *fd* as their first argument.  This can be an integer file descriptor, such as returned by ``sys.stdin.fileno()``, or a :term:`file object`, such as ``sys.stdin`` itself. Convenience functions for common terminal control operations. Discard queued data on file descriptor *fd*.  The *queue* selector specifies which queue: :const:`TCIFLUSH` for the input queue, :const:`TCOFLUSH` for the output queue, or :const:`TCIOFLUSH` for both queues. Example Here's a function that prompts for a password with echoing turned off.  Note the technique using a separate :func:`tcgetattr` call and a :keyword:`try` ... :keyword:`finally` statement to ensure that the old tty attributes are restored exactly no matter what happens:: I/O control Module :mod:`tty` POSIX Return a list containing the tty attributes for file descriptor *fd*, as follows: ``[iflag, oflag, cflag, lflag, ispeed, ospeed, cc]`` where *cc* is a list of the tty special characters (each a string of length 1, except the items with indices :const:`VMIN` and :const:`VTIME`, which are integers when these fields are defined).  The interpretation of the flags and the speeds as well as the indexing in the *cc* array must be done using the symbolic constants defined in the :mod:`termios` module. Return a tuple ``(ws_row, ws_col)`` containing the tty window size for file descriptor *fd*. Requires :const:`termios.TIOCGWINSZ` or :const:`termios.TIOCGSIZE`. Send a break on file descriptor *fd*.  A zero *duration* sends a break for 0.25--0.5 seconds; a nonzero *duration* has a system dependent meaning. Set the tty attributes for file descriptor *fd* from the *attributes*, which is a list like the one returned by :func:`tcgetattr`.  The *when* argument determines when the attributes are changed: :const:`TCSANOW` to change immediately, :const:`TCSADRAIN` to change after transmitting all queued output, or :const:`TCSAFLUSH` to change after transmitting all queued output and discarding all queued input. Set the tty window size for file descriptor *fd* from *winsize*, which is a two-item tuple ``(ws_row, ws_col)`` like the one returned by :func:`tcgetwinsize`. Requires at least one of the pairs (:const:`termios.TIOCGWINSZ`, :const:`termios.TIOCSWINSZ`); (:const:`termios.TIOCGSIZE`, :const:`termios.TIOCSSIZE`) to be defined. Suspend or resume input or output on file descriptor *fd*.  The *action* argument can be :const:`TCOOFF` to suspend output, :const:`TCOON` to restart output, :const:`TCIOFF` to suspend input, or :const:`TCION` to restart input. The module defines the following functions: This module also defines all the constants needed to work with the functions provided here; these have the same name as their counterparts in C.  Please refer to your system documentation for more information on using these terminal control interfaces. This module provides an interface to the POSIX calls for tty I/O control. For a complete description of these calls, see :manpage:`termios(3)` Unix manual page.  It is only available for those Unix versions that support POSIX *termios* style tty I/O control configured during installation. Wait until all output written to file descriptor *fd* has been transmitted. tty Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:14+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :mod:`termios` --- POSIX 风格的 tty 控制 此模块中的所有函数均接受一个文件描述符 *fd* 作为第一个参数。 这可以是一个整数形式的文件描述符，例如 ``sys.stdin.fileno()`` 所返回的对象，或是一个 :term:`file object`，例如 ``sys.stdin`` 本身。 针对常用终端控制操作的便捷函数。 在文件描述符 *fd* 上丢弃队列数据。 *queue* 选择器指定哪个队列: :const:`TCIFLUSH` 表示输入队列，:const:`TCOFLUSH` 表示输出队列，或 :const:`TCIOFLUSH` 表示两个队列同时。 示例 这个函数可提示输入密码并且关闭回显。 请注意其采取的技巧是使用一个单独的 :func:`tcgetattr` 调用和一个 :keyword:`try` ... :keyword:`finally` 语句来确保旧的 tty 属性无论在何种情况下都会被原样保存:: I/O 控制 模块 :mod:`tty` POSIX 对于文件描述符 *fd* 返回一个包含 tty 属性的列表，形式如下: ``[iflag, oflag, cflag, lflag, ispeed, ospeed, cc]``，其中 *cc* 为一个包含 tty 特殊字符的列表（每一项都是长度为 1 的字符串，索引号为 :const:`VMIN` 和 :const:`VTIME` 的项除外，这些字段如有定义则应为整数）。 对旗标和速度以及 *cc* 数组中索引的解读必须使用在 :mod:`termios` 模块中定义的符号常量来完成。 返回一个包含文件描述符 *fd* 的 tty 窗口大小的元组 ``(ws_row, ws_col)``。 需要 :const:`termios.TIOCGWINSZ` 或 :const:`termios.TIOCGSIZE`。 在文件描述符 *fd* 上发送一个中断。 *duration* 为零表示发送时长为 0.25--0.5 秒的中断；*duration* 非零值的含义取决于具体系统。 根据 *attributes* 列表设置文件描述符 *fd* 的 tty 属性，该列表即 :func:`tcgetattr` 所返回的对象。 *when* 参数确定何时改变属性: :const:`TCSANOW` 表示立即改变，:const:`TCSADRAIN` 表示在传输所有队列输出后再改变，或 :const:`TCSAFLUSH` 表示在传输所有队列输出并丢失所有队列输入后再改变。 将文件描述符 *fd* 的 tty 窗口大小设置为 *winsize*，这是一个包含两项的元组 ``(ws_row, ws_col)``，如 :func:`tcgetwinsize` 所返回的一样。 要求至少定义了 (:const:`termios.TIOCGWINSZ`, :const:`termios.TIOCSWINSZ`); (:const:`termios.TIOCGSIZE`, :const:`termios.TIOCSSIZE`) 对之一。 在文件描述符 *fd* 上挂起一战恢复输入或输出。 *action* 参数可以为 :const:`TCOOFF` 表示挂起输出，:const:`TCOON` 表示重启输出，:const:`TCIOFF` 表示挂起输入，或 :const:`TCION` 表示重启输入。 这个模块定义了以下函数： 这个模块还定义了与此处所提供的函数一起使用的所有必要的常量；这些常量与它们在 C 中的对应常量同名。 请参考你的系统文档了解有关如何使用这些终端控制接口的更多信息。 此模块提供了针对tty I/O 控制的 POSIX 调用的接口。 有关此类调用的完整描述，请参阅 :manpage:`termios(3)` Unix 指南页。 它仅在当安装时配置了支持 POSIX *termios* 风格的 tty I/O 控制的 Unix 版本上可用。 进入等待状态直到写入文件描述符 *fd* 的所有输出都传送完毕。 tty 