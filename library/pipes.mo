��          �               l  '   m  -   �  6   �  X   �     S  �   q  �   �  ,   �  	   �  �   �  1   z  �   �  ,   :    g     n  #     �   �  4   +  �   `  �   �  �  �  '   �
  #   �
  <   �
  \   #     �  �   �  �     /   �     �  �   �  -   �  �   �  *   e  �   �     w     �  �   �  )   &     P  �   �   **Source code:** :source:`Lib/pipes.py` :mod:`pipes` --- Interface to shell pipelines :ref:`Availability <availability>`: Unix, not VxWorks. Add a new action at the beginning. See :meth:`append` for explanations of the arguments. An abstraction of a pipeline. Append a new action at the end. The *cmd* variable must be a valid bourne shell command. The *kind* variable consists of two letters. Because the module uses :program:`/bin/sh` command lines, a POSIX or compatible shell for :func:`os.system` and :func:`os.popen` is required. Copy *infile* to *outfile* through the pipe. Example:: If *flag* is true, turn debugging on. Otherwise, turn debugging off. When debugging is on, commands to be executed are printed, and the shell is given ``set -x`` command to be more verbose. Restore a pipeline template to its initial state. Return a file-like object, open to *file*, but read from or written to by the pipeline.  Note that only one of ``'r'``, ``'w'`` may be given. Return a new, equivalent, pipeline template. Similarly, the second letter can be either of ``'-'`` (which means  the command writes to standard output), ``'f'`` (which means the  command writes a file on the command line) or ``'.'`` (which means the command does not write anything, and hence must be last.) Template Objects Template objects following methods: The :mod:`pipes` module defines a class to abstract the concept of a *pipeline* --- a sequence of converters from one file to  another. The :mod:`pipes` module defines the following class: The :mod:`pipes` module is deprecated (see :pep:`PEP 594 <594#pipes>` for details). Please use the :mod:`subprocess` module instead. The first letter can be either of ``'-'`` (which means the command reads its standard input), ``'f'`` (which means the commands reads a given file on the command line) or ``'.'`` (which means the commands reads no input, and hence must be first.) Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:11+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **源代码：** :source:`Lib/pipes.py` :mod:`pipes` --- 终端管道接口 :ref:`可用性 <availability>`: Unix，不包括 VxWorks。 在开头添加一个新的动作。 请参阅 :meth:`append` 获取相应参数的说明。 对管道的抽象。 在末尾添加一个新的动作。 *cmd* 变量必须为一个有效的 bourne 终端命令。 *kind* 变量由两个字母组成。 由于模块使用了 :program:`/bin/sh` 命令行，因此要求有 POSIX 或兼容 :func:`os.system` 和 :func:`os.popen` 的终端程序。 通过管道将 *infile* 拷贝到 *outfile*。 示例:: 如果 *flag* 为真值，则启用调试。 否则禁用调试。 当启用调试时，要执行的命令会被打印出来，并且会给予终端 ``set -x`` 命令以输出更详细的信息。 将一个管道模板恢复为初始状态。 返回一个文件类对象，打开到 *file*，但是将从管道读取或写入。 请注意只能给出 ``'r'``, ``'w'`` 中的一个。 返回一个新的等价的管道模板。 类似地，第二个字母可以为 ``'-'`` (这表示命令将写入到标准输出), ``'f'`` (这表示命令将写入在命令行中给定的文件) 或 ``'.'`` (这表示命令将不执行写入，因而必须放在末尾。) 模板对象 模板对象有以下方法: :mod:`pipes` 定义了一个类用来抽象 *pipeline* 的概念 --- 将数据从一个文件转到另一文件的转换器序列。 :mod:`pipes` 模块定义了以下的类: :mod:`pipes` 模块已被弃用（请参阅 :pep:`PEP 594 <594#pipes>` 了解详情）。 请改用 :mod:`subprocess` 模块。 第一个字母可以为 ``'-'`` (这表示命令将读取其标准输入), ``'f'`` (这表示命令将读取在命令行中给定的文件) 或 ``'.'`` (这表示命令将不读取输入，因而必须放在前面。) 