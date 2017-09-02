# HTML生成PDF（Scala + Freemarker + iText）

标签（空格分隔）： 后端技术

---
[Freemarker Docs][1]
[The Flying Saucer User's Guide][2]
## Let's Step by step:
### 1. 首先添加freemarker和iText的maven依赖
```xml
<dependency>
    <groupId>org.freemarker</groupId>
    <artifactId>freemarker</artifactId>
    <version>2.3.26-incubating</version>
</dependency>
<dependency>
    <groupId>org.xhtmlrenderer</groupId>
    <artifactId>flying-saucer-pdf-itext5</artifactId>
    <version>9.1.0</version>
</dependency>
<dependency>
    <groupId>org.xhtmlrenderer</groupId>
    <artifactId>flying-saucer-pdf-itext5</artifactId>
    <version>9.1.0</version>
</dependency>
```

### 2. 基于freemarker快速生成html
Configuration配置：
```scala
val config = new Configuration(Configuration.VERSION_2_3_25)
config.setDefaultEncoding("UTF-8")
config.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER)
val owb = new DefaultObjectWrapperBuilder(Configuration.VERSION_2_3_25)
val ftl = new FileTemplateLoader(new File("src/main/resources/templates"))
config.setTemplateLoader(ftl)
config.setObjectWrapper(owb.build())
```
```
val tmpl = config.getTemplate(templatePath)
val out = new ByteArrayOutputStream
tmpl.process(dataModel, new OutputStreamWriter(out, "UTF-8"))
```

### 3. ftl模板制作
> 在写ftl的有一点需要注意的，因为传入模板中的数据模型是scala对象，在ftl中声明取值的时要使用``${data.xxxField()}``的写法，使用``${data.xxxField}``的写法将获取不到值。[原因解释][3]。

### 4. ITextRender 生成pdf
```
val documentBuilder = DocumentBuilderFactory.newInstance.newDocumentBuilder
val iTextRenderer = new ITextRenderer
val pdf = new ByteArrayOutputStream()
iTextRenderer.setDocument(documentBuilder.parse(new ByteArrayInputStream(htmlBytes)), null)
iTextRenderer.layout()
iTextRenderer.createPDF(pdf)
```
### 5. ITextRender中文问题解决
首先添加itext亚洲字体支持的依赖包：
```xml
<dependency>
    <groupId>com.itextpdf</groupId>
    <artifactId>itext-asian</artifactId>
    <version>5.2.0</version>
</dependency>
```
下载好字体库，然后导入到fontResolver中：
```
val _render = new ITextRenderer
_render.getFontResolver.addFont("src/main/resources/templates/fonts/Microsoft Yahei.ttf", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED)
```
html中的配置：
```
body {
    font-family: "Microsoft YaHei";
}
```


  [1]: http://freemarker.org/docs/
  [2]: https://flyingsaucerproject.github.io/flyingsaucer/r8/guide/users-guide-R8.html
  [3]: https://stackoverflow.com/questions/32201528/not-able-to-read-object-values-in-freemarker-template#answer-32205553