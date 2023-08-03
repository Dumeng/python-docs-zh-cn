��    X      �              �  1   �  �   �  �     p     �   x  �     @   �  )   �  \   $	  9   �	  A   �	  }   �	  ,   {
  g   �
  +     K   <  [   �  M   �  Q   2     �     �  G   �  >   �  �   %  �   �  �   �  T   �  V   �  �   :  �   �  �   q  �   �     �  �   �  5   3     i  F   �  %   �  6   �     %  �   C  M   �  G   =  J   �  g   �  (   8  '   a  B   �  >   �  �     @   �  <   �  L   *     w     �     �     �     �     �  �   �     �  D   �     �  A     �   _  �   B  �   �  �   �  �     �   �  �   P  V   �  �   K  7   �  =   %   Z   c   �   �   P   l!  L   �!  t   
"  D  "     �#  3   �#     $  G   $      U$     v$  �  �$  ,   D&  �   q&  �   .'  W   �'  �   
(  �   �(  K   )  (   g)  R   �)  ;   �)  ?   *     _*  +   �*  h   +  *   t+  ?   �+  Z   �+  R   :,  @   �,     �,     �,  J   �,  C   3-  �   w-  �   H.  �   /  P   �/  V   ;0  �   �0  �   .1  j   �1  �   +2  	   �2  �   �2  -   �3  ;   �3  J   4  #   P4  9   t4     �4  �   �4  Y   e5  O   �5  <   6  b   L6  !   �6  %   �6  1   �6  -   )7  ~   W7  O   �7  L   &8  :   s8  $   �8     �8     �8     �8     9     9  �   9      �9  F   �9      :  ?   @:  �   �:  �   {;  �   "<  �   �<  �   N=  �   �=  �   �>  =   %?  �   c?  0   �?  3   +@  T   _@  �   �@  A   vA  @   �A  i   �A    cB     �C  +   �C  	   �C  9   �C      D     D   **Source code:** :source:`Lib/asyncio/streams.py` *client_connected_cb* can be a plain callable or a :ref:`coroutine function <coroutine>`; if it is a coroutine function, it will be automatically scheduled as a :class:`Task`. *limit* determines the buffer size limit used by the returned :class:`StreamReader` instance.  By default the *limit* is set to 64 KiB. *server_hostname*: sets or overrides the host name that the target server's certificate will be matched against. *ssl_handshake_timeout* is the time in seconds to wait for the TLS handshake to complete before aborting the connection.  ``60.0`` seconds if ``None`` (default). *ssl_shutdown_timeout* is the time in seconds to wait for the SSL shutdown to complete before aborting the connection. ``30.0`` seconds if ``None`` (default). *sslcontext*: a configured instance of :class:`~ssl.SSLContext`. :ref:`Availability <availability>`: Unix. Access optional transport information; see :meth:`BaseTransport.get_extra_info` for details. Added *happy_eyeballs_delay* and *interleave* parameters. Added the *ssl_handshake_timeout* and *start_serving* parameters. Added the *ssl_handshake_timeout* and *start_serving* parameters. The *path* parameter can now be a :term:`path-like object`. Added the *ssl_handshake_timeout* parameter. Added the *ssl_handshake_timeout* parameter. The *path* parameter can now be a :term:`path-like object` Added the *ssl_shutdown_timeout* parameter. Close the write end of the stream after the buffered write data is flushed. Coroutine waiting until a socket receives data using the :func:`open_connection` function:: Establish a Unix socket connection and return a pair of ``(reader, writer)``. Establish a network connection and return a pair of ``(reader, writer)`` objects. Examples Get HTTP headers Here is an example of a TCP echo client written using asyncio streams:: If *n* is ``0``, return an empty ``bytes`` object immediately. If *n* is not provided or set to ``-1``, read until EOF, then return all read :class:`bytes`. If EOF was received and the internal buffer is empty, return an empty ``bytes`` object. If *n* is positive, return at most *n* available ``bytes`` as soon as at least 1 byte is available in the internal buffer. If EOF is received before any byte is read, return an empty ``bytes`` object. If EOF is reached before the complete separator is found, an :exc:`IncompleteReadError` exception is raised, and the internal buffer is reset.  The :attr:`IncompleteReadError.partial` attribute may contain a portion of the separator. If EOF is received and ``\n`` was not found, the method returns partially read data. If EOF is received and the internal buffer is empty, return an empty ``bytes`` object. If the amount of data read exceeds the configured stream limit, a :exc:`LimitOverrunError` exception is raised, and the data is left in the internal buffer and can be read again. It is not recommended to instantiate *StreamReader* objects directly; use :func:`open_connection` and :func:`start_server` instead. It is not recommended to instantiate *StreamWriter* objects directly; use :func:`open_connection` and :func:`start_server` instead. On success, the data and separator will be removed from the internal buffer (consumed). Returned data will include the separator at the end. Parameters: Raise an :exc:`IncompleteReadError` if EOF is reached before *n* can be read.  Use the :attr:`IncompleteReadError.partial` attribute to get the partially read data. Read data from the stream until *separator* is found. Read exactly *n* bytes. Read one line, where "line" is a sequence of bytes ending with ``\n``. Read up to *n* bytes from the stream. Register an open socket to wait for data using streams Removed the *loop* parameter. Represents a reader object that provides APIs to read data from the IO stream. As an :term:`asynchronous iterable`, the object supports the :keyword:`async for` statement. Represents a writer object that provides APIs to write data to the IO stream. Return ``True`` if the buffer is empty and :meth:`feed_eof` was called. Return ``True`` if the stream is closed or in the process of being closed. Return ``True`` if the underlying transport supports the :meth:`write_eof` method, ``False`` otherwise. Return the underlying asyncio transport. See also the `Examples`_ section below. See also the documentation of :meth:`loop.create_unix_connection`. See also the documentation of :meth:`loop.create_unix_server`. Should be called after :meth:`close` to wait until the underlying connection is closed, ensuring that all data has been flushed before e.g. exiting the program. Similar to :func:`open_connection` but operates on Unix sockets. Similar to :func:`start_server` but works with Unix sockets. Simple example querying HTTP headers of the URL passed on the command line:: Start a Unix socket server. Start a socket server. Stream Functions StreamReader StreamWriter Streams Streams are high-level async/await-ready primitives to work with network connections.  Streams allow sending and receiving data without using callbacks or low-level protocols and transports. TCP echo client using streams TCP echo client using the :func:`asyncio.open_connection` function:: TCP echo server using streams TCP echo server using the :func:`asyncio.start_server` function:: The *client_connected_cb* callback is called whenever a new client connection is established.  It receives a ``(reader, writer)`` pair as two arguments, instances of the :class:`StreamReader` and :class:`StreamWriter` classes. The *sock* argument transfers ownership of the socket to the :class:`StreamWriter` created. To close the socket, call its :meth:`~asyncio.StreamWriter.close` method. The *sock* argument transfers ownership of the socket to the server created. To close the socket, call the server's :meth:`~asyncio.Server.close` method. The :ref:`TCP echo client protocol <asyncio_example_tcp_echo_client_protocol>` example uses the low-level :meth:`loop.create_connection` method. The :ref:`TCP echo server protocol <asyncio_example_tcp_echo_server_protocol>` example uses the :meth:`loop.create_server` method. The :ref:`register an open socket to wait for data using a protocol <asyncio_example_create_connection>` example uses a low-level protocol and the :meth:`loop.create_connection` method. The :ref:`watch a file descriptor for read events <asyncio_example_watch_fd>` example uses the low-level :meth:`loop.add_reader` method to watch a file descriptor. The following top-level asyncio functions can be used to create and work with streams: The method attempts to write the *data* to the underlying socket immediately. If that fails, the data is queued in an internal write buffer until it can be sent. The method closes the stream and the underlying socket. The method should be used along with the ``drain()`` method:: The method should be used, though not mandatory, along with the ``wait_closed()`` method:: The method writes a list (or any iterable) of bytes to the underlying socket immediately. If that fails, the data is queued in an internal write buffer until it can be sent. The rest of the arguments are passed directly to :meth:`loop.create_connection`. The rest of the arguments are passed directly to :meth:`loop.create_server`. The returned *reader* and *writer* objects are instances of :class:`StreamReader` and :class:`StreamWriter` classes. This is a flow control method that interacts with the underlying IO write buffer.  When the size of the buffer reaches the high watermark, *drain()* blocks until the size of the buffer is drained down to the low watermark and writing can be resumed.  When there is nothing to wait for, the :meth:`drain` returns immediately. Unix Sockets Upgrade an existing stream-based connection to TLS. Usage:: Wait until it is appropriate to resume writing to the stream. Example:: Wait until the stream is closed. or with HTTPS:: Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 00:55+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **源码:** :source:`Lib/asyncio/streams.py` *client_connected_cb* 即可以是普通的可调用对象也可以是一个 :ref:`协程函数 <coroutine>`; 如果它是一个协程函数，它将自动作为 :class:`Task` 被调度。 *limit* 确定返回的 :class:`StreamReader` 实例使用的缓冲区大小限制。默认情况下，*limit* 设置为 64 KiB 。 *server_hostname* ：设置或者覆盖目标服务器证书中相对应的主机名。 *ssl_handshake_timeout* 是在放弃连接之前要等待 TLS 握手完成的秒数。 如为 ``None`` (默认值) 则使用 ``60.0``。 *ssl_shutdown_timeout* 是在放弃连接之前要等待 SSL 关闭完成的秒数。 如为 ``None`` (默认值) 则使用 ``30.0``。 *sslcontext* ：一个已经配置好的 :class:`~ssl.SSLContext` 实例。 :ref:`可用性 <availability>`: Unix。 访问可选的传输信息；详情参见 :meth:`BaseTransport.get_extra_info`。 增加了 *happy_eyeballs_delay* 和 *interleave* 形参。 增加了 *ssl_handshake_timeout* 和 *start_serving* 形参。 增加了 *ssl_handshake_timeout* 和 *start_serving* 形参。 现在 *path* 形参可以是一个 :term:`path-like object`。 添加了 *ssl_handshake_timeout* 形参。 增加了 *ssl_handshake_timeout* 形参。 现在 *path* 形参可以是一个 :term:`path-like object` 添加了 *ssl_shutdown_timeout* 形参。 在已缓冲的写入数据被刷新后关闭流的写入端。 使用 :func:`open_connection` 函数实现等待直到套接字接收到数据的协程:: 建立一个 Unix 套接字连接并返回 ``(reader, writer)`` 这对返回值。 建立网络连接并返回一对 ``(reader, writer)`` 对象。 例子 获取 HTTP 标头 下面是一个使用 asyncio streams 编写的 TCP echo 客户端示例:: 如果 *n* 为 ``0``，则立即返回一个空 ``bytes`` 对象。 如果未提供 *n* 或是设为 ``-1``，则一直读取到 EOF，然后返回所读取的全部 :class:`bytes`。 如果收到 EOF 并且内部缓冲区为空，则返回一个空 ``bytes`` 对象。object. 如果 *n* 为正值，则一旦内部缓冲区有至少 1 个字节可用就返回至多 *n* 个可用的 ``bytes``。 如果在读取任何字节之前收到 EOF，则返回一个空 ``bytes`` 对象。 如果在找到完整的separator之前到达EOF，则会引发 :exc:`IncompleteReadError` 异常，并重置内部缓冲区。 :attr:`IncompleteReadError.partial` 属性可能包含指定separator的一部分。 如果读到EOF而没有找到 ``\n`` ，该方法返回部分读取的数据。 如果读到EOF，且内部缓冲区为空，则返回一个空的 ``bytes`` 对象。 如果读取的数据量超过了配置的流限制，将引发 :exc:`LimitOverrunError` 异常，数据将留在内部缓冲区中并可以再次读取。 不推荐直接实例化 *StreamReader* 对象，建议使用 :func:`open_connection` 和 :func:`start_server` 来获取 *StreamReader* 实例。 不建议直接实例化 *StreamWriter*；而应改用 :func:`open_connection` 和 :func:`start_server`。 成功后，数据和指定的separator将从内部缓冲区中删除(或者说被消费掉)。返回的数据将包括在末尾的指定separator。 参数： 如果在读取完 *n* 个byte之前读取到EOF，则会引发 :exc:`IncompleteReadError` 异常。使用 :attr:`IncompleteReadError.partial` 属性来获取到达流结束之前读取的 bytes 字符串。 从流中读取数据直至遇到 *separator* 精确读取 *n* 个 bytes，不会超过也不能少于。 读取一行，其中“行”指的是以 ``\n`` 结尾的字节序列。 从流读取至多 *n* 个字节。 注册一个打开的套接字以等待使用流的数据 移除了 *loop* 形参。 代表一个提供从 IO 流读取数据的 API 的读取器。 作为一个 :term:`asynchronous iterable`，该对象支持 :keyword:`async for` 语句。 这个类表示一个写入器对象，该对象提供api以便于写数据至IO流中。 如果缓冲区为空并且 :meth:`feed_eof` 被调用，则返回 ``True`` 。 如果流已被关闭或正在被关闭则返回 ``True``。 如果下层的传输支持 :meth:`write_eof` 方法则返回 ``True``，否则返回 ``False``。 返回下层的 asyncio 传输。 参见下面的 `Examples`_ 部分。 请看文档 :meth:`loop.create_unix_connection`. 请看文档 :meth:`loop.create_unix_server`. 应当在 :meth:`close` 之后调用以等待直到下层连接被关闭，确保所有数据在退出程序之前已刷新。 与 :func:`open_connection` 相似，但是是在 Unix 套接字上的操作。 与 :func:`start_server` 相似，但是是在 Unix 套接字上的操作。 查询命令行传入 URL 的 HTTP 标头的简单示例:: 启动一个 Unix 套接字服务。 启动套接字服务。 Stream 函数 StreamReader StreamWriter 流 流是用于处理网络连接的支持 async/await 的高层级原语。 流允许发送和接收数据，而不需要使用回调或低级协议和传输。 使用流的 TCP 回显客户端 使用 :func:`asyncio.open_connection` 函数的 TCP 回显客户端:: 使用流的 TCP 回显服务器 TCP 回显服务器使用 :func:`asyncio.start_server` 函数:: 当一个新的客户端连接被建立时，回调函数 *client_connected_cb* 会被调用。该函数会接收到一对参数 ``(reader, writer)`` ，reader是类 :class:`StreamReader` 的实例，而writer是类 :class:`StreamWriter` 的实例。 *sock* 参数可将套接字的所有权转给所创建的 :class:`StreamWriter`。 要关闭该套接字，请调用其 :meth:`~asyncio.StreamWriter.close` 方法。 *sock* 参数可将套接字的所有权转给所创建的服务器。 要关闭该套接字，请调用服务器的 :meth:`~asyncio.Server.close` 方法。 使用低层级 :meth:`loop.create_connection` 方法的 :ref:`TCP 回显客户端协议 <asyncio_example_tcp_echo_client_protocol>` 示例。 使用 :meth:`loop.create_server` 方法的 :ref:`TCP 回显服务器协议 <asyncio_example_tcp_echo_server_protocol>` 示例。 使用低层级协议以及 :meth:`loop.create_connection` 方法的 :ref:`注册一个打开的套接字以等待使用协议的数据 <asyncio_example_create_connection>` 示例。 使用低层级的 :meth:`loop.add_reader` 方法来监视文件描述符的 :ref:`监视文件描述符以读取事件 <asyncio_example_watch_fd>` 示例。 下面的高级 asyncio 函数可以用来创建和处理流: 此方法会尝试立即将 *data* 写入到下层的套接字。 如果写入失败，数据会被排入内部写缓冲队列直到可以被发送。 此方法会关闭流以及下层的套接字。 此方法应当与 ``drain()`` 方法一起使用:: 此方法应当于 ``wait_closed()`` 方法一起使用，但这并非强制要求:: 此方法会立即尝试将一个字节串列表（或任何可迭代对象）写入到下层的套接字。 如果写入失败，数据会被排入内部写缓冲队列直到可以被发送。 其余的参数直接传递到 :meth:`loop.create_connection` 。 余下的参数将会直接传递给 :meth:`loop.create_server`. 返回的 *reader* 和 *writer* 对象是 :class:`StreamReader` 和 :class:`StreamWriter` 类的实例。 这是一个与下层的 IO 写缓冲区进行交互的流程控制方法。 当缓冲区大小达到最高水位（最大上限）时，*drain()* 会阻塞直到缓冲区大小减少至最低水位以便恢复写入。 当没有要等待的数据时，:meth:`drain` 会立即返回。 Unix 套接字 将现有基于流的连接升级到 TLS。 用法： 等待直到可以适当地恢复写入到流。 示例:: 等待直到流被关闭。 或使用 HTTPS:: 