��          �               <  :   =     x     �     �  �  �     �  �   �     �     �  �   �  "  ?     b  P   q     �  )   �  �    d   �	  �  .
  <   �     #     ?     L  �  Y     !  �   .     �     �  �   �  �  �  	   ^  K   h     �  !   �  �  �  \   �   :ref:`Loop syntax <loop>` can also be used inside ``asm``. An example is shown below. Assembly Variable Calling Convention For a function to be written in Script, its entire body must be enclosed by ``asm`` mode. Function parameters are on top of the stack, in reverse order as declared. For example, for a function with signature ``function foo(int p0, bytes p1, bool p2): int``, ``p2`` will be top of the stack, ``p1`` second from top, and ``p0`` third from top when entering ``asm`` mode. When exiting ``asm`` mode, the return value is on top of the stack. All other items in the stack before the call must remain intact. Inline Assembly Inline assembly bypasses many features of sCrypt such as type checking. Extreme caution has to be taken using this advanced feature. Also it is case-insensitive for compatibility with external tools. Loop Notes Script can be embedded directly into sCrypt source code using assembly representation. An sCrypt function can be written in Script and called like a regular sCrypt function. Script is a low-level language and acts as assembly for the `Bitcoin Virtual Machine`_. Usually, developers do not have to deal with it directly and can use high-level languages like sCrypt. However, there are cases where using Script is desirable. For example, customized script is optimized and thus more efficient than script generated by sCrypt. Or script is generated using external tools (like `MiniForth <https://powping.com/posts/95e53a7305ad9d333d072575946d0cfd0d6321f40af40f9c66c70955ada94e58>`_) and needs to be integrated into sCrypt. String Literal String literal is a double quoted UTF8 string, which can be used inside ``asm``. The equivalent sCrypt code is: Three assembly functions are shown below. Variables can be used inside ``asm`` mode by prefix ``$``. Unlike the rest of Script, which is copied verbatim into the final script output, a variable is prefixed by its scope to avoid name collision, uniquely identified by the function and contract it is within. For example, supposed a variable ``$var`` is used inside function ``func`` inside contract ``contractFoo``, it will show up in the final script output as ``$contractFoo.func.var``. ``i`` and ``j`` are :ref:`Induction variable <induction-var-label>` . ``$sum`` is assembly variable. Project-Id-Version:  sCrypt
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-03-28 22:20+0800
PO-Revision-Date: 2021-10-07 14:25+0000
Last-Translator: qtom zheng <zhfnjust@qq.com>, 2022
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/scrypt-1/teams/121283/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.9.1
 :ref:`循环语法 <loop>` 也可以在 ``asm`` 中使用。 一个例子如下所示。 汇编变量 调用约定 对于用脚本编写的函数，它的整个函数主体必须用 ``asm`` 块包围。函数参数位于栈顶，与声明的顺序相反。例如，对于签名为 ``function foo(int p0, bytes p1, bool p2) : int`` 的函数，``p2`` 位于栈顶，``p1`` 是从栈顶倒数第二个，而 ``p0`` 进入 `asm` 是第三个。当退出 ``asm`` 模式时，需要弹出栈里的所有参数，并把返回值放到栈顶。栈里其他元素保持不变。 内联汇编 内联汇编绕过了 sCrypt 的许多功能，例如类型检查。使用此高级功能时必须格外小心。此外，为了与外部工具兼容，它不区分大小写。 循环 注意 用汇编表示法可以直接把脚本嵌入到sCrypt源代码中。可以用脚本编写sCrypt函数，并像正常的sCrypt函数一样被调用。 脚本是一种低级语言，充当 `比特币虚拟机`_ 的程序集。通常，开发人员不必直接处理它，可以使用 sCrypt 等高级语言。但是，有些情况下需要使用 Script。例如，自定义脚本经过优化，因此比 sCrypt 生成的脚本更高效。或者脚本是使用外部工具（如 `MiniForth <https://powping.com/posts/95e53a7305ad9d333d072575946d0cfd0d6321f40af40f9c66c70955ada94e58>`_）生成的，需要集成到sCrypt中。 字符串 字符串是一个双引号 UTF8 字符串，可以在 ``asm`` 中使用。 等价的 sCrypt 代码是： 三个汇编函数如下所示。 变量可以通过前缀 ``$`` 在 ``asm`` 模式中使用。与脚本的其余部分不同，它被完整复制到最终脚本输出中，变量以其作用域为前缀以避免名称冲突，由它所在的函数和契约唯一标识。例如，假设在合约 ``contractFoo`` 内的函数 ``func`` 中使用了一个变量 ``$var``，它将在最终的脚本输出中显示为 ``$contractFoo.func.var``。 ``i`` 和 ``j`` 是 :ref:`归纳变量 <induction-var-label>`。 ``$sum`` 是汇编变量。 