��    !      $              ,  '   -  �   U  	   �  	     0    �  =  7   �  �   
  |   �  �     �   �  �   *  �   �  �   C	  �   �	  G   �
  G   �
  �   #  �   �  �   }  F   $  �  k  �   �  �   �  8   �  �   �  �   �     �  	   �     �  9   �  <     �  I  (     �   0  	   �     �    �  W  �  *   <  �   g  }   �  {   y  m   �  n   c  y   �  �   L  �   �  =   �  :   �  �     �   �  �   Y  ?     T  A  �   �   �   O!  3   "  �   6"  �   �"     �#     �#  	   �#  9   �#  <   &$   :mod:`unicodedata` --- Unicode Database Even if two unicode strings are normalized and look the same to a human reader, if one has combining characters and the other doesn't, they may not compare equal. Examples: Footnotes For each character, there are two normal forms: normal form C and normal form D. Normal form D (NFD) is also known as canonical decomposition, and translates each character into its decomposed form. Normal form C (NFC) first applies a canonical decomposition, then composes pre-combined characters again. In addition to these two forms, there are two additional normal forms based on compatibility equivalence. In Unicode, certain characters are supported which normally would be unified with other characters. For example, U+2160 (ROMAN NUMERAL ONE) is really the same thing as U+0049 (LATIN CAPITAL LETTER I). However, it is supported in Unicode for compatibility with existing character sets (e.g. gb2312). In addition, the module exposes the following constant: Look up character by name.  If a character with the given name is found, return the corresponding character.  If not found, :exc:`KeyError` is raised. Return the normal form *form* for the Unicode string *unistr*. Valid values for *form* are 'NFC', 'NFKC', 'NFD', and 'NFKD'. Return whether the Unicode string *unistr* is in the normal form *form*. Valid values for *form* are 'NFC', 'NFKC', 'NFD', and 'NFKD'. Returns the bidirectional class assigned to the character *chr* as string. If no such value is defined, an empty string is returned. Returns the canonical combining class assigned to the character *chr* as integer. Returns ``0`` if no combining class is defined. Returns the character decomposition mapping assigned to the character *chr* as string. An empty string is returned in case no such mapping is defined. Returns the decimal value assigned to the character *chr* as integer. If no such value is defined, *default* is returned, or, if not given, :exc:`ValueError` is raised. Returns the digit value assigned to the character *chr* as integer. If no such value is defined, *default* is returned, or, if not given, :exc:`ValueError` is raised. Returns the east asian width assigned to the character *chr* as string. Returns the general category assigned to the character *chr* as string. Returns the mirrored property assigned to the character *chr* as integer. Returns ``1`` if the character has been identified as a "mirrored" character in bidirectional text, ``0`` otherwise. Returns the name assigned to the character *chr* as a string. If no name is defined, *default* is returned, or, if not given, :exc:`ValueError` is raised. Returns the numeric value assigned to the character *chr* as float. If no such value is defined, *default* is returned, or, if not given, :exc:`ValueError` is raised. Support for name aliases [#]_ and named sequences [#]_ has been added. The Unicode standard defines various normalization forms of a Unicode string, based on the definition of canonical equivalence and compatibility equivalence. In Unicode, several characters can be expressed in various way. For example, the character U+00C7 (LATIN CAPITAL LETTER C WITH CEDILLA) can also be expressed as the sequence U+0043 (LATIN CAPITAL LETTER C) U+0327 (COMBINING CEDILLA). The module uses the same names and symbols as defined by Unicode Standard Annex #44, `"Unicode Character Database" <https://www.unicode.org/reports/tr44/>`_.  It defines the following functions: The normal form KD (NFKD) will apply the compatibility decomposition, i.e. replace all compatibility characters with their equivalents. The normal form KC (NFKC) first applies the compatibility decomposition, followed by the canonical composition. The version of the Unicode database used in this module. This is an object that has the same methods as the entire module, but uses the Unicode database version 3.2 instead, for applications that require this specific version of the Unicode database (such as IDNA). This module provides access to the Unicode Character Database (UCD) which defines character properties for all Unicode characters. The data contained in this database is compiled from the `UCD version 15.0.0 <https://www.unicode.org/Public/15.0.0/ucd>`_. Unicode character database https://www.unicode.org/Public/15.0.0/ucd/NameAliases.txt https://www.unicode.org/Public/15.0.0/ucd/NamedSequences.txt Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-26 14:12+0000
