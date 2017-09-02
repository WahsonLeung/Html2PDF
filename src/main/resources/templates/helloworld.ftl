<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>销售合同</title>
    <style>
        @page {
            size: 870px 1024px;
            margin: 20px;
            -fs-flow-top: "header";
            -fs-flow-bottom: "footer";
            -fs-flow-left: "left";
            -fs-flow-right: "right";
        }

        body {
            font-family: "Microsoft YaHei";
            padding: 0;
            margin: 0;
        }

        .pull-right {
            float: right;
        }

        .pull-left {
            float: left;
        }

        .t-orange {
            color: #ffa238;
            margin-right: 2px;
        }

        .clear:after {
            clear: both;
        }

        .dialog-cont-full {
            padding: 0;
            font-size: 8px;
            line-height: 18px;
        }

        /*快塑订单样式表*/
        p {
            margin: 0;
        }

        /*合同*/
        .contract-header {
            height: 20px;
            line-height: 18px;
            overflow: hidden;
            border-bottom: 1px solid #ccc;
        }

        .contract-logo {
            width: 60px;
        }

        .contract-logo img {
            width: auto;
            height: 20px;
        }

        .contract-cont {
            text-align: left;
            font-size: 10px;
        }

        .contract-cont p {
            word-wrap: break-word;
            word-break: break-all;
            white-space: normal;
        }

        .contract-cont h3.contract-title {
            margin: 5px 0 5px 0;
            font-size: 20px;
            text-align: center;
            letter-spacing: 20px;
            line-height: 18px;
        }

        .contract-top {
            overflow: hidden;
            line-height: 16px;
        }

        .contract-top b {
            font-size: 10px;
            font-weight: 100;
        }

        .contract-cont strong {
            padding: 0 5px;
        }

        .table-goods {
            font-size: 10px;
            border: solid 2px #333333;
            margin: 0;
            padding: 0;
        }

        .table-goods tr th, .table-goods tr td {
            text-align: center;
            border-left: 1px solid #333333;
            border-top: 1px solid #333333;
            padding: 5px 8px;
        }

        .table-goods tr th:first-child, .table-goods tr td:first-child {
            border-left: none;
        }

        .table-goods tr:first-child td {
            border-top: none;
        }

        .table-ct-foot {
            font-size: 10px;
            border: 2px solid #333333;
        }

        .table-ct-foot tr th {
            text-align: center;
            line-height: 16px;
        }

        .table-ct-foot tr td {
            text-align: left;
            padding: 0;
            box-sizing: border-box;
            line-height: 16px;
        }

        .table-ct-foot tr td:nth-child(odd) {
            width: 100px;
            padding-left: 5px;
        }

        .table-ct-foot tr td:nth-child(even) {
            width: 314px;
        }

        .deliver-item-title h3 {
            text-align: center;
            font-weight: bold;
            margin-top: 50px;
        }

        .deliver-content-item .input-group {
            float: left;
            width: 140px;
        }

        .deliver-goods input.form-control {
            padding: 3px 3px 3px 12px;
            height: auto;
            line-height: normal;
            width: 100px;
        }

        .deliver-info label.control-label {
            width: 65px;
        }

        /*页眉*/
        .pageheader .top-bar {
            line-height: 35px;
            height: 35px;
            border-bottom: solid 1px #000;
            position: relative;
        }

        .pageheader img {
            width: 98px;
            height: auto;
            position: absolute;
            right: 15px;
            top: 6px;
        }

        #pickup .seal-box img {
            width: 150px;
            height: 150px;
        }

        ul.list-box li {
            line-height: 30px;
            width: 200px;
            display: inline-block;
            text-align: left;
            float: left;
        }

        table.table-pro tr {
            height: 30px;
        }

        table.table-pro tr td {
            text-align: center;
            border: 1px #C5C5C5 solid;
            padding: 5px;
        }

        .fund-box .fund-part.left-part {
            border-right: 1px solid #dddddd;
        }

        .fund-box fund-from-index {
            border-right: 1px solid #dddddd;
        }

        .fund-box fund-goto-index {
            border-right: 1px solid #dddddd;
        }

        .fund-list li {
            margin-bottom: 10px;
            text-align: left;
        }

        .fund-list li:first-child {
            margin-top: 10px;
        }

        ul.sales-order-list li {
            margin-bottom: 10px;
            border: solid 1px #ddd;
            width: 100%;
            text-align: left;
            padding: 5px 10px 5px 10px;
            box-sizing: border-box;
        }

        ul.sales-order-list li.first-child {
            margin-bottom: 0px;
            border: none;
            width: 100%;
            text-align: left;
        }

        table.table-simple.calculator-table tr th, table.table-simple.calculator-table tr td {
            padding-right: 5px;
            /*text-align: center;*/
        }

        .detail-part-total > div > b {
            font-size: 20px;
            display: inline-block;
            padding-right: 20px;
            font-weight: normal;
        }

        .detail-part-total span {
            margin-right: 20px;
        }
    </style>
