<html>
<#include "../common/header.ftl">
<body>

<div id="wrapper" class="toggled">
    <#--边栏sidebar-->
    <#include "../common/nav.ftl">

    <#--主要内容content-->
    <div id="page-content-wrapper">
        <div class="container-fluid">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <h3>
                            订单列表
                        </h3>
                    </div>
                    <div class="col-md-12 column">
                        <table class="table table-condensed table-bordered">
                            <thead>
                            <tr>
                                <th>订单id</th>
                                <th>姓名</th>
                                <th>手机号</th>
                                <th>地址</th>
                                <th>金额</th>
                                <th>订单状态</th>
                                <#--<th>支付方式</th>-->
                                <th>支付状态</th>
                                <th>创建时间</th>
                                <th colspan="2">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                <#list orderDTOPage.content as orderDTO>
                <tr>
                    <td>${orderDTO.orderId}</td>
                    <td>${orderDTO.buyerName}</td>
                    <td>${orderDTO.buyerPhone}</td>
                    <td>${orderDTO.buyerAddress}</td>
                    <td>${orderDTO.orderAmount}元</td>
                    <td>${orderDTO.getOrderStatusEnum().getMessage()}</td>
                    <#--<td>支付方式</td>-->
                    <td>${orderDTO.getPayStatusEnum().getMessage()}</td>
                    <td>${orderDTO.createTime}</td>
                    <td>
                        <a href="/sell/seller/order/detail?orderId=${orderDTO.orderId}">详情</a>
                    </td>
                    <td>
                        <#if orderDTO.getOrderStatusEnum().message == "新订单">
                            <a href="/sell/seller/order/cancel?orderId=${orderDTO.orderId}">取消</a>
                        </#if>
                    </td>
                </tr>
                </#list>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-12 column">
                        <ul class="pagination">
                        <#--小于等于1-->
                <#if currentPage lte 1>
                <li class="disabled"><a href="#">上一页</a></li>
                <#else>
                <li><a href="/sell/seller/order/list?page=${currentPage - 1}&size=${size}"">上一页</a></li>
                </#if>
                        <#--从1到TotalPages-->
                <#list 1..orderDTOPage.getTotalPages() as index>
                    <#if currentPage == index>
                    <li class="disabled"><a href="#">${index}</a></li>
                    <#else>
                    <li><a href="/sell/seller/order/list?page=${index}&size=${size}">${index}</a></li>
                    </#if>
                </#list>
                        <#--大于等于总页数-->
                <#if currentPage gte orderDTOPage.getTotalPages()>
                <li class="disabled"><a href="#">下一页</a></li>
                <#else>
                <li><a href="/sell/seller/order/list?page=${currentPage + 1}&size=${size}">下一页</a></li>
                </#if>
                        </ul>
                    </div>
                </div>
            </div>
    </div>
</div>


</body>
</html>