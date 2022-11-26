# usage


Use this tools you can make a planet file to replace the internal planet of Zerotier. Of course you can also use zerotier-cli genmoon to create planet file ，but you should change the worldType from "moon" to "planet" in file moon.json.[Document here](https://docs.zerotier.com/zerotier/moons)

使用这个工具，可以生成自己的planet 配置文件，替换系统内置的planet。 这样客户端就可以直接找到自己的服务作为planet。 当然你可以用 zerotier-cli genmoon 生成planet文件，但是需要修改moon.json 文件。 相关链接 [文档](https://docs.zerotier.com/zerotier/moons)

```
mkmoonworld [moon.json path] ...
```
# compile

```
./buildmoon.sh
```

生成的文件名 world.bin，生成的文件改名 planet， 然后替换安装的zerotier 目录下的planet文件。 


# credit
Thanks to @kaaass for https://github.com/kaaass/ZeroTierOne which source come from

