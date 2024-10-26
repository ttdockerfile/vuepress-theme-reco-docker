[vuepress-theme-reco](https://github.com/vuepress-reco/vuepress-theme-reco)的依赖预下载镜像，方便自动化构建

在预下载镜像中我新增了`git`和`uuid`依赖

构建`Dockerfile`示例

`version`以`rc.22`为例

```Dockerfile
FROM buyfakett/node:20-vuepress-theme-reco-${version} as build
WORKDIR /app
COPY . /app
RUN npm run build
# 打包结果在/app/.vuepress/dist/

FROM buyfakett/docker-static-website as runner
COPY --from=build /app/.vuepress/dist/ .
```