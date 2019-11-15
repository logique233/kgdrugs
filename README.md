![](https://github.com/logique233/kgdrugs/workflows/CI/badge.svg)

# kgdrugs
药品舆情知识图谱
## 后端API列表（http://localhost:8080/）

| 请求类型 | API接口               | 参数设置                                                     | 接口说明                         |
| -------- | --------------------- | ------------------------------------------------------------ | -------------------------------- |
| POST     | /                     | NULL                                                         | 根节点返回页面（kg/home）主页    |
| GET      | /getgraph             | NULL                                                         | 返回节点种类列表                 |
| POST     | /getdomaingraph       | GraphQuery query                                             | 返回某一节点域内所有的节点和关系 |
| POST     | /getalldomaingraph    | GraphQuery query                                             | 返回所有节点域内的节点和关系     |
| POST     | /getcypherresult      | String cypher                                                | 执行自定义CQL语句                |
| POST     | /getrelationnodecount | String domain, long nodeid                                   | 返回某个节点的关系数             |
| POST     | /createdomain         | String domain                                                | 创建节点                         |
| POST     | /getmorerelationnode  | String domain, String nodeid                                 | 得到某一域内某一节点有关联的节点 |
| POST     | /updatenodename       | String domain, String nodeid, String nodename                | 更新某一域内某一节点的名字       |
| POST     | /updateCorrdOfNode    | String domain, String uuid, Double fx, Double fy             | 更新某一域内节点的坐标属性       |
| POST     | /createnode           | QAEntityItem entity, HttpServletRequest request,                                             HttpServletResponse response | 创建节点                         |
| POST     | /batchcreatenode      | String domain, String sourcename, String[] targetnames,String relation | 批量创建节点间的关系             |
| POST     | /batchcreatechildnode | String domain, Integer entitytype,                                                            String[] sourcenames | 批量创建子节点                   |
| POST     | /createlink           | String domain, long sourceid, long targetid, String ship     | 创建链接                         |
| POST     | /updatelink           | String domain, long shipid, String shipname                  | 更新链接名                       |
| POST     | /deletenode           | String domain, long nodeid                                   | 删除节点                         |
| POST     | /deletedomain         | Integer domainid, String domain                              | 删除域名                         |
| POST     | /deletelink           | String domain, long shipid                                   | 删除关系                         |
| POST     | /importgraph          | @RequestParam(value = "file", required = true) MultipartFile file,                              HttpServletRequest request, HttpServletResponse response | 导入图谱                         |
| POST     | /exportgraph          | HttpServletRequest request, HttpServletResponse response     | 导出图谱                         |
| POST     | /download/{filename}  | @PathVariable("filename") String filename, HttpServletRequest request,                       HttpServletResponse response | 下载图谱                         |
| POST     | /getnodeimage         | int domainid, int nodeid                                     | 得到节点图片                     |
| POST     | /getnodecontent       | int domainid, int nodeid                                     | 获取节点内容                     |
| POST     | /getnodedetail        | int domainid, int nodeid                                     | 获取节点详细信息                 |
| POST     | /savenodeimage        | @RequestBody Map<String, Object> params                      | 保存节点图像                     |
| POST     | /savenodecontent      | @RequestBody Map<String, Object> params                      | 保存节点内容                     |

