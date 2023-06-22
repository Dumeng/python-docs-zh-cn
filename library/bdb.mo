��    n      �              �  %   �  <   #  9   `  !   �     �     �  +  �  S   	  O   `	  g   �	  L   
  �   e
  ?   �
  @   5  4   v  �   �  |   7  Q   �  L     �   S  �   �  ^   �  X   �  n   @  �   �  V   u  [   �  E   (  %   n     �  4   �  ;   �      k   %  [   �  C   �  0  1  7   b  Y  �  P  �  R  E  X  �  ;   �      -     N  �   n     �  0        E  =   `  a   �  @      6   A  <   x  @   �  >   �  ^   5  h   �  �   �  E   �  P   ,   x   }   T   �   G   K!  $   �!  $   �!  �   �!  �   �"  �   S#  �   �#  a   b$  A   �$     %  2   #%  s   V%  )   �%  r   �%     g&  o  �&  2   �(  4  *)     _*  D   t*  /   �*  x   �*  0   b+  �   �+  #   F,  K   j,  u   �,  $   ,-     Q-      f-  �   �-     .  j   .  �   �.  �   7/  3   �/  '   �/  ;   &0  2  b0  1   �1  8   �1  *    2  L   +2  +   x2  7   �2  @   �2  �  3  #   �4  -   �4  0    5     Q5     p5     }5  +  �5  \   �6  Z   7  l   u7  W   �7  �   :8  >   �8  3    9  9   49  �   n9  ~   �9  j   v:  ^   �:  �   @;  �   �;  q   i<  E   �<  c   !=  �   �=  K   J>  ]   �>  ;   �>  #   0?     T?  +   h?  ;   �?    �?  l   �@  Z   ZA  N   �A  <  B  :   AC  l  |C  b  �D  h  LF  l  �G  4   "I  !   WI  !   yI  �   �I     &J  -   9J     gJ  9   }J     �J  8   7K  A   pK  J   �K  B   �K  2   @L  `   sL  c   �L  �   8M  P   6N  R   �N  �   �N  y   aO  i   �O  $   EP  $   jP  �   �P  �   Q  |   �Q  �   gR  Z   �R  G   KS     �S  3   �S  s   �S  $   ZT  R   T  $   �T  Y  �T  '   QW     yW     �X  <   �X  '   �X  k   Y  !   |Y  �   �Y     3Z  7   LZ  ~   �Z  !   [     %[  !   5[  p   W[     �[  l   �[  �   B\  �   �\  '   V]  2   ~]  O   �]  :  ^  /   <_  4   l_  +   �_  N   �_  )   `  3   F`  ;   z`   **Source code:** :source:`Lib/bdb.py` :class:`Breakpoint` instances have the following attributes: :class:`Breakpoint` instances have the following methods: :mod:`bdb` --- Debugger framework Break condition. Breakpoint number. Breakpoints are indexed by number through a list called :attr:`bpbynumber` and by ``(file, line)`` pairs through :attr:`bplist`.  The former points to a single instance of class :class:`Breakpoint`.  The latter points to a list of such instances since there may be more than one breakpoint per line. Called from :meth:`dispatch_call` if a break might stop inside the called function. Called from :meth:`dispatch_exception` when :meth:`stop_here` returns ``True``. Called from :meth:`dispatch_line` when either :meth:`stop_here` or :meth:`break_here` returns ``True``. Called from :meth:`dispatch_return` when :meth:`stop_here` returns ``True``. Check whether a line or function breakpoint exists and is in effect.  Delete temporary breakpoints based on information from :func:`effective`. Condition for evaluating a :class:`Breakpoint` at (file, line). Count of the number of times a :class:`Breakpoint` has been hit. Debug a single function call, and return its result. Debug a statement executed via the :func:`exec` function.  *globals* defaults to :attr:`__main__.__dict__`, *locals* defaults to *globals*. Debug an expression executed via the :func:`eval` function.  *globals* and *locals* have the same meaning as in :meth:`run`. Delete all breakpoints in *filename*.  If none were set, return an error message. Delete all existing breakpoints.  If none were set, return an error message. Delete the breakpoint from the list associated to a file/line.  If it is the last breakpoint in that position, it also deletes the entry for the file/line. Delete the breakpoint which has the index *arg* in the :attr:`Breakpoint.bpbynumber`.  If *arg* is not numeric or out of range, return an error message. Delete the breakpoints in *filename* and *lineno*.  If none were set, return an error message. Derived classes and clients can call the following methods to affect the stepping state. Derived classes and clients can call the following methods to get a data structure representing a stack trace. Derived classes and clients can call the following methods to manipulate breakpoints.  These methods return a string containing an error message if something went wrong, or ``None`` if all is well. Derived classes should override these methods to gain control over debugger operation. Dictionary of :class:`Breakpoint` instances indexed by (:attr:`file`, :attr:`line`) tuples. Exception raised by the :class:`Bdb` class for quitting the debugger. File name of the :class:`Breakpoint`. File/line position. Finally, the module defines the following functions: For backwards compatibility.  Calls the :meth:`run` method. For real file names, the canonical form is an operating-system-dependent, :func:`case-normalized <os.path.normcase>` :func:`absolute path <os.path.abspath>`. A *filename* with angle brackets, such as ``"<stdin>"`` generated in interactive mode, is returned unchanged. For the Python events, specialized functions (see below) are called.  For the C events, no action is taken. Function name that defines whether a :class:`Breakpoint` is hit upon entering the function. Handle how a breakpoint must be removed when it is a temporary one. If it was set via line number, it checks if :attr:`b.line <bdb.Breakpoint.line>` is the same as the one in *frame*. If the breakpoint was set via :attr:`function name <bdb.Breakpoint.funcname>`, we have to check we are in the right *frame* (the right function) and if we are on its first executable line. If no such entry exists, then (None, None) is returned. If the debugger should stop at this exception, invokes the :meth:`user_exception` method (which should be overridden in subclasses). Raise a :exc:`BdbQuit` exception if the :attr:`Bdb.quitting` flag is set (which can be set from :meth:`user_exception`).  Return a reference to the :meth:`trace_dispatch` method for further tracing in that scope. If the debugger should stop on the current line, invoke the :meth:`user_line` method (which should be overridden in subclasses). Raise a :exc:`BdbQuit` exception if the :attr:`Bdb.quitting` flag is set (which can be set from :meth:`user_line`).  Return a reference to the :meth:`trace_dispatch` method for further tracing in that scope. If the debugger should stop on this function call, invoke the :meth:`user_call` method (which should be overridden in subclasses). Raise a :exc:`BdbQuit` exception if the :attr:`Bdb.quitting` flag is set (which can be set from :meth:`user_call`).  Return a reference to the :meth:`trace_dispatch` method for further tracing in that scope. If the debugger should stop on this function return, invoke the :meth:`user_return` method (which should be overridden in subclasses). Raise a :exc:`BdbQuit` exception if the :attr:`Bdb.quitting` flag is set (which can be set from :meth:`user_return`).  Return a reference to the :meth:`trace_dispatch` method for further tracing in that scope. Line number of the :class:`Breakpoint` within :attr:`file`. Mark the breakpoint as disabled. Mark the breakpoint as enabled. Normally derived classes don't override the following methods, but they may if they want to redefine the definition of stopping and breakpoints. Number of times hit. Number of times to ignore a :class:`Breakpoint`. Number of times to ignore. Numeric index for a single instance of a :class:`Breakpoint`. Print the output of :meth:`bpformat` to the file *out*, or if it is ``None``, to standard output. Return True if *frame* is below the starting frame in the stack. Return True if *module_name* matches any skip pattern. Return True if any breakpoint exists for *frame*'s filename. Return True if there is a breakpoint for *lineno* in *filename*. Return True if there is an effective breakpoint for this line. Return True if we should break here, depending on the way the :class:`Breakpoint` *b* was set. Return ``(active breakpoint, delete temporary flag)`` or ``(None, None)`` as the breakpoint to act upon. Return a breakpoint specified by the given number.  If *arg* is a string, it will be converted to a number.  If *arg* is a non-numeric string, if the given breakpoint never existed or has been deleted, a :exc:`ValueError` is raised. Return a list of (frame, lineno) tuples in a stack trace, and a size. Return a string with all the information about the breakpoint, nicely formatted: Return a string with information about a stack entry, which is a ``(frame, lineno)`` tuple.  The return string contains: Return all breakpoints for *lineno* in *filename*, or an empty list if none are set. Return all breakpoints in *filename*, or an empty list if none are set. Return all breakpoints that are set. Return canonical form of *filename*. See the documentation for :func:`sys.settrace` for more information on the trace function.  For more information on code and frame objects, refer to :ref:`types`. Set a new breakpoint.  If the *lineno* line doesn't exist for the *filename* passed as argument, return an error message.  The *filename* should be in canonical form, as described in the :meth:`canonic` method. Set the :attr:`botframe`, :attr:`stopframe`, :attr:`returnframe` and :attr:`quitting` attributes with values ready to start debugging. Set the :attr:`quitting` attribute to ``True``.  This raises :exc:`BdbQuit` in the next call to one of the :meth:`dispatch_\*` methods. Start debugging from *frame*.  If *frame* is not specified, debugging starts from caller's frame. Start debugging with a :class:`Bdb` instance from caller's frame. Stop after one line of code. Stop on the next line in or below the given frame. Stop only at breakpoints or when finished.  If there are no breakpoints, set the system trace function to ``None``. Stop when returning from the given frame. Stop when the line with the *lineno* greater than the current one is reached or when returning from current frame. Temporary status (del or keep). The *active breakpoint* is the first entry in :attr:`bplist <bdb.Breakpoint.bplist>` for the (:attr:`file <bdb.Breakpoint.file>`, :attr:`line <bdb.Breakpoint.line>`) (which must exist) that is :attr:`enabled <bdb.Breakpoint.enabled>`, for which :func:`checkfuncname` is True, and that has neither a False :attr:`condition <bdb.Breakpoint.cond>` nor positive :attr:`ignore <bdb.Breakpoint.ignore>` count.  The *flag*, meaning that a temporary breakpoint should be deleted, is False only when the :attr:`cond <bdb.Breakpoint.cond>` cannot be evaluated (in which case, :attr:`ignore <bdb.Breakpoint.ignore>` count is ignored). The *arg* parameter depends on the previous event. The *skip* argument, if given, must be an iterable of glob-style module name patterns.  The debugger will not step into frames that originate in a module that matches one of these patterns. Whether a frame is considered to originate in a certain module is determined by the ``__name__`` in the frame globals. The *skip* argument. The :class:`Bdb` class acts as a generic Python debugger base class. The :mod:`bdb` module also defines two classes: The :mod:`bdb` module handles basic debugger functions, like setting breakpoints or managing execution via the debugger. The canonical filename which contains the frame. The default implementation decides how to dispatch a frame, depending on the type of event (passed as a string) that is about to be executed. *event* can be one of the following: The following exception is defined: The following methods of :class:`Bdb` normally don't need to be overridden. The following two methods can be called by clients to use a debugger to debug a :term:`statement`, given as a string. The function name or ``"<lambda>"``. The input arguments. The line of code (if it exists). The most recently called frame is last in the list. The size is the number of frames below the frame where the debugger was invoked. The return value. This class implements temporary breakpoints, ignore counts, disabling and (re-)enabling, and conditionals. This class takes care of the details of the trace facility; a derived class should implement user interaction.  The standard debugger class (:class:`pdb.Pdb`) is an example. This function is installed as the trace function of debugged frames.  Its return value is the new trace function (in most cases, that is, itself). This method must be implemented by derived classes. True if :class:`Breakpoint` is enabled. True if a :class:`Breakpoint` at (file, line) is temporary. When creating a breakpoint, its associated :attr:`file name <file>` should be in canonical form.  If a :attr:`funcname` is defined, a breakpoint :attr:`hit <hits>` will be counted when the first line of that function is executed.  A :attr:`conditional <cond>` breakpoint always counts a :attr:`hit <hits>`. ``"c_call"``: A C function is about to be called. ``"c_exception"``: A C function has raised an exception. ``"c_return"``: A C function has returned. ``"call"``: A function is about to be called, or another code block entered. ``"exception"``: An exception has occurred. ``"line"``: A new line of code is going to be executed. ``"return"``: A function or other code block is about to return. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:55+0000
Last-Translator: Bryan不可思议, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **源代码:** :source:`Lib/bdb.py` :class:`Breakpoint` 实例具有以下属性: :class:`Breakpoint` 的实例具有下列方法: :mod:`bdb` --- 调试器框架 中断条件 中断点编号 。 中断点通过一个名为 :attr:`bpbynumber` 的列表基于数字并通过 :attr:`bplist` 基于 ``(file, line)`` 对进行索引。 前者指向一个 :class:`Breakpoint` 类的单独实例。 后者指向一个由这种实例组成的列表，因为在每一行中可能存在多个中断点。 如果中断可能在被调用的函数内停止则会从 :meth:`dispatch_call` 来调用。 当 :meth:`stop_here` 返回 ``True`` 时则会从 :meth:`dispatch_exception` 来调用。 当 :meth:`stop_here` 或 :meth:`break_here` 返回 ``True`` 时则会从 :meth:`dispatch_line` 来调用。 当 :meth:`stop_here` 返回 ``True`` 时则会从 :meth:`dispatch_return` 来调用。 检测某行或某函数是否存在中断点且处于生效状态。 基于来自 :func:`effective` 的信息删除临时中断点。 在 (file, line) 上对 :class:`Breakpoint` 求值的条件。 命中一个 :class:`Breakpoint` 的次数统计。 调试一个单独的函数调用，并返回其结果。 调试一条通过 :func:`exec` 函数执行的语句。 *globals* 默认为 :attr:`__main__.__dict__`，*locals* 默认为 *globals*。 调试一条通过 :func:`eval` 函数执行的表达式。 *globals* 和 *locals* 的含义与在 :meth:`run` 中的相同。 删除位于 *filename* 的所有中断点。 如果未设置过中断点，则返回一条错误消息。 删除所有现存的中断点。 如果未设置过中断点，则返回一条错误消息。 从关联到文件/行的列表中删除此中断点。 如果它是该位置上的最后一个中断点，还将删除相应的文件/行条目。 删除 :attr:`Breakpoint.bpbynumber` 中索引号为 *arg* 的中断点。 如果 *arg* 不是数字或超出范围，则返回一条错误消息。 删除位于 *filename* 和 *lineno* 的中断点。 如果未设置过中断点，则返回一条错误消息。 派生类与客户端可以调用以下方法来影响步进状态。 派生类与客户端可以调用以下方法来获取一个代表栈回溯信息的数组结构。 派生的类和客户端可以调用下列方法来操纵中断点。 如果出现错误则这些方法将返回一个包含错误消息的字符串，或者如果一切正常则返回 ``None``。 派生的类应当重载这些方法以获取调试器操作的控制权。 以 (:attr:`file`, :attr:`line`) 元组作为索引的 :class:`Breakpoint` 实例的字典。 由 :class:`Bdb` 类引发用于退出调试器的异常。 :class:`Breakpoint` 的文件名。 文件/行位置。 最后，这个模块定义了以下函数: 为了保证向下兼容性。 调用 :meth:`run` 方法。 对于真实的文件名称，此规范形式是一个依赖于具体操作系统的，:func:`大小写规范的 <os.path.normcase>` :func:`绝对路径 <os.path.abspath>`。 在交互模式下生成的带有尖括号的 *filename*，如 ``"<stdin>"``，会被不加修改地返回。 对于 Python 事件，调用了专门的函数（见下文）。 对于 C 事件，不执行任何操作。 用于定义在进入函数时一个 :class:`Breakpoint` 是否命中的函数的名称。 处理当一个中断点属于临时性中断点时是否必须要移除它。 如果是通过行号设置的，它将检查 :attr:`b.line <bdb.Breakpoint.line>` 是否与 *frame* 中的行一致。 如果中断点是通过 :attr:`函数名称 <bdb.Breakpoint.funcname>` 设置的，则必须检查是否位于正确的 *帧* (正确的函数) 以及是否位于其中第一个可执行的行。 如果不存在这样的条目，则返回 (None, None)。 如果调试器应当在此异常上停止，则发起调用 :meth:`user_exception` 方法（该方法应当在子类中被重载）。 如果设置了 :attr:`Bdb.quitting` 旗标（可以通过 :meth:`user_exception` 设置）则将引发 :exc:`BdbQuit` 异常。 返回一个对 :meth:`trace_dispatch` 方法的引用以便在该作用域内进一步地追踪。 如果调试器应当在当前行上停止，则发起调用 :meth:`user_line` 方法（该方法应当在子类中被重载）。 如果设置了 :attr:`Bdb.quitting` 旗标（可以通过 :meth:`user_line` 设置）则将引发 :exc:`BdbQuit` 异常。 返回一个对 :meth:`trace_dispatch` 方法的引用以便在该作用域内进一步地追踪。 如果调试器应当在此函数调用上停止，则发起调用 :meth:`user_call` 方法（该方法应当在子类中被重载）。 如果设置了 :attr:`Bdb.quitting` 旗标（可以通过 :meth:`user_call` 设置）则将引发 :exc:`BdbQuit` 异常。 返回一个对 :meth:`trace_dispatch` 方法的引用以便在该作用域内进一步地追踪。 如果调试器应当在此函数返回时停止，则发起调用 :meth:`user_return` 方法（该方法应当在子类中被重载）。 如果设置了 :attr:`Bdb.quitting` 旗标（可以通过 :meth:`user_return` 设置）则将引发 :exc:`BdbQuit` 异常。 返回一个对 :meth:`trace_dispatch` 方法的引用以便在该作用域内进一步地追踪。 :class:`Breakpoint` 在 :attr:`file` 中的行号。 将此中断点标记为禁用。 将此中断点标记为启用。 通常情况下派生的类不会重载下列方法，但是如果想要重新定义停止和中断点的定义则可能会重载它们。 命中的次数。 忽略一个 :class:`Breakpoint` 的次数。 要忽略的次数。 一个 :class:`Breakpoint` 单独实例的数字索引。 将 :meth:`bpformat` 的输出打印到文件 *out*，或者如果为 ``None`` 则打印到标准输出。, to standard output. 如果 *frame* 在栈的起始帧之下则返回 True。 如果 *module_name* 匹配到任何跳过模式则返回 True。 如果存在任何针对 *frame* 的文件名的中断点则返回 True。 如果 *filename* 中的 *lineno* 上有中断点则返回 True。 如果该行有生效的中断点则返回 True。 如果要在此中断则返回 True，具体取决于 :class:`Breakpoint` *b* 的设置方式。 返回 ``(active breakpoint, delete temporary flag)`` 或 ``(None, None)`` 作为目标中断点。 返回由指定数字所指明的中断点。 如果 *arg* 是一个字符串，它将被转换为一个数字。 如果 *arg* 不是一个表示数字的字符串，如果给定的中断点不存在或者已被删除，则会引发 :exc:`ValueError`。 返回一个栈回溯中 (frame, lineno) 元组的列表，及一个大小值。 返回一个带有关于此中断点的所有信息的，格式良好的字符串: 返回一个字符串，其内容为有关以 ``(frame, lineno)`` 元组表示的特定栈条目的信息。 返回的字符串包含: 返回 *filename* 中在 *lineno* 上的所有中断点，或者如果未设置任何中断点则返回一个空列表。 返回 *filename* 中的所有中断点，或者如果未设置任何中断点则返回一个空列表。 返回已设置的所有中断点。 返回 *filename* 的规范形式。 请参阅 :func:`sys.settrace` 的文档了解追踪函数的更多信息。 对于代码和帧对象的详情，请参考 :ref:`types`。 设置一个新的中断点。 如果对于作为参数传入的 *filename* 不存在 *lineno*，则返回一条错误消息。 *filename* 应为规范的形式，如在 :meth:`canonic` 方法中描述的。 将 :attr:`botframe`, :attr:`stopframe`, :attr:`returnframe` 和 :attr:`quitting` 属性设置为准备开始调试的值。 将 :attr:`quitting` 属性设为 ``True``。 这将在对某个 :meth:`dispatch_\*` 方法的下一次调用中引发 :exc:`BdbQuit`。 从 *frame* 开始调试。 如果未指定 *frame*，则从调用者的帧开始调试。 使用一个来自调用方的帧的 :class:`Bdb` 实例开始调试。 在一行代码之后停止。 在给定的帧以内或以下的下一行停止。 仅在中断点上或是当结束时停止。 如果不存在中断点，则将系统追踪函数设为 ``None``。 当从给定的帧返回时停止。 在 *lineno* 行大于当前所到达的行或者在从当前帧返回时停止。 临时状态（删除或保留）。 *激活的中断点* 是 :attr:`bplist <bdb.Breakpoint.bplist>` 中对应 (:attr:`file <bdb.Breakpoint.file>`, :attr:`line <bdb.Breakpoint.line>`) 的第一个 :attr:`已启用的 <bdb.Breakpoint.enabled>` 条目 (它必须存在)，对应的 :func:`checkfuncname` 为 True，并且没有 False :attr:`cond <bdb.Breakpoint.cond>` 或为正值的 :attr:`ignore <bdb.Breakpoint.ignore>` 计数。 *flag* 表示临时中断点应当被删除，它仅在 :attr:`cond <bdb.Breakpoint.cond>` 无法被求值时 (在此情况下，:attr:`ignore <bdb.Breakpoint.ignore>` 计数会被忽略) 才会为 False。 *arg* 形参取决于之前的事件。 如果给出了 *skip* 参数，它必须是一个包含 glob 风格的模块名称模式的可迭代对象。 调试器将不会步进到来自与这些模式相匹配的模块的帧。 一个帧是否会被视为来自特定的模块是由帧的 ``__name__`` 全局变量来确定的。 *skip* 参数。 :class:`Bdb` 类是作为通用的 Python 调试器基类。 :mod:`bdb` 模块还定义了两个类: :mod:`bdb` 模块处理基本的调试器函数，例如设置中断点或通过调试器来管理执行。 包含该帧的规范文件名。 默认实现会决定如何分派帧，这取决于即将被执行的事件的类型（作为字符串传入）。 *event* 可以是下列值之一: 定义了以下异常： :class:`Bdb` 的以下方法通常不需要被重载。 以下两个方法可由客户端调用以使用一个调试器来调试一条以字符串形式给出的 :term:`statement`。 函数名称或 ``"<lambda>"``。 输入参数。 代码的行（如果存在）。 最近调用的帧将排在列表的末尾。 大小值即调试器被发起调用所在帧之下的帧数量。 返回值。 这个类实现了临时性中断点、忽略计数、禁用与（重新）启用，以及条件设置等。 这个类负责追踪工具的细节；所派生的类应当实现用户交互。 标准调试器类 (:class:`pdb.Pdb`) 就是一个例子。 此函数被安装为被调试帧的追踪函数。 它的返回值是新的追踪函数（在大多数情况下就是它自身）。 此方法必须由派生类来实现。 如果 :class:`Breakpoint` 被启用则为 True。 如果 (file, line) 上的 :class:`Breakpoint` 是临时性的则返回 True。 当创建一个中断点时，它所关联的 :attr:`文件名 <file>` 应当为规范形式。 如果定义了 :attr:`funcname`，则当该函数的第一行被执行时将增加一次中断点 :attr:`命中 <hits>` 次数。 :attr:`有条件的 <cond>` 中断点将总是会计入 :attr:`命中 <hits>` 次数。 ``"c_call"``: 一个 C 函数即将被调用。 ``"c_exception"``: 一个 C 函数引发了异常。 ``"c_return"``: 一个 C 函数已返回。 ``"call"``: 一个函数即将被调用，或者进入了另一个代码块。 ``"exception"``: 一个异常已发生。 ``"line"``: 一个新的代码行即将被执行。 ``"return"``: 一个函数或其他代码块即将返回。 