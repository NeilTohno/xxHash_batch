# xxHash_batch
一个很渣的批处理

a1. 运行 _gen2.bat 批量创建校验码，
  【文件必须要放在 or 文件夹下,任何文件都行】
  （建议只运行一次，下次运行要文件夹里面的 H2.xxHash）

a2. 单独创建校验码，直接把文件拖到 _generate1.bat 里就行

b1. 要校验文件直接运行 _check.bat 即可
  【文件必须要放在 move 文件夹下,任何文件都行】
  （若重复运行 _gen2.bat，则可能会校验多遍）

b2. xxh3 和 xxh128 算法， cpu 要支持 sse2 或 avx2 或 avx512 会比较快

b3. _gen2.bat 处理完的文件都会被移动到 move 文件夹里
  _check.bat 处理完的文件都会被移动到 or 文件夹里

c1. xxhsum.exe 是原作者的编译的
https://github.com/Cyan4973/

c2. 我写的那些都可以改了用的额
