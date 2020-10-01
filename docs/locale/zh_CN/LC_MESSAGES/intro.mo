��          �                      �  %  p  �     G  �   S     G  �  [  �   �     �     �  �   �  �   �     p	  	   �	  �  �	  !   L  �  n  o         �   �     �  ]  �  �   �     �     �  �   �  �   �     %  	   ;   A Simple Smart Contract A contract can have multiple public functions, representing different ways to fulfill a contract. Only one of the public functions can be called at a time. In this case, the last operator of ``scriptSig`` has to be the index of the public function called, starting from ``0``. For example, if public function ``larger`` is called, ``scriptSig`` of ``y 2`` can fulfill the contract below, in which ``2`` is the public function index. A public function must end with a ``require()`` call. ``require()`` can also appear in other parts of a public function. A contract can only be fulfilled and succeed when its called public function runs to completion without violating any conditions in ``require()``. In the above example, only ``scriptSig`` (i.e., ``y``) equal to ``this.x`` can fulfill the contract. Constructor Contract in sCrypt is conceptually similar to class in Object Oriented Programming. Each contract provides a template for a certain type of contracts (e.g., P2PHK or multisig), which can be instantiated into concrete runnable contract objects. Default Constructor Each contract has at least one public function. It is denoted with the ``public`` keyword and does not return any value. The function body corresponds to locking script (commonly referred to as ``scriptPubKey``) and its arguments unlocking script (aka, ``scriptSig``). It is visible outside the contract and acts as the entry point into the contract (like ``main`` in ``C`` and ``Java``). Each contract has at most one constructor. It is where contract member variables are initialized. For example, it can initialize the public key hash of a P2PHK contract, or the hash of a secret in a hash puzzle contract. Multiple Public Functions Public Function The ``require()`` function specifies terms/conditions of a contract. It consumes a boolean condition. If the condition is not met, the contract will abort execution and fail. Otherwise, the execution will resume. When no constructor is provided, the compiler will automatically generate a default constructor that initializes every member variable in the order they are declared. For example, is functionally equivalent to require() Project-Id-Version:  sCrypt
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-09-30 16:42-0700
PO-Revision-Date: 2020-10-01 00:49+0000
Last-Translator: Edward Liu <574228@qq.com>, 2020
Language: zh_CN
Language-Team: Chinese (China) (https://www.transifex.com/scrypt/teams/113667/zh_CN/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 一个简单的智能合约示例 一个合约可以有多个公有函数，表示有多种方式可以满足合约。但一次只能调用其中一个。在这种情况下， ``scriptSig`` 的最后一个操作符必须是被调用的公有函数的索引，公有函数索引按照定义顺序从 ``0`` 开始。举例如下，要调用公有函数 ``larger`` ， ``scriptSig`` 要用 ``y 2`` ，其中 ``2`` 是被调用的公有函数的索引。 公有函数的最后一个语句必须是 ``require()`` 。 ``require()`` 也可以出现在公有函数的其他地方。只有在被调用的公有函数执行完毕，并且所有 ``require()`` 中的条件全部被满足时，合约才算执行成功。在上面的例子中，只有 ``scriptSig`` （即 ``y`` ）等于 ``this.x`` 时合约才能执行成功。 构造函数（constructor） sCrypt中的合约（contract）在概念上类似于面向对象编程中的类（class）。每个contract都为特定类型的合约（如：P2PKH或多重签名）提供了模板，可被实例化为可运行的合约对象。 默认构造函数 每个合约至少要有一个公有函数。用 ``public`` 关键字修饰，并且不返回任何值。函数体对应锁定脚本（通常被称为 ``scriptPubKey``），函数参数为解锁脚本（也被称为 ``scriptSig``）。公有函数在合约外部是可见的，是合约的入口（就像 ``C`` 和 ``Java`` 的 ``main`` 函数）。 每个合约最多只能有一个构造函数。用于初始化合约的成员变量。例如，初始化P2PKH合约的公钥哈希，或者哈希谜题（hash puzzle）合约的secret hash。 多个公有函数 公有函数 ``require()`` 函数指定合约的限制条款/条件。它的参数是一个布尔条件表达式。如果条件表达式的值为假，合约将终止执行并失败。否则，将继续执行。 当没有构造函数时，编译器会生成一个默认的构造函数，按照声明顺序初始化每一个成员变量。例如： 在功能上等同于 require() 