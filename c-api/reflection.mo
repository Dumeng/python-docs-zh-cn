��    	      d               �   
   �   
  �   �   �  {   R  z   �  ^   I  h   �  *     �  <     �  �      x   �  c   R  c   �  T     p   o  0   �   Reflection Return a description string, depending on the type of *func*. Return values include "()" for functions and methods, " constructor", " instance", and " object".  Concatenated with the result of :c:func:`PyEval_GetFuncName`, the result will be a description of *func*. Return a dictionary of the builtins in the current execution frame, or the interpreter of the thread state if no frame is currently executing. Return a dictionary of the global variables in the current execution frame, or ``NULL`` if no frame is currently executing. Return a dictionary of the local variables in the current execution frame, or ``NULL`` if no frame is currently executing. Return the current thread state's frame, which is ``NULL`` if no frame is currently executing. Return the name of *func* if it is a function, class or instance object, else the name of *func*\s type. See also :c:func:`PyThreadState_GetFrame`. Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 00:50+0000
Last-Translator: Alpha Du <alphanow@gmail.com>, 2021
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 反射 根据 *func* 的类型返回描述字符串。 返回值包括函数和方法的 "()", " constructor", " instance" 和 " object"。 与 :c:func:`PyEval_GetFuncName` 的结果连接，结果将是 *func* 的描述。 返回当前执行帧中内置函数的字典，如果当前没有帧正在执行，则返回线程状态的解释器。 返回当前执行帧中全局变量的字典，如果没有当前执行的帧则返回 ``NULL``。 返回当前执行帧中局部变量的字典，如果没有当前执行的帧则返回 ``NULL``。 返回当前线程状态的帧，如果没有当前执行的帧则返回 ``NULL``。 如果 *func* 是函数、类或实例对象，则返回它的名称，否则返回 *func* 的类型的名称。 另请参阅 :c:func:`PyThreadState_GetFrame`。 