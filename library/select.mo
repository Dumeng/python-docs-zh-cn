��    �      �                �     �     �   �  �   7  �   �     v  (  �     �  �   �  %   I    o     �  %   �  r   �    2     R     d     u  U   �     �     �               .     @     R     g     {     �     �     �     �     �     �          %     8     M     b     y     �     �  @   �       %        A  C   Y     �     �     �  &   �          )     A     X     p     �     �     �     �     �     �          +     B     ]     x     �     �     �     �     �               "     4     E     V  ,   i  (   �  =   �  %   �     #     0     M  �  g  q     S   w     �     �  6   �  7   )   0   a      �   4   �   4   �      !  .   !  �  B!     �"     �"  )   #     <#     Y#  �   x#     W$     f$     �$     �$  F   �$  !   �$     %     "%  $   +%     P%     _%     n%     �%  �   �%  $   ~&     �&  %   �&     �&  �  �&  �  �)     �,     �,  (   
-  /   3-  e  c-  �   �.  �   V/  �   60  :   �0     :1  $   Z1  +   1  4   �1  8   �1  J   2  ?   d2     �2  Y   �2  @   3  S   Q3  �   �3  M   h4  M   �4  d   5  G   i5  H   �5  �   �5  
  �6    �8  �   �9  <   n:    �:  !   �;  C   �;  /   '<  �   W<     &=     <=    Y=  �   v>  �   �>  �  �?  5   �A     �A     �A  �   �A  +   �B  �   %C  =   �C      �C     D      D  L   >D  '   �D  (   �D  )   �D  �   E     �E     �E     �E  <   �E      :F  !   [F  :   }F     �F     �F     �F  
   �F     �F  !   
G  *   ,G     WG  .   nG     �G     �G     �G     �G     �G  &   H     FH  N   ]H     �H  �  �H  �   �J  �   sK  �   �K  �   {L  �   M     �M  �   �M  �   �N  �   �O  +   FP     rP     sQ  +   �Q  p   �Q    %R     1S     CS     TS  Q   lS     �S     �S     �S     �S     	T     T     -T     BT     VT     kT     �T     �T     �T     �T     �T     �T      U     U     (U     =U     TU     lU     �U  C   �U     �U  %   �U     V  E   7V     }V     �V     �V  (   �V     �V     W     #W     :W     RW     hW     ~W     �W     �W     �W     �W     �W     X     $X     ?X     ZX     rX     �X     �X     �X     �X     �X     �X     Y     Y     'Y     8Y  #   KY  %   oY  =   �Y  .   �Y  
   Z     Z     )Z  �  ?Z  P   �[  E   ;\     �\     �\  4   �\  5   �\  '   �\     "]  5   )]  4   _]     �]  3   �]  y  �]     O_     j_  3   �_     �_     �_  �   �_     �`     �`     �`     �`  =   �`  !   9a     [a     ba  $   ia     �a     �a     �a     �a  �   �a  *   �b     �b     �b     �b  �  �b  �  �e     rh     �h     �h  1   �h  Z  i  ]   \j  �   �j  �   vk  =   Kl     �l  !   �l     �l  O   �l  6   0m  E   gm  -   �m     �m  M   �m  9   <n  a   vn  �   �n  K   �o  K   �o  _   Ip  0   �p  0   �p  �   q  �  �q  �   �s  �   mt  7   7u  �   ou     cv  C   �v  0   �v  �   �v     �w     �w    �w  v   �x  �   hy  :  z  (   <|     e|     x|  �   �|  ;   w}  �   �}  7   U~     �~     �~     �~  E   �~  4     5   F  3   |  �   �     P�  $   ]�     ��  ^   ��     �  !   �  :   .�     i�     v�     ��     ��     ��     ��  ,   ށ     �  '   &�     N�     n�     ~�     ��     ��     Â     ܂  V   �     C�   (Not supported by all operating systems.)  Returns a polling object, which supports registering and unregistering file descriptors, and then polling them for I/O events; see section :ref:`poll-objects` below for the methods supported by polling objects. (Only supported on BSD.)  Returns a kernel event object; see section :ref:`kevent-objects` below for the methods supported by kevent objects. (Only supported on BSD.)  Returns a kernel queue object; see section :ref:`kqueue-objects` below for the methods supported by kqueue objects. (Only supported on Linux 2.5.44 and newer.) Return an edge polling object, which can be used as Edge or Level Triggered interface for I/O events. (Only supported on Solaris and derivatives.)  Returns a ``/dev/poll`` polling object; see section :ref:`devpoll-objects` below for the methods supported by devpoll objects. *eventmask* *eventmask* is an optional bitmask describing the type of events you want to check for, and can be a combination of the constants :const:`POLLIN`, :const:`POLLPRI`, and :const:`POLLOUT`, described in the table below.  If not specified, the default value used will check for all 3 types of events. *eventmask* is an optional bitmask describing the type of events you want to check for. The constants are the same that with :c:func:`poll` object. The default value is a combination of the constants :const:`POLLIN`, :const:`POLLPRI`, and :const:`POLLOUT`. *flags* is deprecated and completely ignored.  However, when supplied, its value must be ``0`` or ``select.EPOLL_CLOEXEC``, otherwise ``OSError`` is raised. *rlist*: wait until ready for reading *sizehint* informs epoll about the expected number of events to be registered.  It must be positive, or ``-1`` to use the default. It is only used on older systems where :c:func:`epoll_create1` is not available; otherwise it has no effect (though its value is still checked). *unlink()* was called *wlist*: wait until ready for writing *xlist*: wait for an "exceptional condition" (see the manual page for what your system considers such a condition) :c:func:`devpoll` objects are linked to the number of file descriptors allowed at the time of instantiation. If your program reduces this value, :c:func:`devpoll` will fail. If your program increases this value, :c:func:`devpoll` may return an incomplete list of active file descriptors. :const:`EPOLLERR` :const:`EPOLLET` :const:`EPOLLEXCLUSIVE` :const:`EPOLLEXCLUSIVE` was added.  It's only supported by Linux Kernel 4.5 or later. :const:`EPOLLHUP` :const:`EPOLLIN` :const:`EPOLLMSG` :const:`EPOLLONESHOT` :const:`EPOLLOUT` :const:`EPOLLPRI` :const:`EPOLLRDBAND` :const:`EPOLLRDHUP` :const:`EPOLLRDNORM` :const:`EPOLLWRBAND` :const:`EPOLLWRNORM` :const:`KQ_EV_ADD` :const:`KQ_EV_CLEAR` :const:`KQ_EV_DELETE` :const:`KQ_EV_DISABLE` :const:`KQ_EV_ENABLE` :const:`KQ_EV_EOF` :const:`KQ_EV_ERROR` :const:`KQ_EV_FLAG1` :const:`KQ_EV_ONESHOT` :const:`KQ_EV_SYSFLAGS` :const:`KQ_FILTER_AIO` :const:`KQ_FILTER_NETDEV` :const:`KQ_FILTER_NETDEV` filter flags (not available on macOS): :const:`KQ_FILTER_PROC` :const:`KQ_FILTER_PROC` filter flags: :const:`KQ_FILTER_READ` :const:`KQ_FILTER_READ` and  :const:`KQ_FILTER_WRITE` filter flags: :const:`KQ_FILTER_SIGNAL` :const:`KQ_FILTER_TIMER` :const:`KQ_FILTER_VNODE` :const:`KQ_FILTER_VNODE` filter flags: :const:`KQ_FILTER_WRITE` :const:`KQ_NOTE_ATTRIB` :const:`KQ_NOTE_CHILD` :const:`KQ_NOTE_DELETE` :const:`KQ_NOTE_EXEC` :const:`KQ_NOTE_EXIT` :const:`KQ_NOTE_EXTEND` :const:`KQ_NOTE_FORK` :const:`KQ_NOTE_LINKDOWN` :const:`KQ_NOTE_LINKINV` :const:`KQ_NOTE_LINKUP` :const:`KQ_NOTE_LINK` :const:`KQ_NOTE_LOWAT` :const:`KQ_NOTE_PCTRLMASK` :const:`KQ_NOTE_PDATAMASK` :const:`KQ_NOTE_RENAME` :const:`KQ_NOTE_REVOKE` :const:`KQ_NOTE_TRACKERR` :const:`KQ_NOTE_TRACK` :const:`KQ_NOTE_WRITE` :const:`POLLERR` :const:`POLLHUP` :const:`POLLIN` :const:`POLLNVAL` :const:`POLLOUT` :const:`POLLPRI` :const:`POLLRDHUP` :mod:`select` --- Waiting for I/O completion :ref:`Availability <availability>`: Unix :ref:`Availability <availability>`: not Emscripten, not WASI. A deprecated alias of :exc:`OSError`. AIO requests Added the *flags* parameter. Adds or modifies an event Among the acceptable object types in the iterables are Python :term:`file objects <file object>` (e.g. ``sys.stdin``, or objects returned by :func:`open` or :func:`os.popen`), socket objects returned by :func:`socket.socket`.  You may also define a :dfn:`wrapper` class yourself, as long as it has an appropriate :meth:`~io.IOBase.fileno` method (that really returns a file descriptor, not just a random integer). Attempting to remove a file descriptor that was never registered causes a :exc:`KeyError` exception to be raised. Attempting to remove a file descriptor that was never registered is safely ignored. Available for read Available for write Close the control file descriptor of the epoll object. Close the control file descriptor of the kqueue object. Close the file descriptor of the polling object. Constant Create a kqueue object from a given file descriptor. Create an epoll object from a given file descriptor. Disablesevent Edge and Level Trigger Polling (epoll) Objects Empty iterables are allowed, but acceptance of three empty iterables is platform-dependent. (It is known to work on Unix but not on Windows.)  The optional *timeout* argument specifies a time-out as a floating point number in seconds.  When the *timeout* argument is omitted the function blocks until at least one file descriptor is ready.  A time-out value of zero specifies a poll and never blocks. Equivalent to :const:`EPOLLIN` Equivalent to :const:`EPOLLOUT` Error condition happened on the assoc. fd Error condition of some sort Establishes an arbitrary timer File objects on Windows are not acceptable, but sockets are.  On Windows, the underlying :c:func:`select` function is provided by the WinSock library, and does not handle file descriptors that don't originate from WinSock. Filter action. Filter specific EOF condition Filter specific data. Filter specific flags. Following :pep:`3151`, this class was made an alias of :exc:`OSError`. Hang up happened on the assoc. fd Hung up Ignored. Invalid request: descriptor not open Kevent Objects Kqueue Objects Low level interface to kevent Meaning Modifies an already registered fd. This has the same effect as ``register(fd, eventmask)``.  Attempting to modify a file descriptor that was never registered causes an :exc:`OSError` exception with errno :const:`ENOENT` to be raised. Modify a registered file descriptor. Name of the kernel filter. Permitscontrol() to returns the event Polling Objects Polls the set of registered file descriptors, and returns a possibly empty list containing ``(fd, event)`` 2-tuples for the descriptors that have events or errors to report. *fd* is the file descriptor, and *event* is a bitmask with bits set for the reported events for that descriptor --- :const:`POLLIN` for waiting input, :const:`POLLOUT` to indicate that the descriptor can be written to, and so forth. An empty list indicates that the call timed out and no file descriptors had any events to report. If *timeout* is given, it specifies the length of time in milliseconds which the system will wait for events before returning. If *timeout* is omitted, -1, or :const:`None`, the call will block until there is an event for this poll object. Polls the set of registered file descriptors, and returns a possibly empty list containing ``(fd, event)`` 2-tuples for the descriptors that have events or errors to report. *fd* is the file descriptor, and *event* is a bitmask with bits set for the reported events for that descriptor --- :const:`POLLIN` for waiting input, :const:`POLLOUT` to indicate that the descriptor can be written to, and so forth. An empty list indicates that the call timed out and no file descriptors had any events to report. If *timeout* is given, it specifies the length of time in milliseconds which the system will wait for events before returning. If *timeout* is omitted, negative, or :const:`None`, the call will block until there is an event for this poll object. Priority data band can be read. Priority data may be written. Ready for output: writing will not block Register a fd descriptor with the epoll object. Register a file descriptor with the polling object.  Future calls to the :meth:`poll` method will then check whether the file descriptor has any pending I/O events.  *fd* can be either an integer, or an object with a :meth:`~io.IOBase.fileno` method that returns an integer.  File objects implement :meth:`!fileno`, so they can also be used as the argument. Registering a file descriptor that's already registered is not an error, and has the same effect as registering the descriptor exactly once. Registering a file descriptor that's already registered is not an error, but the result is undefined. The appropriate action is to unregister or modify it first. This is an important difference compared with :c:func:`poll`. Remove a file descriptor being tracked by a polling object.  Just like the :meth:`register` method, *fd* can be an integer or an object with a :meth:`~io.IOBase.fileno` method that returns an integer. Remove a registered file descriptor from the epoll object. Removes an event from the queue Removes event after first occurrence Reset the state after an event is retrieved Return the file descriptor number of the control fd. Return the file descriptor number of the polling object. Returns when one or more of the requested events watched in *fflag* occurs Returns whenever the watched signal is delivered to the process See return values See the :ref:`epoll-objects` section below for the methods supported by epolling objects. Set Edge Trigger behavior, the default is Level Trigger behavior Set one-shot behavior. After one event is pulled out, the fd is internally disabled Solaris and derivatives have ``/dev/poll``. While :c:func:`select` is O(highest file descriptor) and :c:func:`poll` is O(number of file descriptors), ``/dev/poll`` is O(active file descriptors). Stream socket peer closed connection or shut down writing half of connection. Stream socket peer closed connection, or shut down writing half of connection Support for the :keyword:`with` statement was added. The new file descriptor is now non-inheritable. Takes a descriptor and returns whenever there is data available to read Takes a descriptor and returns whenever there is data available to write The *flags* parameter.  ``select.EPOLL_CLOEXEC`` is used by default now. Use :func:`os.set_inheritable` to make the file descriptor inheritable. The :c:func:`poll` system call, supported on most Unix systems, provides better scalability for network servers that service many, many clients at the same time. :c:func:`poll` scales better because the system call only requires listing the file descriptors of interest, while :c:func:`select` builds a bitmap, turns on bits for the fds of interest, and then afterward the whole bitmap has to be linearly scanned again. :c:func:`select` is O(highest file descriptor), while :c:func:`poll` is O(number of file descriptors). The :mod:`selectors` module allows high-level and efficient I/O multiplexing, built upon the :mod:`select` module primitives. Users are encouraged to use the :mod:`selectors` module instead, unless they want precise control over the OS-level primitives used. The function is now retried with a recomputed timeout when interrupted by a signal, except if the signal handler raises an exception (see :pep:`475` for the rationale), instead of raising :exc:`InterruptedError`. The method no longer ignores the :data:`~errno.EBADF` error. The minimum number of bytes which can be written without blocking to a pipe when the pipe has been reported as ready for writing by :func:`~select.select`, :func:`poll` or another interface in this module.  This doesn't apply to other kind of file-like objects such as sockets. The module defines the following: The new file descriptor is :ref:`non-inheritable <fd_inheritance>`. The new file descriptor is now non-inheritable. The return value is a triple of lists of objects that are ready: subsets of the first three arguments.  When the time-out is reached without a file descriptor becoming ready, three empty lists are returned. There is data to read There is urgent data to read This is a straightforward interface to the Unix :c:func:`select` system call. The first three arguments are iterables of 'waitable objects': either integers representing file descriptors or objects with a parameterless method named :meth:`~io.IOBase.fileno` returning such an integer: This method does an :meth:`unregister` followed by a :meth:`register`. It is (a bit) more efficient that doing the same explicitly. This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. This module provides access to the :c:func:`select` and :c:func:`poll` functions available in most operating systems, :c:func:`devpoll` available on Solaris and derivatives, :c:func:`epoll` available on Linux 2.5+ and :c:func:`kqueue` available on most BSD. Note that on Windows, it only works for sockets; on other operating systems, it also works for other file types (in particular, on Unix, it works on pipes). It cannot be used on regular files to determine whether a file has grown since it was last read. This value is guaranteed by POSIX to be at least 512. Urgent data for read User defined value. Value used to identify the event. The interpretation depends on the filter but it's usually the file descriptor. In the constructor ident can either be an int or an object with a :meth:`~io.IOBase.fileno` method. kevent stores the integer internally. Wait for events. timeout in seconds (float) Wake only one epoll object when the associated fd has an event. The default (if this flag is not set) is to wake all epoll objects polling on a fd. Watch for events on a network device [not available on macOS] Watch for events on a process id WinSock ``/dev/poll`` Polling Objects ``/dev/poll`` behaviour is very close to the standard :c:func:`poll` object. ``True`` if the epoll object is closed. ``True`` if the kqueue object is closed. ``True`` if the polling object is closed. ``epoll`` objects support the context management protocol: when used in a :keyword:`with` statement, the new file descriptor is automatically closed at the end of the block. a write occurred access to the file was revoked an attribute was changed changelist must be an iterable of kevent objects or ``None`` follow a process across *fork()* https://linux.die.net/man/4/epoll https://man.freebsd.org/cgi/man.cgi?query=kqueue&sektion=2 internal event internal filter flag link is down link is up link state is invalid low water mark of a socket buffer max_events must be 0 or a positive integer popen() (in module os) returned on the child process for *NOTE_TRACK* socket() (in module socket) the file was extended the file was renamed the link count has changed the process has called *fork()* the process has executed a new process the process has exited timeout in seconds (floats possible); the default is ``None``, to wait forever unable to attach to a child Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:12+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 （部分操作系统不支持）返回一个 poll 对象，该对象支持注册和注销文件描述符，支持对描述符进行轮询以获取 I/O 事件。请参阅下方 :ref:`poll-objects` 获取 poll 对象所支持的方法。 （仅支持 BSD）返回一个内核事件对象，请参阅下方 :ref:`kevent-objects` 获取 kevent 对象所支持的方法。 （仅支持 BSD）返回一个内核队列对象，请参阅下方 :ref:`kqueue-objects` 获取 kqueue 对象所支持的方法。 （仅支持 Linux 2.5.44 或更高版本）返回一个 edge poll 对象，该对象可作为 I/O 事件的边缘触发或水平触发接口。 （仅支持 Solaris 及其衍生版本）返回一个 ``/dev/poll`` 轮询对象，请参阅下方 :ref:`devpoll-objects` 获取 devpoll 对象所支持的方法。 *eventmask* *eventmask* 是可选的位掩码，用于指定要检查的事件类型，它可以是常量 :const:`POLLIN`、:const:`POLLPRI` 和 :const:`POLLOUT` 的组合，如下表所述。如果未指定本参数，默认将会检查所有 3 种类型的事件。 *eventmask* 是可选的位掩码，用于指定要检查的事件类型。这些常量与 :c:func:`poll` 对象所用的相同。本参数的默认值是常量 :const:`POLLIN`、:const:`POLLPRI` 和 :const:`POLLOUT` 的组合。 *flags* 已经弃用且完全被忽略。但是，如果提供该值，则它必须是 ``0`` 或 ``select.EPOLL_CLOEXEC``，否则会抛出 ``OSError`` 异常。 *rlist*：等待，直到可以开始读取 *sizehint* 指示 epoll 预计需要注册的事件数。它必须为正数，或为 ``-1`` 以使用默认值。 它仅在 :c:func:`epoll_create1` 不可用的旧系统上会被用到，其他情况下它没有任何作用（尽管仍会检查其值）。 已调用 *unlink()* *wlist*：等待，直到可以开始写入 *xlist*：等待“异常情况”（请参阅当前系统的手册，以获取哪些情况称为异常情况） :c:func:`devpoll` 对象与实例化时允许的文件描述符数量有关，如果在程序中降低了此数值，:c:func:`devpoll` 调用将失败。如果程序提高了此数值，:c:func:`devpoll` 可能会返回一个不完整的活动文件描述符列表。 :const:`EPOLLERR` :const:`EPOLLET` :const:`EPOLLEXCLUSIVE` 增加了 :const:`EPOLLEXCLUSIVE`。仅支持 Linux Kernel 4.5 或更高版本。 :const:`EPOLLHUP` :const:`EPOLLIN` :const:`EPOLLMSG` :const:`EPOLLONESHOT` :const:`EPOLLOUT` :const:`EPOLLPRI` :const:`EPOLLRDBAND` :const:`EPOLLRDHUP` :const:`EPOLLRDNORM` :const:`EPOLLWRBAND` :const:`EPOLLWRNORM` :const:`KQ_EV_ADD` :const:`KQ_EV_CLEAR` :const:`KQ_EV_DELETE` :const:`KQ_EV_DISABLE` :const:`KQ_EV_ENABLE` :const:`KQ_EV_EOF` :const:`KQ_EV_ERROR` :const:`KQ_EV_FLAG1` :const:`KQ_EV_ONESHOT` :const:`KQ_EV_SYSFLAGS` :const:`KQ_FILTER_AIO` :const:`KQ_FILTER_NETDEV` :const:`KQ_FILTER_NETDEV` 过滤器旗标 (在 macOS 上不可用): :const:`KQ_FILTER_PROC` :const:`KQ_FILTER_PROC` filter flags: :const:`KQ_FILTER_READ` :const:`KQ_FILTER_READ` 和  :const:`KQ_FILTER_WRITE` 筛选标志： :const:`KQ_FILTER_SIGNAL` :const:`KQ_FILTER_TIMER` :const:`KQ_FILTER_VNODE` :const:`KQ_FILTER_VNODE` 筛选标志： :const:`KQ_FILTER_WRITE` :const:`KQ_NOTE_ATTRIB` :const:`KQ_NOTE_CHILD` :const:`KQ_NOTE_DELETE` :const:`KQ_NOTE_EXEC` :const:`KQ_NOTE_EXIT` :const:`KQ_NOTE_EXTEND` :const:`KQ_NOTE_FORK` :const:`KQ_NOTE_LINKDOWN` :const:`KQ_NOTE_LINKINV` :const:`KQ_NOTE_LINKUP` :const:`KQ_NOTE_LINK` :const:`KQ_NOTE_LOWAT` :const:`KQ_NOTE_PCTRLMASK` :const:`KQ_NOTE_PDATAMASK` :const:`KQ_NOTE_RENAME` :const:`KQ_NOTE_REVOKE` :const:`KQ_NOTE_TRACKERR` :const:`KQ_NOTE_TRACK` :const:`KQ_NOTE_WRITE` :const:`POLLERR` :const:`POLLHUP` :const:`POLLIN` :const:`POLLNVAL` :const:`POLLOUT` :const:`POLLPRI` :const:`POLLRDHUP` :mod:`select` --- 等待 I/O 完成 :ref:`可用性 <availability>`: Unix :ref:`可用性 <availability>`: 非 Emscripten，非 WASI。 一个被弃用的 :exc:`OSError` 的别名。 AIO 请求 增加了 *flags* 参数。 添加或修改事件 可迭代对象中可接受的对象类型有 Python :term:`文件对象 <file object>` (例如 ``sys.stdin`` 以及 :func:`open` 或 :func:`os.popen` 所返回的对象)，由 :func:`socket.socket` 返回的套接字对象等。 你也可以自定义一个 :dfn:`wrapper` 类，只要它具有适当的 :meth:`~io.IOBase.fileno` 方法（该方法要确实返回一个文件描述符，而不能只是一个随机整数）。 尝试删除从未注册过的文件描述符会抛出 :exc:`KeyError` 异常。 尝试删除从未注册过的文件描述符将被安全地忽略。 可读 可写 关闭用于控制 epoll 对象的文件描述符。 关闭用于控制 kqueue 对象的文件描述符。 关闭轮询对象的文件描述符。 常量 根据给定的文件描述符创建 kqueue 对象。 根据给定的文件描述符创建 epoll 对象。 禁用事件 边缘触发和水平触发的轮询 (epoll) 对象 允许空的可迭代对象，但是否接受三个空的可迭代对象则取决于具体平台。 （已知在 Unix 上可行但在 Windows 上不可行。） 可选的 *timeout* 参数以一个浮点数表示超时秒数。 当省略 *timeout* 参数时该函数将阻塞直到至少有一个文件描述符准备就绪。 超时值为零表示执行轮询且永不阻塞。 等同于 :const:`EPOLLIN` 等同于 :const:`EPOLLOUT` 在关联的文件描述符上有错误情况发生 某种错误条件 建立一个任意的计时器 Windows 上不接受文件对象，但接受套接字。在 Windows 上，底层的 :c:func:`select` 函数由 WinSock 库提供，且不处理不是源自 WinSock 的文件描述符。 筛选器操作。 筛选特定EOF条件 筛选特定数据。 筛选特定标志。 根据 :pep:`3151`，这个类是 :exc:`OSError` 的别名。 关联的文件描述符已挂起 挂起 忽略 无效的请求：描述符未打开 Kevent 对象 Kqueue 对象 Kevent 的低级接口 含意 修改一个已注册的文件描述符，等同于 ``register(fd, eventmask)``。尝试修改未注册的文件描述符会抛出 :exc:`OSError` 异常，错误码为 :const:`ENOENT`。 修改一个已注册的文件描述符。 内核筛选器的名称。 Permitscontrol() 返回事件 Poll 对象 轮询已注册的文件描述符的集合，并返回一个列表，列表可能为空，也可能有多个 ``(fd, event)`` 2元组，其中包含了要报告事件或错误的描述符。 *fd* 是文件描述符，*event* 是一个位掩码，表示该描述符所报告的事件 --- :const:`POLLIN` 表示等待输入，:const:`POLLOUT` 表示该描述符可以写入，依此类推。 空列表表示调用超时，没有任何文件描述符报告事件。 如果指定了 *timeout*，它将指定系统等待事件时，等待多长时间后返回（以毫秒为单位）。如果 *timeout* 被省略、为 -1 或为 :const:`None`，则本调用将阻塞，直到轮询对象发生事件为止。 轮询已注册的文件描述符的集合，并返回一个列表，列表可能为空，也可能有多个 ``(fd, event)`` 2元组，其中包含了要报告事件或错误的描述符。 *fd* 是文件描述符，*event* 是一个位掩码，表示该描述符所报告的事件 --- :const:`POLLIN` 表示等待输入，:const:`POLLOUT` 表示该描述符可以写入，依此类推。 空列表表示调用超时，没有任何文件描述符报告事件。 如果指定了 *timeout*，它将指定系统等待事件时，等待多长时间后返回（以毫秒为单位）。如果 *timeout* 被省略、为 -1 或为 :const:`None`，则本调用将阻塞，直到轮询对象发生事件为止。 可以读取优先数据带。 可以写入优先级数据。 准备输出：写不会阻塞 在 epoll 对象中注册一个文件描述符。 在轮询对象中注册文件描述符。这样，将来调用 :meth:`poll` 方法时将检查文件描述符是否有未处理的 I/O 事件。*fd* 可以是整数，也可以是带有 :meth:`~io.IOBase.fileno` 方法的对象（该方法返回一个整数）。文件对象已经实现了 :meth:`!fileno`，因此它们也可以用作参数。 注册已注册过的文件描述符不会报错，且等同于只注册一次该描述符。 注册已注册过的文件描述符不会报错，但是结果是不确定的。正确的操作是先注销或直接修改它。与 :c:func:`poll` 相比，这是一个重要的区别。 删除轮询对象正在跟踪的某个文件描述符。与 :meth:`register` 方法类似，*fd* 可以是整数，也可以是带有 :meth:`~io.IOBase.fileno` 方法的对象（该方法返回一个整数）。 从 epoll 对象中删除一个已注册的文件描述符。 从队列中删除事件 在第一次发生后删除事件 检索事件后重置状态 返回文件描述符对应的数字，该描述符用于控制 epoll 对象。 返回轮询对象的文件描述符对应的数字。 当在 *fflag* 中监视的一个或多个请求事件发生时返回 每当监视的信号传递到进程时返回 请参阅返回值 请参阅下方 :ref:`epoll-objects` 获取 epoll 对象所支持的方法。 设置触发方式为边缘触发，默认为水平触发 设置 one-shot 模式。触发一次事件后，该描述符会在轮询对象内部被禁用。 Solaris 及其衍生版本具备 ``/dev/poll``。:c:func:`select` 复杂度为 O（最高文件描述符），:c:func:`poll` 为 O（文件描述符数量），而 ``/dev/poll`` 为 O（活动的文件描述符）。 流套接字的对侧关闭了连接或关闭了写入到一半的连接。 流套接字的对侧关闭了连接，或关闭了写入到一半的连接 增加了对 :keyword:`with` 语句的支持。新的文件描述符现在是不可继承的。 获取描述符，并在有数据可读时返回 获取描述符，并在有数据可写时返回 *flags* 参数。现在默认采用 ``select.EPOLL_CLOEXEC`` 标志。使用 :func:`os.set_inheritable` 来让文件描述符可继承。 大多数 Unix 系统支持 :c:func:`poll` 系统调用，为服务器提供了更好的可伸缩性，使服务器可以同时服务于大量客户端。:c:func:`poll` 的伸缩性更好，因为该调用内部仅列出所关注的文件描述符，而 :c:func:`select` 会构造一个 bitmap，在其中将所关注的描述符所对应的 bit 打开，然后重新遍历整个 bitmap。因此 :c:func:`select` 复杂度是 O（最高文件描述符），而 :c:func:`poll` 是 O（文件描述符数量）。 :mod:`selectors` 模块是在 :mod:`select` 模块原型的基础上进行高级且高效的 I/O 复用。推荐用户改用 :mod:`selectors` 模块，除非用户希望对 OS 级的函数原型进行精确控制。 现在，当本函数被信号中断时，重试超时将从头开始计时，不会抛出 :exc:`InterruptedError` 异常。除非信号处理程序抛出异常（相关原理请参阅 :pep:`475`）。 此方法不会再忽略 :data:`~errno.EBADF` 错误。 当一个管道已经被 :func:`~select.select`、:func:`poll` 或本模块中的某个接口报告为可写入时，可以在不阻塞该管道的情况下写入的最小字节数。它不适用于套接字等其他类型的文件类对象。 该模块定义以下内容： 新的文件描述符是 :ref:`不可继承的 <fd_inheritance>`。 新的文件描述符现在是不可继承的。 返回值是三个列表，包含已就绪对象，返回的三个列表是前三个参数的子集。当超时时间已到且没有文件描述符就绪时，返回三个空列表。 有要读取的数据 有紧急数据需要读取 这是一个明白直观的 Unix :c:func:`select` 系统调用接口。 前三个参数是由‘可等待对象’组成的序列：可以是代表文件描述符的整数，或是带有名为 :meth:`~io.IOBase.fileno` 的返回这样的整数的无形参方法的对象: 此方法先执行 :meth:`unregister` 后执行 :meth:`register`。直接执行此操作效率（稍微）高一些。 此模块在 WebAssembly 平台 ``wasm32-emscripten`` 和 ``wasm32-wasi`` 上不适用或不可用。 请参阅 :ref:`wasm-availability` 了解详情。 该模块提供了对 :c:func:`select` 和 :c:func:`poll` 函数的访问，这些函数在大多数操作系统中是可用的。在 Solaris 及其衍生版本上可用 :c:func:`devpoll`，在 Linux 2.5+ 上可用 :c:func:`epoll`，在大多数 BSD 上可用 :c:func:`kqueue`。注意，在 Windows 上，本模块仅适用于套接字；在其他操作系统上，本模块也适用于其他文件类型（特别地，在 Unix 上也适用于管道）。本模块不能用于常规文件，不能检测出（自上次读取文件后）文件是否有新数据写入。 POSIX 上须保证该值不小于 512。 紧急数据读取 用户自定义值。 用于区分事件的标识值。其解释取决于筛选器，但该值通常是文件描述符。在构造函数中，该标识值可以是整数或带有 :meth:`~io.IOBase.fileno` 方法的对象。kevent 在内部存储整数。 等待事件发生，timeout 是浮点数，单位为秒。 当已关联的描述符发生事件时，仅唤醒一个 epoll 对象。默认（如果未设置此标志）是唤醒所有轮询该描述符的 epoll 对象。 观察网络设备上的事件 [在 macOS 上不可用] 监视进程ID上的事件 WinSock ``/dev/poll`` 轮询对象 ``/dev/poll`` 的行为与标准 :c:func:`poll` 对象十分类似。 如果 epoll 对象已关闭，则返回 ``True``。 如果 kqueue 对象已关闭，则返回 ``True``。 如果轮询对象已关闭，则返回 ``True``。 ``epoll`` 对象支持上下文管理器：当在 :keyword:`with` 语句中使用时，新建的文件描述符会在运行至语句块结束时自动关闭。 发生写入 对文件的访问权限已被撤销 属性已更改 changelist 必须是一个可迭代对象，迭代出 kevent 对象，否则置为 ``None``。 跨  *fork()* 执行进程 https://linux.die.net/man/4/epoll https://man.freebsd.org/cgi/man.cgi?query=kqueue&sektion=2 内部事件 内部筛选器标志 链接已断开 链接已建立 链接状态无效 套接字缓冲区的低水线 max_events 必须是 0 或一个正整数。 popen() (在 os 模块中) 在  *NOTE_TRACK* 的子进程上返回 socket() (在 socket 模块中) 文件已扩展 文件已重命名 链接计数已更改 该进程调用了 *fork()* 进程已执行新进程 进程已退出 timeout 单位为秒（一般为浮点数），默认为 ``None``，即永不超时。 无法附加到子对象 