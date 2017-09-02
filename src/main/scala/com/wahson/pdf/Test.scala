package com.wahson.pdf

import java.io.{File, FileOutputStream}

import scala.collection.mutable
import scala.collection.JavaConverters._

object Test {
  def main(args: Array[String]): Unit = {

    val map = new mutable.HashMap[String, Any]
    map("sellersContractVo") = new Data
    map("logoSrc") = "src/main/resources/templates/iplas-title-logo.png"

    val pdf = PDFactory.createFromHtml("helloworld.ftl", map.asJava)
    val f = new File("target/helloworld.pdf")
    val fos = new FileOutputStream(f)
    fos.write(pdf)
    fos.flush()
    fos.close()
  }
}

class Bean {
  var category:String = "CXXX"
  var designation:String = "DXXX"
  var manufactuerName:String = "MXXX"
  var weight:Double = 0d
  var contractPrice:Double = 10d
  def test(): String = {
    s"${this.category}-${this.designation}"
  }
}

class Data {
  var orderItems:Array[Bean] = Array(new Bean)
  var `type`:Int = 2
  var discount = 1
}