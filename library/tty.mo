��          |               �   %   �   )     I   -    w    �  �   �  �   '  %   �     �  V   �  6   C  �  z  %   8  !   ^  I   �    �    �  �   �	  �   �
     )     E  J   [  )   �   **Source code:** :source:`Lib/tty.py` :mod:`tty` --- Terminal control functions Because it requires the :mod:`termios` module, it will work only on Unix. Change the mode of file descriptor *fd* to cbreak. If *when* is omitted, it defaults to :const:`termios.TCSAFLUSH`, and is passed to :func:`termios.tcsetattr`. The return value of :func:`termios.tcgetattr` is saved before setting *fd* to cbreak mode; this value is returned. Change the mode of the file descriptor *fd* to raw. If *when* is omitted, it defaults to :const:`termios.TCSAFLUSH`, and is passed to :func:`termios.tcsetattr`. The return value of :func:`termios.tcgetattr` is saved before setting *fd* to raw mode; this value is returned. Convert the tty attribute list *mode*, which is a list like the one returned by :func:`termios.tcgetattr`, to that of a tty in cbreak mode. Convert the tty attribute list *mode*, which is a list like the one returned by :func:`termios.tcgetattr`, to that of a tty in raw mode. Low-level terminal control interface. Module :mod:`termios` The :mod:`tty` module defines functions for putting the tty into cbreak and raw modes. The :mod:`tty` module defines the following functions: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-04 12:28+0000
PO-Revision-Date: 2021-06-28 01:16+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **Source code:** :source:`Lib/tty.py` :mod:`tty` --- 终端控制功能 因为它需要 :mod:`termios` 模块，所以只能在 Unix 上运行。 将文件描述符 *fd* 的模式改为 cbreak。 如果 *when* 被省略，它将默认为 :const:`termios.TCSAFLUSH`，并将被传给 :func:`termios.tcsetattr`。 :func:`termios.tcgetattr` 的返回值在将 *fd* 设为 cbreak 模式前会被保存；该值将被返回。 将文件描述符 *fd* 的模式改为 raw。 如果 *when* 被省略，它将默认为 :const:`termios.TCSAFLUSH`，并将被传给 :func:`termios.tcsetattr`。 :func:`termios.tcgetattr` 的返回值在将 *fd* 设为 raw 模式前会被保存；该值将被返回。 操作 tty 属性列表 *mode*，它是一个与 :func:`termios.tcgetattr` 的返回值类似的列表，将其转换为 cbreak 模式的 tty 的属性列表。 操作 tty 属性列表 *mode*，它是一个与 :func:`termios.tcgetattr` 的返回值类似的列表，将其转换为原始模式 tty 的属性列表。 低级终端控制接口。 模块 :mod:`termios` :mod:`tty` 模块定义了将 tty 放入 cbreak 和 raw 模式的函数。 :mod:`tty` 模块定义了以下函数： 