PO-Revision-Date: 2021-06-28 01:16+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :mod:`unicodedata` --- Unicode 数据库 即使两个 unicode 字符串被规范化并且人类读者看起来相同，如果一个具有组合字符而另一个没有，则它们可能无法相等。 示例： 备注 对于每个字符，有两种正规形式：正规形式 C 和正规形式 D 。正规形式D（NFD）也称为规范分解，并将每个字符转换为其分解形式。 正规形式C（NFC）首先应用规范分解，然后再次组合预组合字符。 除了这两种形式之外，还有两种基于兼容性等效的其他常规形式。 在 Unicode 中，支持某些字符，这些字符通常与其他字符统一。 例如， U+2160（ROMAN NUMERAL ONE）与 U+0049（LATIN CAPITAL LETTER I）完全相同。 但是， Unicode 支持它与现有字符集（例如 gb2312 ）的兼容性。 此外，该模块暴露了以下常量： 按名称查找字符。如果找到具有给定名称的字符，则返回相应的字符。 如果没有找到，则 :exc:`KeyError` 被引发。 返回 Unicode 字符串 *unistr* 的正常形式 *form* 。 *form* 的有效值为 'NFC' 、 'NFKC' 、 'NFD' 和 'NFKD' 。 判断 Unicode 字符串 *unistr* 是否为正规形式 *form*。 *form* 的有效值为 'NFC', 'NFKC', 'NFD' 和 'NFKD'。 返回分配给字符 *chr* 的双向类作为字符串。如果未定义此类值，则返回空字符串。 返回分配给字符 *chr* 的规范组合类作为整数。如果没有定义组合类，则返回 ``0`` 。 返回分配给字符 *chr* 的字符分解映射作为字符串。如果未定义此类映射，则返回空字符串。 返回分配给字符 *chr* 的十进制值作为整数。 如果没有定义这样的值，则返回 *default* ，如果没有给出，则 :exc:`ValueError` 被引发。 返回分配给字符 *chr* 的数字值作为整数。 如果没有定义这样的值，则返回 *default* ，如果没有给出，则 :exc:`ValueError` 被引发。 返回分配给字符 *chr* 的东亚宽度作为字符串。 返回分配给字符 *chr* 的常规类别为字符串。 返回分配给字符 *chr* 的镜像属性为整数。如果字符在双向文本中被识别为“镜像”字符，则返回 ``1`` ，否则返回 ``0`` 。 返回分配给字符 *chr* 的名称作为字符串。如果没有定义名称，则返回 *default* ，如果没有给出，则 :exc:`ValueError` 被引发。 返回分配给字符 *chr* 的数值作为浮点数。 如果没有定义这样的值，则返回 *default* ，如果没有给出，则 :exc:`ValueError` 被引发。 已添加对名称别名 [#]_ 和命名序列 [#]_ 的支持。 Unicode 标准基于规范等价和兼容性等效的定义定义了 Unicode 字符串的各种规范化形式。在 Unicode 中，可以以各种方式表示多个字符。 例如，字符 U+00C7 （带有 CEDILLA 的 LATIN CAPITAL LETTER C ）也可以表示为序列 U+0043（ LATIN CAPITAL LETTER C ）U+0327（ COMBINING CEDILLA ）。 该模块使用与 Unicode 标准附件 #44 `“Unicode 字符数据库” <https://www.unicode.org/reports/tr44/>`_ 中所定义的相同名称和符号。 它定义了以下函数： 正规形式KD（NFKD）将应用兼容性分解，即用其等价项替换所有兼容性字符。 正规形式KC（NFKC）首先应用兼容性分解，然后是规范组合。 此模块中使用的 Unicode 数据库的版本。 这是一个与整个模块具有相同方法的对象，但对于需要此特定版本的 Unicode 数据库（如 IDNA ）的应用程序，则使用 Unicode 数据库版本 3.2 。 此模块提供了对 Unicode Character Database (UCD) 的访问，其中定义了所有 Unicode 字符的字符属性。 此数据库中包含的数据编译自 `UCD 版本 15.0.0 <https://www.unicode.org/Public/15.0.0/ucd>`_。 Unicode 字符 数据库 https://www.unicode.org/Public/15.0.0/ucd/NameAliases.txt https://www.unicode.org/Public/15.0.0/ucd/NamedSequences.txt 