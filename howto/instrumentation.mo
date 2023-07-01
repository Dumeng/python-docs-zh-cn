��    <      �              �  <   �  �        �  X     �   h  �   7     /     =     Y  �   b  `   �  �   W  s   �  �   p	  �   �	  d   �
  >   ,  �   k  �     /   �     �  �   �  *   �  �   �     H     W     l  4   �     �  �   �  ;   �  <   �  �   �  �   �  �   �  �   c  �        �  �   �  �   �     C  �   �  �   �  �   (  P     U   _     �  M   �     #  )   *  *   T       �   �     K     ^     c  *   x     �     �  �  �  @   y  �   �     �  L   �  �   �  �   �     o     }     �  �   �  ]   $   �   �   i   7!     �!  �   !"  [   �"  D   =#  �   �#  �    $  )   �$     �$  �   �$  &   �%  �   �%     :&     G&     Z&  4   p&     �&  �   �&  *   O'  *   z'  ~   �'  �   $(  �   �(  �   �)  �   ;*     �*  �   �*  �   }+  n   ,  �   p,  p   -  �   �-  P   l.  O   �.     /  C   (/     l/     s/  $   �/     �/  �   �/     [0  	   t0     ~0  !   �0     �0     �0   (assuming a :ref:`debug build <debug-build>` of CPython 3.6) As of Python 3.6, CPython can be built with embedded "markers", also known as "probes", that can be observed by a DTrace or SystemTap script, making it easier to monitor what the CPython processes on a system are doing. Available static markers CPython must then be :option:`configured with the --with-dtrace option <--with-dtrace>`: DTrace and SystemTap are monitoring tools, each providing a way to inspect what the processes on a computer system are doing.  They both use domain-specific languages allowing a user to write scripts which: DTrace markers are implementation details of the CPython interpreter. No guarantees are made about probe compatibility between versions of CPython. DTrace scripts can stop working or work incorrectly without warning when changing CPython versions. David Malcolm Enabling the static markers Examples Fires after :mod:`importlib`'s find_and_load function is called. ``arg0`` is the module name, ``arg1`` indicates if module was successfully loaded. Fires before :mod:`importlib` attempts to find and load the module. ``arg0`` is the module name. Fires when :func:`sys.audit` or :c:func:`PySys_Audit` is called. ``arg0`` is the event name as C string, ``arg1`` is a :c:type:`PyObject` pointer to a tuple object. Fires when the Python interpreter finishes a garbage collection cycle. ``arg0`` is the number of collected objects. Fires when the Python interpreter starts a garbage collection cycle. ``arg0`` is the generation to scan, like :func:`gc.collect()`. For a :option:`--enable-shared` build of CPython, the markers are contained within the libpython shared library, and the probe's dotted path needs to reflect this. For example, this line from the above example: For example, this SystemTap script can be used to show the call/return hierarchy of a Python script: Here is a tapset file, based on a non-shared build of CPython: If this file is installed in SystemTap's tapset directory (e.g. ``/usr/share/systemtap/tapset``), then these additional probepoints become available: If you've built Python as a shared library (with the :option:`--enable-shared` configure option), you need to look instead within the shared library.  For example:: Instrumenting CPython with DTrace and SystemTap It can be invoked like this:: On Linux, you can verify if the SystemTap static markers are present in the built binary by seeing if it contains a ".note.stapsdt" section. On a Linux machine, this can be done via:: On macOS, you can list available DTrace probes by running a Python process in the background and listing all probes made available by the Python provider:: PID of process Static DTrace probes Static SystemTap markers Sufficiently modern readelf can print the metadata:: SystemTap Tapsets The above metadata contains information for SystemTap describing how it can patch strategically placed machine code instructions to enable the tracing hooks used by a SystemTap script. The arguments are the same as for :c:func:`function__entry` The arguments are the same as for :c:func:`function__entry`. The filename, function name, and line number are provided back to the tracing script as positional arguments, which must be accessed using ``$arg1``, ``$arg2``, ``$arg3``: The following example DTrace script can be used to show the call/return hierarchy of a Python script, only tracing within the invocation of a function called "start". In other words, import-time function invocations are not going to be listed: The following script uses the tapset above to provide a top-like view of all running CPython code, showing the top 20 most frequently entered bytecode frames, each second, across the whole system: The higher-level way to use the SystemTap integration is to use a "tapset": SystemTap's equivalent of a library, which hides some of the lower-level details of the static markers. The low-level way to use the SystemTap integration is to use the static markers directly.  This requires you to explicitly state the binary file containing them. The output looks like this: This SystemTap script uses the tapset above to more cleanly implement the example given above of tracing the Python function-call hierarchy, without needing to directly name the static markers: This marker indicates a Python line is about to be executed.  It is the equivalent of line-by-line tracing with a Python profiler.  It is not triggered within C functions. This marker indicates that execution of a Python function has begun. It is only triggered for pure-Python (bytecode) functions. This marker is the converse of :c:func:`function__entry`, and indicates that execution of a Python function has ended (either via ``return``, or via an exception).  It is only triggered for pure-Python (bytecode) functions. This probe point indicates that execution of a Python function has begun. It is only triggered for pure-Python (bytecode) functions. This probe point is the converse of ``python.function.return``, and indicates that execution of a Python function has ended (either via ``return``, or via an exception).  It is only triggered for pure-Python (bytecode) functions. ``$arg1`` : ``(const char *)`` filename, accessible using ``user_string($arg1)`` ``$arg2`` : ``(const char *)`` function name, accessible using ``user_string($arg2)`` ``$arg3`` : ``int`` line number and the remainder indicates the call/return hierarchy as the script executes. author filter which processes are to be observed gather data from the processes of interest generate reports on the data macOS comes with built-in support for DTrace.  On Linux, in order to build CPython with the embedded markers for SystemTap, the SystemTap development tools must be installed. name of executable or:: should instead read: time in microseconds since start of script where the columns are: Łukasz Langa Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:53+0000
Last-Translator: Bryan不可思议, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 (假定为 CPython 3.6 的 :ref:`调试编译版 <debug-build>`) 从Python 3.6开始，CPython可以使用嵌入式“标记”构建，也称为“探测器”，可以通过DTrace或SystemTap脚本观察，从而更容易监视系统上的CPython进程正在做什么。 可用的静态标记 之后 CPython 必须 :option:`配置 --with-dtrace 选项 <--with-dtrace>`: DTrace和SystemTap是监控工具，它们都提供了一种检查计算机系统上的进程的方法。 它们都使用特定领域的语言，允许用户编写脚本，其中： DTrace标记是CPython解释器的实现细节。 不保证CPython版本之间的探针兼容性。 更改CPython版本时，DTrace脚本可能会停止工作或无法正常工作而不会发出警告。 David Malcolm 启用静态标记 例子 在 :mod:`importlib` 的 find_and_load 函数被调用后被触发 。``arg0`` 是模块名称， ``arg1`` 表示模块是否成功加载。 在 :mod:`importlib` 试图查找并加载模块之前被触发。``arg0`` 是模块名称。 当 :func:`sys.audit` 或 :c:func:`PySys_Audit` 被调用时启动。 ``arg0`` 是事件名称的 C 字符串，``arg1`` 是一个指向元组对象的 :c:type:`PyObject` 指针。 当Python解释器完成一个垃圾回收循环时被触发。``arg0`` 是收集到的对象的数量。 当Python解释器启动一个垃圾回收循环时被触发。 ``arg0`` 是要扫描的生成器，如 :func:`gc.collect()`。 对于 CPython 的 :option:`--enable-shared` 编译版，这些标记包含在 libpython 共享库内部，并且 probe 的加点路径需要反映这个。 例如，上述示例的这一行: 例如，这个SystemTap脚本可以用来显示Python脚本的调用/返回层次结构： 这里是一个基于 CPython 的非共享构建的 tapset 文件。 如果这个文件安装在 SystemTap 的 tapset 目录下（例如 ``/usr/share/systemtap/tapset`` ），那么这些额外的探测点就会变得可用。 如果你将 Python 编译为共享库（使用 :option:`--enable-shared` 配置选项），那么你需要改为在共享库内部查看。 例如:: 使用 DTrace 和 SystemTap 检测CPython 它可以这样调用:: 在Linux上，您可以通过查看是否包含“.note.stapsdt”部分来验证构建的二进制文件中是否存在SystemTap静态标记。 在Linux机器上，这可以通过： 在macOS上，您可以通过在后台运行Python进程列出可用的DTrace探测器，并列出Python程序提供的所有探测器： 进程的PID 静态DTrace探针 静态SystemTap标记 足够现代的readelf命令可以打印元数据： SystemTap Tapsets 上述元数据包含 SystemTap 信息，它描述了如何修补策略性放置的机器码指令以启用 SystemTap 脚本所使用的跟踪钩子。 参数和 :c:func:`function__entry` 相同 参数和 :c:func:`function__entry` 相同 文件名、函数名和行号作为位置参数提供给跟踪脚本，必须使用 ``$arg1``, ``$arg2``, ``$arg3`` 访问： 下面的 DTrace 脚本示例可以用来显示一个 Python 脚本的调用/返回层次结构，只在调用名为 "start" 的函数内进行跟踪。换句话说，导入时的函数调用不会被列出。 下面的脚本使用上面的 tapset 来提供所有运行中的 CPython 代码的类似 top 的视图，显示了整个系统中每一秒内前 20 个最频繁进入的字节码帧: 使用SystemTap集成的更高层次的方法是使用 "tapset" 。SystemTap 的等效库，它隐藏了静态标记的一些底层细节。 使用 SystemTap 集成的底层方法是直接使用静态标记。 这需要你显式地说明包含它们的二进制文件。 输出结果会像这样: 这个SystemTap脚本使用上面的tapset来更清晰地实现上面给出的跟踪Python函数调用层次结构的例子，而不需要直接命名静态标记。 这个标记表示一个 Python 行即将被执行。它相当于用 Python 分析器逐行追踪。它不会在C函数中触发。 这个标记表示一个Python函数的执行已经开始。它只对纯 Python （字节码）函数触发。 这个标记与 :c:func:`function__entry` 相反，表示Python函数的执行已经结束 (通过 ``return`` 或者异常)。 它只对纯Python (字节码) 函数触发。 这个探针点表示一个Python函数的执行已经开始。它只对纯Python （字节码）函数触发。 这个探针点是 ``python.function.return`` 的反义操作，表示一个 Python 函数的执行已经结束（或是通过 ``return``，或是通过异常）。 它只会针对纯 Python（字节码）函数触发。 ``$arg1`` : ``(const char *)`` 文件名，使用  ``user_string($arg1)`` 访问 ``$arg2`` : ``(const char *)`` 函数名，使用 ``user_string($arg2)`` 访问 ``$arg3`` : ``int`` 行号 其余部分则表示脚本执行时的调用/返回层次结构。 作者 进程监视的过滤器 从感兴趣的进程中收集数据 生成有关数据的报告 macOS内置了对DTrace的支持。 在Linux上，为了使用SystemTap的嵌入式标记构建CPython，必须安装SystemTap开发工具。 可执行文件的名字 或者： 应改为： 脚本开始后经过的微秒数 其中的列是： Łukasz Langa 