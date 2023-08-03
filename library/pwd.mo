��    *      l              �     �     �     �     �     �     �     �  $   �  =   �  4   .  >   c  	   �  J  �     �     �  
        (     0     B     U     h     z  �   �  M   F  A   �  ;   �  }     �   �  r   5	     �	     �	     �	  
   �	     �	  
   
     
     
     -
  
   :
     E
     K
  �  R
                                     $     =   A  9     <   �     �  �  �     �     �  	        "     )     ;     N     \     m  �   �  H     B   ]  9   �  u   �  �   P  f   �     P     i     y  
   �     �  
   �     �     �     �  
   �     �     �   0 1 2 3 4 5 6 :mod:`pwd` --- The password database :ref:`Availability <availability>`: not Emscripten, not WASI. An interface to the group database, similar to this. An interface to the shadow password database, similar to this. Attribute In traditional Unix the field ``pw_passwd`` usually contains a password encrypted with a DES derived algorithm (see module :mod:`crypt`).  However most modern unices  use a so-called *shadow password* system.  On those unices the *pw_passwd* field only contains an asterisk (``'*'``) or the  letter ``'x'`` where the encrypted password is stored in a file :file:`/etc/shadow` which is not world readable.  Whether the *pw_passwd* field contains anything useful is system-dependent.  If available, the :mod:`spwd` module should be used where access to the encrypted password is required. Index It defines the following items: Login name Meaning Module :mod:`grp` Module :mod:`spwd` Numerical group ID Numerical user ID Optional encrypted password Password database entries are reported as a tuple-like object, whose attributes correspond to the members of the ``passwd`` structure (Attribute field below, see ``<pwd.h>``): Return a list of all available password database entries, in arbitrary order. Return the password database entry for the given numeric user ID. Return the password database entry for the given user name. The uid and gid items are integers, all others are strings. :exc:`KeyError` is raised if the entry asked for cannot be found. This module does not work or is not available on WebAssembly platforms ``wasm32-emscripten`` and ``wasm32-wasi``. See :ref:`wasm-availability` for more information. This module provides access to the Unix user account and password database.  It is available on all Unix versions. User command interpreter User home directory User name or comment field ``pw_dir`` ``pw_gecos`` ``pw_gid`` ``pw_name`` ``pw_passwd`` ``pw_shell`` ``pw_uid`` crypt module Project-Id-Version: Python 3.11
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2023-05-19 14:13+0000
PO-Revision-Date: 2021-06-28 01:11+0000
Last-Translator: WH-2099 <wh2099@outlook.com>, 2023
Language: zh_CN
Language-Team: Chinese (China) (https://app.transifex.com/python-doc/teams/5390/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 0 1 2 3 4 5 6 :mod:`pwd` --- 用户密码数据库 :ref:`可用性 <availability>`: 非 Emscripten，非 WASI。 针对用户组数据库的接口，与本模块类似。 针对影子密码数据库的接口，与本模块类似。 属性 传统的 Unix 系统中，``pw_passwd`` 的值通常使用 DES 导出的算法加密（参阅 :mod:`crypt` 模块）。不过现在的 unix 系统使用 *影子密码* 系统。在这些 unix 上，*pw_passwd* 只包含星号（``'*'``）或字母（``'x'``），而加密的密码存储在文件 :file:`/etc/shadow` 中，此文件不是全局可读的。在 *pw_passwd* 中是否包含有用信息是系统相关的。如果可以访问到加密的密码，就需要使用 :mod:`spwd` 模块了。 索引 本模块定义如下内容： 登录名 含意 模块 :mod:`grp` 模块 :mod:`spwd` 组 ID 数值 用户 ID 数值 密码，可能已经加密 密码数据库中的条目以元组对象返回，属性对应 ``passwd`` 中的结构（属性如下所示，可参考 ``<pwd.h>``）： 返回密码数据库中所有项目的列表，顺序不是固定的。 给定用户的数值 ID，返回密码数据库的对应项目。 给定用户名，返回密码数据库的对应项目。 其中 uid 和 gid 是整数，其他是字符串，如果找不到对应的项目，抛出 :exc:`KeyError` 异常。 此模块在 WebAssembly 平台 ``wasm32-emscripten`` 和 ``wasm32-wasi`` 上不适用或不可用。 请参阅 :ref:`wasm-availability` 了解详情。 此模块可以访问 Unix 用户账户名及密码数据库，在所有 Unix 版本上均可使用。 用户的命令解释器 用户主目录 用户名或备注 ``pw_dir`` ``pw_gecos`` ``pw_gid`` ``pw_name`` ``pw_passwd`` ``pw_shell`` ``pw_uid`` crypt module 