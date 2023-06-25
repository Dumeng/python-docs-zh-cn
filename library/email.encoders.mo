��          �                 0        N  E  n    �  	   �  )   �  e   �  �   U       O   ,  Z   |  �   �    �  �   �	    n
  �  u  .   3      b  D  �    �     �  !   �  q     �   t  �  K  6   F  e   }  �   �  �   �  �   r    "   **Source code:** :source:`Lib/email/encoders.py` :mod:`email.encoders`: Encoders Encodes the payload into base64 form and sets the :mailheader:`Content-Transfer-Encoding` header to ``base64``.  This is a good encoding to use when most of your payload is unprintable data since it is a more compact form than quoted-printable.  The drawback of base64 encoding is that it renders the text non-human readable. Encodes the payload into quoted-printable form and sets the :mailheader:`Content-Transfer-Encoding` header to ``quoted-printable`` [#]_. This is a good encoding to use when most of your payload is normal printable data, but contains a few unprintable characters. Footnotes Here are the encoding functions provided: Note that encoding with :meth:`encode_quopri` also encodes all tabs and space characters in the data. Note that these functions are not meaningful for a multipart message.  They must be applied to individual subparts instead, and will raise a :exc:`TypeError` if passed a message whose type is multipart. The :mod:`email` package provides some convenient encoders in its :mod:`encoders` module.  These encoders are actually used by the :class:`~email.mime.audio.MIMEAudio` and :class:`~email.mime.image.MIMEImage` class constructors to provide default encodings.  All encoder functions take exactly one argument, the message object to encode.  They usually extract the payload, encode it, and reset the payload to this newly encoded value.  They should also set the :mailheader:`Content-Transfer-Encoding` header as appropriate. The remaining text in this section is the original documentation of the module. This does nothing; it doesn't even set the :mailheader:`Content-Transfer-Encoding` header. This doesn't actually modify the message's payload, but it does set the :mailheader:`Content-Transfer-Encoding` header to either ``7bit`` or ``8bit`` as appropriate, based on the payload data. This module is deprecated in Python 3.  The functions provided here should not be called explicitly since the :class:`~email.mime.text.MIMEText` class sets the content type and CTE header using the *_subtype* and *_charset* values passed during the instantiation of that class. This module is part of the legacy (``Compat32``) email API.  In the new API the functionality is provided by the *cte* parameter of the :meth:`~email.message.EmailMessage.set_content` method. When creating :class:`~email.message.Message` objects from scratch, you often need to encode the payloads for transport through compliant mail servers. This is especially true for :mimetype:`image/\*` and :mimetype:`text/\*` type messages containing binary data. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:04+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 **源代码:** :source:`Lib/email/encoders.py` :mod:`email.encoders`: 编码器 将有效载荷编码为 base64 形式，并将 :mailheader:`Content-Transfer-Encoding` 标头设为 ``base64``。 当你的载荷主要包含不可打印数据时这是一种很好用的编码格式，因为它比 quoted-printable 更紧凑。 base64 编码格式的缺点是它会使文本变成人类不可读的形式。 将有效数据编码为经转换的可打印形式，并将 :mailheader:`Content-Transfer-Encoding` 标头设置为 ``quoted-printable`` [#]_。 当大多数实际的数据是普通的可打印数据但包含少量不可打印的字符时，这是一个很好的编码。 备注 下面是提供的编码函数： 请注意使用 :meth:`encode_quopri` 编码格式还会对数据中的所有制表符和空格符进行编码。 请注意，这些函数对于多段消息没有意义。 它们必须应用到各个单独的段上面，而不是整体。如果直接传递一个多段类型的消息，会产生一个 :exc:`TypeError` 错误。 :mod:`email` 包在其 :mod:`encoders` 模块中提供了一些方便的编码器。 这些编码器实际上由 :class:`~email.mime.audio.MIMEAudio` 和 :class:`~email.mime.image.MIMEImage` 类构造器所使用以提供默认编码格式。 所有编码器函数都只接受一个参数，即要编码的消息对象。 它们通常会提取有效载荷，对其进行编码，并将载荷重置为这种新编码的值。  它们还应当相应地设置 :mailheader:`Content-Transfer-Encoding` 标头。 本节中的其余文本是此模块的原始文档。 此函数什么都不会做；它甚至不会设置 :mailheader:`Content-Transfer-Encoding` 标头。 此函数并不实际改变消息的有效载荷，但它会基于载荷数据将 :mailheader:`Content-Transfer-Encoding` 标头相应地设为 ``7bit`` 或 ``8bit``。 此模块在 Python 3 中已弃用。 这里提供的函数不应被显式地调用，因为 :class:`~email.mime.text.MIMEText` 类会在类实例化期间使用 *_subtype* 和 *_charset* 值来设置内容类型和 CTE 标头。 此模块是旧版 (``Compat32``) email API 的组成部分。 在新版 API 中将由 :meth:`~email.message.EmailMessage.set_content` 方法的 *cte* 形参提供该功能。 当创建全新的 :class:`~email.message.Message` 对象时，你经常需要对载荷编码以便通过兼容的邮件服务器进行传输。 对于包含二进制数据的 :mimetype:`image/\*` 和 :mimetype:`text/\*` 类型的消息来说尤其如此。 