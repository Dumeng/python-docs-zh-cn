��    �      �              �  D   �  6   B	  L   y	  `   �	  �   '
  [     O   w  �   �  X   J  �   �  k   B  _   �  )     C   8  l   |  Z   �  d   D  z   �  F   $     k     �  $   �     �  $   �     �     �  D     
   Z     e     {  H   �     �     �     �       0        I  %   `     �     �     �  7   �  .   �  .   +  .   Z  -   �  .   �  -   �  F     Y   [  {   �  �   1     �  0   �     &     .  '   E  :   m  �   �     /  ]   M  �   �  p   j  �   �  i   �          ,  &   E  M   l     �     �     �     �     �     �     �     �  W   �  
   P     [     _     c     k  	   q     {     �  	   �     �     �     �     �     �     �     �  	   �     �  	   �     �     �     �     �                              "     +     2     9     =     C     F     O  	   V     `     g     n     t     |     �     �     �  
   �     �  
   �     �     �     �     �  	   �  	   �     �     �     �     �                 	          �  &  D   �  6     L   S  ^   �  �   �  X   �   L   L!  �   �!  [   +"  �   �"  b   1#  \   �#  %   �#  /   $  v   G$  W   �$  a   %  }   x%  >   �%     5&     L&     S&     n&      ~&     �&     �&  <   �&     '     '     '  K   %'     q'     ~'     �'     �'  /   �'     �'     �'     (     $(     =(  1   P(  &   �(  &   �(  *   �(  &   �(  )   ")  (   L)  B   u)  Z   �)  {   *  �   �*     %+  0   :+     k+     r+     �+  +   �+  h   �+     1,  H   G,  �   �,  j   -  �   �-  X   c.     �.     �.  *   �.  V   /     r/     v/     {/     �/     �/     �/     �/     �/  Z   �/  
   0     0     0     0     &0  	   ,0     60     ;0  	   C0     M0     P0     U0     ]0     b0     g0     l0  	   }0     �0  	   �0     �0     �0     �0     �0     �0     �0     �0     �0     �0     �0     �0     �0     �0     �0     �0     1     
1  	   1     1     "1     )1     /1     71     >1     F1     J1  
   O1     Z1  
   a1     l1     r1     v1     ~1  	   �1     �1     �1     �1     �1     �1     �1     �1     �1  	   �1     �1   :func:`os.get_handle_inheritable`, :func:`os.set_handle_inheritable` :func:`os.get_inheritable`, :func:`os.set_inheritable` :meth:`socket.socket.get_inheritable`, :meth:`socket.socket.set_inheritable` :mod:`asyncio`: :ref:`New provisional API for asynchronous IO <whatsnew-asyncio>` (:pep:`3156`). :mod:`email` has a new submodule, :mod:`~email.contentmanager`, and a new :mod:`~email.message.Message` subclass (:class:`~email.contentmanager.EmailMessage`) that :ref:`simplify MIME handling <whatsnew_email_contentmanager>` (:issue:`18891`). :mod:`ensurepip`: :ref:`Bootstrapping the pip installer <whatsnew-ensurepip>` (:pep:`453`). :mod:`enum`: :ref:`Support for enumeration types <whatsnew-enum>` (:pep:`435`). :mod:`multiprocessing` now has :ref:`an option to avoid using os.fork on Unix <whatsnew-multiprocessing-no-fork>` (:issue:`8713`). :mod:`pathlib`: :ref:`Object-oriented filesystem paths <whatsnew-pathlib>` (:pep:`428`). :mod:`selectors`: :ref:`High-level and efficient I/O multiplexing <whatsnew-selectors>`, built upon the :mod:`select` module primitives (part of :pep:`3156`). :mod:`statistics`: A basic :ref:`numerically stable statistics library <whatsnew-statistics>` (:pep:`450`). :mod:`tracemalloc`: :ref:`Trace Python memory allocations <whatsnew-tracemalloc>` (:pep:`454`). :pep:`429` -- Python 3.4 Release Schedule :pep:`453` -- Explicit bootstrapping of pip in Python installations :ref:`A ModuleSpec Type <whatsnew-pep-451>` for the Import System (:pep:`451`).  (Affects importer authors.) :ref:`Newly created file descriptors are non-inheritable <whatsnew-pep-446>` (:pep:`446`). :ref:`Single-dispatch generic functions <whatsnew-singledispatch>` in :mod:`functools` (:pep:`443`). :ref:`improvements in the handling of codecs <codec-handling-improvements>` that are not text encodings (multiple issues). :ref:`pip should always be available <whatsnew-pep-453>` (:pep:`453`). API and Feature Removals Author CPython implementation improvements: Changed in 3.4.3 Changes in 'python' Command Behavior Changes in the C API Changes in the Python API Compute the differences between two snapshots to detect memory leaks Deprecated Documentation Changes Improved Modules New :mod:`pickle` :ref:`protocol 4 <whatsnew-protocol-4>` (:pep:`3154`). New Features New Modules New library modules: New syntax features: No new syntax features were added in Python 3.4. OS/2 (:issue:`16135`). Operating Systems No Longer Supported Other Improvements Other Language Changes Other new features: PEP written and implementation led by Guido van Rossum. PEP written and implemented by Antoine Pitrou. PEP written and implemented by Larry Hastings. PEP written and implemented by Steven D'Aprano PEP written and implemented by Victor Stinner PEP written and implemented by Victor Stinner. PEP written and implemented by Łukasz Langa. PEP written by Antoine Pitrou and implemented by Alexandre Vassalotti. PEP written by Barry Warsaw, Eli Bendersky and Ethan Furman, implemented by Ethan Furman. PEP written by Donald Stufft and Nick Coghlan, implemented by Donald Stufft, Nick Coghlan, Martin von Löwis and Ned Deily. Please read on for a comprehensive list of user-facing changes, including many other smaller improvements, CPython optimizations, deprecations, and potential porting issues. Porting to Python 3.4 R. David Murray <rdmurray@bitdance.com> (Editor) Removed Security improvements: Significantly improved library modules: Some smaller changes made to the core Python language are: Statistics on allocated memory blocks per filename and per line number: total size, number and average size of allocated memory blocks Summary -- Release Highlights Support for the following operating systems has been removed from the source and build tools: The :mod:`inspect` and :mod:`pydoc` modules are now capable of correct introspection of a much wider variety of callable objects, which improves the output of the Python :func:`help` system. The :mod:`marshal` format has been made :ref:`more compact and efficient <whatsnew-marshal-3>` (:issue:`16475`). This article explains the new features in Python 3.4, compared to 3.3. Python 3.4 was released on March 16, 2014.  For full details, see the `changelog <https://docs.python.org/3.4/whatsnew/changelog.html>`_. This section lists previously described changes and other bugfixes that may require changes to your code. VMS (:issue:`16136`). What's New In Python 3.4 Windows 2000 (changeset e52df05b496a). Windows systems where ``COMSPEC`` points to ``command.com`` (:issue:`14470`). abc aifc argparse asyncio audioop base64 collections colorsys command line option for :ref:`isolated mode <whatsnew-isolated-mode>` (:issue:`16499`). contextlib dbm dis doctest email ensurepip enum filecmp functools gc glob hashlib hmac html http idlelib and IDLE importlib inspect ipaddress logging marshal mmap multiprocessing operator os pathlib pdb pickle plistlib poplib pprint pty pydoc re resource select selectors shelve shutil smtpd smtplib socket sqlite3 ssl stat statistics struct subprocess sunau sys tarfile textwrap threading traceback tracemalloc types unittest urllib venv wave weakref xml.etree zipfile Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-29 13:04+0000
Last-Translator: Bryan不可思议, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :func:`os.get_handle_inheritable`, :func:`os.set_handle_inheritable` :func:`os.get_inheritable`, :func:`os.set_inheritable` :meth:`socket.socket.get_inheritable`, :meth:`socket.socket.set_inheritable` :mod:`asyncio`: :ref:`针对异步 IO 的新版暂定 API <whatsnew-asyncio>` (:pep:`3156`)。 :mod:`email` 增加新的子模块 :mod:`~email.contentmanager` 和新的子类型 :mod:`~email.message.Message` (:class:`~email.contentmanager.EmailMessage`) 用以 :ref:`简化 MIME 处理 <whatsnew_email_contentmanager>` (:issue:`18891`)。 :mod:`ensurepip`: :ref:`引导设置 pip 安装器 <whatsnew-ensurepip>` (:pep:`453`)。 :mod:`enum`: :ref:`对枚举类型的支持 <whatsnew-enum>` (:pep:`435`)。 :mod:`multiprocessing` 现在包含 :ref:`一个避免在 Unix 上使用 os.fork 的选项 <whatsnew-multiprocessing-no-fork>` (:issue:`8713`)。 :mod:`pathlib`: :ref:`面向对象的文件系统路径 <whatsnew-pathlib>` (:pep:`428`)。 :mod:`selectors`: :ref:`高层级且高效率的 I/O 复用 <whatsnew-selectors>`，在 :mod:`select` 模块的基础之上建立（为 :pep:`3156` 的组成部分）。 :mod:`statistics`: 基础 :ref:`数字领域稳定统计库 <whatsnew-statistics>` (:pep:`450`)。 :mod:`tracemalloc`: :ref:`追踪 Python 内存分配 <whatsnew-tracemalloc>` (:pep:`454`)。 :pep:`429` -- Python 3.4 发布计划 :pep:`453` -- Python安装中pip的显式引导 针对导入系统的 :ref:`ModuleSpec 类型 <whatsnew-pep-451>` (:pep:`451`)。 （将影响导入器的作者。） :ref:`新创建的文件描述符是不可继承的 <whatsnew-pep-446>` (:pep:`446`)。 :mod:`functools` 中的 :ref:`单一调度泛型函数 <whatsnew-singledispatch>` (:pep:`443`)。 针对非文本编码格式的 :ref:`编解码器处理方式的改进 <codec-handling-improvements>` (多个相关问题)。 :ref:`pip 能够随时可用 <whatsnew-pep-453>` (:pep:`453`). API 与特性的移除 作者 CPython 实现的改进： 3.4.3 的变化  'python' 命令行为的变化 C API 的变化 Python API 的变化 对比两个内存快照的差异，以便排查内存泄漏 弃用 文档更改 改进的模块 新的 :mod:`pickle` :ref:`协议 4 <whatsnew-protocol-4>` (:pep:`3154`)。 新的特性 新增模块 新的库模块： 新的语法特性： Python 3.4 中没有增加新的语法特性。 OS/2 (:issue:`16135`). 不再支持的操作系统 其他改进 其他语言特性修改 其他的新特性 PEP 由 Guido van Rossum 领导编写和实现。 PEP 由 Antoine Pitrou 撰写并实现 PEP 由 Larry Hastings 撰写并实现 PEP 由 Steven D'Aprano 撰写并实现。 PEP 由 Victor Stinner 撰写并实现 PEP 由 Victor Stinner 撰写并实现。 PEP 由 Łukasz Langa 撰写并实现。 PEP 由 Antoine Pitrou 撰写，并由 Alexandre Vassalotti 实现 PEP 由 Barry Warsaw，Eli Bendersky 和 Ethan Furman 撰写 ，由 Ethan Furman 实现。 PEP 由Donald Stufft 和 Nick Coghlan 撰写，由 Donald Stufft，Nick Coghlan，Martin von Löwis 和 Ned Deily 实现。 请继续阅读有关针对用户的改变的完整清单，包括许多其他较小的改进、CPython 优化、弃用以及潜在的移植问题。 移植到 Python 3.4 R. David Murray <rdmurray@bitdance.com> (Editor) 移除 安全改进： 显著改进的库模块: 对Python 语言核心进行的小改动： 按文件、按行统计python的内存块分配情况: 总大小、块的数量以及块平均大小。 摘要 - 发布重点 从源代码和构建工具中删除了对以下操作系统的支持： :mod:`inspect` 和 :mod:`pydoc` 模块现在能够自省更多种类的可调用对象，这改进了 Python :func:`help` 系统的输出。 :mod:`marshal` 格式已被改进为 :ref:`更为紧凑与高效 <whatsnew-marshal-3>` (:issue:`16475`)。 这篇文章介绍了 Python 3.4 相比 3.3 增加的新特性。 Python 3.4 发布于 2014 年 3 月 16 日。 对于完整的细节，请参见 `更新日志 <https://docs.python.org/3.4/whatsnew/changelog.html>`_。 本节列出了先前描述的更改以及可能需要更改代码的其他错误修正. VMS (:issue:`16136`). Python 3.4 有什么新变化 Windows 2000（变更集e52df05b496a）。 Windows系统中 ``COMSPEC`` 指向 ``command.com`` 的版本（ :issue:`14470` ）。 abc aifc argparse asyncio audioop base64 collections colorsys 对应 :ref:`隔离模式 <whatsnew-isolated-mode>` 的命令行选项 (:issue:`16499`)。 contextlib dbm dis doctest email ensurepip enum filecmp functools gc glob hashlib hmac html http idlelib 与 IDLE importlib inspect ipaddress logging marshal mmap multiprocessing operator os pathlib pdb pickle plistlib poplib pprint pty pydoc re resource select selectors shelve shutil smtpd smtplib socket sqlite3 ssl stat statistics struct subprocess sunau sys tarfile textwrap threading 回溯 tracemalloc types unittest urllib venv wave weakref xml.etree zipfile 