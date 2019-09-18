=============================
The sCrypt Language Reference
=============================

sCrypt (pronounced “ess crypt”) is a high-level smart contract language for Bitcoin SV.
Bitcoin supports smart contract with its Forth-like stack based Script language. 
However writing smart contract in native Script is cumbersome and error-prone.
It quickly becomes intractable when the contract size and complexity grow.

Script is designed to facilitate writing smart contract running on chain.

* It is easy to learn. Syntactically, sCrypt is similar to Solidity, making it easier to be adopted by existing smart contract developers. However, the resemblance is only superficial, since sCrypt is compiled into Bitcoin Script by the underlying compiler, instead of EVM bytecode.
* It is statically typed. Type checking can help detect many errors at compile time.
* It comes with a full-fledged `IDE <http://scrypt.studio>`_, including editor, compiler, and debugger. The first version is web based, no installation required to start playing immediately.


.. Warning:: sCrypt is still in experimental phase and not ready for production use.

.. toctree::
   :maxdepth: 2
   :caption: Introduction

   intro

.. toctree::
   :maxdepth: 2
   :caption: Language Specification

   syntax
   loop
   functions

.. toctree::
   :maxdepth: 1
   :caption: sCrypt by Example

   p2pkh
   rpuzzle
   ackermann
   rabin
   multipartyhashpuzzles

Contact
-------
`Slack <https://join.slack.com/t/scryptworkspace/shared_invite/enQtNzQ1OTMyNDk1ODU3LTJmYjE5MGNmNDZhYmYxZWM4ZGY2MTczM2NiNTIxYmFhNTVjNjE5MGYwY2UwNDYxMTQyNGU2NmFkNTY5MmI1MWM>`_

..
    contributing: PR for example contracts

