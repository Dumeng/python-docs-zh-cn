��          t               �      �      �            *     )   I  T   s  T   �  p     o   �  �  �  (   �  '   �       �     +     *   .  U   Y  b   �  y     x   �   :c:data:`Py_False` is immortal. :c:data:`Py_True` is immortal. Boolean Objects Booleans in Python are implemented as a subclass of integers.  There are only two booleans, :c:data:`Py_False` and :c:data:`Py_True`.  As such, the normal creation and deletion functions don't apply to booleans.  The following macros are available, however. Return :c:data:`Py_False` from a function. Return :c:data:`Py_True` from a function. Return :c:data:`Py_True` or :c:data:`Py_False`, depending on the truth value of *v*. Return true if *o* is of type :c:data:`PyBool_Type`.  This function always succeeds. The Python ``False`` object.  This object has no methods and is `immortal <https://peps.python.org/pep-0683/>`_. The Python ``True`` object.  This object has no methods and is `immortal <https://peps.python.org/pep-0683/>`_. Project-Id-Version: Python 3.12
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-06-30 14:13+0000
PO-Revision-Date: 2021-06-28 00:47+0000
Last-Translator: Freesand Leo <yuqinju@163.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :c:data:`Py_False` 是永久性对象。 :c:data:`Py_True` 是永久性对象。 布尔对象 在 Python 中布尔值是作为整数的子类实现的。 只有两个布尔值，:c:data:`Py_False` 和 :c:data:`Py_True`。 因此，正常的创建和删除功能不适用于布尔值。 不过，下列的宏则是可用的。 从一个函数返回 :c:data:`Py_False`。 从一个函数返回 :c:data:`Py_True`。 返回 :c:data:`Py_True` 或 :c:data:`Py_False`，具体取决于 *v* 的逻辑值。 如果 *o* 的类型为 :c:data:`PyBool_Type` 则返回真值。 此函数总是会成功执行。 Python ``False`` 对象。 该对象没有任何方法并且是 `永久性对象 <https://peps.python.org/pep-0683/>`_。 Python ``True`` 对象。 该对象没有任何方法并且是 `永久性对象 <https://peps.python.org/pep-0683/>`_。 