</head>
<body>
<div class="main">
    <div class="dialog-cont-full">
        <div class="contract-header clear">
            <div class="pull-left contract-logo">
                <img src="${logoSrc}"/>
            </div>
            <div class="pull-right t-orange"><i>让塑料交易更快速</i></div>

        </div>
        <div class="contract-cont">
            <h3 class="contract-title">销 售 合 同</h3>

            <div>
                <div class="contract-top clear">
                    <div class="pull-left">
                        卖方：<b>xxxx</b><br/>
                        买方：<b>xxxxx</b>
                    </div>
                    <div class="pull-right">
                        合同编号：<b>xxxxxx</b><br/>
                        签约时间：<b>xxxxxx</b><br/>
                        签约地点：<b>xxxxxxxx</b>
                    </div>
                </div>
                <p>鉴于本合同货物系卖方先向国内石化工厂或供应商采购，现经买卖双方同意按下列条款签订本合同。</p>
                <p><b>1.货物详情：</b>(货币单位：人民币元) ：</p>
                <table class="table-goods" width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                    <tr>
                        <th scope="col">产品名称</th>
                        <th scope="col">规格型号</th>
                        <th scope="col">产地/厂家</th>
                        <th scope="col">数量</th>
                        <th scope="col">计量单位</th>
                        <th scope="col">含税单价</th>
                        <th scope="col">总金额（元）</th>
                    </tr>
                    <#list sellersContractVo.orderItems() as item>
                    <tr>
                        <td><span>${item.test()!""}</span></td>
                        <td><span>${item.designation()!""}</span></td>
                        <td><span>${item.manufactuerName()!""}</span></td>
                        <td><span>${item.weight()!""}</span></td>
                        <td><span>吨（t）</span></td>
                        <td><span>${item.contractPrice()!""}</span>元</td>
                        <td><span>0</span>元</td>
                    </tr>
                    </#list>
                    <#if sellersContractVo.type() == 2 >
                        <#if sellersContractVo.discount() != 0>
                        <tr>
                            <td>补贴金额</td>
                            <td colspan="6"><span>666</span>元
                            </td>
                        </tr>
                        </#if>
                    </#if>
                    <tr>
                        <td><span>合计：</span></td>
                        <td colspan="6">
                            <span></span>（<span>123</span>）
                        </td>
                    </tr>
                    </tbody>
                </table>
                <p><b>2.包装标准：</b><span></span>公斤/包，生产商原包装。</p>

                <p><b>3.交货地点：</b>买方指定地址，地址：<span></span>。</p>
                <p><b>4.交货时间：</b>具体以卖方通知为准，但应在<span></span>左右。</p>

                <p><b>5.付款方式及时间：</b></p>

                <p><b>6.货物交付及所有权转移：</b></p>
                <p>
                    6.1
                    买方选择自提，买方应于付清货款后且在合同签订三日内去卖方指定仓库自提，否则，视为卖方已完成交付义务，且超过此提货期限货物灭损的风险由买方承担，提货时运杂费由买方承担。买方需于自提货期限届满后三日内将已盖公章的收货确认书传真给卖方，逾期未传真视为收到全部货物。同时卖方有权暂不向买方开具发票，如卖方已向买方开具发票，买方在收到后24小时内未就本次交易事宜提出任何书面异议，则视为买方再次确认收到货物且货物不存在隐蔽瑕疵质量问题。
                    6.2 卖方完成交付义务后，货物的所有权以及可能发生的所有灭损风险也随之转移给买方。如买方逾期付款的，自逾期之日货物灭损的所有风险均由买方承担。买方未付清货款前，货物所有权归卖方所有。
                </p>

                <p><b>7.货物质量验收及异议处理：</b></p>

                <p>
                    7.1 本合同项下货物的质量和技术标准以该生产商的质量指标为准。
                    7.2 若买方发现有质量异议，买方应先封存货物以保证产品不受损害，并在提取货物后的叁日内以书面方式向卖方提出，卖方有责任协助买方处理。买方未能在指定时间内通知卖方，则视为货物符合合同规定的要求。
                    7.3 如买卖双方对产品质量存在争议，应委托双方共同认定的独立第三方检验机构对产品进行检验，并以该机构的检验报告为最终依据处理双方的质量争议，检验费用由责任方承担。
                </p>

                <p><b>8.合理损耗和计算方法：</b>合理损耗为总计数量的千分之三，凡在合理损耗范围内的短缺，卖方不负责赔偿。</p>

                <p><b>9.违约责任：</b></p>
                <p>
                    9.1 买方在本合同约定的时间内无正当理由不能按期付款的，卖方可单方面解除合同，并保留因买方违约由此给卖方造成损失而向买方索赔的权利。
                </p>


                <p><b>10.争议解决：</b>凡因执行本合同或有关本合同所发生的一切争执，双方可协商解决。如果协商仍然得不到解决，任何一方都可以在本合同的签约地提请司法诉讼。</p>

                <p><b>11.附加条款：</b></p>
                <P>
                    11.1 本合同壹式贰份，双方盖章后生效。若在执行中需要修改，双方协商后可另行签订印刷体书面协议，作为本合同的附件，任何对本合同非印刷体的涂改均为无效，卖方可宣布本合同失效。
                    11.2
                    本合同所称的不可抗力和免责事由是指：受影响一方不能合理控制的，无法预料或即使可预料到也不可避免且无法克服，并于本合同签订日之后出现的，使该方对本合同全部或部分的履行在客观上成为不可能或不实际的任何事件。此等情形包括但不限于自然灾害、火灾、旱灾、台风、地震；以及社会事件如战争、动乱、罢工；国内石化工厂或供应商停产、迟延交货；政府行为或法律规定等。
                    11.3 若本合同货物为副牌料或者过渡料，产品质量不适用本合同第七条，卖方对副牌料、过渡料的产品质量免责，也不接受买方的任何质量申诉。
                    11.4 买方请于<span></span>前回签合同，否则卖方有权取消合同，由此引起的一切损失由买方负责。合同的传真件同样具有法律效力。
                </P>


                <table class="table-ct-foot" width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody>
                    <tr>
                        <th colspan="2">卖方</th>
                        <th colspan="2">买方</th>
                    </tr>
                    <tr>
                        <td>单位名称：</td>
                        <td></td>
                        <td>单位名称：</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>单位地址：</td>
                        <td></td>
                        <td>单位地址：</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>电话/传真：</td>
                        <td></td>
                        <td>电话/传真：</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>收款银行：</td>
                        <td></td>
                        <td>开户银行：</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>账号：</td>
                        <td></td>
                        <td>账号：</td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</body>
</html>