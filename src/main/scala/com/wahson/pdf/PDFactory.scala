package com.wahson.pdf

import java.io.{ByteArrayInputStream, ByteArrayOutputStream, File, OutputStreamWriter}
import javax.xml.parsers.DocumentBuilderFactory

import com.itextpdf.text.pdf.BaseFont
import freemarker.cache.FileTemplateLoader
import freemarker.template.{Configuration, DefaultObjectWrapperBuilder, TemplateExceptionHandler}
import org.xhtmlrenderer.pdf.ITextRenderer

object PDFactory {

  lazy val config = {
    val _config = new Configuration(Configuration.VERSION_2_3_25)
    _config.setDefaultEncoding("UTF-8")
    _config.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER)
    val owb = new DefaultObjectWrapperBuilder(Configuration.VERSION_2_3_25)
    val ftl = new FileTemplateLoader(new File("src/main/resources/templates"))
    _config.setTemplateLoader(ftl)
    _config.setObjectWrapper(owb.build())
    _config
  }

  lazy val documentBuilder = DocumentBuilderFactory.newInstance.newDocumentBuilder

  lazy val iTextRenderer = {
    val _render = new ITextRenderer
//    _render.getFontResolver.addFont("src/main/resources/templates/fonts/Microsoft Yahei.ttf", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED)
    _render.getFontResolver.addFont("/Library/Fonts/Microsoft Yahei.ttf", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED)
    _render
  }

  def createFromHtml(templatePath: String, variables: java.util.Map[String, Any]): Array[Byte] = {
    this.createPDF(this.createHTML(templatePath, variables))
  }

  def createHTML(templatePath: String, variables: java.util.Map[String, Any]): Array[Byte] = {
    println("start to create html")
    val tmpl = this.config.getTemplate(templatePath)
    val out = new ByteArrayOutputStream
    tmpl.process(variables, new OutputStreamWriter(out, "UTF-8"))
    out.flush()
    out.close()
    println("finish to create html")
    out.toByteArray
  }

  def createPDF(html: Array[Byte]): Array[Byte] = {
    println("start to create pdf")
    val pdf = new ByteArrayOutputStream()
    iTextRenderer.setDocument(documentBuilder.parse(new ByteArrayInputStream(html)), null)
    iTextRenderer.layout()
    iTextRenderer.createPDF(pdf)
    pdf.flush()
    pdf.close()
    println("finish to create pdf")
    pdf.toByteArray
  }

  def addFont(path: String): Unit = {
    iTextRenderer.getFontResolver.addFont(path, BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED)
  }
  def addFont(path: String, encoding: String, embedded: Boolean): Unit = {
    iTextRenderer.getFontResolver.addFont(path, encoding, embedded)
  }

}
