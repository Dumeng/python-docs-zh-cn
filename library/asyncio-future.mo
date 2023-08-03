��    >                    �  X   �  g   V  �   �  P   E  s   �  h   
  �   s  �     V   �  3   �  0        H  �   c  �    	  )   �	  �   �	  ]   i
  �   �
     K     \  �   j     J  >   R  Y   �  l   �  w   X  �   �  r   t  Y   �  d   A  /   �  -   �  H     *   M  &   x  (   �  .   �  4   �  1   ,      ^       j   �  \   �  \   O  E   �  P   �  e   C  ]   �  2     s   :    �  �   �  �   ]  U   1  ~   �  �     C   �  '   �  %   "  �   H  W   �  �  !  V   �  Y   )  �   �  J     z   b  `   �  �   >  �   �  J   b  ;   �  /   �        �   3   �   �   &   t!  �   �!  Y   "  }   v"     �"     #  �   #     �#  I   �#  R   .$  q   �$  �   �$  �   u%  h   &  _   v&  a   �&  6   8'  0   o'  Q   �'  '   �'  7   (  4   R(  -   �(  /   �(  #   �(     	)  	   $)  a   .)  W   �)  K   �)  =   4*  M   r*  _   �*  a    +  4   �+  W   �+     ,  {   -  �   �-  a   <.  x   �.  �   /  H   �/  .    0  ,   O0  r   |0  b   �0   **Source code:** :source:`Lib/asyncio/futures.py`, :source:`Lib/asyncio/base_futures.py` *Future* objects are used to bridge **low-level callback-based code** with high-level async/await code. *obj* argument as is, if *obj* is a :class:`Future`, a :class:`Task`, or a Future-like object (:func:`isfuture` is used for the test.) :func:`functools.partial` can be used to pass parameters to the callback, e.g.:: :meth:`asyncio.Future.cancel` accepts an optional ``msg`` argument, but :func:`concurrent.futures.cancel` does not. :meth:`asyncio.Future.result` and :meth:`asyncio.Future.exception` do not accept the *timeout* argument. :meth:`asyncio.Future.result` and :meth:`asyncio.Future.exception` raise an :exc:`InvalidStateError` exception when the Future is not *done*. A Future is *done* if it was *cancelled* or if it has a result or an exception set with :meth:`set_result` or :meth:`set_exception` calls. A Future represents an eventual result of an asynchronous operation.  Not thread-safe. Add a callback to be run when the Future is *done*. Added support for the :mod:`contextvars` module. Added the *msg* parameter. An optional keyword-only *context* argument allows specifying a custom :class:`contextvars.Context` for the *callback* to run in. The current context is used when no *context* is provided. Callbacks registered with :meth:`asyncio.Future.add_done_callback` are not called immediately.  They are scheduled with :meth:`loop.call_soon` instead. Cancel the Future and schedule callbacks. Deprecation warning is emitted if *future* is not a Future-like object and *loop* is not specified and there is no running event loop. Deprecation warning is emitted if *loop* is not specified and there is no running event loop. Deprecation warning is emitted if *obj* is not a Future-like object and *loop* is not specified and there is no running event loop. Future Functions Future Object Future is an :term:`awaitable` object.  Coroutines can await on Future objects until they either have a result or an exception set, or until they are cancelled. A Future can be awaited multiple times and the result is same. Futures If *obj* is neither of the above a :exc:`TypeError` is raised. If the Future has been *cancelled*, this method raises a :exc:`CancelledError` exception. If the Future is *done* and has a result set by the :meth:`set_result` method, the result value is returned. If the Future is *done* and has an exception set by the :meth:`set_exception` method, this method raises the exception. If the Future is already *done* or *cancelled*, return ``False``. Otherwise, change the Future's state to *cancelled*, schedule the callbacks, and return ``True``. If the Future is already *done* when this method is called, the callback is scheduled with :meth:`loop.call_soon`. If the Future isn't *done* yet, this method raises an :exc:`InvalidStateError` exception. If the Future's result isn't yet available, this method raises a :exc:`InvalidStateError` exception. Mark the Future as *done* and set an exception. Mark the Future as *done* and set its result. Raises a :exc:`InvalidStateError` error if the Future is already *done*. Remove *callback* from the callbacks list. Return ``True`` if *obj* is either of: Return ``True`` if the Future is *done*. Return ``True`` if the Future was *cancelled*. Return the event loop the Future object is bound to. Return the exception that was set on this Future. Return the result of the Future. Return: Returns the number of callbacks removed, which is typically 1, unless a callback was added more than once. Save a reference to the result of this function, to avoid a task disappearing mid-execution. See also the :func:`create_task` function which is the preferred way for creating new Tasks. The *callback* is called with the Future object as its only argument. The *context* keyword-only parameter was added. See :pep:`567` for more details. The Future object was designed to mimic :class:`concurrent.futures.Future`.  Key differences include: The exception (or ``None`` if no exception was set) is returned only if the Future is *done*. The function accepts any :term:`awaitable` object. The method is usually used to check if a Future is not *cancelled* before setting a result or an exception for it:: The rule of thumb is to never expose Future objects in user-facing APIs, and the recommended way to create a Future object is to call :meth:`loop.create_future`.  This way alternative event loop implementations can inject their own optimized implementations of a Future object. This example creates a Future object, creates and schedules an asynchronous Task to set result for the Future, and waits until the Future has a result:: Typically Futures are used to enable low-level callback-based code (e.g. in protocols implemented using asyncio :ref:`transports <asyncio-transports-protocols>`) to interoperate with high-level async/await code. Wrap a :class:`concurrent.futures.Future` object in a :class:`asyncio.Future` object. a :class:`Task` object that would await on *obj*, if *obj* is an awaitable (:func:`inspect.isawaitable` is used for the test.) a :class:`Task` object wrapping *obj*, if *obj* is a coroutine (:func:`iscoroutine` is used for the test); in this case the coroutine will be scheduled by ``ensure_future()``. a Future-like object with a ``_asyncio_future_blocking`` attribute. an instance of :class:`asyncio.Future`, an instance of :class:`asyncio.Task`, asyncio Future is not compatible with the :func:`concurrent.futures.wait` and :func:`concurrent.futures.as_completed` functions. unlike asyncio Futures, :class:`concurrent.futures.Future` instances cannot be awaited. Project-Id-Version: Python 3.11
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
 **源代码:** :source:`Lib/asyncio/futures.py`, :source:`Lib/asyncio/base_futures.py` *Future* 对象用来链接  **底层回调式代码** 和高层异步/等待式代码。 *obj* 参数会是保持原样，如果 *obj* 是 :class:`Future`、 :class:`Task` 或 类似 Future 的对象(  :func:`isfuture`  用于测试。) 可以用 :func:`functools.partial` 给回调函数传递参数，例如:: :meth:`asyncio.Future.cancel` 接受一个可选的 ``msg`` 参数，但 :func:`concurrent.futures.cancel` 无此参数。 :meth:`asyncio.Future.result` 和 :meth:`asyncio.Future.exception` 不接受 *timeout* 参数。 Future 没有 *完成* 时 :meth:`asyncio.Future.result` 和 :meth:`asyncio.Future.exception` 抛出一个 :exc:`InvalidStateError` 异常。 如果 Future 为 *取消* 或调用 :meth:`set_result` 设置了结果或调用 :meth:`set_exception` 设置了异常，那么它就是 *完成* 。 一个 Future 代表一个异步运算的最终结果。线程不安全。 添加一个在 Future *完成* 时运行的回调函数。 加入对 :mod:`contextvars` 模块的支持。 增加了 *msg* 形参。 可选键值类的参数 *context* 允许 *callback* 运行在一个指定的自定义 :class:`contextvars.Context` 对象中。如果没有提供 *context* ，则使用当前上下文。 使用 :meth:`asyncio.Future.add_done_callback` 注册的回调函数不会立即调用，而是被 :meth:`loop.call_soon` 调度。 取消 Future 并调度回调函数。 如果 *future* 不是 Future 类对象同时未指定 *loop* 并且没有正在运行的事件循环则会发出弃用警告。 如果未指定 *loop* 并且没有正在运行的事件循环则会发出弃用警告。 如果 *obj* 不是 Future 类对象同时未指定 *loop* 并且没有正在运行的事件循环则会发出弃用警告。 Future 函数 Future 对象 Future 是一个 :term:`awaitable` 对象。 协程可以等待 Future 对象直到它们有结果或设置了异常，或者直到它们被取消。 一个 Future 可被等待多次并且结果相同。 Futures 如果 *obj* 不是上述对象会引发一个 :exc:`TypeError` 异常。 如果 Future 已 *取消*，方法会引发一个 :exc:`CancelledError` 异常。 如果 Future 状态为 *完成* ，并由 :meth:`set_result` 方法设置一个结果，则返回这个结果。 如果 Future 状态为 *完成* ，并由  :meth:`set_exception` 方法设置一个异常，那么这个方法会引发异常。 如果 Future 已经 *完成* 或 *取消* ，返回 ``False`` 。否则将 Future 状态改为 *取消* 并在调度回调函数后返回 ``True`` 。 如果调用这个方法时 Future 已经 *完成*，回调函数会被 :meth:`loop.call_soon` 调度。 如果 Future 还没 *完成* ，这个方法会引发一个 :exc:`InvalidStateError` 异常。 如果 Future 的结果还不可用，此方法会引发一个 :exc:`InvalidStateError` 异常。 将 Future 标记为 *完成* 并设置一个异常。 将 Future 标记为 *完成* 并设置结果。 如果 Future 已经 *完成*  则抛出一个 :exc:`InvalidStateError` 错误。 从回调列表中移除 *callback* 。 如果 *obj* 为下面任意对象，返回 ``True``： 如果 Future 为已 *完成* 则返回 ``True`` 。 如果 Future 已 *取消* 则返回 ``True`` 返回 Future 对象已绑定的事件循环。 返回 Future 已设置的异常。 返回 Future 的结果。 返回： 返回被移除的回调函数的数量，通常为1，除非一个回调函数被添加多次。 保存一个指向此函数的结果的引用，以避免任务在执行期间消失。 查看 :func:`create_task` 函数，它是创建新任务的首选途径。 调用 *callback* 时，Future 对象是它的唯一参数。 加入键值类形参  *context*。请参阅 :pep:`567` 查看更多细节。 该 Future 对象是为了模仿 :class:`concurrent.futures.Future` 类。主要差异包含： 只有 Future 在 *完成* 时才返回异常（或者 ``None`` ，如果没有设置异常）。 这个函数接受任意 :term:`awaitable` 对象。 这个方法通常在设置结果或异常前用来检查 Future 是否已 *取消* 。 经验告诉我们永远不要面向用户的接口暴露 Future 对象，同时建议使用 :meth:`loop.create_future` 来创建 Future 对象。这种方法可以让 Future 对象使用其它的事件循环实现，它可以注入自己的优化实现。 这个例子创建一个 Future 对象，创建和调度一个异步任务去设置 Future 结果，然后等待其结果:: 通常 Future 用于支持底层回调式代码(例如在协议实现中使用asyncio :ref:`transports<asyncio-transports-protocols>`) 与高层异步/等待式代码交互。 将一个 :class:`concurrent.futures.Future` 对象封装到 :class:`asyncio.Future` 对象中。 等待 *obj* 的 :class:`Task` 对象，如果 *obj* 是一个可等待对象( :func:`inspect.isawaitable` 用于测试) 封装了 *obj* 的 :class:`Task` 对象，如果 *obj* 是一个协程 (使用 :func:`iscoroutine` 进行检测)；在此情况下该协程将通过 ``ensure_future()`` 加入执行计划。 带有  ``_asyncio_future_blocking`` 属性的类似 Future 的对象。 一个 :class:`asyncio.Future` 类的实例， 一个 :class:`asyncio.Task` 类的实例， asyncio Future 不能兼容  :func:`concurrent.futures.wait` 和 :func:`concurrent.futures.as_completed` 函数。 与 asyncio 的 Future 不同，:class:`concurrent.futures.Future`  实例不是可等待对象。 