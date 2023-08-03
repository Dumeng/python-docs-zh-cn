��    $      <              \     ]     m  )   z  	   �  1   �     �  �   �  �   �     o  p   x     �     �  @       E  c   M  �   �  8  U  ]   �  �   �      �	     �	     �	      
  
   
  	   
  	   
     %
     *
     B
  "   a
     �
     �
     �
     �
     �
  �  �
     �  
   �  '   �  
   �  -   �  
   	  �     �   �     |  m   �     �     �  P       ]  Y   d  �   �  (  c  Q   �  �   �      �     �     �     �  
   �  	   �  	   �               %  %   E     k     �     �     �     �   ! (exclamation) * (asterisk) **Source code:** :source:`Lib/fnmatch.py` - (minus) :mod:`fnmatch` --- Unix filename pattern matching ? (question mark) Also note that :func:`functools.lru_cache` with the *maxsize* of 32768 is used to cache the compiled regex patterns in the following functions: :func:`fnmatch`, :func:`fnmatchcase`, :func:`.filter`. Construct a list from those elements of the iterable *names* that match *pattern*. It is the same as ``[n for n in names if fnmatch(n, pattern)]``, but implemented more efficiently. Example: For a literal match, wrap the meta-characters in brackets. For example, ``'[?]'`` matches the character ``'?'``. Meaning Module :mod:`glob` Note that the filename separator (``'/'`` on Unix) is *not* special to this module.  See module :mod:`glob` for pathname expansion (:mod:`glob` uses :func:`.filter` to match pathname segments).  Similarly, filenames starting with a period are not special for this module, and are matched by the ``*`` and ``?`` patterns. Pattern Return the shell-style *pattern* converted to a regular expression for using with :func:`re.match`. Test whether *filename* matches *pattern*, returning :const:`True` or :const:`False`; the comparison is case-sensitive and does not apply :func:`os.path.normcase`. Test whether the *filename* string matches the *pattern* string, returning :const:`True` or :const:`False`.  Both parameters are case-normalized using :func:`os.path.normcase`. :func:`fnmatchcase` can be used to perform a case-sensitive comparison, regardless of whether that's standard for the operating system. This example will print all file names in the current directory with the extension ``.txt``:: This module provides support for Unix shell-style wildcards, which are *not* the same as regular expressions (which are documented in the :mod:`re` module).  The special characters used in shell-style wildcards are: Unix shell-style path expansion. [] (square brackets) ``*`` ``?`` ``[!seq]`` ``[seq]`` filenames glob in glob-style wildcards matches any character in *seq* matches any character not in *seq* matches any single character matches everything module re wildcard expansion Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:06+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 ! (感叹号) * (星号) **源代码:** :source:`Lib/fnmatch.py` - (减号) :mod:`fnmatch` --- Unix 文件名模式匹配 ? (问号) 还要注意是使用将 *maxsize* 设为 32768 的 :func:`functools.lru_cache` 来缓存下列函数中的已编译正则表达式: :func:`fnmatch`, :func:`fnmatchcase`, :func:`.filter`。 基于可迭代对象 *names* 中匹配 *pattern* 的元素构造一个列表。 它等价于 ``[n for n in names if fnmatch(n, pattern)]``，但实现得更有效率。 示例: 对于字面值匹配，请将原字符用方括号括起来。 例如，``'[?]'`` 将匹配字符 ``'?'``。 含意 模块 :mod:`glob` 注意文件名分隔符 (Unix 上为 ``'/'``) *不会* 被此模块特别对待。 请参见 :mod:`glob` 模块了解文件名扩展 (:mod:`glob` 使用 :func:`.filter` 来匹配文件名的各个部分)。 类似地，以一个句点打头的文件名也不会被此模块特别对待，可以通过 ``*`` 和 ``?`` 模式来匹配。 模式 返回 shell 风格 *pattern* 转换成的正则表达式以便用于 :func:`re.match`。 检测 *filename* 是否匹配 *pattern*，返回 :const:`True` 或 :const:`False`；此比较是大小写敏感的，并且不会应用 :func:`os.path.normcase`。 检测 *filename* 字符串是否匹配 *pattern* 字符串，返回 :const:`True` 或 :const:`False`。 两个形参都会使用 :func:`os.path.normcase` 进行大小写正规化。 :func:`fnmatchcase` 可被用于执行大小写敏感的比较，无论这是否为所在操作系统的标准。 这个例子将打印当前目录下带有扩展名 ``.txt`` 的所有文件名:: 此模块提供了 Unix shell 风格的通配符，它们 *并不* 等同于正则表达式（关于后者的文档参见 :mod:`re` 模块）。 shell 风格通配符所使用的特殊字符如下： Unix shell 风格路径扩展。 [] (方括号) ``*`` ``?`` ``[!seq]`` ``[seq]`` 文件名 glob 使用 glob 风格的通配符 匹配 *seq* 中的任何字符 匹配任何不在 *seq* 中的字符 匹配任何单个字符 匹配所有 module re 通配符扩展 