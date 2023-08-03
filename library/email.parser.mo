��    0      �                .     4   L  6   �  +   �     �        D    �   V  �     �   �  R   �  M   �  S  M     �	  -   �	  1   �	  c   
    t
  �  �  �      �  �  �  �   l  �   �  ;   �  Z   �  
   G  �   R  �   &  V     ;   u  �   �  �   �  �   e  �   @  	  -  �   7  �   "    �  r    -  �!  �  �#  �  >&  �  9)  T   +  I   u-  8  �-  �  �.  ,   �0  /   �0  1   !1  -   S1     �1     �1  ^  �1  �   3  0  �3  �   �4  [   �5  W   �5  �  ?6     �7  $   �7  -   �7  m   #8    �8  k  �:  �  <  2  �=  �  �>  �   �@  �   $A  T   �A  c   B  
   |B  �   �B  �   TC  V   >D  ;   �D  �   �D  �   �E  �   uF  �   FG    $H  �   @I  �   <J  *  K  b  -M  >  �O  L  �Q    T  �  /W  R  �X  I   P[  L  �[   **Source code:** :source:`Lib/email/parser.py` *_class* defaults to the policy ``message_factory``. *_factory* defaults to the policy ``message_factory``. :mod:`email.parser`: Parsing email messages Added the *policy* keyword. Additional notes All :mimetype:`multipart` type messages will be parsed as a container message object with a list of sub-message objects for their payload.  The outer container message will return ``True`` for :meth:`~email.message.EmailMessage.is_multipart`, and :meth:`~email.message.EmailMessage.iter_parts` will yield a list of subparts. Complete the parsing of all previously fed data and return the root message object.  It is undefined what happens if :meth:`~feed` is called after this method has been called. Create a :class:`BytesFeedParser` instance.  Optional *_factory* is a no-argument callable; if not specified use the :attr:`~email.policy.Policy.message_factory` from the *policy*.  Call *_factory* whenever a new message object is needed. Create a :class:`BytesParser` instance.  The *_class* and *policy* arguments have the same meaning and semantics as the *_factory* and *policy* arguments of :class:`BytesFeedParser`. Exactly like :class:`BytesParser`, except that *headersonly* defaults to ``True``. Exactly like :class:`Parser`, except that *headersonly* defaults to ``True``. Feed the parser some more data.  *data* should be a :term:`bytes-like object` containing one or more lines.  The lines can be partial and the parser will stitch such partial lines together properly.  The lines can have any of the three common line endings: carriage return, newline, or carriage return and newline (they can even be mixed). FeedParser API Here are some notes on the parsing semantics: Here is the API for the :class:`BytesFeedParser`: Here's an example of how you might use :func:`message_from_bytes` at an interactive Python prompt:: If *policy* is specified use the rules it specifies to update the representation of the message.  If *policy* is not set, use the :class:`compat32 <email.policy.Compat32>` policy, which maintains backward compatibility with the Python 3.2 version of the email package and provides :class:`~email.message.Message` as the default factory.  All other policies provide :class:`~email.message.EmailMessage` as the default *_factory*. For more information on what else *policy* controls, see the :mod:`~email.policy` documentation. Message object structures can be created in one of two ways: they can be created from whole cloth by creating an :class:`~email.message.EmailMessage` object, adding headers using the dictionary interface, and adding payload(s) using :meth:`~email.message.EmailMessage.set_content` and related methods, or they can be created by parsing a serialized representation of the email message. Most messages with a content type of :mimetype:`message/\*` (such as :mimetype:`message/delivery-status` and :mimetype:`message/rfc822`) will also be parsed as container object containing a list payload of length 1.  Their :meth:`~email.message.EmailMessage.is_multipart` method will return ``True``. The single element yielded by :meth:`~email.message.EmailMessage.iter_parts` will be a sub-message object. Most non-\ :mimetype:`multipart` type messages are parsed as a single message object with a string payload.  These objects will return ``False`` for :meth:`~email.message.EmailMessage.is_multipart`, and :meth:`~email.message.EmailMessage.iter_parts` will yield an empty list. Note that the parser can be extended in limited ways, and of course you can implement your own parser completely from scratch.  All of the logic that connects the :mod:`email` package's bundled parser and the :class:`~email.message.EmailMessage` class is embodied in the :mod:`policy` class, so a custom parser can create message object trees any way it finds necessary by implementing custom versions of the appropriate :mod:`policy` methods. Note: **The policy keyword should always be specified**; The default will change to :data:`email.policy.default` in a future version of Python. Optional *headersonly* is a flag specifying whether to stop parsing after reading the headers or not.  The default is ``False``, meaning it parses the entire contents of the file. Optional *headersonly* is as with the :meth:`parse` method. Other than the text mode requirement, this method operates like :meth:`BytesParser.parse`. Parser API Read all the data from the binary file-like object *fp*, parse the resulting bytes, and return the message object.  *fp* must support both the :meth:`~io.IOBase.readline` and the :meth:`~io.IOBase.read` methods. Read all the data from the text-mode file-like object *fp*, parse the resulting text, and return the root message object.  *fp* must support both the :meth:`~io.TextIOBase.readline` and the :meth:`~io.TextIOBase.read` methods on file-like objects. Removed the *strict* argument that was deprecated in 2.4.  Added the *policy* keyword. Removed the *strict* argument.  Added the *policy* keyword. Return a message object structure from a :term:`bytes-like object`.  This is equivalent to ``BytesParser().parsebytes(s)``.  Optional *_class* and *policy* are interpreted as with the :class:`~email.parser.BytesParser` class constructor. Return a message object structure from a string.  This is equivalent to ``Parser().parsestr(s)``.  *_class* and *policy* are interpreted as with the :class:`~email.parser.Parser` class constructor. Return a message object structure tree from an open :term:`file object`. This is equivalent to ``Parser().parse(fp)``.  *_class* and *policy* are interpreted as with the :class:`~email.parser.Parser` class constructor. Return a message object structure tree from an open binary :term:`file object`.  This is equivalent to ``BytesParser().parse(fp)``.  *_class* and *policy* are interpreted as with the :class:`~email.parser.BytesParser` class constructor. Similar to the :meth:`parse` method, except it takes a :term:`bytes-like object` instead of a file-like object.  Calling this method on a :term:`bytes-like object` is equivalent to wrapping *bytes* in a :class:`~io.BytesIO` instance first and calling :meth:`parse`. Similar to the :meth:`parse` method, except it takes a string object instead of a file-like object.  Calling this method on a string is equivalent to wrapping *text* in a :class:`~io.StringIO` instance first and calling :meth:`parse`. Since creating a message object structure from a string or a file object is such a common task, four functions are provided as a convenience.  They are available in the top-level :mod:`email` package namespace. Some non-standards-compliant messages may not be internally consistent about their :mimetype:`multipart`\ -edness.  Such messages may have a :mailheader:`Content-Type` header of type :mimetype:`multipart`, but their :meth:`~email.message.EmailMessage.is_multipart` method may return ``False``. If such messages were parsed with the :class:`~email.parser.FeedParser`, they will have an instance of the :class:`~email.errors.MultipartInvariantViolationDefect` class in their *defects* attribute list.  See :mod:`email.errors` for details. The :class:`BytesFeedParser`'s API is simple; you create an instance, feed it a bunch of bytes until there's no more to feed it, then close the parser to retrieve the root message object.  The :class:`BytesFeedParser` is extremely accurate when parsing standards-compliant messages, and it does a very good job of parsing non-compliant messages, providing information about how a message was deemed broken.  It will populate a message object's :attr:`~email.message.EmailMessage.defects` attribute with a list of any problems it found in a message.  See the :mod:`email.errors` module for the list of defects that it can find. The :class:`BytesFeedParser`, imported from the :mod:`email.feedparser` module, provides an API that is conducive to incremental parsing of email messages, such as would be necessary when reading the text of an email message from a source that can block (such as a socket).  The :class:`BytesFeedParser` can of course be used to parse an email message fully contained in a :term:`bytes-like object`, string, or file, but the :class:`BytesParser` API may be more convenient for such use cases.  The semantics and results of the two parser APIs are identical. The :class:`BytesParser` class, imported from the :mod:`email.parser` module, provides an API that can be used to parse a message when the complete contents of the message are available in a :term:`bytes-like object` or file.  The :mod:`email.parser` module also provides :class:`Parser` for parsing strings, and header-only parsers, :class:`BytesHeaderParser` and :class:`HeaderParser`, which can be used if you're only interested in the headers of the message.  :class:`BytesHeaderParser` and :class:`HeaderParser` can be much faster in these situations, since they do not attempt to parse the message body, instead setting the payload to the raw body. The :mod:`email` package provides a standard parser that understands most email document structures, including MIME documents.  You can pass the parser a bytes, string or file object, and the parser will return to you the root :class:`~email.message.EmailMessage` instance of the object structure.  For simple, non-MIME messages the payload of this root object will likely be a string containing the text of the message.  For MIME messages, the root object will return ``True`` from its :meth:`~email.message.EmailMessage.is_multipart` method, and the subparts can be accessed via the payload manipulation methods, such as :meth:`~email.message.EmailMessage.get_body`, :meth:`~email.message.EmailMessage.iter_parts`, and :meth:`~email.message.EmailMessage.walk`. The bytes contained in *fp* must be formatted as a block of :rfc:`5322` (or, if :attr:`~email.policy.Policy.utf8` is ``True``, :rfc:`6532`) style headers and header continuation lines, optionally preceded by an envelope header.  The header block is terminated either by the end of the data or by a blank line.  Following the header block is the body of the message (which may contain MIME-encoded subparts, including subparts with a :mailheader:`Content-Transfer-Encoding` of ``8bit``). There are actually two parser interfaces available for use, the :class:`Parser` API and the incremental :class:`FeedParser` API.  The :class:`Parser` API is most useful if you have the entire text of the message in memory, or if the entire message lives in a file on the file system.  :class:`FeedParser` is more appropriate when you are reading the message from a stream which might block waiting for more input (such as reading an email message from a socket).  The :class:`FeedParser` can consume and parse the message incrementally, and only returns the root object when you close the parser. This class is parallel to :class:`BytesParser`, but handles string input. Works like :class:`BytesFeedParser` except that the input to the :meth:`~BytesFeedParser.feed` method must be a string.  This is of limited utility, since the only way for such a message to be valid is for it to contain only ASCII text or, if :attr:`~email.policy.Policy.utf8` is ``True``, no binary attachments. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:05+0000
Last-Translator: Kevin Deng <kevindeng55+transifex@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **源代码**: :source:`Lib/email/parser.py` *_class* 默认为策略 ``message_factory``。 *_factory* 默认为策略 ``message_factory``。 :mod:`email.parser`: 解析电子邮件信息 添加了 *policy* 关键字。 附加说明 所有 :mimetype:`multipart` 类型的消息都会被解析成一个容器消息对象。该对象的负载是一个子消息对象列表。外层的容器消息在调用 :meth:`~email.message.EmailMessage.is_multipart` 的时候会返回 ``True`` ，在调用 :meth:`~email.message.EmailMessage.iter_parts` 的时候会产生一个子部分列表。 完成之前输入的所有数据的解析并返回根消息对象。 如果在这个方法被调用之后仍然调用 :meth:`~feed` 方法，结果是未定义的。 创建一个 :class:`BytesFeedParser` 实例。可选的 *_factory* 参数是一个不带参数的可调用对象；如果没有被指定，就会使用 *policy* 参数的 :attr:`~email.policy.Policy.message_factory` 属性。 每当需要一个新的消息对象的时候，*_factory* 都会被调用。 创建一个 :class:`BytesParser` 实例。 *_class* 和 *policy* 参数在含义和语义上与 :class:`BytesFeedParser` 的 *_factory* 和 *policy* 参数一致。 除了 *headersonly* 默认为 ``True``，其他与 :class:`BytesParser` 类完全一样。 除了 *headersonly* 默认为 ``True`` ，其他与 :class:`Parser` 类完全一样。 向语法分析程序输入更多数据。*data* 应当是一个包含一行或多行内容的 :term:`bytes-like object`。 行内容可以是不完整的，语法分析程序会妥善的将这些不完整的行缝合在一起。每一行可以使用以下三种常见的终止符号的其中一种：回车符、换行符或回车符加换行符（三者甚至可以混合使用）。 FeedParser API 在解析语义的时候请注意： 这里是 :class:`BytesFeedParser` 的 API： 这里是一个展示了你如何在Python交互式命令行中使用 :func:`message_from_bytes` 的例子： 如果指定了 *policy* 参数，它就会使用这个参数所指定的规则来更新消息的表达方式。 如果没有设定 *policy* 参数，它就会使用 :class:`compat32 <email.policy.Compat32>` 策略。 这个策略维持了对 Python 3.2 版本的 email 包的后向兼容性，并且使用 :class:`~email.message.Message` 作为默认的工厂。 其他策略使用 :class:`~email.message.EmailMessage` 作为默认的 *_factory*。 关于 *policy* 还会控制什么，参见 :mod:`~email.policy` 的文档。 使用以下两种方法的其中一种以创建消息对象结构：直接创建一个 :class:`~email.message.EmailMessage` 对象，使用字典接口添加消息头，并且使用 :meth:`~email.message.EmailMessage.set_content` 和其他相关方法添加消息负载；或者通过解析一个电子邮件消息的序列化表达来创建消息对象结构。 大多数内容类型为 :mimetype:`message/\*` （例如 :mimetype:`message/delivery-status` 和 :mimetype:`message/rfc822` ）的消息也会被解析为一个负载是长度为1的列表的容器对象。在它们身上调用 :meth:`~email.message.EmailMessage.is_multipart` 方法会返回 ``True`` ，调用 :meth:`~email.message.EmailMessage.iter_parts` 所产生的单个元素会是一个子消息对象。 大多数非 :mimetype:`multipart` 类型的消息都会被解析为一个带有字符串负载的消息对象。这些对象在调用 :meth:`~email.message.EmailMessage.is_multipart` 的时候会返回 ``False`` ，调用 :meth:`~email.message.EmailMessage.iter_parts` 的时候会产生一个空列表。 请注意，语法分析程序可以进行有限的拓展，你当然也可以完全从零开始实现你自己的语法分析程序。将 :mod:`email` 包中内置的语法分析程序和 :class:`~email.message.EmailMessage` 类连接起来的所有逻辑代码都包含在 :mod:`policy` 类当中，所以如有必要，自定义的语法分析程序可以通过实现自定义的对应 :mod:`policy` 方法来创建对应的消息对象树。 注: **一定要指定policy关键字**。 在未来版本的 Python 当中，它的默认值会变成 :data:`email.policy.default`。 可选的 *headersonly* 指示了是否应当在读取完消息头后就终止。默认值为 ``False`` ，意味着它会解析整个文件的全部内容。 可选的 *headersonly* 与 :meth:`parse` 方法中的 *headersonly* 是一致的。 除了文字模式的要求外，这个方法跟 :meth:`BytesParser.parse` 的运行方式一致。 Parser API 从二进制的类文件对象 *fp* 中读取全部数据、解析其字节内容、并返回消息对象。 *fp* 必须同时支持 :meth:`~io.IOBase.readline` 方法和 :meth:`~io.IOBase.read` 方法。 从文本模式的文件类对象 *fp* 读取所有数据，解析所读取的文本，并返回根消息对象。 *fp* 必须同时支持文件类对象上的 :meth:`~io.TextIOBase.readline` 和 :meth:`~io.TextIOBase.read` 方法。 移除了在2.4版本中被弃用的 *strict* 参数。新增了 *policy* 关键字。 移除了 *strict* 参数。添加了 *policy* 关键字。 从一个 :term:`bytes-like object` 中返回消息对象。 这与 ``BytesParser().parsebytes(s)`` 等价。 可选的 *_class* 和 *policy* 参数与 :class:`~email.parser.BytesParser` 类的构造函数的参数含义一致。 从一个字符串中返回消息对象。 这与 ``Parser().parsestr(s)`` 等价。 *_class* 和 *policy* 参数与 :class:`~email.parser.Parser` 类的构造函数的参数含义一致。 从一个打开的 :term:`file object` 中返回消息对象。 这与 ``Parser().parse(fp)`` 等价。 *_class* 和 *policy* 参数与 :class:`~email.parser.Parser` 类的构造函数的参数含义一致。 从打开的二进制 :term:`file object` 中返回消息对象。 这与 ``BytesParser().parse(fp)`` 等价。 *_class* 和 *policy* 参数与 :class:`~email.parser.BytesParser` 类的构造函数的参数含义一致。 与 :meth:`parse` 方法类似，只不过它要求输入为一个 :term:`bytes-like object` 而不是类文件对象。于一个 :term:`bytes-like object` 调用此方法相当于先将这些字节包装于一个 :class:`~io.BytesIO` 实例中，然后调用 :meth:`parse` 方法。 与 :meth:`parse` 方法类似，只不过它要求输入为一个字符串而不是类文件对象。于一个字符串对象调用此方法相当于先将 *text* 包装于一个 :class:`~io.StringIO` 实例中，然后调用 :meth:`parse`  方法。 考虑到从一个字符串或一个文件对象中创建一个消息对象是非常常见的任务，我们提供了四个方便的函数。它们于顶层 :mod:`email` 包命名空间内可用。 一些不遵循标准的消息在其内部关于它是否为 :mimetype:`multipart` 类型前后不一。这些消息可能在消息头的 :mailheader:`Content-Type` 字段中写明为 :mimetype:`multipart` ，但它们的 :meth:`~email.message.EmailMessage.is_multipart` 方法的返回值可能是 ``False`` 。如果这种消息被 :class:`~email.parser.FeedParser` 类解析，它们的 *defects* 属性列表当中会有一个 :class:`~email.errors.MultipartInvariantViolationDefect` 类的实例。关于更多信息，详见 :mod:`email.errors` 。 :class:`BytesFeedParser` 的API十分简洁易懂：你创建一个语法分析程序的实例，向它不断输入大量的字节直到尽头，然后关闭这个语法分析程序就可以拿到根消息对象了。 在处理符合标准的消息的时候 :class:`BytesFeedParser` 非常准确；在处理不符合标准的消息的时候它做的也不差，但这视消息损坏的程度而定。它会向消息对象的 :attr:`~email.message.EmailMessage.defects` 属性中写入它从消息中找到的问题列表。关于它能找到的所有问题类型的列表，详见 :mod:`email.errors` 模块。 从 :mod:`email.feedparser` 模块导入的 :class:`BytesFeedParser`  类提供了一个适合于增量解析电子邮件消息的API，比如说在从一个可能会阻塞（例如套接字）的源当中读取消息文字的场合中它就会变得很有用。当然， :class:`BytesFeedParser` 也可以用来解析一个已经完整包含在一个 :term:`bytes-like object` 、字符串或文件内的电子邮件消息，但是在这些场合下使用 :class:`BytesParser` API可能会更加方便。这两个语法分析程序API的语义和最终结果是一致的。 :class:`BytesParser` 类从 :mod:`email.parser` 模块导入，当消息的完整内容包含在一个 :term:`bytes-like object` 或文件中时它提供了可用于解析消息的 API。 :mod:`email.parser` 模块还提供了 :class:`Parser` 用来解析字符串，以及只用来解析消息头的 :class:`BytesHeaderParser` 和 :class:`HeaderParser`，如果你只对消息头感兴趣就可以使用后两者。 在这种场合下 :class:`BytesHeaderParser` 和 :class:`HeaderParser` 速度非常快，因为它们并不会尝试解析消息体，而是将载荷设为原始数据。 :mod:`email` 包提供了一个可以理解包含 MIME 文档在内的绝大多数电子邮件文档结构的标准语法分析程序。 你可以传递给语法分析程序一个字节串、字符串或者文件对象，语法分析程序会返回给你对应于该对象结构的根 :class:`~email.message.EmailMessage` 实例。 对于简单的、非 MIME 的消息，这个根对象的负载很可能就是一个包含了该消息文字内容的字符串。 对于 MIME 消息，调用根对象的 :meth:`~email.message.EmailMessage.is_multipart` 方法会返回 ``True``，其子项可以通过负载操纵方法来进行访问，例如 :meth:`~email.message.EmailMessage.get_body`、:meth:`~email.message.EmailMessage.iter_parts` 还有 :meth:`~email.message.EmailMessage.walk`。 *fp* 内包含的字节内容必须是一块遵循 :rfc:`5322` （如果 :attr:`~email.policy.Policy.utf8` 为 ``True``，则为 :rfc:`6532` ）格式风格的消息头和消息头延续行，并可能紧跟一个信封头。 头块要么以数据结束，要么以一个空行为终止。 跟着头块的是消息体（消息体内可能包含 MIME 编码的子部分，这也包括 :mailheader:`Content-Transfer-Encoding` 字段为 ``8bit`` 的子部分）。 事实上你可以使用的语法分析程序接口有两种: :class:`Parser` API 和增量式的 :class:`FeedParser` API。当你的全部消息内容都在内存当中，或者整个消息都保存在文件系统内的一个文件当中的时候，:class:`Parser` API非常有用。当你从可能会为了等待更多输入而阻塞的数据流当中读取消息（比如从套接字当中读取电子邮件消息）的时候，:class:`FeedParser` 会更合适。:class:`FeedParser` 会增量读取并解析消息，并且只有在你关闭语法分析程序的时候才会返回根对象。 这个类与 :class:`BytesParser` 一样，但是处理字符串输入。 行为跟 :class:`BytesFeedParser` 类一致，只不过向 :meth:`~BytesFeedParser.feed` 方法输入的内容必须是字符串。它的实用性有限，因为这种消息只有在其只含有ASCII文字，或者 :attr:`~email.policy.Policy.utf8` 被设置为 ``True`` 且没有二进制格式的附件的时候，才会有效。 