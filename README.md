# changgou-docker-compose
用于畅购项目开发的一些 docker 环境

## Elasticsearch

配置文件中 `elasticsearch` 没有配置集群，只有一个实例，默认端口为 `9200` ，该仓库中`config` 文件夹为 `elasticsearch` 的配置文件夹，`plugins` 为 `elasticsearch` 的插件目录，已包含 `ik` 分词插件

## Kibana

`Kibana` 是 `elasticsearch` 官方推出的一个工具，还是比较好用的，具体使用可以百度下，我也不太会使用，在本地可以通过地址`http://虚拟机地址:5601`来访问管理页面，假如你是本地直接安装的`docker` 的话那么你就可以直接用 `http://localhost:5601` 进行访问

## mysql

外部访问端口为`33061`，用户名为：`root`，密码为：`root`

## Redis

外部访问端口为`6379`，未设置用户名和密码

## RabbitMQ

RabbbitMQ  manager访问端口为 `15672` ，tcp 连接端口为`5672`，使用和课程讲的一样

## morunchang/fastdfs

按照课程配置即可，测试过，可以上传文件

## 建议

> 虚拟机内存尽量在 1G 以上，磁盘空间大点，启动的容器太多，看了项目中的环境还有个 canal-server 这个镜像，但实在碍于技术有限不会使用，所以集成了，但是给注释掉了，有想使用的可以去掉 docker-compose.yml  的 canal 节点的注释去测试使用